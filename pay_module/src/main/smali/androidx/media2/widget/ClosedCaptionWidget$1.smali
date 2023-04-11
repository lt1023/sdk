.class Landroidx/media2/widget/ClosedCaptionWidget$1;
.super Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
.source "ClosedCaptionWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/ClosedCaptionWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/widget/ClosedCaptionWidget;


# direct methods
.method constructor <init>(Landroidx/media2/widget/ClosedCaptionWidget;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/widget/ClosedCaptionWidget;

    .line 133
    iput-object p1, p0, Landroidx/media2/widget/ClosedCaptionWidget$1;->this$0:Landroidx/media2/widget/ClosedCaptionWidget;

    invoke-direct {p0}, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFontScaleChanged(F)V
    .locals 1
    .param p1, "fontScale"    # F

    .line 142
    iget-object v0, p0, Landroidx/media2/widget/ClosedCaptionWidget$1;->this$0:Landroidx/media2/widget/ClosedCaptionWidget;

    iget-object v0, v0, Landroidx/media2/widget/ClosedCaptionWidget;->mClosedCaptionLayout:Landroidx/media2/widget/ClosedCaptionWidget$ClosedCaptionLayout;

    invoke-interface {v0, p1}, Landroidx/media2/widget/ClosedCaptionWidget$ClosedCaptionLayout;->setFontScale(F)V

    .line 143
    return-void
.end method

.method public onUserStyleChanged(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .locals 2
    .param p1, "userStyle"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 136
    iget-object v0, p0, Landroidx/media2/widget/ClosedCaptionWidget$1;->this$0:Landroidx/media2/widget/ClosedCaptionWidget;

    iput-object p1, v0, Landroidx/media2/widget/ClosedCaptionWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 137
    iget-object v0, v0, Landroidx/media2/widget/ClosedCaptionWidget;->mClosedCaptionLayout:Landroidx/media2/widget/ClosedCaptionWidget$ClosedCaptionLayout;

    iget-object v1, p0, Landroidx/media2/widget/ClosedCaptionWidget$1;->this$0:Landroidx/media2/widget/ClosedCaptionWidget;

    iget-object v1, v1, Landroidx/media2/widget/ClosedCaptionWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    invoke-interface {v0, v1}, Landroidx/media2/widget/ClosedCaptionWidget$ClosedCaptionLayout;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V

    .line 138
    return-void
.end method
