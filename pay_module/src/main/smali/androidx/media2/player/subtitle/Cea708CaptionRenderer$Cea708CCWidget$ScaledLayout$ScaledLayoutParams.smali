.class Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout$ScaledLayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "Cea708CaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScaledLayoutParams"
.end annotation


# static fields
.field public static final SCALE_UNSPECIFIED:F = -1.0f


# instance fields
.field public scaleEndCol:F

.field public scaleEndRow:F

.field public scaleStartCol:F

.field public scaleStartRow:F

.field final synthetic this$2:Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;


# direct methods
.method constructor <init>(Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;FFFF)V
    .locals 1
    .param p1, "this$2"    # Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;
    .param p2, "scaleStartRow"    # F
    .param p3, "scaleEndRow"    # F
    .param p4, "scaleStartCol"    # F
    .param p5, "scaleEndCol"    # F

    .line 207
    iput-object p1, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout$ScaledLayoutParams;->this$2:Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;

    .line 208
    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 209
    iput p2, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout$ScaledLayoutParams;->scaleStartRow:F

    .line 210
    iput p3, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout$ScaledLayoutParams;->scaleEndRow:F

    .line 211
    iput p4, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout$ScaledLayoutParams;->scaleStartCol:F

    .line 212
    iput p5, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout$ScaledLayoutParams;->scaleEndCol:F

    .line 213
    return-void
.end method

.method constructor <init>(Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "this$2"    # Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .line 215
    iput-object p1, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout$ScaledLayoutParams;->this$2:Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;

    .line 216
    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 217
    return-void
.end method
