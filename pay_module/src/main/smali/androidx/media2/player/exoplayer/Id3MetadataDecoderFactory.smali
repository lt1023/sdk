.class final Landroidx/media2/player/exoplayer/Id3MetadataDecoderFactory;
.super Ljava/lang/Object;
.source "Id3MetadataDecoderFactory.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/metadata/MetadataDecoderFactory;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDecoder(Landroidx/media2/exoplayer/external/Format;)Landroidx/media2/exoplayer/external/metadata/MetadataDecoder;
    .locals 1
    .param p1, "format"    # Landroidx/media2/exoplayer/external/Format;

    .line 50
    new-instance v0, Landroidx/media2/player/exoplayer/Id3MetadataDecoderFactory$1;

    invoke-direct {v0, p0}, Landroidx/media2/player/exoplayer/Id3MetadataDecoderFactory$1;-><init>(Landroidx/media2/player/exoplayer/Id3MetadataDecoderFactory;)V

    return-object v0
.end method

.method public supportsFormat(Landroidx/media2/exoplayer/external/Format;)Z
    .locals 2
    .param p1, "format"    # Landroidx/media2/exoplayer/external/Format;

    .line 45
    const-string v0, "application/id3"

    iget-object v1, p1, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
