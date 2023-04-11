package com.anygames.sdk.game;

import static com.anygames.sdk.game.ResourceButtonAndSwitchConfig.ID_PACK_LEVEL;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;


import com.example.myapplication.R;

import java.util.List;

public class NormalModuleAdapter extends RecyclerView.Adapter<NormalModuleAdapter.ViewHolder> {
    private List<ResourceBean> mResourceList;

    public NormalModuleAdapter(List<ResourceBean> list){
        mResourceList = list;
    }

    @Override
    public int getItemCount() {
        return mResourceList.size();
    }

    @Override
    public void onBindViewHolder(@NonNull ViewHolder viewHolder, int i) {
        ResourceBean resourceBean = mResourceList.get(i);
        String name = resourceBean.getName();
        int id = resourceBean.getId();
        boolean open = ResourceButtonAndSwitchConfig.is_open(id);
        if (ResourceButtonAndSwitchConfig.isSwitchedType(id)){
            String text = String.format("%s%s", open ?"关闭":"开启", name);
            viewHolder.module_button_content.setText(text);
        }else {
            viewHolder.module_button_content.setText(name);
        }
        viewHolder.module_button_content.setVisibility(View.VISIBLE);
        viewHolder.module_button_content.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (!ResourceButtonAndSwitchConfig.getIsInited()){
                    Toast.makeText(v.getContext(), "请在游戏内使用会员功能！", Toast.LENGTH_SHORT).show();
                    return;
                }
                boolean open = ResourceButtonAndSwitchConfig.is_open(id);
                if (ResourceButtonAndSwitchConfig.isSwitchedType(id)){
                    ResourceButtonAndSwitchConfig.set_is_open(id, !open);
                    String text = String.format("%s%s", !open ?"关闭":"开启", name);
                    viewHolder.module_button_content.setText(text);
                }
                ResourceButtonAndSwitchConfig.sendToUnity(id, !open);
//                parseId(id);
            }
        });
    }



    @NonNull
    @Override
    public ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        View view = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.layout_float_module_button_and_switch_view, viewGroup, false);
        return new ViewHolder(view);
    }

    //定义内部类ViewHolder，并继承RecyclerView.ViewHolder传入View参数通常是Recycler View子项的最外层布局
    public static class ViewHolder extends RecyclerView.ViewHolder {
        Button module_button_content;

        public ViewHolder(View itemView) {
            super(itemView);
            module_button_content = itemView.findViewById(R.id.module_button_content);
        }
    }
}
