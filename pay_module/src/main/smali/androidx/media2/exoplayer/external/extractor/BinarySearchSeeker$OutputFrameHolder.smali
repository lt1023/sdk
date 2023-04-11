.class public final Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$OutputFrameHolder;
.super Ljava/lang/Object;
.source "BinarySearchSeeker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OutputFrameHolder"
.end annotation


# instance fields
.field public final byteBuffer:Ljava/nio/ByteBuffer;

.field public timeUs:J


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "outputByteBuffer"    # Ljava/nio/ByteBuffer;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$OutputFrameHolder;->timeUs:J

    .line 85
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$OutputFrameHolder;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 86
    return-void
.end method
