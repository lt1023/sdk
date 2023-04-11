.class Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;
.super Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;
.source "Cea708CaptionRenderer.java"

# interfaces
.implements Landroidx/media2/player/subtitle/ClosedCaptionWidget$ClosedCaptionLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CCLayout"
.end annotation


# static fields
.field private static final SAFE_TITLE_AREA_SCALE_END_X:F = 0.9f

.field private static final SAFE_TITLE_AREA_SCALE_END_Y:F = 0.9f

.field private static final SAFE_TITLE_AREA_SCALE_START_X:F = 0.1f

.field private static final SAFE_TITLE_AREA_SCALE_START_Y:F = 0.1f


# instance fields
.field private final mSafeTitleAreaLayout:Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;

.field final synthetic this$1:Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget;


# direct methods
.method constructor <init>(Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget;Landroid/content/Context;)V
    .locals 8
    .param p1, "this$1"    # Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget;
    .param p2, "context"    # Landroid/content/Context;

    .line 404
    iput-object p1, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;->this$1:Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget;

    .line 405
    invoke-direct {p0, p1, p2}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;-><init>(Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget;Landroid/content/Context;)V

    .line 407
    new-instance v0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;

    invoke-direct {v0, p1, p2}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;-><init>(Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget;Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;->mSafeTitleAreaLayout:Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;

    .line 408
    iget-object v0, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;->mSafeTitleAreaLayout:Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;

    new-instance v7, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    const v3, 0x3dcccccd    # 0.1f

    const v4, 0x3f666666    # 0.9f

    const v5, 0x3dcccccd    # 0.1f

    const v6, 0x3f666666    # 0.9f

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout$ScaledLayoutParams;-><init>(Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;FFFF)V

    invoke-virtual {p0, v0, v7}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 411
    return-void
.end method


# virtual methods
.method public addOrUpdateViewToSafeTitleArea(Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout$ScaledLayoutParams;)V
    .locals 2
    .param p1, "captionWindowLayout"    # Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;
    .param p2, "scaledLayoutParams"    # Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout$ScaledLayoutParams;

    .line 415
    iget-object v0, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;->mSafeTitleAreaLayout:Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;

    invoke-virtual {v0, p1}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 416
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 417
    iget-object v1, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;->mSafeTitleAreaLayout:Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;

    invoke-virtual {v1, p1, p2}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 418
    return-void

    .line 420
    :cond_0
    iget-object v1, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;->mSafeTitleAreaLayout:Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;

    invoke-virtual {v1, p1, p2}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 421
    return-void
.end method

.method public removeViewFromSafeTitleArea(Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;)V
    .locals 1
    .param p1, "captionWindowLayout"    # Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;

    .line 424
    iget-object v0, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;->mSafeTitleAreaLayout:Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;

    invoke-virtual {v0, p1}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->removeView(Landroid/view/View;)V

    .line 425
    return-void
.end method

.method public setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .locals 3
    .param p1, "style"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 429
    iget-object v0, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;->mSafeTitleAreaLayout:Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;

    invoke-virtual {v0}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->getChildCount()I

    move-result v0

    .line 430
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 431
    iget-object v2, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;->mSafeTitleAreaLayout:Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;

    .line 432
    invoke-virtual {v2, v1}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;

    .line 433
    .local v2, "windowLayout":Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;
    invoke-virtual {v2, p1}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V

    .line 430
    .end local v2    # "windowLayout":Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 435
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public setFontScale(F)V
    .locals 3
    .param p1, "fontScale"    # F

    .line 439
    iget-object v0, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;->mSafeTitleAreaLayout:Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;

    invoke-virtual {v0}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->getChildCount()I

    move-result v0

    .line 440
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 441
    iget-object v2, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;->mSafeTitleAreaLayout:Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;

    .line 442
    invoke-virtual {v2, v1}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;

    .line 443
    .local v2, "windowLayout":Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;
    invoke-virtual {v2, p1}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->setFontScale(F)V

    .line 440
    .end local v2    # "windowLayout":Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 445
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
