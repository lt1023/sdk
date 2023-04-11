.class Landroidx/media2/widget/MediaControlView$26;
.super Ljava/lang/Object;
.source "MediaControlView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/MediaControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/widget/MediaControlView;


# direct methods
.method constructor <init>(Landroidx/media2/widget/MediaControlView;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/widget/MediaControlView;

    .line 1254
    iput-object p1, p0, Landroidx/media2/widget/MediaControlView$26;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 1257
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$26;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->mOnFullScreenListener:Landroidx/media2/widget/MediaControlView$OnFullScreenListener;

    if-nez v0, :cond_0

    .line 1258
    return-void

    .line 1261
    :cond_0
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$26;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-boolean v0, v0, Landroidx/media2/widget/MediaControlView;->mIsFullScreen:Z

    xor-int/lit8 v0, v0, 0x1

    .line 1262
    .local v0, "isEnteringFullScreen":Z
    if-eqz v0, :cond_1

    .line 1263
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView$26;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v1, v1, Landroidx/media2/widget/MediaControlView;->mFullScreenButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Landroidx/media2/widget/MediaControlView$26;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v2, v2, Landroidx/media2/widget/MediaControlView;->mResources:Landroid/content/res/Resources;

    sget v3, Landroidx/media2/widget/R$drawable;->ic_fullscreen_exit:I

    .line 1264
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1263
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1265
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView$26;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v1, v1, Landroidx/media2/widget/MediaControlView;->mMinimalFullScreenButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Landroidx/media2/widget/MediaControlView$26;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v2, v2, Landroidx/media2/widget/MediaControlView;->mResources:Landroid/content/res/Resources;

    sget v3, Landroidx/media2/widget/R$drawable;->ic_fullscreen_exit:I

    .line 1266
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1265
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1268
    :cond_1
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView$26;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v1, v1, Landroidx/media2/widget/MediaControlView;->mFullScreenButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Landroidx/media2/widget/MediaControlView$26;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v2, v2, Landroidx/media2/widget/MediaControlView;->mResources:Landroid/content/res/Resources;

    sget v3, Landroidx/media2/widget/R$drawable;->ic_fullscreen:I

    .line 1269
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1268
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1270
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView$26;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v1, v1, Landroidx/media2/widget/MediaControlView;->mMinimalFullScreenButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Landroidx/media2/widget/MediaControlView$26;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v2, v2, Landroidx/media2/widget/MediaControlView;->mResources:Landroid/content/res/Resources;

    sget v3, Landroidx/media2/widget/R$drawable;->ic_fullscreen:I

    .line 1271
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1270
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1273
    :goto_0
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView$26;->this$0:Landroidx/media2/widget/MediaControlView;

    iput-boolean v0, v1, Landroidx/media2/widget/MediaControlView;->mIsFullScreen:Z

    .line 1274
    iget-object v1, v1, Landroidx/media2/widget/MediaControlView;->mOnFullScreenListener:Landroidx/media2/widget/MediaControlView$OnFullScreenListener;

    iget-object v2, p0, Landroidx/media2/widget/MediaControlView$26;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-boolean v3, v2, Landroidx/media2/widget/MediaControlView;->mIsFullScreen:Z

    invoke-interface {v1, v2, v3}, Landroidx/media2/widget/MediaControlView$OnFullScreenListener;->onFullScreen(Landroid/view/View;Z)V

    .line 1276
    return-void
.end method
