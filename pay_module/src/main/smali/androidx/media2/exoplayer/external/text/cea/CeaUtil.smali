.class public final Landroidx/media2/exoplayer/external/text/cea/CeaUtil;
.super Ljava/lang/Object;
.source "CeaUtil.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final COUNTRY_CODE:I = 0xb5

.field private static final PAYLOAD_TYPE_CC:I = 0x4

.field private static final PROVIDER_CODE_ATSC:I = 0x31

.field private static final PROVIDER_CODE_DIRECTV:I = 0x2f

.field private static final TAG:Ljava/lang/String; = "CeaUtil"

.field public static final USER_DATA_IDENTIFIER_GA94:I = 0x47413934

.field public static final USER_DATA_TYPE_CODE_MPEG_CC:I = 0x3


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static consume(JLandroidx/media2/exoplayer/external/util/ParsableByteArray;[Landroidx/media2/exoplayer/external/extractor/TrackOutput;)V
    .locals 12
    .param p0, "presentationTimeUs"    # J
    .param p2, "seiBuffer"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p3, "outputs"    # [Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    .line 54
    :goto_0
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_a

    .line 55
    invoke-static {p2}, Landroidx/media2/exoplayer/external/text/cea/CeaUtil;->readNon255TerminatedValue(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)I

    move-result v0

    .line 56
    .local v0, "payloadType":I
    invoke-static {p2}, Landroidx/media2/exoplayer/external/text/cea/CeaUtil;->readNon255TerminatedValue(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)I

    move-result v2

    .line 57
    .local v2, "payloadSize":I
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v3

    add-int/2addr v3, v2

    .line 59
    .local v3, "nextPayloadPosition":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_9

    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    if-le v2, v4, :cond_0

    goto :goto_6

    .line 63
    :cond_0
    const/4 v4, 0x4

    if-ne v0, v4, :cond_8

    const/16 v4, 0x8

    if-lt v2, v4, :cond_8

    .line 64
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 65
    .local v4, "countryCode":I
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    .line 66
    .local v5, "providerCode":I
    const/4 v6, 0x0

    .line 67
    .local v6, "userIdentifier":I
    const/16 v7, 0x31

    if-ne v5, v7, :cond_1

    .line 68
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v6

    goto :goto_1

    .line 67
    :cond_1
    nop

    .line 70
    :goto_1
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    .line 71
    .local v8, "userDataTypeCode":I
    const/16 v9, 0x2f

    if-ne v5, v9, :cond_2

    .line 72
    invoke-virtual {p2, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_2

    .line 71
    :cond_2
    nop

    .line 74
    :goto_2
    const/16 v10, 0xb5

    const/4 v11, 0x0

    if-ne v4, v10, :cond_4

    if-eq v5, v7, :cond_3

    if-ne v5, v9, :cond_4

    :cond_3
    const/4 v9, 0x3

    if-ne v8, v9, :cond_4

    const/4 v9, 0x1

    goto :goto_3

    :cond_4
    const/4 v9, 0x0

    .line 78
    .local v9, "messageIsSupportedCeaCaption":Z
    :goto_3
    if-ne v5, v7, :cond_6

    .line 79
    const v7, 0x47413934

    if-ne v6, v7, :cond_5

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :goto_4
    and-int/2addr v9, v1

    goto :goto_5

    .line 78
    :cond_6
    nop

    .line 81
    :goto_5
    if-eqz v9, :cond_7

    .line 82
    invoke-static {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/text/cea/CeaUtil;->consumeCcData(JLandroidx/media2/exoplayer/external/util/ParsableByteArray;[Landroidx/media2/exoplayer/external/extractor/TrackOutput;)V

    goto :goto_7

    .line 81
    :cond_7
    goto :goto_7

    .line 63
    .end local v4    # "countryCode":I
    .end local v5    # "providerCode":I
    .end local v6    # "userIdentifier":I
    .end local v8    # "userDataTypeCode":I
    .end local v9    # "messageIsSupportedCeaCaption":Z
    :cond_8
    goto :goto_7

    .line 59
    :cond_9
    :goto_6
    nop

    .line 61
    const-string v1, "CeaUtil"

    const-string v4, "Skipping remainder of malformed SEI NAL unit."

    invoke-static {v1, v4}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v3

    .line 85
    :goto_7
    invoke-virtual {p2, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 86
    .end local v0    # "payloadType":I
    .end local v2    # "payloadSize":I
    .end local v3    # "nextPayloadPosition":I
    goto :goto_0

    .line 87
    :cond_a
    return-void
.end method

.method public static consumeCcData(JLandroidx/media2/exoplayer/external/util/ParsableByteArray;[Landroidx/media2/exoplayer/external/extractor/TrackOutput;)V
    .locals 18
    .param p0, "presentationTimeUs"    # J
    .param p2, "ccDataBuffer"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p3, "outputs"    # [Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    .line 99
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual/range {p2 .. p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 100
    .local v2, "firstByte":I
    and-int/lit8 v3, v2, 0x40

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 101
    .local v3, "processCcDataFlag":Z
    :goto_0
    if-nez v3, :cond_1

    .line 103
    return-void

    .line 105
    :cond_1
    and-int/lit8 v6, v2, 0x1f

    .line 106
    .local v6, "ccCount":I
    invoke-virtual {v0, v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 109
    mul-int/lit8 v5, v6, 0x3

    .line 110
    .local v5, "sampleLength":I
    invoke-virtual/range {p2 .. p2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v14

    .line 111
    .local v14, "sampleStartPosition":I
    array-length v15, v1

    :goto_1
    if-ge v4, v15, :cond_2

    aget-object v13, v1, v4

    .line 112
    .local v13, "output":Landroidx/media2/exoplayer/external/extractor/TrackOutput;
    invoke-virtual {v0, v14}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 113
    invoke-interface {v13, v0, v5}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    .line 114
    const/4 v10, 0x1

    const/4 v12, 0x0

    const/16 v16, 0x0

    move-object v7, v13

    move-wide/from16 v8, p0

    move v11, v5

    move-object/from16 v17, v13

    .end local v13    # "output":Landroidx/media2/exoplayer/external/extractor/TrackOutput;
    .local v17, "output":Landroidx/media2/exoplayer/external/extractor/TrackOutput;
    move-object/from16 v13, v16

    invoke-interface/range {v7 .. v13}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;)V

    .line 111
    .end local v17    # "output":Landroidx/media2/exoplayer/external/extractor/TrackOutput;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 121
    :cond_2
    return-void
.end method

.method private static readNon255TerminatedValue(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)I
    .locals 3
    .param p0, "buffer"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 133
    const/4 v0, 0x0

    .line 135
    .local v0, "value":I
    :goto_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-nez v1, :cond_0

    .line 136
    const/4 v1, -0x1

    return v1

    .line 138
    :cond_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 139
    .local v1, "b":I
    add-int/2addr v0, v1

    .line 140
    const/16 v2, 0xff

    if-eq v1, v2, :cond_1

    .line 141
    return v0

    .line 140
    :cond_1
    goto :goto_0
.end method
