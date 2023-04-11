.class final Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;
.super Ljava/lang/Object;
.source "CompositeMediaSource.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/source/MediaSourceEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/CompositeMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ForwardingEventListener"
.end annotation


# instance fields
.field private eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

.field private final id:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/media2/exoplayer/external/source/CompositeMediaSource;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/source/CompositeMediaSource;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 181
    .local p0, "this":Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;, "Landroidx/media2/exoplayer/external/source/CompositeMediaSource<TT;>.ForwardingEventListener;"
    .local p2, "id":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->this$0:Landroidx/media2/exoplayer/external/source/CompositeMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/source/CompositeMediaSource;->createEventDispatcher(Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    .line 183
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->id:Ljava/lang/Object;

    .line 184
    return-void
.end method

.method private maybeUpdateEventDispatcher(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Z
    .locals 5
    .param p1, "childWindowIndex"    # I
    .param p2, "childMediaPeriodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 273
    .local p0, "this":Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;, "Landroidx/media2/exoplayer/external/source/CompositeMediaSource<TT;>.ForwardingEventListener;"
    const/4 v0, 0x0

    .line 274
    .local v0, "mediaPeriodId":Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
    if-eqz p2, :cond_1

    .line 275
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->this$0:Landroidx/media2/exoplayer/external/source/CompositeMediaSource;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->id:Ljava/lang/Object;

    invoke-virtual {v1, v2, p2}, Landroidx/media2/exoplayer/external/source/CompositeMediaSource;->getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Object;Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    move-result-object v0

    .line 276
    if-nez v0, :cond_0

    .line 278
    const/4 v1, 0x0

    return v1

    .line 276
    :cond_0
    goto :goto_0

    .line 274
    :cond_1
    nop

    .line 281
    :goto_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->this$0:Landroidx/media2/exoplayer/external/source/CompositeMediaSource;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->id:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Landroidx/media2/exoplayer/external/source/CompositeMediaSource;->getWindowIndexForChildWindowIndex(Ljava/lang/Object;I)I

    move-result v1

    .line 282
    .local v1, "windowIndex":I
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    iget v2, v2, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->windowIndex:I

    if-ne v2, v1, :cond_3

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodId:Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    .line 283
    invoke-static {v2, v0}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    goto :goto_2

    .line 282
    :cond_3
    nop

    .line 284
    :goto_1
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->this$0:Landroidx/media2/exoplayer/external/source/CompositeMediaSource;

    const-wide/16 v3, 0x0

    .line 285
    invoke-virtual {v2, v1, v0, v3, v4}, Landroidx/media2/exoplayer/external/source/CompositeMediaSource;->createEventDispatcher(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;J)Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v2

    iput-object v2, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    .line 287
    :goto_2
    const/4 v2, 0x1

    return v2
.end method

.method private maybeUpdateMediaLoadData(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;
    .locals 17
    .param p1, "mediaLoadData"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;

    .line 291
    .local p0, "this":Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;, "Landroidx/media2/exoplayer/external/source/CompositeMediaSource<TT;>.ForwardingEventListener;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->this$0:Landroidx/media2/exoplayer/external/source/CompositeMediaSource;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->id:Ljava/lang/Object;

    iget-wide v4, v1, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;->mediaStartTimeMs:J

    invoke-virtual {v2, v3, v4, v5}, Landroidx/media2/exoplayer/external/source/CompositeMediaSource;->getMediaTimeForChildMediaTime(Ljava/lang/Object;J)J

    move-result-wide v2

    .line 292
    .local v2, "mediaStartTimeMs":J
    iget-object v4, v0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->this$0:Landroidx/media2/exoplayer/external/source/CompositeMediaSource;

    iget-object v5, v0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->id:Ljava/lang/Object;

    iget-wide v6, v1, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;->mediaEndTimeMs:J

    invoke-virtual {v4, v5, v6, v7}, Landroidx/media2/exoplayer/external/source/CompositeMediaSource;->getMediaTimeForChildMediaTime(Ljava/lang/Object;J)J

    move-result-wide v4

    .line 293
    .local v4, "mediaEndTimeMs":J
    iget-wide v6, v1, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;->mediaStartTimeMs:J

    cmp-long v8, v2, v6

    if-nez v8, :cond_0

    iget-wide v6, v1, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;->mediaEndTimeMs:J

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    .line 295
    return-object v1

    .line 293
    :cond_0
    nop

    .line 297
    new-instance v16, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;

    iget v7, v1, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;->dataType:I

    iget v8, v1, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;->trackType:I

    iget-object v9, v1, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;->trackFormat:Landroidx/media2/exoplayer/external/Format;

    iget v10, v1, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;->trackSelectionReason:I

    iget-object v11, v1, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;->trackSelectionData:Ljava/lang/Object;

    move-object/from16 v6, v16

    move-wide v12, v2

    move-wide v14, v4

    invoke-direct/range {v6 .. v15}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;-><init>(IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJ)V

    return-object v16
.end method


# virtual methods
.method public onDownstreamFormatChanged(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 2
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "mediaLoadData"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;

    .line 265
    .local p0, "this":Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;, "Landroidx/media2/exoplayer/external/source/CompositeMediaSource<TT;>.ForwardingEventListener;"
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateEventDispatcher(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    invoke-direct {p0, p3}, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateMediaLoadData(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->downstreamFormatChanged(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V

    goto :goto_0

    .line 265
    :cond_0
    nop

    .line 268
    :goto_0
    return-void
.end method

.method public onLoadCanceled(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 2
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "loadEventData"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;
    .param p4, "mediaLoadData"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;

    .line 228
    .local p0, "this":Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;, "Landroidx/media2/exoplayer/external/source/CompositeMediaSource<TT;>.ForwardingEventListener;"
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateEventDispatcher(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    invoke-direct {p0, p4}, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateMediaLoadData(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V

    goto :goto_0

    .line 228
    :cond_0
    nop

    .line 231
    :goto_0
    return-void
.end method

.method public onLoadCompleted(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 2
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "loadEventData"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;
    .param p4, "mediaLoadData"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;

    .line 217
    .local p0, "this":Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;, "Landroidx/media2/exoplayer/external/source/CompositeMediaSource<TT;>.ForwardingEventListener;"
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateEventDispatcher(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    invoke-direct {p0, p4}, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateMediaLoadData(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V

    goto :goto_0

    .line 217
    :cond_0
    nop

    .line 220
    :goto_0
    return-void
.end method

.method public onLoadError(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;Ljava/io/IOException;Z)V
    .locals 2
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "loadEventData"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;
    .param p4, "mediaLoadData"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;
    .param p5, "error"    # Ljava/io/IOException;
    .param p6, "wasCanceled"    # Z

    .line 241
    .local p0, "this":Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;, "Landroidx/media2/exoplayer/external/source/CompositeMediaSource<TT;>.ForwardingEventListener;"
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateEventDispatcher(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    .line 243
    invoke-direct {p0, p4}, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateMediaLoadData(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;

    move-result-object v1

    .line 242
    invoke-virtual {v0, p3, v1, p5, p6}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->loadError(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;Ljava/io/IOException;Z)V

    goto :goto_0

    .line 241
    :cond_0
    nop

    .line 245
    :goto_0
    return-void
.end method

.method public onLoadStarted(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 2
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "loadEventData"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;
    .param p4, "mediaLoadData"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;

    .line 206
    .local p0, "this":Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;, "Landroidx/media2/exoplayer/external/source/CompositeMediaSource<TT;>.ForwardingEventListener;"
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateEventDispatcher(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    invoke-direct {p0, p4}, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateMediaLoadData(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$LoadEventInfo;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V

    goto :goto_0

    .line 206
    :cond_0
    nop

    .line 209
    :goto_0
    return-void
.end method

.method public onMediaPeriodCreated(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)V
    .locals 1
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    .line 188
    .local p0, "this":Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;, "Landroidx/media2/exoplayer/external/source/CompositeMediaSource<TT;>.ForwardingEventListener;"
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateEventDispatcher(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodCreated()V

    goto :goto_0

    .line 188
    :cond_0
    nop

    .line 191
    :goto_0
    return-void
.end method

.method public onMediaPeriodReleased(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)V
    .locals 1
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    .line 195
    .local p0, "this":Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;, "Landroidx/media2/exoplayer/external/source/CompositeMediaSource<TT;>.ForwardingEventListener;"
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateEventDispatcher(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodReleased()V

    goto :goto_0

    .line 195
    :cond_0
    nop

    .line 198
    :goto_0
    return-void
.end method

.method public onReadingStarted(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)V
    .locals 1
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;

    .line 249
    .local p0, "this":Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;, "Landroidx/media2/exoplayer/external/source/CompositeMediaSource<TT;>.ForwardingEventListener;"
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateEventDispatcher(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->readingStarted()V

    goto :goto_0

    .line 249
    :cond_0
    nop

    .line 252
    :goto_0
    return-void
.end method

.method public onUpstreamDiscarded(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 2
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Landroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "mediaLoadData"    # Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;

    .line 257
    .local p0, "this":Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;, "Landroidx/media2/exoplayer/external/source/CompositeMediaSource<TT;>.ForwardingEventListener;"
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateEventDispatcher(ILandroidx/media2/exoplayer/external/source/MediaSource$MediaPeriodId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->eventDispatcher:Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;

    invoke-direct {p0, p3}, Landroidx/media2/exoplayer/external/source/CompositeMediaSource$ForwardingEventListener;->maybeUpdateMediaLoadData(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$EventDispatcher;->upstreamDiscarded(Landroidx/media2/exoplayer/external/source/MediaSourceEventListener$MediaLoadData;)V

    goto :goto_0

    .line 257
    :cond_0
    nop

    .line 260
    :goto_0
    return-void
.end method
