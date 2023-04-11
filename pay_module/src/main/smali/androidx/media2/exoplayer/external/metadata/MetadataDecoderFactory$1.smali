.class Landroidx/media2/exoplayer/external/metadata/MetadataDecoderFactory$1;
.super Ljava/lang/Object;
.source "MetadataDecoderFactory.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/metadata/MetadataDecoderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/metadata/MetadataDecoderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDecoder(Landroidx/media2/exoplayer/external/Format;)Landroidx/media2/exoplayer/external/metadata/MetadataDecoder;
    .locals 3
    .param p1, "format"    # Landroidx/media2/exoplayer/external/Format;

    .line 80
    iget-object v0, p1, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x505c61b5

    if-eq v1, v2, :cond_4

    const v2, -0x4a682ec7

    if-eq v1, v2, :cond_3

    const v2, 0x44ce7ed0

    if-eq v1, v2, :cond_2

    const v2, 0x62816bb7

    if-eq v1, v2, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v1, "application/x-scte35"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    const-string v1, "application/x-emsg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const-string v1, "application/id3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    const-string v1, "application/x-icy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempted to create decoder for unsupported format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :pswitch_0
    new-instance v0, Landroidx/media2/exoplayer/external/metadata/icy/IcyDecoder;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/metadata/icy/IcyDecoder;-><init>()V

    return-object v0

    .line 86
    :pswitch_1
    new-instance v0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInfoDecoder;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInfoDecoder;-><init>()V

    return-object v0

    .line 84
    :pswitch_2
    new-instance v0, Landroidx/media2/exoplayer/external/metadata/emsg/EventMessageDecoder;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/metadata/emsg/EventMessageDecoder;-><init>()V

    return-object v0

    .line 82
    :pswitch_3
    new-instance v0, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Decoder;-><init>()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public supportsFormat(Landroidx/media2/exoplayer/external/Format;)Z
    .locals 2
    .param p1, "format"    # Landroidx/media2/exoplayer/external/Format;

    .line 71
    iget-object v0, p1, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    .line 72
    .local v0, "mimeType":Ljava/lang/String;
    const-string v1, "application/id3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "application/x-emsg"

    .line 73
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "application/x-scte35"

    .line 74
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "application/x-icy"

    .line 75
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 74
    :cond_1
    goto :goto_0

    .line 73
    :cond_2
    goto :goto_0

    .line 72
    :cond_3
    nop

    .line 75
    :goto_0
    const/4 v1, 0x1

    .line 72
    :goto_1
    return v1
.end method
