.class public final Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;
.super Ljava/lang/Object;
.source "HlsMediaPlaylist.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Segment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final byterangeLength:J

.field public final byterangeOffset:J

.field public final drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final durationUs:J

.field public final encryptionIV:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final fullSegmentEncryptionKeyUri:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final hasGapTag:Z

.field public final initializationSegment:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final relativeDiscontinuitySequence:I

.field public final relativeStartTimeUs:J

.field public final title:Ljava/lang/String;

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    .locals 17
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "byterangeOffset"    # J
    .param p4, "byterangeLength"    # J
    .param p6, "fullSegmentEncryptionKeyUri"    # Ljava/lang/String;
    .param p7, "encryptionIV"    # Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    .line 108
    const-string v3, ""

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, -0x1

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v9, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v0 .. v16}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;-><init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;Ljava/lang/String;JIJLandroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZ)V

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;Ljava/lang/String;JIJLandroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 16
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "initializationSegment"    # Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "durationUs"    # J
    .param p6, "relativeDiscontinuitySequence"    # I
    .param p7, "relativeStartTimeUs"    # J
    .param p9, "drmInitData"    # Landroidx/media2/exoplayer/external/drm/DrmInitData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p10, "fullSegmentEncryptionKeyUri"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p11, "encryptionIV"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p12, "byterangeOffset"    # J
    .param p14, "byterangeLength"    # J
    .param p16, "hasGapTag"    # Z

    .line 149
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 150
    move-object/from16 v1, p1

    iput-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;->url:Ljava/lang/String;

    .line 151
    move-object/from16 v2, p2

    iput-object v2, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;->initializationSegment:Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;

    .line 152
    move-object/from16 v3, p3

    iput-object v3, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;->title:Ljava/lang/String;

    .line 153
    move-wide/from16 v4, p4

    iput-wide v4, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;->durationUs:J

    .line 154
    move/from16 v6, p6

    iput v6, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;->relativeDiscontinuitySequence:I

    .line 155
    move-wide/from16 v7, p7

    iput-wide v7, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;->relativeStartTimeUs:J

    .line 156
    move-object/from16 v9, p9

    iput-object v9, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;->drmInitData:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    .line 157
    move-object/from16 v10, p10

    iput-object v10, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;->fullSegmentEncryptionKeyUri:Ljava/lang/String;

    .line 158
    move-object/from16 v11, p11

    iput-object v11, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    .line 159
    move-wide/from16 v12, p12

    iput-wide v12, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;->byterangeOffset:J

    .line 160
    move-wide/from16 v14, p14

    iput-wide v14, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;->byterangeLength:J

    .line 161
    move/from16 v1, p16

    iput-boolean v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;->hasGapTag:Z

    .line 162
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Long;)I
    .locals 5
    .param p1, "relativeStartTimeUs"    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 166
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;->relativeStartTimeUs:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 167
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;->relativeStartTimeUs:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 166
    :goto_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 42
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;->compareTo(Ljava/lang/Long;)I

    move-result p1

    return p1
.end method
