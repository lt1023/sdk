.class public final Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInfoDecoder;
.super Ljava/lang/Object;
.source "SpliceInfoDecoder.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/metadata/MetadataDecoder;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final TYPE_PRIVATE_COMMAND:I = 0xff

.field private static final TYPE_SPLICE_INSERT:I = 0x5

.field private static final TYPE_SPLICE_NULL:I = 0x0

.field private static final TYPE_SPLICE_SCHEDULE:I = 0x4

.field private static final TYPE_TIME_SIGNAL:I = 0x6


# instance fields
.field private final sectionData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

.field private final sectionHeader:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

.field private timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInfoDecoder;->sectionData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 50
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    .line 51
    return-void
.end method


# virtual methods
.method public decode(Landroidx/media2/exoplayer/external/metadata/MetadataInputBuffer;)Landroidx/media2/exoplayer/external/metadata/Metadata;
    .locals 11
    .param p1, "inputBuffer"    # Landroidx/media2/exoplayer/external/metadata/MetadataInputBuffer;

    .line 57
    iget-object v0, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInfoDecoder;->timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    if-eqz v0, :cond_1

    iget-wide v0, p1, Landroidx/media2/exoplayer/external/metadata/MetadataInputBuffer;->subsampleOffsetUs:J

    iget-object v2, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInfoDecoder;->timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    .line 58
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->getTimestampOffsetUs()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    .line 57
    :cond_1
    nop

    .line 59
    :goto_0
    new-instance v0, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    iget-wide v1, p1, Landroidx/media2/exoplayer/external/metadata/MetadataInputBuffer;->timeUs:J

    invoke-direct {v0, v1, v2}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;-><init>(J)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInfoDecoder;->timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    .line 60
    iget-object v0, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInfoDecoder;->timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    iget-wide v1, p1, Landroidx/media2/exoplayer/external/metadata/MetadataInputBuffer;->timeUs:J

    iget-wide v3, p1, Landroidx/media2/exoplayer/external/metadata/MetadataInputBuffer;->subsampleOffsetUs:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->adjustSampleTimestamp(J)J

    .line 63
    :goto_1
    iget-object v0, p1, Landroidx/media2/exoplayer/external/metadata/MetadataInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 64
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 65
    .local v1, "data":[B
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 66
    .local v2, "size":I
    iget-object v3, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInfoDecoder;->sectionData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-virtual {v3, v1, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->reset([BI)V

    .line 67
    iget-object v3, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v3, v1, v2}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->reset([BI)V

    .line 70
    iget-object v3, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/16 v4, 0x27

    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 71
    iget-object v3, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v3

    int-to-long v5, v3

    .line 72
    .local v5, "ptsAdjustment":J
    const/16 v3, 0x20

    shl-long v7, v5, v3

    iget-object v9, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    invoke-virtual {v9, v3}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v3

    int-to-long v9, v3

    or-long v5, v7, v9

    .line 74
    iget-object v3, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/16 v7, 0x14

    invoke-virtual {v3, v7}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->skipBits(I)V

    .line 75
    iget-object v3, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/16 v7, 0xc

    invoke-virtual {v3, v7}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 76
    .local v3, "spliceCommandLength":I
    iget-object v7, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInfoDecoder;->sectionHeader:Landroidx/media2/exoplayer/external/util/ParsableBitArray;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroidx/media2/exoplayer/external/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 77
    .local v7, "spliceCommandType":I
    const/4 v8, 0x0

    .line 79
    .local v8, "command":Landroidx/media2/exoplayer/external/metadata/scte35/SpliceCommand;
    iget-object v9, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInfoDecoder;->sectionData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    const/16 v10, 0xe

    invoke-virtual {v9, v10}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 80
    if-eqz v7, :cond_3

    const/16 v9, 0xff

    if-eq v7, v9, :cond_2

    packed-switch v7, :pswitch_data_0

    goto :goto_2

    .line 92
    :pswitch_0
    iget-object v9, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInfoDecoder;->sectionData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v10, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInfoDecoder;->timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    invoke-static {v9, v5, v6, v10}, Landroidx/media2/exoplayer/external/metadata/scte35/TimeSignalCommand;->parseFromSection(Landroidx/media2/exoplayer/external/util/ParsableByteArray;JLandroidx/media2/exoplayer/external/util/TimestampAdjuster;)Landroidx/media2/exoplayer/external/metadata/scte35/TimeSignalCommand;

    move-result-object v8

    .line 93
    goto :goto_2

    .line 88
    :pswitch_1
    iget-object v9, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInfoDecoder;->sectionData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    iget-object v10, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInfoDecoder;->timestampAdjuster:Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    invoke-static {v9, v5, v6, v10}, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand;->parseFromSection(Landroidx/media2/exoplayer/external/util/ParsableByteArray;JLandroidx/media2/exoplayer/external/util/TimestampAdjuster;)Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand;

    move-result-object v8

    .line 90
    goto :goto_2

    .line 85
    :pswitch_2
    iget-object v9, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInfoDecoder;->sectionData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-static {v9}, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand;->parseFromSection(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand;

    move-result-object v8

    .line 86
    goto :goto_2

    .line 95
    :cond_2
    iget-object v9, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInfoDecoder;->sectionData:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-static {v9, v3, v5, v6}, Landroidx/media2/exoplayer/external/metadata/scte35/PrivateCommand;->parseFromSection(Landroidx/media2/exoplayer/external/util/ParsableByteArray;IJ)Landroidx/media2/exoplayer/external/metadata/scte35/PrivateCommand;

    move-result-object v8

    .line 96
    goto :goto_2

    .line 82
    :cond_3
    new-instance v9, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceNullCommand;

    invoke-direct {v9}, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceNullCommand;-><init>()V

    move-object v8, v9

    .line 83
    nop

    .line 101
    :goto_2
    const/4 v9, 0x0

    if-nez v8, :cond_4

    new-instance v4, Landroidx/media2/exoplayer/external/metadata/Metadata;

    new-array v9, v9, [Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    invoke-direct {v4, v9}, Landroidx/media2/exoplayer/external/metadata/Metadata;-><init>([Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;)V

    goto :goto_3

    :cond_4
    new-instance v10, Landroidx/media2/exoplayer/external/metadata/Metadata;

    new-array v4, v4, [Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    aput-object v8, v4, v9

    invoke-direct {v10, v4}, Landroidx/media2/exoplayer/external/metadata/Metadata;-><init>([Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;)V

    move-object v4, v10

    :goto_3
    return-object v4

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
