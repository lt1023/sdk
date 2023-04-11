.class Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CaptionTrack;
.super Landroidx/media2/widget/SubtitleTrack;
.source "Cea708CaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/Cea708CaptionRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Cea708CaptionTrack"
.end annotation


# instance fields
.field private final mCCParser:Landroidx/media2/widget/Cea708CCParser;

.field private final mRenderingWidget:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget;


# direct methods
.method constructor <init>(Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget;Landroid/media/MediaFormat;)V
    .locals 2
    .param p1, "renderingWidget"    # Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget;
    .param p2, "format"    # Landroid/media/MediaFormat;

    .line 91
    invoke-direct {p0, p2}, Landroidx/media2/widget/SubtitleTrack;-><init>(Landroid/media/MediaFormat;)V

    .line 93
    iput-object p1, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CaptionTrack;->mRenderingWidget:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget;

    .line 94
    new-instance v0, Landroidx/media2/widget/Cea708CCParser;

    iget-object v1, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CaptionTrack;->mRenderingWidget:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget;

    invoke-direct {v0, v1}, Landroidx/media2/widget/Cea708CCParser;-><init>(Landroidx/media2/widget/Cea708CCParser$DisplayListener;)V

    iput-object v0, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CaptionTrack;->mCCParser:Landroidx/media2/widget/Cea708CCParser;

    .line 95
    return-void
.end method


# virtual methods
.method public getRenderingWidget()Landroidx/media2/widget/SubtitleTrack$RenderingWidget;
    .locals 1

    .line 104
    iget-object v0, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CaptionTrack;->mRenderingWidget:Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget;

    return-object v0
.end method

.method public onData([BZJ)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "eos"    # Z
    .param p3, "runID"    # J

    .line 99
    iget-object v0, p0, Landroidx/media2/widget/Cea708CaptionRenderer$Cea708CaptionTrack;->mCCParser:Landroidx/media2/widget/Cea708CCParser;

    invoke-virtual {v0, p1}, Landroidx/media2/widget/Cea708CCParser;->parse([B)V

    .line 100
    return-void
.end method

.method public updateView(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/media2/widget/SubtitleTrack$Cue;",
            ">;)V"
        }
    .end annotation

    .line 110
    .local p1, "activeCues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/widget/SubtitleTrack$Cue;>;"
    return-void
.end method
