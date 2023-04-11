.class Landroidx/media2/widget/MediaControlView$SubSettingsAdapter;
.super Landroid/widget/BaseAdapter;
.source "MediaControlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/MediaControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubSettingsAdapter"
.end annotation


# instance fields
.field private mCheckPosition:I

.field private mTexts:Ljava/util/List;
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
.method constructor <init>(Landroidx/media2/widget/MediaControlView;Ljava/util/List;I)V
    .locals 0
    .param p3, "checkPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1960
    .local p2, "texts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Landroidx/media2/widget/MediaControlView$SubSettingsAdapter;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1961
    iput-object p2, p0, Landroidx/media2/widget/MediaControlView$SubSettingsAdapter;->mTexts:Ljava/util/List;

    .line 1962
    iput p3, p0, Landroidx/media2/widget/MediaControlView$SubSettingsAdapter;->mCheckPosition:I

    .line 1963
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1976
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$SubSettingsAdapter;->mTexts:Ljava/util/List;

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

    .line 1988
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 1982
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMainText(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .line 1966
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$SubSettingsAdapter;->mTexts:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1967
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1968
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$SubSettingsAdapter;->mTexts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1967
    :cond_0
    goto :goto_0

    .line 1966
    :cond_1
    nop

    .line 1971
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "container"    # Landroid/view/ViewGroup;

    .line 1993
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$SubSettingsAdapter;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {v0}, Landroidx/media2/widget/MediaControlView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroidx/media2/widget/R$layout;->sub_settings_list_item:I

    invoke-static {v0, v1}, Landroidx/media2/widget/MediaControlView;->inflateLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    .line 1994
    .local v0, "row":Landroid/view/View;
    sget v1, Landroidx/media2/widget/R$id;->text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1995
    .local v1, "textView":Landroid/widget/TextView;
    sget v2, Landroidx/media2/widget/R$id;->check:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1997
    .local v2, "checkView":Landroid/widget/ImageView;
    iget-object v3, p0, Landroidx/media2/widget/MediaControlView$SubSettingsAdapter;->mTexts:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1998
    iget v3, p0, Landroidx/media2/widget/MediaControlView$SubSettingsAdapter;->mCheckPosition:I

    if-eq p1, v3, :cond_0

    .line 1999
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1998
    :cond_0
    nop

    .line 2001
    :goto_0
    return-object v0
.end method

.method public setCheckPosition(I)V
    .locals 0
    .param p1, "checkPosition"    # I

    .line 2009
    iput p1, p0, Landroidx/media2/widget/MediaControlView$SubSettingsAdapter;->mCheckPosition:I

    .line 2010
    return-void
.end method

.method public setTexts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2005
    .local p1, "texts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Landroidx/media2/widget/MediaControlView$SubSettingsAdapter;->mTexts:Ljava/util/List;

    .line 2006
    return-void
.end method
