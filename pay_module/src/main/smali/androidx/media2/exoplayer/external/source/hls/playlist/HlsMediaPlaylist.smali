.class public final Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;
.super Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylist;
.source "HlsMediaPlaylist.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$PlaylistType;,
        Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;
    }
.end annotation


# static fields
.field public static final PLAYLIST_TYPE_EVENT:I = 0x2

.field public static final PLAYLIST_TYPE_UNKNOWN:I = 0x0

.field public static final PLAYLIST_TYPE_VOD:I = 0x1


# instance fields
.field public final discontinuitySequence:I

.field public final durationUs:J

.field public final hasDiscontinuitySequence:Z

.field public final hasEndTag:Z

.field public final hasProgramDateTime:Z

.field public final mediaSequence:J

.field public final playlistType:I

.field public final protectionSchemes:Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final segments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;",
            ">;"
        }
    .end annotation
.end field

.field public final startOffsetUs:J

.field public final startTimeUs:J

.field public final targetDurationUs:J

.field public final version:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/List;JJZIJIJZZZLandroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/util/List;)V
    .locals 16
    .param p1, "playlistType"    # I
    .param p2, "baseUri"    # Ljava/lang/String;
    .param p4, "startOffsetUs"    # J
    .param p6, "startTimeUs"    # J
    .param p8, "hasDiscontinuitySequence"    # Z
    .param p9, "discontinuitySequence"    # I
    .param p10, "mediaSequence"    # J
    .param p12, "version"    # I
    .param p13, "targetDurationUs"    # J
    .param p15, "hasIndependentSegments"    # Z
    .param p16, "hasEndTag"    # Z
    .param p17, "hasProgramDateTime"    # Z
    .param p18, "protectionSchemes"    # Landroidx/media2/exoplayer/external/drm/DrmInitData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;JJZIJIJZZZ",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;",
            ">;)V"
        }
    .end annotation

    .line 276
    .local p3, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p19, "segments":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p15

    invoke-direct {v0, v1, v2, v3}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsPlaylist;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 277
    move/from16 v4, p1

    iput v4, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->playlistType:I

    .line 278
    move-wide/from16 v5, p6

    iput-wide v5, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    .line 279
    move/from16 v7, p8

    iput-boolean v7, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->hasDiscontinuitySequence:Z

    .line 280
    move/from16 v8, p9

    iput v8, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->discontinuitySequence:I

    .line 281
    move-wide/from16 v9, p10

    iput-wide v9, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    .line 282
    move/from16 v11, p12

    iput v11, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->version:I

    .line 283
    move-wide/from16 v12, p13

    iput-wide v12, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->targetDurationUs:J

    .line 284
    move/from16 v14, p16

    iput-boolean v14, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    .line 285
    move/from16 v15, p17

    iput-boolean v15, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->hasProgramDateTime:Z

    .line 286
    move-object/from16 v1, p18

    iput-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->protectionSchemes:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    .line 287
    invoke-static/range {p19 .. p19}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    .line 288
    invoke-interface/range {p19 .. p19}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 289
    invoke-interface/range {p19 .. p19}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v2, p19

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;

    .line 290
    .local v1, "last":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;
    iget-wide v2, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;->relativeStartTimeUs:J

    iget-wide v4, v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;->durationUs:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    .line 291
    .end local v1    # "last":Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist$Segment;
    const-wide/16 v1, 0x0

    goto :goto_0

    .line 292
    :cond_0
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    .line 294
    :goto_0
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, p4, v3

    if-nez v5, :cond_1

    move-wide v1, v3

    goto :goto_1

    .line 295
    :cond_1
    cmp-long v3, p4, v1

    if-ltz v3, :cond_2

    move-wide/from16 v1, p4

    goto :goto_1

    :cond_2
    iget-wide v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    add-long v1, v1, p4

    :goto_1
    iput-wide v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->startOffsetUs:J

    .line 296
    return-void
.end method


# virtual methods
.method public copy(Ljava/util/List;)Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/offline/StreamKey;",
            ">;)",
            "Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;"
        }
    .end annotation

    .line 300
    .local p1, "streamKeys":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/offline/StreamKey;>;"
    return-object p0
.end method

.method public bridge synthetic copy(Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->copy(Ljava/util/List;)Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;

    move-result-object p1

    return-object p1
.end method

.method public copyWith(JI)Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;
    .locals 22
    .param p1, "startTimeUs"    # J
    .param p3, "discontinuitySequence"    # I

    move-object/from16 v0, p0

    move-wide/from16 v7, p1

    move/from16 v10, p3

    .line 340
    new-instance v21, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;

    move-object/from16 v1, v21

    iget v2, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->playlistType:I

    iget-object v3, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->baseUri:Ljava/lang/String;

    iget-object v4, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->tags:Ljava/util/List;

    iget-wide v5, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->startOffsetUs:J

    iget-wide v11, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    iget v13, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->version:I

    iget-wide v14, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->targetDurationUs:J

    iget-boolean v9, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->hasIndependentSegments:Z

    move/from16 v16, v9

    iget-boolean v9, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    move/from16 v17, v9

    iget-boolean v9, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->hasProgramDateTime:Z

    move/from16 v18, v9

    iget-object v9, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->protectionSchemes:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    move-object/from16 v19, v9

    iget-object v9, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    move-object/from16 v20, v9

    const/4 v9, 0x1

    invoke-direct/range {v1 .. v20}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;-><init>(ILjava/lang/String;Ljava/util/List;JJZIJIJZZZLandroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/util/List;)V

    return-object v21
.end method

.method public copyWithEndTag()Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;
    .locals 24

    .line 363
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-eqz v1, :cond_0

    .line 364
    return-object v0

    .line 366
    :cond_0
    new-instance v1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;

    move-object v2, v1

    iget v3, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->playlistType:I

    iget-object v4, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->baseUri:Ljava/lang/String;

    iget-object v5, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->tags:Ljava/util/List;

    iget-wide v6, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->startOffsetUs:J

    iget-wide v8, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    iget-boolean v10, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->hasDiscontinuitySequence:Z

    iget v11, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->discontinuitySequence:I

    iget-wide v12, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    iget v14, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->version:I

    move-object/from16 v22, v1

    move-object/from16 v23, v2

    iget-wide v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->targetDurationUs:J

    move-wide v15, v1

    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->hasIndependentSegments:Z

    move/from16 v17, v1

    const/16 v18, 0x1

    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->hasProgramDateTime:Z

    move/from16 v19, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->protectionSchemes:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    move-object/from16 v20, v1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    move-object/from16 v21, v1

    move-object/from16 v2, v23

    invoke-direct/range {v2 .. v21}, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;-><init>(ILjava/lang/String;Ljava/util/List;JJZIJIJZZZLandroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/util/List;)V

    return-object v22
.end method

.method public getEndTimeUs()J
    .locals 4

    .line 327
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->startTimeUs:J

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->durationUs:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public isNewerThan(Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;)Z
    .locals 7
    .param p1, "other"    # Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;

    .line 310
    const/4 v0, 0x1

    if-eqz p1, :cond_4

    iget-wide v1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    iget-wide v3, p1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->mediaSequence:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    goto :goto_1

    .line 313
    :cond_0
    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-gez v6, :cond_1

    .line 314
    return v5

    .line 317
    :cond_1
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 318
    .local v1, "segmentCount":I
    iget-object v2, p1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 319
    .local v2, "otherSegmentCount":I
    if-gt v1, v2, :cond_3

    if-ne v1, v2, :cond_2

    iget-boolean v3, p0, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p1, Landroidx/media2/exoplayer/external/source/hls/playlist/HlsMediaPlaylist;->hasEndTag:Z

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    nop

    :cond_3
    :goto_0
    return v0

    .line 310
    .end local v1    # "segmentCount":I
    .end local v2    # "otherSegmentCount":I
    :cond_4
    :goto_1
    nop

    .line 311
    return v0
.end method
