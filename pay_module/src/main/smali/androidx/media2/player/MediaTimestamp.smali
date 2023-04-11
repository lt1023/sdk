.class public final Landroidx/media2/player/MediaTimestamp;
.super Ljava/lang/Object;
.source "MediaTimestamp.java"


# static fields
.field public static final TIMESTAMP_UNKNOWN:Landroidx/media2/player/MediaTimestamp;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field private final mClockRate:F

.field private final mMediaTimeUs:J

.field private final mNanoTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 46
    new-instance v6, Landroidx/media2/player/MediaTimestamp;

    const-wide/16 v1, -0x1

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroidx/media2/player/MediaTimestamp;-><init>(JJF)V

    sput-object v6, Landroidx/media2/player/MediaTimestamp;->TIMESTAMP_UNKNOWN:Landroidx/media2/player/MediaTimestamp;

    return-void
.end method

.method constructor <init>()V
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media2/player/MediaTimestamp;->mMediaTimeUs:J

    .line 100
    iput-wide v0, p0, Landroidx/media2/player/MediaTimestamp;->mNanoTime:J

    .line 101
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/media2/player/MediaTimestamp;->mClockRate:F

    .line 102
    return-void
.end method

.method public constructor <init>(JJF)V
    .locals 0
    .param p1, "mediaUs"    # J
    .param p3, "systemNs"    # J
    .param p5, "rate"    # F
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-wide p1, p0, Landroidx/media2/player/MediaTimestamp;->mMediaTimeUs:J

    .line 83
    iput-wide p3, p0, Landroidx/media2/player/MediaTimestamp;->mNanoTime:J

    .line 84
    iput p5, p0, Landroidx/media2/player/MediaTimestamp;->mClockRate:F

    .line 85
    return-void
.end method

.method constructor <init>(Landroid/media/MediaTimestamp;)V
    .locals 2
    .param p1, "timestamp"    # Landroid/media/MediaTimestamp;
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-virtual {p1}, Landroid/media/MediaTimestamp;->getAnchorMediaTimeUs()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/player/MediaTimestamp;->mMediaTimeUs:J

    .line 92
    invoke-virtual {p1}, Landroid/media/MediaTimestamp;->getAnchorSytemNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/player/MediaTimestamp;->mNanoTime:J

    .line 93
    invoke-virtual {p1}, Landroid/media/MediaTimestamp;->getMediaClockRate()F

    move-result v0

    iput v0, p0, Landroidx/media2/player/MediaTimestamp;->mClockRate:F

    .line 94
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 106
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 107
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 109
    :cond_1
    move-object v2, p1

    check-cast v2, Landroidx/media2/player/MediaTimestamp;

    .line 110
    .local v2, "that":Landroidx/media2/player/MediaTimestamp;
    iget-wide v3, p0, Landroidx/media2/player/MediaTimestamp;->mMediaTimeUs:J

    iget-wide v5, v2, Landroidx/media2/player/MediaTimestamp;->mMediaTimeUs:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    iget-wide v3, p0, Landroidx/media2/player/MediaTimestamp;->mNanoTime:J

    iget-wide v5, v2, Landroidx/media2/player/MediaTimestamp;->mNanoTime:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    iget v3, p0, Landroidx/media2/player/MediaTimestamp;->mClockRate:F

    iget v4, v2, Landroidx/media2/player/MediaTimestamp;->mClockRate:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 107
    .end local v2    # "that":Landroidx/media2/player/MediaTimestamp;
    :cond_3
    :goto_1
    nop

    return v1
.end method

.method public getAnchorMediaTimeUs()J
    .locals 2

    .line 53
    iget-wide v0, p0, Landroidx/media2/player/MediaTimestamp;->mMediaTimeUs:J

    return-wide v0
.end method

.method public getAnchorSystemNanoTime()J
    .locals 2

    .line 61
    iget-wide v0, p0, Landroidx/media2/player/MediaTimestamp;->mNanoTime:J

    return-wide v0
.end method

.method public getMediaClockRate()F
    .locals 1

    .line 72
    iget v0, p0, Landroidx/media2/player/MediaTimestamp;->mClockRate:F

    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 117
    iget-wide v0, p0, Landroidx/media2/player/MediaTimestamp;->mMediaTimeUs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    .line 118
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    int-to-long v1, v1

    iget-wide v3, p0, Landroidx/media2/player/MediaTimestamp;->mNanoTime:J

    add-long/2addr v1, v3

    long-to-int v0, v1

    .line 119
    mul-int/lit8 v1, v0, 0x1f

    int-to-float v1, v1

    iget v2, p0, Landroidx/media2/player/MediaTimestamp;->mClockRate:F

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 120
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{AnchorMediaTimeUs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/media2/player/MediaTimestamp;->mMediaTimeUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " AnchorSystemNanoTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/media2/player/MediaTimestamp;->mNanoTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ClockRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/media2/player/MediaTimestamp;->mClockRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
