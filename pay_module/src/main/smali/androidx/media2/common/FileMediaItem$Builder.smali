.class public final Landroidx/media2/common/FileMediaItem$Builder;
.super Landroidx/media2/common/MediaItem$Builder;
.source "FileMediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/common/FileMediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mFDLength:J

.field mFDOffset:J

.field mPFD:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public constructor <init>(Landroid/os/ParcelFileDescriptor;)V
    .locals 4
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 199
    invoke-direct {p0}, Landroidx/media2/common/MediaItem$Builder;-><init>()V

    .line 184
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media2/common/FileMediaItem$Builder;->mFDOffset:J

    .line 186
    const-wide v2, 0x7ffffffffffffffL

    iput-wide v2, p0, Landroidx/media2/common/FileMediaItem$Builder;->mFDLength:J

    .line 200
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iput-object p1, p0, Landroidx/media2/common/FileMediaItem$Builder;->mPFD:Landroid/os/ParcelFileDescriptor;

    .line 202
    iput-wide v0, p0, Landroidx/media2/common/FileMediaItem$Builder;->mFDOffset:J

    .line 203
    iput-wide v2, p0, Landroidx/media2/common/FileMediaItem$Builder;->mFDLength:J

    .line 204
    return-void
.end method


# virtual methods
.method public build()Landroidx/media2/common/FileMediaItem;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 265
    new-instance v0, Landroidx/media2/common/FileMediaItem;

    invoke-direct {v0, p0}, Landroidx/media2/common/FileMediaItem;-><init>(Landroidx/media2/common/FileMediaItem$Builder;)V

    return-object v0
.end method

.method public bridge synthetic build()Landroidx/media2/common/MediaItem;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 180
    invoke-virtual {p0}, Landroidx/media2/common/FileMediaItem$Builder;->build()Landroidx/media2/common/FileMediaItem;

    move-result-object v0

    return-object v0
.end method

.method public setEndPosition(J)Landroidx/media2/common/FileMediaItem$Builder;
    .locals 1
    .param p1, "position"    # J
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 256
    invoke-super {p0, p1, p2}, Landroidx/media2/common/MediaItem$Builder;->setEndPosition(J)Landroidx/media2/common/MediaItem$Builder;

    move-result-object v0

    check-cast v0, Landroidx/media2/common/FileMediaItem$Builder;

    return-object v0
.end method

.method public bridge synthetic setEndPosition(J)Landroidx/media2/common/MediaItem$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 180
    invoke-virtual {p0, p1, p2}, Landroidx/media2/common/FileMediaItem$Builder;->setEndPosition(J)Landroidx/media2/common/FileMediaItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setFileDescriptorLength(J)Landroidx/media2/common/FileMediaItem$Builder;
    .locals 3
    .param p1, "length"    # J
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 231
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 232
    const-wide p1, 0x7ffffffffffffffL

    goto :goto_0

    .line 231
    :cond_0
    nop

    .line 234
    :goto_0
    iput-wide p1, p0, Landroidx/media2/common/FileMediaItem$Builder;->mFDLength:J

    .line 235
    return-object p0
.end method

.method public setFileDescriptorOffset(J)Landroidx/media2/common/FileMediaItem$Builder;
    .locals 3
    .param p1, "offset"    # J
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 215
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 216
    const-wide/16 p1, 0x0

    goto :goto_0

    .line 215
    :cond_0
    nop

    .line 218
    :goto_0
    iput-wide p1, p0, Landroidx/media2/common/FileMediaItem$Builder;->mFDOffset:J

    .line 219
    return-object p0
.end method

.method public setMetadata(Landroidx/media2/common/MediaMetadata;)Landroidx/media2/common/FileMediaItem$Builder;
    .locals 1
    .param p1, "metadata"    # Landroidx/media2/common/MediaMetadata;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 242
    invoke-super {p0, p1}, Landroidx/media2/common/MediaItem$Builder;->setMetadata(Landroidx/media2/common/MediaMetadata;)Landroidx/media2/common/MediaItem$Builder;

    move-result-object v0

    check-cast v0, Landroidx/media2/common/FileMediaItem$Builder;

    return-object v0
.end method

.method public bridge synthetic setMetadata(Landroidx/media2/common/MediaMetadata;)Landroidx/media2/common/MediaItem$Builder;
    .locals 0
    .param p1    # Landroidx/media2/common/MediaMetadata;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 180
    invoke-virtual {p0, p1}, Landroidx/media2/common/FileMediaItem$Builder;->setMetadata(Landroidx/media2/common/MediaMetadata;)Landroidx/media2/common/FileMediaItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setStartPosition(J)Landroidx/media2/common/FileMediaItem$Builder;
    .locals 1
    .param p1, "position"    # J
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 249
    invoke-super {p0, p1, p2}, Landroidx/media2/common/MediaItem$Builder;->setStartPosition(J)Landroidx/media2/common/MediaItem$Builder;

    move-result-object v0

    check-cast v0, Landroidx/media2/common/FileMediaItem$Builder;

    return-object v0
.end method

.method public bridge synthetic setStartPosition(J)Landroidx/media2/common/MediaItem$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 180
    invoke-virtual {p0, p1, p2}, Landroidx/media2/common/FileMediaItem$Builder;->setStartPosition(J)Landroidx/media2/common/FileMediaItem$Builder;

    move-result-object p1

    return-object p1
.end method
