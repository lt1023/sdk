.class public final Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$CodecMaxValues;
.super Ljava/lang/Object;
.source "MediaCodecVideoRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "CodecMaxValues"
.end annotation


# instance fields
.field public final height:I

.field public final inputSize:I

.field public final width:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "inputSize"    # I

    .line 1612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1613
    iput p1, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$CodecMaxValues;->width:I

    .line 1614
    iput p2, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$CodecMaxValues;->height:I

    .line 1615
    iput p3, p0, Landroidx/media2/exoplayer/external/video/MediaCodecVideoRenderer$CodecMaxValues;->inputSize:I

    .line 1616
    return-void
.end method
