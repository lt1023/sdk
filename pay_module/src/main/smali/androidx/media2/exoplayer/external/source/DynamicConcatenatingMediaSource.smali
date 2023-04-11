.class public final Landroidx/media2/exoplayer/external/source/DynamicConcatenatingMediaSource;
.super Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;
.source "DynamicConcatenatingMediaSource.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 35
    const/4 v0, 0x0

    new-array v0, v0, [Landroidx/media2/exoplayer/external/source/MediaSource;

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;-><init>([Landroidx/media2/exoplayer/external/source/MediaSource;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "isAtomic"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 43
    const/4 v0, 0x0

    new-array v0, v0, [Landroidx/media2/exoplayer/external/source/MediaSource;

    invoke-direct {p0, p1, v0}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;-><init>(Z[Landroidx/media2/exoplayer/external/source/MediaSource;)V

    .line 44
    return-void
.end method

.method public constructor <init>(ZLandroidx/media2/exoplayer/external/source/ShuffleOrder;)V
    .locals 1
    .param p1, "isAtomic"    # Z
    .param p2, "shuffleOrder"    # Landroidx/media2/exoplayer/external/source/ShuffleOrder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 52
    const/4 v0, 0x0

    new-array v0, v0, [Landroidx/media2/exoplayer/external/source/MediaSource;

    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/exoplayer/external/source/ConcatenatingMediaSource;-><init>(ZLandroidx/media2/exoplayer/external/source/ShuffleOrder;[Landroidx/media2/exoplayer/external/source/MediaSource;)V

    .line 53
    return-void
.end method
