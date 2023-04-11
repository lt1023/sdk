.class Landroidx/media2/widget/MediaControlView$SettingsAdapter;
.super Landroid/widget/BaseAdapter;
.source "MediaControlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/MediaControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsAdapter"
.end annotation


# instance fields
.field private mIconIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMainTexts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSubTexts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/media2/widget/MediaControlView;


# direct methods
.method constructor <init>(Landroidx/media2/widget/MediaControlView;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1898
    .local p2, "mainTexts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "subTexts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "iconIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Landroidx/media2/widget/MediaControlView$SettingsAdapter;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1899
    iput-object p2, p0, Landroidx/media2/widget/MediaControlView$SettingsAdapter;->mMainTexts:Ljava/util/List;

    .line 1900
    iput-object p3, p0, Landroidx/media2/widget/MediaControlView$SettingsAdapter;->mSubTexts:Ljava/util/List;

    .line 1901
    iput-object p4, p0, Landroidx/media2/widget/MediaControlView$SettingsAdapter;->mIconIds:Ljava/util/List;

    .line 1902
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1906
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$SettingsAdapter;->mMainTexts:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 1918
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 1912
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "container"    # Landroid/view/ViewGroup;

    .line 1923
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$SettingsAdapter;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {v0}, Landroidx/media2/widget/MediaControlView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroidx/media2/widget/R$layout;->settings_list_item:I

    invoke-static {v0, v1}, Landroidx/media2/widget/MediaControlView;->inflateLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    .line 1924
    .local v0, "row":Landroid/view/View;
    sget v1, Landroidx/media2/widget/R$id;->main_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1925
    .local v1, "mainTextView":Landroid/widget/TextView;
    sget v2, Landroidx/media2/widget/R$id;->sub_text:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1926
    .local v2, "subTextView":Landroid/widget/TextView;
    sget v3, Landroidx/media2/widget/R$id;->icon:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1929
    .local v3, "iconView":Landroid/widget/ImageView;
    iget-object v4, p0, Landroidx/media2/widget/MediaControlView$SettingsAdapter;->mMainTexts:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1933
    iget-object v4, p0, Landroidx/media2/widget/MediaControlView$SettingsAdapter;->mSubTexts:Ljava/util/List;

    const/16 v5, 0x8

    if-eqz v4, :cond_1

    const-string v6, ""

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 1937
    :cond_0
    iget-object v4, p0, Landroidx/media2/widget/MediaControlView$SettingsAdapter;->mSubTexts:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1933
    :cond_1
    :goto_0
    nop

    .line 1934
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1942
    :goto_1
    iget-object v4, p0, Landroidx/media2/widget/MediaControlView$SettingsAdapter;->mIconIds:Ljava/util/List;

    if-eqz v4, :cond_3

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_2

    goto :goto_2

    .line 1946
    :cond_2
    iget-object v4, p0, Landroidx/media2/widget/MediaControlView$SettingsAdapter;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v4, v4, Landroidx/media2/widget/MediaControlView;->mResources:Landroid/content/res/Resources;

    iget-object v5, p0, Landroidx/media2/widget/MediaControlView$SettingsAdapter;->mIconIds:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 1942
    :cond_3
    :goto_2
    nop

    .line 1943
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1948
    :goto_3
    return-object v0
.end method

.method public setSubTexts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1952
    .local p1, "subTexts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Landroidx/media2/widget/MediaControlView$SettingsAdapter;->mSubTexts:Ljava/util/List;

    .line 1953
    return-void
.end method
