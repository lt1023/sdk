.class public Landroidx/media2/common/MediaItem$Builder;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/common/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mEndPositionMs:J

.field mMetadata:Landroidx/media2/common/MediaMetadata;

.field mStartPositionMs:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media2/common/MediaItem$Builder;->mStartPositionMs:J

    .line 258
    const-wide v0, 0x7ffffffffffffffL

    iput-wide v0, p0, Landroidx/media2/common/MediaItem$Builder;->mEndPositionMs:J

    .line 265
    return-void
.end method


# virtual methods
.method public build()Landroidx/media2/common/MediaItem;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 318
    new-instance v0, Landroidx/media2/common/MediaItem;

    invoke-direct {v0, p0}, Landroidx/media2/common/MediaItem;-><init>(Landroidx/media2/common/MediaItem$Builder;)V

    return-object v0
.end method

.method public setEndPosition(J)Landroidx/media2/common/MediaItem$Builder;
    .locals 3
    .param p1, "position"    # J
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 304
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 305
    const-wide p1, 0x7ffffffffffffffL

    goto :goto_0

    .line 304
    :cond_0
    nop

    .line 307
    :goto_0
    iput-wide p1, p0, Landroidx/media2/common/MediaItem$Builder;->mEndPositionMs:J

    .line 308
    return-object p0
.end method

.method public setMetadata(Landroidx/media2/common/MediaMetadata;)Landroidx/media2/common/MediaItem$Builder;
    .locals 0
    .param p1, "metadata"    # Landroidx/media2/common/MediaMetadata;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 275
    iput-object p1, p0, Landroidx/media2/common/MediaItem$Builder;->mMetadata:Landroidx/media2/common/MediaMetadata;

    .line 276
    return-object p0
.end method

.method public setStartPosition(J)Landroidx/media2/common/MediaItem$Builder;
    .locals 3
    .param p1, "position"    # J
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 288
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 289
    const-wide/16 p1, 0x0

    goto :goto_0

    .line 288
    :cond_0
    nop

    .line 291
    :goto_0
    iput-wide p1, p0, Landroidx/media2/common/MediaItem$Builder;->mStartPositionMs:J

    .line 292
    return-object p0
.end method
