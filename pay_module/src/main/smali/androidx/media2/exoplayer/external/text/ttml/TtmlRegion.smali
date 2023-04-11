.class final Landroidx/media2/exoplayer/external/text/ttml/TtmlRegion;
.super Ljava/lang/Object;
.source "TtmlRegion.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field public final id:Ljava/lang/String;

.field public final line:F

.field public final lineAnchor:I

.field public final lineType:I

.field public final position:F

.field public final textSize:F

.field public final textSizeType:I

.field public final width:F


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 9
    .param p1, "id"    # Ljava/lang/String;

    .line 41
    const/4 v2, 0x1

    const/4 v3, 0x1

    const/high16 v4, -0x80000000

    const/high16 v5, -0x80000000

    const/4 v6, 0x1

    const/high16 v7, -0x80000000

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Landroidx/media2/exoplayer/external/text/ttml/TtmlRegion;-><init>(Ljava/lang/String;FFIIFIF)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FFIIFIF)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "position"    # F
    .param p3, "line"    # F
    .param p4, "lineType"    # I
    .param p5, "lineAnchor"    # I
    .param p6, "width"    # F
    .param p7, "textSizeType"    # I
    .param p8, "textSize"    # F

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Landroidx/media2/exoplayer/external/text/ttml/TtmlRegion;->id:Ljava/lang/String;

    .line 62
    iput p2, p0, Landroidx/media2/exoplayer/external/text/ttml/TtmlRegion;->position:F

    .line 63
    iput p3, p0, Landroidx/media2/exoplayer/external/text/ttml/TtmlRegion;->line:F

    .line 64
    iput p4, p0, Landroidx/media2/exoplayer/external/text/ttml/TtmlRegion;->lineType:I

    .line 65
    iput p5, p0, Landroidx/media2/exoplayer/external/text/ttml/TtmlRegion;->lineAnchor:I

    .line 66
    iput p6, p0, Landroidx/media2/exoplayer/external/text/ttml/TtmlRegion;->width:F

    .line 67
    iput p7, p0, Landroidx/media2/exoplayer/external/text/ttml/TtmlRegion;->textSizeType:I

    .line 68
    iput p8, p0, Landroidx/media2/exoplayer/external/text/ttml/TtmlRegion;->textSize:F

    .line 69
    return-void
.end method
