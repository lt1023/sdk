.class public final Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;
.super Ljava/lang/Object;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/upstream/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LoadErrorAction"
.end annotation


# instance fields
.field private final retryDelayMillis:J

.field private final type:I


# direct methods
.method private constructor <init>(IJ)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "retryDelayMillis"    # J

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput p1, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;->type:I

    .line 188
    iput-wide p2, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;->retryDelayMillis:J

    .line 189
    return-void
.end method

.method synthetic constructor <init>(IJLandroidx/media2/exoplayer/external/upstream/Loader$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # J
    .param p4, "x2"    # Landroidx/media2/exoplayer/external/upstream/Loader$1;

    .line 181
    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;-><init>(IJ)V

    return-void
.end method

.method static synthetic access$300(Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;

    .line 181
    iget v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;->type:I

    return v0
.end method

.method static synthetic access$400(Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;)J
    .locals 2
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;

    .line 181
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;->retryDelayMillis:J

    return-wide v0
.end method


# virtual methods
.method public isRetry()Z
    .locals 2

    .line 193
    iget v0, p0, Landroidx/media2/exoplayer/external/upstream/Loader$LoadErrorAction;->type:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    :cond_1
    :goto_0
    return v1
.end method
