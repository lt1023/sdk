.class Landroidx/media2/player/subtitle/ClosedCaptionRenderer$Cea608CCWidget;
.super Landroidx/media2/player/subtitle/ClosedCaptionWidget;
.source "ClosedCaptionRenderer.java"

# interfaces
.implements Landroidx/media2/player/subtitle/Cea608CCParser$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/subtitle/ClosedCaptionRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Cea608CCWidget"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/player/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLayout;,
        Landroidx/media2/player/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLineBox;
    }
.end annotation


# static fields
.field private static final DUMMY_TEXT:Ljava/lang/String; = "1234567890123456789012345678901234"


# instance fields
.field final mTextBounds:Landroid/graphics/Rect;

.field final synthetic this$0:Landroidx/media2/player/subtitle/ClosedCaptionRenderer;


# direct methods
.method constructor <init>(Landroidx/media2/player/subtitle/ClosedCaptionRenderer;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Landroidx/media2/player/subtitle/ClosedCaptionRenderer;
    .param p2, "context"    # Landroid/content/Context;

    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/player/subtitle/ClosedCaptionRenderer$Cea608CCWidget;-><init>(Landroidx/media2/player/subtitle/ClosedCaptionRenderer;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 117
    return-void
.end method

.method constructor <init>(Landroidx/media2/player/subtitle/ClosedCaptionRenderer;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "this$0"    # Landroidx/media2/player/subtitle/ClosedCaptionRenderer;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/media2/player/subtitle/ClosedCaptionRenderer$Cea608CCWidget;-><init>(Landroidx/media2/player/subtitle/ClosedCaptionRenderer;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 121
    return-void
.end method

.method constructor <init>(Landroidx/media2/player/subtitle/ClosedCaptionRenderer;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "this$0"    # Landroidx/media2/player/subtitle/ClosedCaptionRenderer;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyle"    # I

    .line 123
    iput-object p1, p0, Landroidx/media2/player/subtitle/ClosedCaptionRenderer$Cea608CCWidget;->this$0:Landroidx/media2/player/subtitle/ClosedCaptionRenderer;

    .line 124
    invoke-direct {p0, p2, p3, p4}, Landroidx/media2/player/subtitle/ClosedCaptionWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 113
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/subtitle/ClosedCaptionRenderer$Cea608CCWidget;->mTextBounds:Landroid/graphics/Rect;

    .line 125
    return-void
.end method


# virtual methods
.method public createCaptionLayout(Landroid/content/Context;)Landroidx/media2/player/subtitle/ClosedCaptionWidget$ClosedCaptionLayout;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 129
    new-instance v0, Landroidx/media2/player/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLayout;

    invoke-direct {v0, p0, p1}, Landroidx/media2/player/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLayout;-><init>(Landroidx/media2/player/subtitle/ClosedCaptionRenderer$Cea608CCWidget;Landroid/content/Context;)V

    return-object v0
.end method

.method public getCaptionStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .locals 1

    .line 143
    iget-object v0, p0, Landroidx/media2/player/subtitle/ClosedCaptionRenderer$Cea608CCWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    return-object v0
.end method

.method public onDisplayChanged([Landroid/text/SpannableStringBuilder;)V
    .locals 1
    .param p1, "styledTexts"    # [Landroid/text/SpannableStringBuilder;

    .line 134
    iget-object v0, p0, Landroidx/media2/player/subtitle/ClosedCaptionRenderer$Cea608CCWidget;->mClosedCaptionLayout:Landroidx/media2/player/subtitle/ClosedCaptionWidget$ClosedCaptionLayout;

    check-cast v0, Landroidx/media2/player/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLayout;

    invoke-virtual {v0, p1}, Landroidx/media2/player/subtitle/ClosedCaptionRenderer$Cea608CCWidget$CCLayout;->update([Landroid/text/SpannableStringBuilder;)V

    .line 136
    iget-object v0, p0, Landroidx/media2/player/subtitle/ClosedCaptionRenderer$Cea608CCWidget;->mListener:Landroidx/media2/player/subtitle/SubtitleTrack$RenderingWidget$OnChangedListener;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Landroidx/media2/player/subtitle/ClosedCaptionRenderer$Cea608CCWidget;->mListener:Landroidx/media2/player/subtitle/SubtitleTrack$RenderingWidget$OnChangedListener;

    invoke-interface {v0, p0}, Landroidx/media2/player/subtitle/SubtitleTrack$RenderingWidget$OnChangedListener;->onChanged(Landroidx/media2/player/subtitle/SubtitleTrack$RenderingWidget;)V

    goto :goto_0

    .line 136
    :cond_0
    nop

    .line 139
    :goto_0
    return-void
.end method
