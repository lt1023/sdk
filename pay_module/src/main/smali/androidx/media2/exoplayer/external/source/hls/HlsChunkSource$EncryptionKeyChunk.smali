.class final Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$EncryptionKeyChunk;
.super Landroidx/media2/exoplayer/external/source/chunk/DataChunk;
.source "HlsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EncryptionKeyChunk"
.end annotation


# instance fields
.field private result:[B


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/DataSource;Landroidx/media2/exoplayer/external/upstream/DataSpec;Landroidx/media2/exoplayer/external/Format;ILjava/lang/Object;[B)V
    .locals 8
    .param p1, "dataSource"    # Landroidx/media2/exoplayer/external/upstream/DataSource;
    .param p2, "dataSpec"    # Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .param p3, "trackFormat"    # Landroidx/media2/exoplayer/external/Format;
    .param p4, "trackSelectionReason"    # I
    .param p5, "trackSelectionData"    # Ljava/lang/Object;
    .param p6, "scratchSpace"    # [B

    .line 595
    const/4 v3, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Landroidx/media2/exoplayer/external/source/chunk/DataChunk;-><init>(Landroidx/media2/exoplayer/external/upstream/DataSource;Landroidx/media2/exoplayer/external/upstream/DataSpec;ILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;[B)V

    .line 597
    return-void
.end method


# virtual methods
.method protected consume([BI)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "limit"    # I

    .line 601
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$EncryptionKeyChunk;->result:[B

    .line 602
    return-void
.end method

.method public getResult()[B
    .locals 1

    .line 605
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/HlsChunkSource$EncryptionKeyChunk;->result:[B

    return-object v0
.end method
