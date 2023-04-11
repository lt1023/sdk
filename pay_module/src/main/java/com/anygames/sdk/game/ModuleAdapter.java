package com.anygames.sdk.game;

import android.app.Activity;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;


import com.anygames.sdk.pay.PaySDK;
import com.anygames.sdk.utils.FileUtils;
import com.anygames.sdk.utils.LoadingUtils;
import com.anygames.sdk.utils.OnFileCopyCallBack;
import com.anygames.sdk.utils.ScreenUtils;
import com.example.myapplication.R;

import java.util.List;

public class ModuleAdapter extends RecyclerView.Adapter<ModuleAdapter.ViewHolder> {
    private List<ResourceBean> mResourceList;

    public ModuleAdapter(List<ResourceBean> list){
        mResourceList = list;
        Log.e("xNative", "ModuleAdapter: mResourceList = "+mResourceList.size() );
    }

    @Override
    public int getItemCount() {
        return mResourceList.size();
    }

    @Override
    public void onBindViewHolder(@NonNull ViewHolder viewHolder, int i) {
        ResourceBean resourceBean = mResourceList.get(i);
//        Log.e("xNative", "onBindViewHolder: getId = "+resourceBean.getId());
//        Log.e("xNative", "onBindViewHolder: viewHolder.item_module_num = "+viewHolder.item_module_num);

        viewHolder.item_module_num.setText(String.valueOf(resourceBean.getId()));
        viewHolder.item_module_name.setText(resourceBean.getName());
        viewHolder.item_module_icon.setBackgroundResource(resourceBean.getResId());
        String sdcardPath = resourceBean.getSdcard_path();
        if (FileUtils.fileExists(sdcardPath)){
            viewHolder.item_module_load.setText("重加载");
        }
        viewHolder.item_module_load.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Activity activity = PaySDK.getInstance().getGameActivity();
                LoadingUtils.showLoading(activity);
                ResourceBean.ResourceType type = resourceBean.getType();
                if (type.equals(ResourceBean.ResourceType.PAKCS)){
                    ModuleManager.getInstance().load(resourceBean.getBehavior_packs_path(),new OnFileCopyCallBack(){

                        @Override
                        public void onSuccess() {
                            ModuleManager.getInstance().load(resourceBean.getResource_packs_path(),new OnFileCopyCallBack(){

                                @Override
                                public void onSuccess() {
                                    LoadingUtils.hideLoading(activity);
                                    activity.runOnUiThread(new Runnable() {
                                        @Override
                                        public void run() {
                                            viewHolder.item_module_load.setText("加载成功");
                                            ScreenUtils.showRestartAppView();
                                        }
                                    });
                                }

                                @Override
                                public void onFailed() {
                                    LoadingUtils.hideLoading(activity);
                                    activity.runOnUiThread(new Runnable() {
                                        @Override
                                        public void run() {
                                            viewHolder.item_module_load.setText("加载失败");
                                        }
                                    });
                                }
                            });
                        }

                        @Override
                        public void onFailed() {
                            LoadingUtils.hideLoading(activity);
                        }
                    });
                }else  if (type.equals(ResourceBean.ResourceType.WORLD)){
                    ModuleManager.getInstance().load(resourceBean.getWorld_path(),new OnFileCopyCallBack(){
                        @Override
                        public void onSuccess() {
                            LoadingUtils.hideLoading(activity);
                        }

                        @Override
                        public void onFailed() {
                            LoadingUtils.hideLoading(activity);
                        }
                    });
                }
            }
        });
    }

    @NonNull
    @Override
    public ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        View view = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.layout_float_module_view, viewGroup, false);
        return new ViewHolder(view);
    }

    //定义内部类ViewHolder，并继承RecyclerView.ViewHolder传入View参数通常是Recycler View子项的最外层布局
    public static class ViewHolder extends RecyclerView.ViewHolder {
        TextView item_module_load;
        TextView item_module_name;
        TextView item_module_num;
        ImageView item_module_icon;
        public ViewHolder(View itemView) {
            super(itemView);
            item_module_load = itemView.findViewById(R.id.item_module_load);
            item_module_name = itemView.findViewById(R.id.item_module_name);
            item_module_num = itemView.findViewById(R.id.item_module_num);
            item_module_icon = itemView.findViewById(R.id.item_module_icon);
        }
    }
}
