.class public final Landroidx/media2/exoplayer/external/upstream/ByteArrayDataSource;
.super Landroidx/media2/exoplayer/external/upstream/BaseDataSource;
.source "ByteArrayDataSource.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private bytesRemaining:I

.field private final data:[B

.field private opened:Z

.field private readPosition:I

.field private uri:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .param p1, "data"    # [B

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/upstream/BaseDataSource;-><init>(Z)V

    .line 47
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    array-length v1, p1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 49
    iput-object p1, p0, Landroidx/media2/exoplayer/external/upstream/ByteArrayDataSource;->data:[B

    .line 50
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 92
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/ByteArrayDataSource;->opened:Z

    if-eqz v0, :cond_0

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/ByteArrayDataSource;->opened:Z

    .line 94
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/upstream/ByteArrayDataSource;->transferEnded()V

    goto :goto_0

    .line 92
    :cond_0
    nop

    .line 96
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/ByteArrayDataSource;->uri:Landroid/net/Uri;

    .line 97
    return-void
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 87
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/ByteArrayDataSource;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public open(Landroidx/media2/exoplayer/external/upstream/DataSpec;)J
    .locals 7
    .param p1, "dataSpec"    # Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    iget-object v0, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->uri:Landroid/net/Uri;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/ByteArrayDataSource;->uri:Landroid/net/Uri;

    .line 55
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/upstream/ByteArrayDataSource;->transferInitializing(Landroidx/media2/exoplayer/external/upstream/DataSpec;)V

    .line 56
    iget-wide v0, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->position:J

    long-to-int v1, v0

    iput v1, p0, Landroidx/media2/exoplayer/external/upstream/ByteArrayDataSource;->readPosition:I

    .line 57
    iget-wide v0, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->length:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 58
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/ByteArrayDataSource;->data:[B

    array-length v0, v0

    int-to-long v0, v0

    iget-wide v2, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->position:J

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_0
    iget-wide v0, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->length:J

    :goto_0
    long-to-int v1, v0

    iput v1, p0, Landroidx/media2/exoplayer/external/upstream/ByteArrayDataSource;->bytesRemaining:I

    .line 59
    iget v0, p0, Landroidx/media2/exoplayer/external/upstream/ByteArrayDataSource;->bytesRemaining:I

    if-lez v0, :cond_1

    iget v1, p0, Landroidx/media2/exoplayer/external/upstream/ByteArrayDataSource;->readPosition:I

    add-int/2addr v1, v0

    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/ByteArrayDataSource;->data:[B

    array-length v0, v0

    if-gt v1, v0, :cond_1

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/ByteArrayDataSource;->opened:Z

    .line 64
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/upstream/ByteArrayDataSource;->transferStarted(Landroidx/media2/exoplayer/external/upstream/DataSpec;)V

    .line 65
    iget v0, p0, Landroidx/media2/exoplayer/external/upstream/ByteArrayDataSource;->bytesRemaining:I

    int-to-long v0, v0

    return-wide v0

    .line 59
    :cond_1
    nop

    .line 60
    new-instance v0, Ljava/io/IOException;

    iget v1, p0, Landroidx/media2/exoplayer/external/upstream/ByteArrayDataSource;->readPosition:I

    iget-wide v2, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->length:J

    iget-object v4, p0, Landroidx/media2/exoplayer/external/upstream/ByteArrayDataSource;->data:[B

    array-length v4, v4

    const/16 v5, 0x4d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Unsatisfiable range: ["

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "], length: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "readLength"    # I

    .line 70
    if-nez p3, :cond_0

    .line 71
    const/4 v0, 0x0

    return v0

    .line 72
    :cond_0
    iget v0, p0, Landroidx/media2/exoplayer/external/upstream/ByteArrayDataSource;->bytesRemaining:I

    if-nez v0, :cond_1

    .line 73
    const/4 v0, -0x1

    return v0

    .line 76
    :cond_1
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 77
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/ByteArrayDataSource;->data:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/upstream/ByteArrayDataSource;->readPosition:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    iget v0, p0, Landroidx/media2/exoplayer/external/upstream/ByteArrayDataSource;->readPosition:I

    add-int/2addr v0, p3

    iput v0, p0, Landroidx/media2/exoplayer/external/upstream/ByteArrayDataSource;->readPosition:I

    .line 79
    iget v0, p0, Landroidx/media2/exoplayer/external/upstream/ByteArrayDataSource;->bytesRemaining:I

    sub-int/2addr v0, p3

    iput v0, p0, Landroidx/media2/exoplayer/external/upstream/ByteArrayDataSource;->bytesRemaining:I

    .line 80
    invoke-virtual {p0, p3}, Landroidx/media2/exoplayer/external/upstream/ByteArrayDataSource;->bytesTransferred(I)V

    .line 81
    return p3
.end method
