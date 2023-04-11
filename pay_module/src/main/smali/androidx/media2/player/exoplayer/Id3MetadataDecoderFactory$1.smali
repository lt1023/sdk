.class Landroidx/media2/player/exoplayer/Id3MetadataDecoderFactory$1;
.super Ljava/lang/Object;
.source "Id3MetadataDecoderFactory.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/metadata/MetadataDecoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/exoplayer/Id3MetadataDecoderFactory;->createDecoder(Landroidx/media2/exoplayer/external/Format;)Landroidx/media2/exoplayer/external/metadata/MetadataDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/player/exoplayer/Id3MetadataDecoderFactory;


# direct methods
.method constructor <init>(Landroidx/media2/player/exoplayer/Id3MetadataDecoderFactory;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/player/exoplayer/Id3MetadataDecoderFactory;

    .line 50
    iput-object p1, p0, Landroidx/media2/player/exoplayer/Id3MetadataDecoderFactory$1;->this$0:Landroidx/media2/player/exoplayer/Id3MetadataDecoderFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Landroidx/media2/exoplayer/external/metadata/MetadataInputBuffer;)Landroidx/media2/exoplayer/external/metadata/Metadata;
    .locals 7
    .param p1, "inputBuffer"    # Landroidx/media2/exoplayer/external/metadata/MetadataInputBuffer;

    .line 53
    iget-wide v0, p1, Landroidx/media2/exoplayer/external/metadata/MetadataInputBuffer;->timeUs:J

    .line 54
    .local v0, "timestamp":J
    iget-object v2, p1, Landroidx/media2/exoplayer/external/metadata/MetadataInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 55
    .local v2, "bufferData":[B
    new-instance v3, Landroidx/media2/player/exoplayer/ByteArrayFrame;

    array-length v4, v2

    .line 56
    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    invoke-direct {v3, v0, v1, v4}, Landroidx/media2/player/exoplayer/ByteArrayFrame;-><init>(J[B)V

    .line 57
    .local v3, "entry":Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;
    new-instance v4, Landroidx/media2/exoplayer/external/metadata/Metadata;

    const/4 v5, 0x1

    new-array v5, v5, [Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-direct {v4, v5}, Landroidx/media2/exoplayer/external/metadata/Metadata;-><init>([Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;)V

    return-object v4
.end method
