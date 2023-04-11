.class Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget;
.super Landroidx/media2/player/subtitle/ClosedCaptionWidget;
.source "Cea708CaptionRenderer.java"

# interfaces
.implements Landroidx/media2/player/subtitle/Cea708CCParser$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/subtitle/Cea708CaptionRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Cea708CCWidget"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCView;,
        Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;,
        Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;,
        Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;,
        Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout;
    }
.end annotation


# instance fields
.field private final mCCHandler:Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;

.field final synthetic this$0:Landroidx/media2/player/subtitle/Cea708CaptionRenderer;


# direct methods
.method constructor <init>(Landroidx/media2/player/subtitle/Cea708CaptionRenderer;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Landroidx/media2/player/subtitle/Cea708CaptionRenderer;
    .param p2, "context"    # Landroid/content/Context;

    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget;-><init>(Landroidx/media2/player/subtitle/Cea708CaptionRenderer;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 125
    return-void
.end method

.method constructor <init>(Landroidx/media2/player/subtitle/Cea708CaptionRenderer;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "this$0"    # Landroidx/media2/player/subtitle/Cea708CaptionRenderer;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .line 128
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget;-><init>(Landroidx/media2/player/subtitle/Cea708CaptionRenderer;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 129
    return-void
.end method

.method constructor <init>(Landroidx/media2/player/subtitle/Cea708CaptionRenderer;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "this$0"    # Landroidx/media2/player/subtitle/Cea708CaptionRenderer;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I

    .line 131
    iput-object p1, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget;->this$0:Landroidx/media2/player/subtitle/Cea708CaptionRenderer;

    .line 132
    invoke-direct {p0, p2, p3, p4}, Landroidx/media2/player/subtitle/ClosedCaptionWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 134
    new-instance v0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;

    iget-object v1, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget;->mClosedCaptionLayout:Landroidx/media2/player/subtitle/ClosedCaptionWidget$ClosedCaptionLayout;

    check-cast v1, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;

    invoke-direct {v0, p0, v1}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;-><init>(Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget;Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;)V

    iput-object v0, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget;->mCCHandler:Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;

    .line 135
    return-void
.end method


# virtual methods
.method public createCaptionLayout(Landroid/content/Context;)Landroidx/media2/player/subtitle/ClosedCaptionWidget$ClosedCaptionLayout;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 139
    new-instance v0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;

    invoke-direct {v0, p0, p1}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;-><init>(Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget;Landroid/content/Context;)V

    return-object v0
.end method

.method public emitEvent(Landroidx/media2/player/subtitle/Cea708CCParser$CaptionEvent;)V
    .locals 2
    .param p1, "event"    # Landroidx/media2/player/subtitle/Cea708CCParser$CaptionEvent;

    .line 144
    iget-object v0, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget;->mCCHandler:Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;

    invoke-virtual {v0, p1}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->processCaptionEvent(Landroidx/media2/player/subtitle/Cea708CCParser$CaptionEvent;)V

    .line 146
    invoke-virtual {p0}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget;->setSize(II)V

    .line 148
    iget-object v0, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget;->mListener:Landroidx/media2/player/subtitle/SubtitleTrack$RenderingWidget$OnChangedListener;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget;->mListener:Landroidx/media2/player/subtitle/SubtitleTrack$RenderingWidget$OnChangedListener;

    invoke-interface {v0, p0}, Landroidx/media2/player/subtitle/SubtitleTrack$RenderingWidget$OnChangedListener;->onChanged(Landroidx/media2/player/subtitle/SubtitleTrack$RenderingWidget;)V

    goto :goto_0

    .line 148
    :cond_0
    nop

    .line 151
    :goto_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 155
    invoke-super {p0, p1}, Landroidx/media2/player/subtitle/ClosedCaptionWidget;->onDraw(Landroid/graphics/Canvas;)V

    .line 156
    iget-object v0, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget;->mClosedCaptionLayout:Landroidx/media2/player/subtitle/ClosedCaptionWidget$ClosedCaptionLayout;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 157
    return-void
.end method
