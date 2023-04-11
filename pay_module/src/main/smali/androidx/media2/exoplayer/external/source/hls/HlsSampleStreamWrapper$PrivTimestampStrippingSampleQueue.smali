.class final Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper$PrivTimestampStrippingSampleQueue;
.super Landroidx/media2/exoplayer/external/source/SampleQueue;
.source "HlsSampleStreamWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PrivTimestampStrippingSampleQueue"
.end annotation


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/Allocator;)V
    .locals 0
    .param p1, "allocator"    # Landroidx/media2/exoplayer/external/upstream/Allocator;

    .line 1173
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/source/SampleQueue;-><init>(Landroidx/media2/exoplayer/external/upstream/Allocator;)V

    .line 1174
    return-void
.end method

.method private getAdjustedMetadata(Landroidx/media2/exoplayer/external/metadata/Metadata;)Landroidx/media2/exoplayer/external/metadata/Metadata;
    .locals 8
    .param p1, "metadata"    # Landroidx/media2/exoplayer/external/metadata/Metadata;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1187
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1188
    return-object v0

    .line 1190
    :cond_0
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/metadata/Metadata;->length()I

    move-result v1

    .line 1191
    .local v1, "length":I
    const/4 v2, -0x1

    .line 1192
    .local v2, "transportStreamTimestampMetadataIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 1193
    invoke-virtual {p1, v3}, Landroidx/media2/exoplayer/external/metadata/Metadata;->get(I)Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    move-result-object v4

    .line 1194
    .local v4, "metadataEntry":Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;
    instance-of v5, v4, Landroidx/media2/exoplayer/external/metadata/id3/PrivFrame;

    if-eqz v5, :cond_2

    .line 1195
    move-object v5, v4

    check-cast v5, Landroidx/media2/exoplayer/external/metadata/id3/PrivFrame;

    .line 1196
    .local v5, "privFrame":Landroidx/media2/exoplayer/external/metadata/id3/PrivFrame;
    const-string v6, "com.apple.streaming.transportStreamTimestamp"

    iget-object v7, v5, Landroidx/media2/exoplayer/external/metadata/id3/PrivFrame;->owner:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1197
    move v2, v3

    .line 1198
    goto :goto_2

    .line 1196
    :cond_1
    goto :goto_1

    .line 1194
    .end local v5    # "privFrame":Landroidx/media2/exoplayer/external/metadata/id3/PrivFrame;
    :cond_2
    nop

    .line 1192
    .end local v4    # "metadataEntry":Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1202
    .end local v3    # "i":I
    :cond_3
    :goto_2
    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    .line 1203
    return-object p1

    .line 1205
    :cond_4
    const/4 v3, 0x1

    if-ne v1, v3, :cond_5

    .line 1206
    return-object v0

    .line 1208
    :cond_5
    add-int/lit8 v0, v1, -0x1

    new-array v0, v0, [Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    .line 1209
    .local v0, "newMetadataEntries":[Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    if-ge v3, v1, :cond_8

    .line 1210
    if-eq v3, v2, :cond_7

    .line 1211
    if-ge v3, v2, :cond_6

    move v4, v3

    goto :goto_4

    :cond_6
    add-int/lit8 v4, v3, -0x1

    .line 1212
    .local v4, "newIndex":I
    :goto_4
    invoke-virtual {p1, v3}, Landroidx/media2/exoplayer/external/metadata/Metadata;->get(I)Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    move-result-object v5

    aput-object v5, v0, v4

    goto :goto_5

    .line 1210
    .end local v4    # "newIndex":I
    :cond_7
    nop

    .line 1209
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1215
    .end local v3    # "i":I
    :cond_8
    new-instance v3, Landroidx/media2/exoplayer/external/metadata/Metadata;

    invoke-direct {v3, v0}, Landroidx/media2/exoplayer/external/metadata/Metadata;-><init>([Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;)V

    return-object v3
.end method


# virtual methods
.method public format(Landroidx/media2/exoplayer/external/Format;)V
    .locals 1
    .param p1, "format"    # Landroidx/media2/exoplayer/external/Format;

    .line 1178
    iget-object v0, p1, Landroidx/media2/exoplayer/external/Format;->metadata:Landroidx/media2/exoplayer/external/metadata/Metadata;

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/source/hls/HlsSampleStreamWrapper$PrivTimestampStrippingSampleQueue;->getAdjustedMetadata(Landroidx/media2/exoplayer/external/metadata/Metadata;)Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/Format;->copyWithMetadata(Landroidx/media2/exoplayer/external/metadata/Metadata;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/media2/exoplayer/external/source/SampleQueue;->format(Landroidx/media2/exoplayer/external/Format;)V

    .line 1179
    return-void
.end method
