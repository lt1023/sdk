.class final Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/ExoPlayerImplInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PlaybackInfoUpdate"
.end annotation


# instance fields
.field private discontinuityReason:I

.field private lastPlaybackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

.field private operationAcks:I

.field private positionDiscontinuity:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1891
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$1;

    .line 1891
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;-><init>()V

    return-void
.end method

.method static synthetic access$100(Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 1891
    iget v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;->operationAcks:I

    return v0
.end method

.method static synthetic access$200(Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 1891
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;->positionDiscontinuity:Z

    return v0
.end method

.method static synthetic access$300(Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 1891
    iget v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;->discontinuityReason:I

    return v0
.end method


# virtual methods
.method public hasPendingUpdate(Landroidx/media2/exoplayer/external/PlaybackInfo;)Z
    .locals 1
    .param p1, "playbackInfo"    # Landroidx/media2/exoplayer/external/PlaybackInfo;

    .line 1899
    iget-object v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;->lastPlaybackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    if-ne p1, v0, :cond_1

    iget v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;->operationAcks:I

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;->positionDiscontinuity:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public incrementPendingOperationAcks(I)V
    .locals 1
    .param p1, "operationAcks"    # I

    .line 1909
    iget v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;->operationAcks:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;->operationAcks:I

    .line 1910
    return-void
.end method

.method public reset(Landroidx/media2/exoplayer/external/PlaybackInfo;)V
    .locals 1
    .param p1, "playbackInfo"    # Landroidx/media2/exoplayer/external/PlaybackInfo;

    .line 1903
    iput-object p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;->lastPlaybackInfo:Landroidx/media2/exoplayer/external/PlaybackInfo;

    .line 1904
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;->operationAcks:I

    .line 1905
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;->positionDiscontinuity:Z

    .line 1906
    return-void
.end method

.method public setPositionDiscontinuity(I)V
    .locals 3
    .param p1, "discontinuityReason"    # I

    .line 1913
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;->positionDiscontinuity:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;->discontinuityReason:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    .line 1917
    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 1918
    return-void

    .line 1913
    :cond_1
    nop

    .line 1920
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;->positionDiscontinuity:Z

    .line 1921
    iput p1, p0, Landroidx/media2/exoplayer/external/ExoPlayerImplInternal$PlaybackInfoUpdate;->discontinuityReason:I

    .line 1922
    return-void
.end method
