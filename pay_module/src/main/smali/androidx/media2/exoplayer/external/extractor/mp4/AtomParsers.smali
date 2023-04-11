.class final Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;
.super Ljava/lang/Object;
.source "AtomParsers.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$Stz2SampleSizeBox;,
        Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StszSampleSizeBox;,
        Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$SampleSizeBox;,
        Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;,
        Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$TkhdData;,
        Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;
    }
.end annotation


# static fields
.field private static final MAX_GAPLESS_TRIM_SIZE_SAMPLES:I = 0x4

.field private static final TAG:Ljava/lang/String; = "AtomParsers"

.field private static final TYPE_clcp:I = 0x636c6370

.field private static final TYPE_mdta:I = 0x6d647461

.field private static final TYPE_meta:I = 0x6d657461

.field private static final TYPE_sbtl:I = 0x7362746c

.field private static final TYPE_soun:I = 0x736f756e

.field private static final TYPE_subt:I = 0x73756274

.field private static final TYPE_text:I = 0x74657874

.field private static final TYPE_vide:I = 0x76696465

.field private static final opusMagic:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 89
    const-string v0, "OpusHead"

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->opusMagic:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1406
    return-void
.end method

.method private static canApplyEditWithGaplessInfo([JJJJ)Z
    .locals 8
    .param p0, "timestamps"    # [J
    .param p1, "duration"    # J
    .param p3, "editStartTime"    # J
    .param p5, "editEndTime"    # J

    .line 1394
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 1395
    .local v0, "lastIndex":I
    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Landroidx/media2/exoplayer/external/util/Util;->constrainValue(III)I

    move-result v4

    .line 1396
    .local v4, "latestDelayIndex":I
    array-length v5, p0

    sub-int/2addr v5, v2

    .line 1397
    invoke-static {v5, v3, v0}, Landroidx/media2/exoplayer/external/util/Util;->constrainValue(III)I

    move-result v2

    .line 1398
    .local v2, "earliestPaddingIndex":I
    aget-wide v5, p0, v3

    cmp-long v7, v5, p3

    if-gtz v7, :cond_0

    aget-wide v5, p0, v4

    cmp-long v7, p3, v5

    if-gez v7, :cond_0

    aget-wide v5, p0, v2

    cmp-long v7, v5, p5

    if-gez v7, :cond_0

    cmp-long v5, p5, p1

    if-gtz v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static findEsdsPosition(Landroidx/media2/exoplayer/external/util/ParsableByteArray;II)I
    .locals 4
    .param p0, "parent"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p1, "position"    # I
    .param p2, "size"    # I

    .line 1202
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 1203
    .local v0, "childAtomPosition":I
    :goto_0
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_2

    .line 1204
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 1205
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1206
    .local v1, "childAtomSize":I
    if-lez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    const-string v3, "childAtomSize should be positive"

    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 1207
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 1208
    .local v2, "childType":I
    const v3, 0x65736473

    if-ne v2, v3, :cond_1

    .line 1209
    return v0

    .line 1211
    :cond_1
    add-int/2addr v0, v1

    .line 1212
    .end local v1    # "childAtomSize":I
    .end local v2    # "childType":I
    goto :goto_0

    .line 1213
    :cond_2
    const/4 v1, -0x1

    return v1
.end method

.method private static getTrackTypeForHdlr(I)I
    .locals 1
    .param p0, "hdlr"    # I

    .line 706
    const v0, 0x736f756e

    if-ne p0, v0, :cond_0

    .line 707
    const/4 v0, 0x1

    return v0

    .line 708
    :cond_0
    const v0, 0x76696465

    if-ne p0, v0, :cond_1

    .line 709
    const/4 v0, 0x2

    return v0

    .line 710
    :cond_1
    const v0, 0x74657874

    if-eq p0, v0, :cond_4

    const v0, 0x7362746c

    if-eq p0, v0, :cond_4

    const v0, 0x73756274

    if-eq p0, v0, :cond_4

    const v0, 0x636c6370

    if-ne p0, v0, :cond_2

    goto :goto_0

    .line 712
    :cond_2
    const v0, 0x6d657461

    if-ne p0, v0, :cond_3

    .line 713
    const/4 v0, 0x4

    return v0

    .line 715
    :cond_3
    const/4 v0, -0x1

    return v0

    .line 710
    :cond_4
    :goto_0
    nop

    .line 711
    const/4 v0, 0x3

    return v0
.end method

.method private static parseAudioSampleEntry(Landroidx/media2/exoplayer/external/util/ParsableByteArray;IIIILjava/lang/String;ZLandroidx/media2/exoplayer/external/drm/DrmInitData;Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;I)V
    .locals 30
    .param p0, "parent"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p1, "atomType"    # I
    .param p2, "position"    # I
    .param p3, "size"    # I
    .param p4, "trackId"    # I
    .param p5, "language"    # Ljava/lang/String;
    .param p6, "isQuickTime"    # Z
    .param p7, "drmInitData"    # Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .param p8, "out"    # Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;
    .param p9, "entryIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 1040
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v15, p5

    move-object/from16 v3, p7

    move-object/from16 v14, p8

    add-int/lit8 v4, v1, 0x8

    const/16 v5, 0x8

    add-int/2addr v4, v5

    invoke-virtual {v0, v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 1042
    const/4 v4, 0x0

    .line 1043
    .local v4, "quickTimeSoundDescriptionVersion":I
    const/4 v6, 0x6

    if-eqz p6, :cond_0

    .line 1044
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v4

    .line 1045
    invoke-virtual {v0, v6}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    move v13, v4

    goto :goto_0

    .line 1047
    :cond_0
    invoke-virtual {v0, v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    move v13, v4

    .line 1053
    .end local v4    # "quickTimeSoundDescriptionVersion":I
    .local v13, "quickTimeSoundDescriptionVersion":I
    :goto_0
    const/4 v12, 0x2

    const/16 v4, 0x10

    const/4 v11, 0x1

    if-eqz v13, :cond_3

    if-ne v13, v11, :cond_1

    goto :goto_1

    .line 1061
    :cond_1
    if-ne v13, v12, :cond_2

    .line 1062
    invoke-virtual {v0, v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 1064
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v5, v4

    .line 1065
    .local v5, "sampleRate":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    .line 1069
    .local v4, "channelCount":I
    const/16 v6, 0x14

    invoke-virtual {v0, v6}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    move v6, v5

    goto :goto_3

    .line 1072
    .end local v4    # "channelCount":I
    .end local v5    # "sampleRate":I
    :cond_2
    return-void

    .line 1053
    :cond_3
    :goto_1
    nop

    .line 1054
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    .line 1055
    .local v5, "channelCount":I
    invoke-virtual {v0, v6}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 1056
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedFixedPoint1616()I

    move-result v6

    .line 1058
    .local v6, "sampleRate":I
    if-ne v13, v11, :cond_4

    .line 1059
    invoke-virtual {v0, v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_2

    .line 1058
    :cond_4
    nop

    .line 1075
    :goto_2
    move v4, v5

    .end local v5    # "channelCount":I
    .restart local v4    # "channelCount":I
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v5

    .line 1076
    .local v5, "childPosition":I
    const v7, 0x656e6361

    const/16 v16, 0x0

    move/from16 v8, p1

    if-ne v8, v7, :cond_7

    .line 1077
    invoke-static {v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->parseSampleEntryEncryptionData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v7

    .line 1079
    .local v7, "sampleEntryEncryptionData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;>;"
    if-eqz v7, :cond_6

    .line 1080
    iget-object v9, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1081
    .end local p1    # "atomType":I
    .local v8, "atomType":I
    if-nez v3, :cond_5

    move-object/from16 v9, v16

    goto :goto_4

    .line 1082
    :cond_5
    iget-object v9, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;

    iget-object v9, v9, Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    invoke-virtual {v3, v9}, Landroidx/media2/exoplayer/external/drm/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Landroidx/media2/exoplayer/external/drm/DrmInitData;

    move-result-object v9

    :goto_4
    move-object v3, v9

    .line 1083
    .end local p7    # "drmInitData":Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .local v3, "drmInitData":Landroidx/media2/exoplayer/external/drm/DrmInitData;
    iget-object v9, v14, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;

    iget-object v10, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;

    aput-object v10, v9, p9

    goto :goto_5

    .line 1079
    .end local v3    # "drmInitData":Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .end local v8    # "atomType":I
    .restart local p1    # "atomType":I
    .restart local p7    # "drmInitData":Landroidx/media2/exoplayer/external/drm/DrmInitData;
    :cond_6
    nop

    .line 1085
    .end local p1    # "atomType":I
    .end local p7    # "drmInitData":Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .restart local v3    # "drmInitData":Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .restart local v8    # "atomType":I
    :goto_5
    invoke-virtual {v0, v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    move-object v9, v3

    move v10, v8

    goto :goto_6

    .line 1076
    .end local v3    # "drmInitData":Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .end local v7    # "sampleEntryEncryptionData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;>;"
    .end local v8    # "atomType":I
    .restart local p1    # "atomType":I
    .restart local p7    # "drmInitData":Landroidx/media2/exoplayer/external/drm/DrmInitData;
    :cond_7
    move-object v9, v3

    move v10, v8

    .line 1093
    .end local p1    # "atomType":I
    .end local p7    # "drmInitData":Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .local v9, "drmInitData":Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .local v10, "atomType":I
    :goto_6
    const/4 v3, 0x0

    .line 1094
    .local v3, "mimeType":Ljava/lang/String;
    const v7, 0x61632d33

    const v8, 0x616c6163

    if-ne v10, v7, :cond_8

    .line 1095
    const-string v3, "audio/ac3"

    goto/16 :goto_9

    .line 1096
    :cond_8
    const v7, 0x65632d33

    if-ne v10, v7, :cond_9

    .line 1097
    const-string v3, "audio/eac3"

    goto/16 :goto_9

    .line 1098
    :cond_9
    const v7, 0x61632d34

    if-ne v10, v7, :cond_a

    .line 1099
    const-string v3, "audio/ac4"

    goto/16 :goto_9

    .line 1100
    :cond_a
    const v7, 0x64747363

    if-ne v10, v7, :cond_b

    .line 1101
    const-string v3, "audio/vnd.dts"

    goto/16 :goto_9

    .line 1102
    :cond_b
    const v7, 0x64747368

    if-eq v10, v7, :cond_18

    const v7, 0x6474736c

    if-ne v10, v7, :cond_c

    goto :goto_8

    .line 1104
    :cond_c
    const v7, 0x64747365

    if-ne v10, v7, :cond_d

    .line 1105
    const-string v3, "audio/vnd.dts.hd;profile=lbr"

    goto :goto_9

    .line 1106
    :cond_d
    const v7, 0x73616d72

    if-ne v10, v7, :cond_e

    .line 1107
    const-string v3, "audio/3gpp"

    goto :goto_9

    .line 1108
    :cond_e
    const v7, 0x73617762

    if-ne v10, v7, :cond_f

    .line 1109
    const-string v3, "audio/amr-wb"

    goto :goto_9

    .line 1110
    :cond_f
    const v7, 0x6c70636d

    if-eq v10, v7, :cond_17

    const v7, 0x736f7774

    if-ne v10, v7, :cond_10

    goto :goto_7

    .line 1112
    :cond_10
    const v7, 0x2e6d7033

    if-ne v10, v7, :cond_11

    .line 1113
    const-string v3, "audio/mpeg"

    goto :goto_9

    .line 1114
    :cond_11
    if-ne v10, v8, :cond_12

    .line 1115
    const-string v3, "audio/alac"

    goto :goto_9

    .line 1116
    :cond_12
    const v7, 0x616c6177

    if-ne v10, v7, :cond_13

    .line 1117
    const-string v3, "audio/g711-alaw"

    goto :goto_9

    .line 1118
    :cond_13
    const v7, 0x756c6177

    if-ne v10, v7, :cond_14

    .line 1119
    const-string v3, "audio/g711-mlaw"

    goto :goto_9

    .line 1120
    :cond_14
    const v7, 0x4f707573

    if-ne v10, v7, :cond_15

    .line 1121
    const-string v3, "audio/opus"

    goto :goto_9

    .line 1122
    :cond_15
    const v7, 0x664c6143

    if-ne v10, v7, :cond_16

    .line 1123
    const-string v3, "audio/flac"

    goto :goto_9

    .line 1122
    :cond_16
    goto :goto_9

    .line 1110
    :cond_17
    :goto_7
    nop

    .line 1111
    const-string v3, "audio/raw"

    goto :goto_9

    .line 1102
    :cond_18
    :goto_8
    nop

    .line 1103
    const-string v3, "audio/vnd.dts.hd"

    .line 1126
    :goto_9
    const/4 v7, 0x0

    move/from16 v17, v4

    move/from16 v18, v6

    move-object/from16 v19, v7

    move-object v6, v3

    move v7, v5

    .line 1127
    .end local v3    # "mimeType":Ljava/lang/String;
    .end local v4    # "channelCount":I
    .end local v5    # "childPosition":I
    .local v6, "mimeType":Ljava/lang/String;
    .local v7, "childPosition":I
    .local v17, "channelCount":I
    .local v18, "sampleRate":I
    .local v19, "initializationData":[B
    :goto_a
    sub-int v3, v7, v1

    const/4 v4, -0x1

    if-ge v3, v2, :cond_26

    .line 1128
    invoke-virtual {v0, v7}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 1129
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 1130
    .local v5, "childAtomSize":I
    const/4 v3, 0x0

    if-lez v5, :cond_19

    const/4 v8, 0x1

    goto :goto_b

    :cond_19
    const/4 v8, 0x0

    :goto_b
    const-string v11, "childAtomSize should be positive"

    invoke-static {v8, v11}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 1131
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v11

    .line 1132
    .local v11, "childAtomType":I
    const v8, 0x65736473

    if-eq v11, v8, :cond_22

    if-eqz p6, :cond_1a

    const v12, 0x77617665

    if-ne v11, v12, :cond_1a

    move-object/from16 v26, v6

    move-object/from16 v22, v9

    move/from16 v27, v10

    move/from16 v23, v13

    const v6, 0x616c6163

    const/16 v20, 0x1

    const/16 v21, 0x2

    move v13, v7

    move v7, v5

    move v5, v11

    goto/16 :goto_c

    .line 1149
    :cond_1a
    const v4, 0x64616333

    if-ne v11, v4, :cond_1b

    .line 1150
    add-int/lit8 v3, v7, 0x8

    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 1151
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v15, v9}, Landroidx/media2/exoplayer/external/audio/Ac3Util;->parseAc3AnnexFFormat(Landroidx/media2/exoplayer/external/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v3

    iput-object v3, v14, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;->format:Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v26, v6

    move-object/from16 v22, v9

    move/from16 v27, v10

    move/from16 v23, v13

    const v6, 0x616c6163

    const/16 v20, 0x1

    const/16 v21, 0x2

    move v13, v7

    move v7, v5

    move v5, v11

    goto/16 :goto_f

    .line 1153
    :cond_1b
    const v4, 0x64656333

    if-ne v11, v4, :cond_1c

    .line 1154
    add-int/lit8 v3, v7, 0x8

    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 1155
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v15, v9}, Landroidx/media2/exoplayer/external/audio/Ac3Util;->parseEAc3AnnexFFormat(Landroidx/media2/exoplayer/external/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v3

    iput-object v3, v14, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;->format:Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v26, v6

    move-object/from16 v22, v9

    move/from16 v27, v10

    move/from16 v23, v13

    const v6, 0x616c6163

    const/16 v20, 0x1

    const/16 v21, 0x2

    move v13, v7

    move v7, v5

    move v5, v11

    goto/16 :goto_f

    .line 1157
    :cond_1c
    const v4, 0x64616334

    if-ne v11, v4, :cond_1d

    .line 1158
    add-int/lit8 v3, v7, 0x8

    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 1159
    nop

    .line 1160
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v15, v9}, Landroidx/media2/exoplayer/external/audio/Ac4Util;->parseAc4AnnexEFormat(Landroidx/media2/exoplayer/external/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v3

    iput-object v3, v14, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;->format:Landroidx/media2/exoplayer/external/Format;

    move-object/from16 v26, v6

    move-object/from16 v22, v9

    move/from16 v27, v10

    move/from16 v23, v13

    const v6, 0x616c6163

    const/16 v20, 0x1

    const/16 v21, 0x2

    move v13, v7

    move v7, v5

    move v5, v11

    goto/16 :goto_f

    .line 1161
    :cond_1d
    const v4, 0x64647473

    if-ne v11, v4, :cond_1e

    .line 1162
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    const/4 v12, -0x1

    const/16 v22, -0x1

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object v4, v6

    move/from16 v25, v5

    .end local v5    # "childAtomSize":I
    .local v25, "childAtomSize":I
    move-object v5, v8

    move-object v8, v6

    .end local v6    # "mimeType":Ljava/lang/String;
    .local v8, "mimeType":Ljava/lang/String;
    move v6, v12

    move v12, v7

    .end local v7    # "childPosition":I
    .local v12, "childPosition":I
    move/from16 v7, v22

    move-object/from16 v26, v8

    .end local v8    # "mimeType":Ljava/lang/String;
    .local v26, "mimeType":Ljava/lang/String;
    move/from16 v8, v17

    move-object/from16 v22, v9

    .end local v9    # "drmInitData":Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .local v22, "drmInitData":Landroidx/media2/exoplayer/external/drm/DrmInitData;
    move/from16 v9, v18

    move/from16 v27, v10

    .end local v10    # "atomType":I
    .local v27, "atomType":I
    move-object/from16 v10, v23

    move/from16 v28, v11

    const/16 v20, 0x1

    .end local v11    # "childAtomType":I
    .local v28, "childAtomType":I
    move-object/from16 v11, v22

    move/from16 v29, v12

    const/16 v21, 0x2

    .end local v12    # "childPosition":I
    .local v29, "childPosition":I
    move/from16 v12, v24

    move/from16 v23, v13

    .end local v13    # "quickTimeSoundDescriptionVersion":I
    .local v23, "quickTimeSoundDescriptionVersion":I
    move-object/from16 v13, p5

    invoke-static/range {v3 .. v13}, Landroidx/media2/exoplayer/external/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v3

    iput-object v3, v14, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;->format:Landroidx/media2/exoplayer/external/Format;

    move/from16 v7, v25

    move/from16 v5, v28

    move/from16 v13, v29

    const v6, 0x616c6163

    goto/16 :goto_f

    .line 1165
    .end local v22    # "drmInitData":Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .end local v23    # "quickTimeSoundDescriptionVersion":I
    .end local v25    # "childAtomSize":I
    .end local v26    # "mimeType":Ljava/lang/String;
    .end local v27    # "atomType":I
    .end local v28    # "childAtomType":I
    .end local v29    # "childPosition":I
    .restart local v5    # "childAtomSize":I
    .restart local v6    # "mimeType":Ljava/lang/String;
    .restart local v7    # "childPosition":I
    .restart local v9    # "drmInitData":Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .restart local v10    # "atomType":I
    .restart local v11    # "childAtomType":I
    .restart local v13    # "quickTimeSoundDescriptionVersion":I
    :cond_1e
    move/from16 v25, v5

    move-object/from16 v26, v6

    move/from16 v29, v7

    move-object/from16 v22, v9

    move/from16 v27, v10

    move/from16 v28, v11

    move/from16 v23, v13

    const/16 v20, 0x1

    const/16 v21, 0x2

    .end local v5    # "childAtomSize":I
    .end local v6    # "mimeType":Ljava/lang/String;
    .end local v7    # "childPosition":I
    .end local v9    # "drmInitData":Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .end local v10    # "atomType":I
    .end local v11    # "childAtomType":I
    .end local v13    # "quickTimeSoundDescriptionVersion":I
    .restart local v22    # "drmInitData":Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .restart local v23    # "quickTimeSoundDescriptionVersion":I
    .restart local v25    # "childAtomSize":I
    .restart local v26    # "mimeType":Ljava/lang/String;
    .restart local v27    # "atomType":I
    .restart local v28    # "childAtomType":I
    .restart local v29    # "childPosition":I
    move/from16 v5, v28

    const v6, 0x616c6163

    .end local v28    # "childAtomType":I
    .local v5, "childAtomType":I
    if-ne v5, v6, :cond_1f

    .line 1166
    move/from16 v7, v25

    .end local v25    # "childAtomSize":I
    .local v7, "childAtomSize":I
    new-array v4, v7, [B

    .line 1167
    .end local v19    # "initializationData":[B
    .local v4, "initializationData":[B
    move/from16 v13, v29

    .end local v29    # "childPosition":I
    .local v13, "childPosition":I
    invoke-virtual {v0, v13}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 1168
    invoke-virtual {v0, v4, v3, v7}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    move-object/from16 v19, v4

    goto/16 :goto_f

    .line 1169
    .end local v4    # "initializationData":[B
    .end local v7    # "childAtomSize":I
    .end local v13    # "childPosition":I
    .restart local v19    # "initializationData":[B
    .restart local v25    # "childAtomSize":I
    .restart local v29    # "childPosition":I
    :cond_1f
    move/from16 v7, v25

    move/from16 v13, v29

    .end local v25    # "childAtomSize":I
    .end local v29    # "childPosition":I
    .restart local v7    # "childAtomSize":I
    .restart local v13    # "childPosition":I
    const v4, 0x644f7073

    if-ne v5, v4, :cond_20

    .line 1172
    add-int/lit8 v4, v7, -0x8

    .line 1173
    .local v4, "childAtomBodySize":I
    sget-object v8, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->opusMagic:[B

    array-length v9, v8

    add-int/2addr v9, v4

    new-array v9, v9, [B

    .line 1174
    .end local v19    # "initializationData":[B
    .local v9, "initializationData":[B
    array-length v10, v8

    invoke-static {v8, v3, v9, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1175
    add-int/lit8 v3, v13, 0x8

    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 1176
    sget-object v3, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->opusMagic:[B

    array-length v3, v3

    invoke-virtual {v0, v9, v3, v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    .line 1177
    .end local v4    # "childAtomBodySize":I
    move-object/from16 v19, v9

    goto/16 :goto_f

    .end local v9    # "initializationData":[B
    .restart local v19    # "initializationData":[B
    :cond_20
    const v4, 0x64664c61

    if-ne v7, v4, :cond_21

    .line 1178
    add-int/lit8 v4, v7, -0xc

    .line 1179
    .restart local v4    # "childAtomBodySize":I
    new-array v8, v4, [B

    .line 1180
    .end local v19    # "initializationData":[B
    .local v8, "initializationData":[B
    add-int/lit8 v9, v13, 0xc

    invoke-virtual {v0, v9}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 1181
    invoke-virtual {v0, v8, v3, v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    move-object/from16 v19, v8

    goto :goto_f

    .line 1177
    .end local v4    # "childAtomBodySize":I
    .end local v8    # "initializationData":[B
    .restart local v19    # "initializationData":[B
    :cond_21
    goto :goto_f

    .line 1132
    .end local v22    # "drmInitData":Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .end local v23    # "quickTimeSoundDescriptionVersion":I
    .end local v26    # "mimeType":Ljava/lang/String;
    .end local v27    # "atomType":I
    .local v5, "childAtomSize":I
    .restart local v6    # "mimeType":Ljava/lang/String;
    .local v7, "childPosition":I
    .local v9, "drmInitData":Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .restart local v10    # "atomType":I
    .restart local v11    # "childAtomType":I
    .local v13, "quickTimeSoundDescriptionVersion":I
    :cond_22
    move-object/from16 v26, v6

    move-object/from16 v22, v9

    move/from16 v27, v10

    move/from16 v23, v13

    const v6, 0x616c6163

    const/16 v20, 0x1

    const/16 v21, 0x2

    move v13, v7

    move v7, v5

    move v5, v11

    .line 1133
    .end local v6    # "mimeType":Ljava/lang/String;
    .end local v9    # "drmInitData":Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .end local v10    # "atomType":I
    .end local v11    # "childAtomType":I
    .local v5, "childAtomType":I
    .local v7, "childAtomSize":I
    .local v13, "childPosition":I
    .restart local v22    # "drmInitData":Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .restart local v23    # "quickTimeSoundDescriptionVersion":I
    .restart local v26    # "mimeType":Ljava/lang/String;
    .restart local v27    # "atomType":I
    :goto_c
    if-ne v5, v8, :cond_23

    move v3, v13

    goto :goto_d

    .line 1134
    :cond_23
    invoke-static {v0, v13, v7}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->findEsdsPosition(Landroidx/media2/exoplayer/external/util/ParsableByteArray;II)I

    move-result v3

    :goto_d
    nop

    .line 1135
    .local v3, "esdsAtomPosition":I
    if-eq v3, v4, :cond_25

    .line 1136
    nop

    .line 1137
    invoke-static {v0, v3}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->parseEsdsFromParent(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)Landroid/util/Pair;

    move-result-object v4

    .line 1138
    .local v4, "mimeTypeAndInitializationData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[B>;"
    iget-object v8, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    .line 1139
    .end local v26    # "mimeType":Ljava/lang/String;
    .local v8, "mimeType":Ljava/lang/String;
    iget-object v9, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v19, v9

    check-cast v19, [B

    .line 1140
    const-string v9, "audio/mp4a-latm"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_24

    .line 1143
    nop

    .line 1144
    invoke-static/range {v19 .. v19}, Landroidx/media2/exoplayer/external/util/CodecSpecificDataUtil;->parseAacAudioSpecificConfig([B)Landroid/util/Pair;

    move-result-object v9

    .line 1145
    .local v9, "audioSpecificConfig":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v10, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 1146
    iget-object v10, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v17

    goto :goto_e

    .line 1140
    .end local v9    # "audioSpecificConfig":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_24
    goto :goto_e

    .line 1135
    .end local v4    # "mimeTypeAndInitializationData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[B>;"
    .end local v8    # "mimeType":Ljava/lang/String;
    .restart local v26    # "mimeType":Ljava/lang/String;
    :cond_25
    move-object/from16 v8, v26

    .line 1149
    .end local v3    # "esdsAtomPosition":I
    .end local v26    # "mimeType":Ljava/lang/String;
    .restart local v8    # "mimeType":Ljava/lang/String;
    :goto_e
    move-object/from16 v26, v8

    .line 1183
    .end local v8    # "mimeType":Ljava/lang/String;
    .restart local v26    # "mimeType":Ljava/lang/String;
    :goto_f
    add-int/2addr v7, v13

    .line 1184
    .end local v5    # "childAtomType":I
    .end local v13    # "childPosition":I
    .local v7, "childPosition":I
    move-object/from16 v9, v22

    move/from16 v13, v23

    move-object/from16 v6, v26

    move/from16 v10, v27

    const v8, 0x616c6163

    const/4 v11, 0x1

    const/4 v12, 0x2

    goto/16 :goto_a

    .line 1186
    .end local v22    # "drmInitData":Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .end local v23    # "quickTimeSoundDescriptionVersion":I
    .end local v26    # "mimeType":Ljava/lang/String;
    .end local v27    # "atomType":I
    .restart local v6    # "mimeType":Ljava/lang/String;
    .local v9, "drmInitData":Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .restart local v10    # "atomType":I
    .local v13, "quickTimeSoundDescriptionVersion":I
    :cond_26
    move-object/from16 v26, v6

    move-object/from16 v22, v9

    move/from16 v27, v10

    move/from16 v23, v13

    const/16 v21, 0x2

    move v13, v7

    .end local v6    # "mimeType":Ljava/lang/String;
    .end local v7    # "childPosition":I
    .end local v9    # "drmInitData":Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .end local v10    # "atomType":I
    .local v13, "childPosition":I
    .restart local v22    # "drmInitData":Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .restart local v23    # "quickTimeSoundDescriptionVersion":I
    .restart local v26    # "mimeType":Ljava/lang/String;
    .restart local v27    # "atomType":I
    iget-object v3, v14, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;->format:Landroidx/media2/exoplayer/external/Format;

    if-nez v3, :cond_2a

    move-object/from16 v12, v26

    .end local v26    # "mimeType":Ljava/lang/String;
    .local v12, "mimeType":Ljava/lang/String;
    if-eqz v12, :cond_29

    .line 1189
    const-string v3, "audio/raw"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    const/4 v10, 0x2

    goto :goto_10

    :cond_27
    const/4 v10, -0x1

    .line 1190
    .local v10, "pcmEncoding":I
    :goto_10
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    .line 1192
    if-nez v19, :cond_28

    move-object/from16 v11, v16

    goto :goto_11

    :cond_28
    invoke-static/range {v19 .. v19}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move-object v11, v4

    :goto_11
    const/16 v16, 0x0

    .line 1190
    move-object v4, v12

    move/from16 v8, v17

    move/from16 v9, v18

    move-object/from16 v26, v12

    .end local v12    # "mimeType":Ljava/lang/String;
    .restart local v26    # "mimeType":Ljava/lang/String;
    move-object/from16 v12, v22

    move/from16 v20, v13

    .end local v13    # "childPosition":I
    .local v20, "childPosition":I
    move/from16 v13, v16

    move-object v0, v14

    move-object/from16 v14, p5

    invoke-static/range {v3 .. v14}, Landroidx/media2/exoplayer/external/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v3

    iput-object v3, v0, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;->format:Landroidx/media2/exoplayer/external/Format;

    goto :goto_12

    .line 1186
    .end local v10    # "pcmEncoding":I
    .end local v20    # "childPosition":I
    .end local v26    # "mimeType":Ljava/lang/String;
    .restart local v12    # "mimeType":Ljava/lang/String;
    .restart local v13    # "childPosition":I
    :cond_29
    move-object/from16 v26, v12

    move/from16 v20, v13

    move-object v0, v14

    .end local v12    # "mimeType":Ljava/lang/String;
    .end local v13    # "childPosition":I
    .restart local v20    # "childPosition":I
    .restart local v26    # "mimeType":Ljava/lang/String;
    goto :goto_12

    .end local v20    # "childPosition":I
    .restart local v13    # "childPosition":I
    :cond_2a
    move/from16 v20, v13

    move-object v0, v14

    .line 1195
    .end local v13    # "childPosition":I
    .restart local v20    # "childPosition":I
    :goto_12
    return-void
.end method

.method static parseCommonEncryptionSinfFromParent(Landroidx/media2/exoplayer/external/util/ParsableByteArray;II)Landroid/util/Pair;
    .locals 9
    .param p0, "parent"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p1, "position"    # I
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/util/ParsableByteArray;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;",
            ">;"
        }
    .end annotation

    .line 1287
    add-int/lit8 v0, p1, 0x8

    .line 1288
    .local v0, "childPosition":I
    const/4 v1, -0x1

    .line 1289
    .local v1, "schemeInformationBoxPosition":I
    const/4 v2, 0x0

    .line 1290
    .local v2, "schemeInformationBoxSize":I
    const/4 v3, 0x0

    .line 1291
    .local v3, "schemeType":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1292
    .local v4, "dataFormat":Ljava/lang/Integer;
    :goto_0
    sub-int v5, v0, p1

    if-ge v5, p2, :cond_3

    .line 1293
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 1294
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 1295
    .local v5, "childAtomSize":I
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v6

    .line 1296
    .local v6, "childAtomType":I
    const v7, 0x66726d61

    if-ne v6, v7, :cond_0

    .line 1297
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    .line 1298
    :cond_0
    const v7, 0x7363686d

    if-ne v6, v7, :cond_1

    .line 1299
    const/4 v7, 0x4

    invoke-virtual {p0, v7}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 1301
    invoke-virtual {p0, v7}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1302
    :cond_1
    const v7, 0x73636869

    if-ne v6, v7, :cond_2

    .line 1303
    move v1, v0

    .line 1304
    move v2, v5

    goto :goto_1

    .line 1302
    :cond_2
    nop

    .line 1306
    :goto_1
    add-int/2addr v0, v5

    .line 1307
    .end local v5    # "childAtomSize":I
    .end local v6    # "childAtomType":I
    goto :goto_0

    .line 1309
    :cond_3
    const-string v5, "cenc"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "cbc1"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "cens"

    .line 1310
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "cbcs"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    .line 1319
    :cond_4
    const/4 v5, 0x0

    return-object v5

    .line 1310
    :cond_5
    :goto_2
    goto :goto_3

    .line 1309
    :cond_6
    nop

    .line 1311
    :goto_3
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_7

    const/4 v7, 0x1

    goto :goto_4

    :cond_7
    const/4 v7, 0x0

    :goto_4
    const-string v8, "frma atom is mandatory"

    invoke-static {v7, v8}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 1312
    const/4 v7, -0x1

    if-eq v1, v7, :cond_8

    const/4 v7, 0x1

    goto :goto_5

    :cond_8
    const/4 v7, 0x0

    :goto_5
    const-string v8, "schi atom is mandatory"

    invoke-static {v7, v8}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 1314
    invoke-static {p0, v1, v2, v3}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->parseSchiFromParent(Landroidx/media2/exoplayer/external/util/ParsableByteArray;IILjava/lang/String;)Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;

    move-result-object v7

    .line 1316
    .local v7, "encryptionBox":Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;
    if-eqz v7, :cond_9

    goto :goto_6

    :cond_9
    const/4 v5, 0x0

    :goto_6
    const-string v6, "tenc atom is mandatory"

    invoke-static {v5, v6}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 1317
    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    return-object v5
.end method

.method private static parseEdts(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;)Landroid/util/Pair;
    .locals 11
    .param p0, "edtsAtom"    # Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;",
            ")",
            "Landroid/util/Pair<",
            "[J[J>;"
        }
    .end annotation

    .line 1006
    if-eqz p0, :cond_5

    const v0, 0x656c7374

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    move-result-object v0

    move-object v1, v0

    .local v1, "elst":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    if-nez v0, :cond_0

    goto :goto_3

    .line 1009
    :cond_0
    iget-object v0, v1, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 1010
    .local v0, "elstData":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 1011
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 1012
    .local v2, "fullAtom":I
    invoke-static {v2}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v3

    .line 1013
    .local v3, "version":I
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    .line 1014
    .local v4, "entryCount":I
    new-array v5, v4, [J

    .line 1015
    .local v5, "editListDurations":[J
    new-array v6, v4, [J

    .line 1016
    .local v6, "editListMediaTimes":[J
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v4, :cond_4

    .line 1017
    nop

    .line 1018
    const/4 v8, 0x1

    if-ne v3, v8, :cond_1

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v9

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v9

    :goto_1
    aput-wide v9, v5, v7

    .line 1019
    if-ne v3, v8, :cond_2

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLong()J

    move-result-wide v9

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v9

    int-to-long v9, v9

    :goto_2
    aput-wide v9, v6, v7

    .line 1020
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readShort()S

    move-result v9

    .line 1021
    .local v9, "mediaRateInteger":I
    if-ne v9, v8, :cond_3

    .line 1025
    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 1016
    .end local v9    # "mediaRateInteger":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1023
    .restart local v9    # "mediaRateInteger":I
    :cond_3
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v10, "Unsupported media rate."

    invoke-direct {v8, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1016
    .end local v9    # "mediaRateInteger":I
    :cond_4
    nop

    .line 1027
    .end local v7    # "i":I
    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    return-object v7

    .line 1006
    .end local v0    # "elstData":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .end local v1    # "elst":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    .end local v2    # "fullAtom":I
    .end local v3    # "version":I
    .end local v4    # "entryCount":I
    .end local v5    # "editListDurations":[J
    .end local v6    # "editListMediaTimes":[J
    :cond_5
    :goto_3
    nop

    .line 1007
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private static parseEsdsFromParent(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)Landroid/util/Pair;
    .locals 6
    .param p0, "parent"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/util/ParsableByteArray;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .line 1220
    add-int/lit8 v0, p1, 0x8

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 1222
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 1223
    invoke-static {p0}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->parseExpandableClassSize(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)I

    .line 1224
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 1226
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 1227
    .local v2, "flags":I
    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_0

    .line 1228
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    .line 1227
    :cond_0
    nop

    .line 1230
    :goto_0
    and-int/lit8 v3, v2, 0x40

    if-eqz v3, :cond_1

    .line 1231
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_1

    .line 1230
    :cond_1
    nop

    .line 1233
    :goto_1
    and-int/lit8 v3, v2, 0x20

    if-eqz v3, :cond_2

    .line 1234
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_2

    .line 1233
    :cond_2
    nop

    .line 1238
    :goto_2
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 1239
    invoke-static {p0}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->parseExpandableClassSize(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)I

    .line 1242
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 1243
    .local v1, "objectTypeIndication":I
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/MimeTypes;->getMimeTypeFromMp4ObjectType(I)Ljava/lang/String;

    move-result-object v3

    .line 1244
    .local v3, "mimeType":Ljava/lang/String;
    const-string v4, "audio/mpeg"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "audio/vnd.dts"

    .line 1245
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "audio/vnd.dts.hd"

    .line 1246
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_3

    .line 1250
    :cond_3
    const/16 v4, 0xc

    invoke-virtual {p0, v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 1253
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 1254
    invoke-static {p0}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->parseExpandableClassSize(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)I

    move-result v0

    .line 1255
    .local v0, "initializationDataSize":I
    new-array v4, v0, [B

    .line 1256
    .local v4, "initializationData":[B
    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    .line 1257
    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    return-object v5

    .line 1245
    .end local v0    # "initializationDataSize":I
    .end local v4    # "initializationData":[B
    :cond_4
    goto :goto_3

    .line 1244
    :cond_5
    nop

    .line 1247
    :goto_3
    const/4 v0, 0x0

    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private static parseExpandableClassSize(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)I
    .locals 4
    .param p0, "data"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 1382
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 1383
    .local v0, "currentByte":I
    and-int/lit8 v1, v0, 0x7f

    .line 1384
    .local v1, "size":I
    :goto_0
    and-int/lit16 v2, v0, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_0

    .line 1385
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 1386
    shl-int/lit8 v2, v1, 0x7

    and-int/lit8 v3, v0, 0x7f

    or-int v1, v2, v3

    goto :goto_0

    .line 1388
    :cond_0
    return v1
.end method

.method private static parseHdlr(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)I
    .locals 1
    .param p0, "hdlr"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 700
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 701
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v0

    return v0
.end method

.method private static parseIlst(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)Landroidx/media2/exoplayer/external/metadata/Metadata;
    .locals 2
    .param p0, "ilst"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p1, "limit"    # I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 609
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 610
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 611
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;>;"
    :goto_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v1

    if-ge v1, p1, :cond_1

    .line 612
    invoke-static {p0}, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->parseIlstElement(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    move-result-object v1

    .line 613
    .local v1, "entry":Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;
    if-eqz v1, :cond_0

    .line 614
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 613
    :cond_0
    nop

    .line 616
    .end local v1    # "entry":Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;
    :goto_1
    goto :goto_0

    .line 617
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    new-instance v1, Landroidx/media2/exoplayer/external/metadata/Metadata;

    invoke-direct {v1, v0}, Landroidx/media2/exoplayer/external/metadata/Metadata;-><init>(Ljava/util/List;)V

    :goto_2
    return-object v1
.end method

.method private static parseMdhd(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroid/util/Pair;
    .locals 10
    .param p0, "mdhd"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 727
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 728
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 729
    .local v1, "fullAtom":I
    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v2

    .line 730
    .local v2, "version":I
    if-nez v2, :cond_0

    const/16 v3, 0x8

    goto :goto_0

    :cond_0
    const/16 v3, 0x10

    :goto_0
    invoke-virtual {p0, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 731
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v3

    .line 732
    .local v3, "timescale":J
    if-nez v2, :cond_1

    const/4 v0, 0x4

    nop

    :cond_1
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 733
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    .line 734
    .local v0, "languageCode":I
    shr-int/lit8 v5, v0, 0xa

    and-int/lit8 v5, v5, 0x1f

    add-int/lit8 v5, v5, 0x60

    int-to-char v5, v5

    shr-int/lit8 v6, v0, 0x5

    and-int/lit8 v6, v6, 0x1f

    add-int/lit8 v6, v6, 0x60

    int-to-char v6, v6

    and-int/lit8 v7, v0, 0x1f

    add-int/lit8 v7, v7, 0x60

    int-to-char v7, v7

    const/4 v8, 0x3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 739
    .local v5, "language":Ljava/lang/String;
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    return-object v6
.end method

.method public static parseMdtaFromMeta(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;)Landroidx/media2/exoplayer/external/metadata/Metadata;
    .locals 16
    .param p0, "meta"    # Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 545
    move-object/from16 v0, p0

    const v1, 0x68646c72    # 4.3148E24f

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    move-result-object v1

    .line 546
    .local v1, "hdlrAtom":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    const v2, 0x6b657973

    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    .line 547
    .local v2, "keysAtom":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    const v3, 0x696c7374

    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    .line 548
    .local v3, "ilstAtom":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    const/4 v4, 0x0

    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    iget-object v5, v1, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 551
    invoke-static {v5}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->parseHdlr(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)I

    move-result v5

    const v6, 0x6d647461

    if-eq v5, v6, :cond_0

    goto/16 :goto_5

    .line 557
    :cond_0
    iget-object v5, v2, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 558
    .local v5, "keys":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 559
    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v6

    .line 560
    .local v6, "entryCount":I
    new-array v7, v6, [Ljava/lang/String;

    .line 561
    .local v7, "keyNames":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v6, :cond_1

    .line 562
    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v9

    .line 563
    .local v9, "entrySize":I
    const/4 v10, 0x4

    invoke-virtual {v5, v10}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 564
    add-int/lit8 v10, v9, -0x8

    .line 565
    .local v10, "keySize":I
    invoke-virtual {v5, v10}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v8

    .line 561
    .end local v9    # "entrySize":I
    .end local v10    # "keySize":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 569
    .end local v8    # "i":I
    :cond_1
    iget-object v8, v3, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 570
    .local v8, "ilst":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 571
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 572
    .local v10, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;>;"
    :goto_1
    invoke-virtual {v8}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v11

    if-le v11, v9, :cond_4

    .line 573
    invoke-virtual {v8}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v11

    .line 574
    .local v11, "atomPosition":I
    invoke-virtual {v8}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v12

    .line 575
    .local v12, "atomSize":I
    invoke-virtual {v8}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    .line 576
    .local v13, "keyIndex":I
    if-ltz v13, :cond_3

    array-length v14, v7

    if-ge v13, v14, :cond_3

    .line 577
    aget-object v14, v7, v13

    .line 578
    .local v14, "key":Ljava/lang/String;
    add-int v15, v11, v12

    .line 579
    invoke-static {v8, v15, v14}, Landroidx/media2/exoplayer/external/extractor/mp4/MetadataUtil;->parseMdtaMetadataEntryFromIlst(Landroidx/media2/exoplayer/external/util/ParsableByteArray;ILjava/lang/String;)Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;

    move-result-object v15

    .line 580
    .local v15, "entry":Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;
    if-eqz v15, :cond_2

    .line 581
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 580
    :cond_2
    nop

    .line 583
    .end local v14    # "key":Ljava/lang/String;
    .end local v15    # "entry":Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;
    :goto_2
    goto :goto_3

    .line 576
    :cond_3
    nop

    .line 584
    const-string v14, "AtomParsers"

    const/16 v15, 0x34

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v15, "Skipped metadata with unknown key index: "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v14, v9}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    :goto_3
    add-int v9, v11, v12

    invoke-virtual {v8, v9}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 587
    .end local v11    # "atomPosition":I
    .end local v12    # "atomSize":I
    .end local v13    # "keyIndex":I
    const/16 v9, 0x8

    goto :goto_1

    .line 588
    :cond_4
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_4

    :cond_5
    new-instance v4, Landroidx/media2/exoplayer/external/metadata/Metadata;

    invoke-direct {v4, v10}, Landroidx/media2/exoplayer/external/metadata/Metadata;-><init>(Ljava/util/List;)V

    :goto_4
    return-object v4

    .line 548
    .end local v5    # "keys":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .end local v6    # "entryCount":I
    .end local v7    # "keyNames":[Ljava/lang/String;
    .end local v8    # "ilst":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .end local v10    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;>;"
    :cond_6
    nop

    .line 553
    :goto_5
    return-object v4
.end method

.method private static parseMvhd(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)J
    .locals 5
    .param p0, "mvhd"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 627
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 628
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 629
    .local v1, "fullAtom":I
    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v2

    .line 630
    .local v2, "version":I
    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 631
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v3

    return-wide v3
.end method

.method private static parsePaspFromParent(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)F
    .locals 4
    .param p0, "parent"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p1, "position"    # I

    .line 1031
    add-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 1032
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    .line 1033
    .local v0, "hSpacing":I
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    .line 1034
    .local v1, "vSpacing":I
    int-to-float v2, v0

    int-to-float v3, v1

    div-float/2addr v2, v3

    return v2
.end method

.method private static parseProjFromParent(Landroidx/media2/exoplayer/external/util/ParsableByteArray;II)[B
    .locals 5
    .param p0, "parent"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p1, "position"    # I
    .param p2, "size"    # I

    .line 1365
    add-int/lit8 v0, p1, 0x8

    .line 1366
    .local v0, "childPosition":I
    :goto_0
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_1

    .line 1367
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 1368
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1369
    .local v1, "childAtomSize":I
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 1370
    .local v2, "childAtomType":I
    const v3, 0x70726f6a

    if-ne v2, v3, :cond_0

    .line 1371
    iget-object v3, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    add-int v4, v0, v1

    invoke-static {v3, v0, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    return-object v3

    .line 1373
    :cond_0
    add-int/2addr v0, v1

    .line 1374
    .end local v1    # "childAtomSize":I
    .end local v2    # "childAtomType":I
    goto :goto_0

    .line 1375
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private static parseSampleEntryEncryptionData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;II)Landroid/util/Pair;
    .locals 4
    .param p0, "parent"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p1, "position"    # I
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/util/ParsableByteArray;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;",
            ">;"
        }
    .end annotation

    .line 1267
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 1268
    .local v0, "childPosition":I
    :goto_0
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_3

    .line 1269
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 1270
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1271
    .local v1, "childAtomSize":I
    if-lez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    const-string v3, "childAtomSize should be positive"

    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 1272
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 1273
    .local v2, "childAtomType":I
    const v3, 0x73696e66

    if-ne v2, v3, :cond_2

    .line 1274
    invoke-static {p0, v0, v1}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->parseCommonEncryptionSinfFromParent(Landroidx/media2/exoplayer/external/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v3

    .line 1276
    .local v3, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;>;"
    if-eqz v3, :cond_1

    .line 1277
    return-object v3

    .line 1276
    :cond_1
    goto :goto_2

    .line 1273
    .end local v3    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;>;"
    :cond_2
    nop

    .line 1280
    :goto_2
    add-int/2addr v0, v1

    .line 1281
    .end local v1    # "childAtomSize":I
    .end local v2    # "childAtomType":I
    goto :goto_0

    .line 1282
    :cond_3
    const/4 v1, 0x0

    return-object v1
.end method

.method private static parseSchiFromParent(Landroidx/media2/exoplayer/external/util/ParsableByteArray;IILjava/lang/String;)Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;
    .locals 22
    .param p0, "parent"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p1, "position"    # I
    .param p2, "size"    # I
    .param p3, "schemeType"    # Ljava/lang/String;

    .line 1325
    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0x8

    .line 1326
    .local v1, "childPosition":I
    :goto_0
    sub-int v2, v1, p1

    move/from16 v3, p2

    if-ge v2, v3, :cond_4

    .line 1327
    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 1328
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 1329
    .local v2, "childAtomSize":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 1330
    .local v4, "childAtomType":I
    const v5, 0x74656e63

    if-ne v4, v5, :cond_3

    .line 1331
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 1332
    .local v5, "fullAtom":I
    invoke-static {v5}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v6

    .line 1333
    .local v6, "version":I
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 1334
    const/4 v8, 0x0

    .line 1335
    .local v8, "defaultCryptByteBlock":I
    const/4 v9, 0x0

    .line 1336
    .local v9, "defaultSkipByteBlock":I
    if-nez v6, :cond_0

    .line 1337
    invoke-virtual {v0, v7}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_1

    .line 1339
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    .line 1340
    .local v10, "patternByte":I
    and-int/lit16 v11, v10, 0xf0

    shr-int/lit8 v8, v11, 0x4

    .line 1341
    and-int/lit8 v9, v10, 0xf

    .line 1343
    .end local v10    # "patternByte":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    const/4 v11, 0x0

    if-ne v10, v7, :cond_1

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    .line 1344
    .local v7, "defaultIsProtected":Z
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    .line 1345
    .local v10, "defaultPerSampleIvSize":I
    const/16 v12, 0x10

    new-array v15, v12, [B

    .line 1346
    .local v15, "defaultKeyId":[B
    array-length v12, v15

    invoke-virtual {v0, v15, v11, v12}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    .line 1347
    const/4 v12, 0x0

    .line 1348
    .local v12, "constantIv":[B
    if-eqz v7, :cond_2

    if-nez v10, :cond_2

    .line 1349
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v13

    .line 1350
    .local v13, "constantIvSize":I
    new-array v12, v13, [B

    .line 1351
    invoke-virtual {v0, v12, v11, v13}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    move-object/from16 v19, v12

    goto :goto_3

    .line 1348
    .end local v13    # "constantIvSize":I
    :cond_2
    nop

    .line 1353
    move-object/from16 v19, v12

    .end local v12    # "constantIv":[B
    .local v19, "constantIv":[B
    :goto_3
    new-instance v20, Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;

    move-object/from16 v11, v20

    move v12, v7

    move-object/from16 v13, p3

    move v14, v10

    move-object/from16 v21, v15

    .end local v15    # "defaultKeyId":[B
    .local v21, "defaultKeyId":[B
    move/from16 v16, v8

    move/from16 v17, v9

    move-object/from16 v18, v19

    invoke-direct/range {v11 .. v18}, Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;-><init>(ZLjava/lang/String;I[BII[B)V

    return-object v20

    .line 1356
    .end local v5    # "fullAtom":I
    .end local v6    # "version":I
    .end local v7    # "defaultIsProtected":Z
    .end local v8    # "defaultCryptByteBlock":I
    .end local v9    # "defaultSkipByteBlock":I
    .end local v10    # "defaultPerSampleIvSize":I
    .end local v19    # "constantIv":[B
    .end local v21    # "defaultKeyId":[B
    :cond_3
    add-int/2addr v1, v2

    .line 1357
    .end local v2    # "childAtomSize":I
    .end local v4    # "childAtomType":I
    goto :goto_0

    .line 1358
    :cond_4
    const/4 v2, 0x0

    return-object v2
.end method

.method public static parseStbl(Landroidx/media2/exoplayer/external/extractor/mp4/Track;Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;)Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;
    .locals 71
    .param p0, "track"    # Landroidx/media2/exoplayer/external/extractor/mp4/Track;
    .param p1, "stblAtom"    # Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;
    .param p2, "gaplessInfoHolder"    # Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 155
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    const v0, 0x7374737a

    invoke-virtual {v10, v0}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    move-result-object v12

    .line 156
    .local v12, "stszAtom":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    if-eqz v12, :cond_0

    .line 157
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StszSampleSizeBox;

    invoke-direct {v0, v12}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StszSampleSizeBox;-><init>(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;)V

    move-object v13, v0

    goto :goto_0

    .line 159
    :cond_0
    const v0, 0x73747a32

    invoke-virtual {v10, v0}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    move-result-object v0

    .line 160
    .local v0, "stz2Atom":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    if-eqz v0, :cond_34

    .line 163
    new-instance v1, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$Stz2SampleSizeBox;

    invoke-direct {v1, v0}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$Stz2SampleSizeBox;-><init>(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;)V

    move-object v0, v1

    move-object v13, v0

    .line 166
    .end local v0    # "stz2Atom":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    .local v13, "sampleSizeBox":Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$SampleSizeBox;
    :goto_0
    invoke-interface {v13}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$SampleSizeBox;->getSampleCount()I

    move-result v14

    .line 167
    .local v14, "sampleCount":I
    const/4 v0, 0x0

    if-nez v14, :cond_1

    .line 168
    new-instance v15, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;

    new-array v2, v0, [J

    new-array v3, v0, [I

    const/4 v4, 0x0

    new-array v5, v0, [J

    new-array v6, v0, [I

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;-><init>(Landroidx/media2/exoplayer/external/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v15

    .line 179
    :cond_1
    const/4 v1, 0x0

    .line 180
    .local v1, "chunkOffsetsAreLongs":Z
    const v2, 0x7374636f

    invoke-virtual {v10, v2}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    .line 181
    .local v2, "chunkOffsetsAtom":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    if-nez v2, :cond_2

    .line 182
    const/4 v1, 0x1

    .line 183
    const v3, 0x636f3634

    invoke-virtual {v10, v3}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    move v7, v1

    move-object v15, v2

    goto :goto_1

    .line 181
    :cond_2
    move v7, v1

    move-object v15, v2

    .line 185
    .end local v1    # "chunkOffsetsAreLongs":Z
    .end local v2    # "chunkOffsetsAtom":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    .local v7, "chunkOffsetsAreLongs":Z
    .local v15, "chunkOffsetsAtom":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    :goto_1
    iget-object v8, v15, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 187
    .local v8, "chunkOffsets":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    const v1, 0x73747363

    invoke-virtual {v10, v1}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    move-result-object v1

    iget-object v6, v1, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 189
    .local v6, "stsc":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    const v1, 0x73747473

    invoke-virtual {v10, v1}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    move-result-object v1

    iget-object v5, v1, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 191
    .local v5, "stts":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    const v1, 0x73747373

    invoke-virtual {v10, v1}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    .line 192
    .local v4, "stssAtom":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    const/4 v1, 0x0

    if-eqz v4, :cond_3

    iget-object v2, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    goto :goto_2

    :cond_3
    move-object v2, v1

    .line 194
    .local v2, "stss":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    :goto_2
    const v3, 0x63747473

    invoke-virtual {v10, v3}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    .line 195
    .local v3, "cttsAtom":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    if-eqz v3, :cond_4

    iget-object v1, v3, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    nop

    .line 198
    .local v1, "ctts":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    :cond_4
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;

    invoke-direct {v0, v6, v8, v7}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;-><init>(Landroidx/media2/exoplayer/external/util/ParsableByteArray;Landroidx/media2/exoplayer/external/util/ParsableByteArray;Z)V

    .line 201
    .local v0, "chunkIterator":Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;
    move-object/from16 v17, v3

    .end local v3    # "cttsAtom":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    .local v17, "cttsAtom":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    const/16 v3, 0xc

    invoke-virtual {v5, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 202
    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v18

    const/4 v3, 0x1

    add-int/lit8 v18, v18, -0x1

    .line 203
    .local v18, "remainingTimestampDeltaChanges":I
    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v20

    .line 204
    .local v20, "remainingSamplesAtTimestampDelta":I
    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v3

    .line 207
    .local v3, "timestampDeltaInTimeUnits":I
    const/16 v22, 0x0

    .line 208
    .local v22, "remainingSamplesAtTimestampOffset":I
    const/16 v23, 0x0

    .line 209
    .local v23, "remainingTimestampOffsetChanges":I
    const/16 v24, 0x0

    .line 210
    .local v24, "timestampOffset":I
    if-eqz v1, :cond_5

    .line 211
    move-object/from16 v25, v4

    const/16 v4, 0xc

    .end local v4    # "stssAtom":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    .local v25, "stssAtom":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    invoke-virtual {v1, v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 212
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v23

    goto :goto_3

    .line 210
    .end local v25    # "stssAtom":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    .restart local v4    # "stssAtom":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    :cond_5
    move-object/from16 v25, v4

    .line 215
    .end local v4    # "stssAtom":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    .restart local v25    # "stssAtom":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    :goto_3
    const/4 v4, -0x1

    .line 216
    .local v4, "nextSynchronizationSampleIndex":I
    const/16 v26, 0x0

    .line 217
    .local v26, "remainingSynchronizationSamples":I
    if-eqz v2, :cond_7

    .line 218
    move/from16 v27, v4

    const/16 v4, 0xc

    .end local v4    # "nextSynchronizationSampleIndex":I
    .local v27, "nextSynchronizationSampleIndex":I
    invoke-virtual {v2, v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 219
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v26

    .line 220
    if-lez v26, :cond_6

    .line 221
    invoke-virtual {v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    const/16 v19, 0x1

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v19, v2

    move/from16 v27, v4

    goto :goto_4

    .line 224
    :cond_6
    const/4 v2, 0x0

    move-object/from16 v19, v2

    goto :goto_4

    .line 217
    .end local v27    # "nextSynchronizationSampleIndex":I
    .restart local v4    # "nextSynchronizationSampleIndex":I
    :cond_7
    move/from16 v27, v4

    .end local v4    # "nextSynchronizationSampleIndex":I
    .restart local v27    # "nextSynchronizationSampleIndex":I
    move-object/from16 v19, v2

    .line 229
    .end local v2    # "stss":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .local v19, "stss":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    :goto_4
    nop

    .line 230
    invoke-interface {v13}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$SampleSizeBox;->isFixedSampleSize()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "audio/raw"

    iget-object v4, v9, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->format:Landroidx/media2/exoplayer/external/Format;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    .line 231
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-nez v18, :cond_8

    if-nez v23, :cond_8

    if-nez v26, :cond_8

    const/4 v2, 0x1

    goto :goto_6

    :cond_8
    goto :goto_5

    .line 230
    :cond_9
    nop

    .line 231
    :goto_5
    const/4 v2, 0x0

    :goto_6
    move/from16 v28, v2

    .line 238
    .local v28, "isFixedSampleSizeRawAudio":Z
    const/4 v2, 0x0

    .line 241
    .local v2, "maximumSize":I
    const-wide/16 v29, 0x0

    .line 244
    .local v29, "timestampTimeUnits":J
    if-nez v28, :cond_19

    .line 245
    new-array v4, v14, [J

    .line 246
    .local v4, "offsets":[J
    move/from16 v31, v2

    .end local v2    # "maximumSize":I
    .local v31, "maximumSize":I
    new-array v2, v14, [I

    .line 247
    .local v2, "sizes":[I
    move-object/from16 v32, v6

    .end local v6    # "stsc":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .local v32, "stsc":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    new-array v6, v14, [J

    .line 248
    .local v6, "timestamps":[J
    move/from16 v33, v7

    .end local v7    # "chunkOffsetsAreLongs":Z
    .local v33, "chunkOffsetsAreLongs":Z
    new-array v7, v14, [I

    .line 249
    .local v7, "flags":[I
    const-wide/16 v34, 0x0

    .line 250
    .local v34, "offset":J
    const/16 v36, 0x0

    .line 252
    .local v36, "remainingSamplesInChunk":I
    const/16 v37, 0x0

    move/from16 v10, v26

    move/from16 v9, v27

    move/from16 v11, v31

    move-wide/from16 v26, v34

    move-object/from16 v34, v8

    move-object/from16 v35, v12

    move/from16 v12, v20

    move/from16 v20, v24

    move v8, v3

    move/from16 v3, v37

    move-object/from16 v37, v15

    move/from16 v15, v18

    move/from16 v18, v22

    .end local v22    # "remainingSamplesAtTimestampOffset":I
    .end local v24    # "timestampOffset":I
    .end local v27    # "nextSynchronizationSampleIndex":I
    .end local v31    # "maximumSize":I
    .local v3, "i":I
    .local v8, "timestampDeltaInTimeUnits":I
    .local v9, "nextSynchronizationSampleIndex":I
    .local v10, "remainingSynchronizationSamples":I
    .local v11, "maximumSize":I
    .local v12, "remainingSamplesAtTimestampDelta":I
    .local v15, "remainingTimestampDeltaChanges":I
    .local v18, "remainingSamplesAtTimestampOffset":I
    .local v20, "timestampOffset":I
    .local v26, "offset":J
    .local v34, "chunkOffsets":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .local v35, "stszAtom":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    .local v37, "chunkOffsetsAtom":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    :goto_7
    if-ge v3, v14, :cond_13

    .line 254
    const/16 v22, 0x1

    .line 255
    .local v22, "chunkDataComplete":Z
    :goto_8
    if-nez v36, :cond_a

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;->moveNext()Z

    move-result v24

    move/from16 v22, v24

    if-eqz v24, :cond_a

    .line 256
    move/from16 v38, v14

    move/from16 v24, v15

    .end local v14    # "sampleCount":I
    .end local v15    # "remainingTimestampDeltaChanges":I
    .local v24, "remainingTimestampDeltaChanges":I
    .local v38, "sampleCount":I
    iget-wide v14, v0, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;->offset:J

    .line 257
    .end local v26    # "offset":J
    .local v14, "offset":J
    move-wide/from16 v26, v14

    .end local v14    # "offset":J
    .restart local v26    # "offset":J
    iget v14, v0, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;->numSamples:I

    move/from16 v36, v14

    move/from16 v15, v24

    move/from16 v14, v38

    goto :goto_8

    .line 255
    .end local v24    # "remainingTimestampDeltaChanges":I
    .end local v38    # "sampleCount":I
    .local v14, "sampleCount":I
    .restart local v15    # "remainingTimestampDeltaChanges":I
    :cond_a
    move/from16 v38, v14

    move/from16 v24, v15

    .line 259
    .end local v14    # "sampleCount":I
    .end local v15    # "remainingTimestampDeltaChanges":I
    .restart local v24    # "remainingTimestampDeltaChanges":I
    .restart local v38    # "sampleCount":I
    if-nez v22, :cond_b

    .line 260
    const-string v14, "AtomParsers"

    const-string v15, "Unexpected end of chunk data"

    invoke-static {v14, v15}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    move v14, v3

    .line 262
    .end local v38    # "sampleCount":I
    .restart local v14    # "sampleCount":I
    invoke-static {v4, v14}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    .line 263
    invoke-static {v2, v14}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    .line 264
    invoke-static {v6, v14}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v6

    .line 265
    invoke-static {v7, v14}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v7

    .line 266
    move-object/from16 v39, v0

    move-object v15, v1

    move/from16 v0, v36

    goto/16 :goto_f

    .line 270
    .end local v14    # "sampleCount":I
    .restart local v38    # "sampleCount":I
    :cond_b
    if-eqz v1, :cond_d

    .line 271
    :goto_9
    if-nez v18, :cond_c

    if-lez v23, :cond_c

    .line 272
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v18

    .line 278
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v20

    .line 279
    add-int/lit8 v23, v23, -0x1

    goto :goto_9

    .line 271
    :cond_c
    nop

    .line 281
    add-int/lit8 v18, v18, -0x1

    move/from16 v14, v20

    goto :goto_a

    .line 270
    :cond_d
    move/from16 v14, v20

    .line 284
    .end local v20    # "timestampOffset":I
    .local v14, "timestampOffset":I
    :goto_a
    aput-wide v26, v4, v3

    .line 285
    invoke-interface {v13}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$SampleSizeBox;->readNextSampleSize()I

    move-result v15

    aput v15, v2, v3

    .line 286
    aget v15, v2, v3

    if-le v15, v11, :cond_e

    .line 287
    aget v11, v2, v3

    goto :goto_b

    .line 286
    :cond_e
    nop

    .line 289
    :goto_b
    move-object/from16 v39, v0

    move-object v15, v1

    .end local v0    # "chunkIterator":Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;
    .end local v1    # "ctts":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .local v15, "ctts":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .local v39, "chunkIterator":Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;
    int-to-long v0, v14

    add-long v0, v29, v0

    aput-wide v0, v6, v3

    .line 292
    if-nez v19, :cond_f

    const/4 v0, 0x1

    goto :goto_c

    :cond_f
    const/4 v0, 0x0

    :goto_c
    aput v0, v7, v3

    .line 293
    if-ne v3, v9, :cond_11

    .line 294
    const/4 v0, 0x1

    aput v0, v7, v3

    .line 295
    add-int/lit8 v10, v10, -0x1

    .line 296
    if-lez v10, :cond_10

    .line 297
    invoke-virtual/range {v19 .. v19}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    add-int/lit8 v9, v1, -0x1

    goto :goto_d

    .line 296
    :cond_10
    goto :goto_d

    .line 293
    :cond_11
    nop

    .line 302
    :goto_d
    int-to-long v0, v8

    add-long v29, v29, v0

    .line 303
    add-int/lit8 v12, v12, -0x1

    .line 304
    if-nez v12, :cond_12

    if-lez v24, :cond_12

    .line 305
    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    .line 312
    .end local v12    # "remainingSamplesAtTimestampDelta":I
    .local v0, "remainingSamplesAtTimestampDelta":I
    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v8

    .line 313
    add-int/lit8 v1, v24, -0x1

    move v12, v0

    goto :goto_e

    .line 304
    .end local v0    # "remainingSamplesAtTimestampDelta":I
    .restart local v12    # "remainingSamplesAtTimestampDelta":I
    :cond_12
    nop

    .line 316
    move/from16 v1, v24

    .end local v24    # "remainingTimestampDeltaChanges":I
    .local v1, "remainingTimestampDeltaChanges":I
    :goto_e
    aget v0, v2, v3

    move/from16 v20, v1

    .end local v1    # "remainingTimestampDeltaChanges":I
    .local v20, "remainingTimestampDeltaChanges":I
    int-to-long v0, v0

    add-long v26, v26, v0

    .line 317
    nop

    .end local v22    # "chunkDataComplete":Z
    add-int/lit8 v36, v36, -0x1

    .line 252
    add-int/lit8 v3, v3, 0x1

    move-object v1, v15

    move/from16 v15, v20

    move-object/from16 v0, v39

    move/from16 v20, v14

    move/from16 v14, v38

    goto/16 :goto_7

    .end local v38    # "sampleCount":I
    .end local v39    # "chunkIterator":Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;
    .local v0, "chunkIterator":Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;
    .local v1, "ctts":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .local v14, "sampleCount":I
    .local v15, "remainingTimestampDeltaChanges":I
    .local v20, "timestampOffset":I
    :cond_13
    move-object/from16 v39, v0

    move/from16 v38, v14

    move/from16 v24, v15

    move-object v15, v1

    .end local v0    # "chunkIterator":Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;
    .end local v1    # "ctts":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .end local v14    # "sampleCount":I
    .local v15, "ctts":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .restart local v24    # "remainingTimestampDeltaChanges":I
    .restart local v38    # "sampleCount":I
    .restart local v39    # "chunkIterator":Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;
    move/from16 v0, v36

    .line 319
    .end local v3    # "i":I
    .end local v36    # "remainingSamplesInChunk":I
    .end local v38    # "sampleCount":I
    .local v0, "remainingSamplesInChunk":I
    .restart local v14    # "sampleCount":I
    :goto_f
    move/from16 v1, v20

    move-object/from16 v20, v2

    .end local v2    # "sizes":[I
    .local v1, "timestampOffset":I
    .local v20, "sizes":[I
    int-to-long v2, v1

    add-long v2, v29, v2

    .line 323
    .local v2, "duration":J
    const/16 v22, 0x1

    .line 324
    .local v22, "isCttsValid":Z
    :goto_10
    if-lez v23, :cond_15

    .line 325
    invoke-virtual {v15}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v31

    if-eqz v31, :cond_14

    .line 326
    const/16 v22, 0x0

    .line 327
    goto :goto_11

    .line 329
    :cond_14
    invoke-virtual {v15}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    .line 330
    add-int/lit8 v23, v23, -0x1

    goto :goto_10

    .line 324
    :cond_15
    nop

    .line 332
    :goto_11
    if-nez v10, :cond_17

    if-nez v12, :cond_17

    if-nez v0, :cond_17

    if-nez v24, :cond_17

    if-nez v18, :cond_17

    if-nez v22, :cond_16

    goto :goto_12

    :cond_16
    move/from16 v31, v1

    move-wide/from16 v40, v2

    move-object/from16 v42, v4

    move-object/from16 v43, v5

    move/from16 v36, v9

    move/from16 v2, v18

    move/from16 v3, v24

    move-object/from16 v9, p0

    goto :goto_14

    .line 338
    :cond_17
    :goto_12
    move/from16 v31, v1

    .end local v1    # "timestampOffset":I
    .local v31, "timestampOffset":I
    const-string v1, "AtomParsers"

    move-wide/from16 v40, v2

    move/from16 v36, v9

    move/from16 v2, v18

    move-object/from16 v9, p0

    .end local v9    # "nextSynchronizationSampleIndex":I
    .end local v18    # "remainingSamplesAtTimestampOffset":I
    .local v2, "remainingSamplesAtTimestampOffset":I
    .local v36, "nextSynchronizationSampleIndex":I
    .local v40, "duration":J
    iget v3, v9, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->id:I

    .line 352
    if-nez v22, :cond_18

    const-string v18, ", ctts invalid"

    goto :goto_13

    :cond_18
    const-string v18, ""

    :goto_13
    move-object/from16 v38, v18

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v42, v4

    .end local v4    # "offsets":[J
    .local v42, "offsets":[J
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit16 v4, v4, 0x106

    move-object/from16 v43, v5

    .end local v5    # "stts":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .local v43, "stts":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Inconsistent stbl box for track "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": remainingSynchronizationSamples "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", remainingSamplesInChunk "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", remainingTimestampDeltaChanges "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v24

    .end local v24    # "remainingTimestampDeltaChanges":I
    .local v3, "remainingTimestampDeltaChanges":I
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", remainingSamplesAtTimestampOffset "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v4, v38

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 338
    invoke-static {v1, v4}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    .end local v0    # "remainingSamplesInChunk":I
    .end local v22    # "isCttsValid":Z
    .end local v26    # "offset":J
    :goto_14
    move/from16 v22, v2

    move/from16 v18, v3

    move/from16 v26, v10

    move-object/from16 v0, v39

    move v10, v8

    move-object v8, v6

    move-object v6, v7

    move-object/from16 v7, v20

    move/from16 v20, v12

    move-object/from16 v12, v42

    goto :goto_16

    .line 355
    .end local v10    # "remainingSynchronizationSamples":I
    .end local v11    # "maximumSize":I
    .end local v31    # "timestampOffset":I
    .end local v32    # "stsc":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .end local v33    # "chunkOffsetsAreLongs":Z
    .end local v34    # "chunkOffsets":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .end local v35    # "stszAtom":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    .end local v36    # "nextSynchronizationSampleIndex":I
    .end local v37    # "chunkOffsetsAtom":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    .end local v39    # "chunkIterator":Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;
    .end local v40    # "duration":J
    .end local v42    # "offsets":[J
    .end local v43    # "stts":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .local v0, "chunkIterator":Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;
    .local v1, "ctts":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .local v2, "maximumSize":I
    .local v3, "timestampDeltaInTimeUnits":I
    .restart local v5    # "stts":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .local v6, "stsc":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .local v7, "chunkOffsetsAreLongs":Z
    .local v8, "chunkOffsets":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .local v12, "stszAtom":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    .local v15, "chunkOffsetsAtom":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    .local v18, "remainingTimestampDeltaChanges":I
    .local v20, "remainingSamplesAtTimestampDelta":I
    .local v22, "remainingSamplesAtTimestampOffset":I
    .local v24, "timestampOffset":I
    .local v26, "remainingSynchronizationSamples":I
    .restart local v27    # "nextSynchronizationSampleIndex":I
    :cond_19
    move-object/from16 v39, v0

    move/from16 v31, v2

    move-object/from16 v43, v5

    move-object/from16 v32, v6

    move/from16 v33, v7

    move-object/from16 v34, v8

    move-object/from16 v35, v12

    move/from16 v38, v14

    move-object/from16 v37, v15

    move-object v15, v1

    .end local v1    # "ctts":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .end local v2    # "maximumSize":I
    .end local v5    # "stts":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .end local v6    # "stsc":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .end local v7    # "chunkOffsetsAreLongs":Z
    .end local v8    # "chunkOffsets":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .end local v12    # "stszAtom":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    .end local v14    # "sampleCount":I
    .local v15, "ctts":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .local v31, "maximumSize":I
    .restart local v32    # "stsc":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .restart local v33    # "chunkOffsetsAreLongs":Z
    .restart local v34    # "chunkOffsets":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .restart local v35    # "stszAtom":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    .restart local v37    # "chunkOffsetsAtom":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    .restart local v38    # "sampleCount":I
    .restart local v43    # "stts":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    iget v1, v0, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;->length:I

    new-array v1, v1, [J

    .line 356
    .local v1, "chunkOffsetsBytes":[J
    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;->length:I

    new-array v2, v2, [I

    .line 357
    .local v2, "chunkSampleCounts":[I
    :goto_15
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;->moveNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 358
    iget v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    iget-wide v5, v0, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;->offset:J

    aput-wide v5, v1, v4

    .line 359
    iget v4, v0, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    iget v5, v0, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;->numSamples:I

    aput v5, v2, v4

    goto :goto_15

    .line 361
    :cond_1a
    iget-object v4, v9, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->format:Landroidx/media2/exoplayer/external/Format;

    iget v4, v4, Landroidx/media2/exoplayer/external/Format;->pcmEncoding:I

    iget-object v5, v9, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->format:Landroidx/media2/exoplayer/external/Format;

    iget v5, v5, Landroidx/media2/exoplayer/external/Format;->channelCount:I

    .line 362
    invoke-static {v4, v5}, Landroidx/media2/exoplayer/external/util/Util;->getPcmFrameSize(II)I

    move-result v4

    .line 363
    .local v4, "fixedSampleSize":I
    int-to-long v5, v3

    invoke-static {v4, v1, v2, v5, v6}, Landroidx/media2/exoplayer/external/extractor/mp4/FixedSampleSizeRechunker;->rechunk(I[J[IJ)Landroidx/media2/exoplayer/external/extractor/mp4/FixedSampleSizeRechunker$Results;

    move-result-object v5

    .line 365
    .local v5, "rechunkedResults":Landroidx/media2/exoplayer/external/extractor/mp4/FixedSampleSizeRechunker$Results;
    iget-object v6, v5, Landroidx/media2/exoplayer/external/extractor/mp4/FixedSampleSizeRechunker$Results;->offsets:[J

    .line 366
    .local v6, "offsets":[J
    iget-object v7, v5, Landroidx/media2/exoplayer/external/extractor/mp4/FixedSampleSizeRechunker$Results;->sizes:[I

    .line 367
    .local v7, "sizes":[I
    iget v8, v5, Landroidx/media2/exoplayer/external/extractor/mp4/FixedSampleSizeRechunker$Results;->maximumSize:I

    .line 368
    .end local v31    # "maximumSize":I
    .local v8, "maximumSize":I
    iget-object v10, v5, Landroidx/media2/exoplayer/external/extractor/mp4/FixedSampleSizeRechunker$Results;->timestamps:[J

    .line 369
    .local v10, "timestamps":[J
    iget-object v11, v5, Landroidx/media2/exoplayer/external/extractor/mp4/FixedSampleSizeRechunker$Results;->flags:[I

    .line 370
    .local v11, "flags":[I
    iget-wide v1, v5, Landroidx/media2/exoplayer/external/extractor/mp4/FixedSampleSizeRechunker$Results;->duration:J

    move-wide/from16 v40, v1

    move-object v12, v6

    move-object v6, v11

    move/from16 v31, v24

    move/from16 v36, v27

    move/from16 v14, v38

    move v11, v8

    move-object v8, v10

    move v10, v3

    .line 372
    .end local v1    # "chunkOffsetsBytes":[J
    .end local v2    # "chunkSampleCounts":[I
    .end local v3    # "timestampDeltaInTimeUnits":I
    .end local v4    # "fixedSampleSize":I
    .end local v5    # "rechunkedResults":Landroidx/media2/exoplayer/external/extractor/mp4/FixedSampleSizeRechunker$Results;
    .end local v24    # "timestampOffset":I
    .end local v27    # "nextSynchronizationSampleIndex":I
    .end local v38    # "sampleCount":I
    .local v6, "flags":[I
    .local v8, "timestamps":[J
    .local v10, "timestampDeltaInTimeUnits":I
    .local v11, "maximumSize":I
    .local v12, "offsets":[J
    .restart local v14    # "sampleCount":I
    .local v31, "timestampOffset":I
    .restart local v36    # "nextSynchronizationSampleIndex":I
    .restart local v40    # "duration":J
    :goto_16
    const-wide/32 v46, 0xf4240

    iget-wide v1, v9, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->timescale:J

    move-wide/from16 v44, v40

    move-wide/from16 v48, v1

    invoke-static/range {v44 .. v49}, Landroidx/media2/exoplayer/external/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v38

    .line 374
    .local v38, "durationUs":J
    iget-object v1, v9, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->editListDurations:[J

    if-eqz v1, :cond_33

    invoke-virtual/range {p2 .. p2}, Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;->hasGaplessInfo()Z

    move-result v1

    if-eqz v1, :cond_1b

    move-object/from16 v42, v0

    move-object/from16 v69, v6

    move-object/from16 v68, v8

    move/from16 v50, v10

    move/from16 v44, v11

    move-object/from16 v24, v13

    move/from16 v27, v14

    move-object/from16 v45, v15

    move-object v15, v7

    move-object v14, v12

    move-object/from16 v70, v34

    move/from16 v34, v33

    move-object/from16 v33, v70

    goto/16 :goto_28

    .line 389
    :cond_1b
    iget-object v1, v9, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->editListDurations:[J

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_20

    iget v1, v9, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->type:I

    if-ne v1, v2, :cond_20

    array-length v1, v8

    const/4 v2, 0x2

    if-lt v1, v2, :cond_20

    .line 392
    iget-object v1, v9, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->editListMediaTimes:[J

    const/4 v2, 0x0

    aget-wide v53, v1, v2

    .line 393
    .local v53, "editStartTime":J
    iget-object v1, v9, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->editListDurations:[J

    aget-wide v44, v1, v2

    iget-wide v1, v9, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->timescale:J

    iget-wide v4, v9, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v46, v1

    move-wide/from16 v48, v4

    invoke-static/range {v44 .. v49}, Landroidx/media2/exoplayer/external/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v1

    add-long v57, v53, v1

    .line 395
    .local v57, "editEndTime":J
    move-object/from16 v44, v8

    move-wide/from16 v45, v40

    move-wide/from16 v47, v53

    move-wide/from16 v49, v57

    invoke-static/range {v44 .. v50}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->canApplyEditWithGaplessInfo([JJJJ)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 396
    sub-long v59, v40, v57

    .line 397
    .local v59, "paddingTimeUnits":J
    const/4 v1, 0x0

    aget-wide v2, v8, v1

    sub-long v44, v53, v2

    iget-object v1, v9, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->format:Landroidx/media2/exoplayer/external/Format;

    iget v1, v1, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    int-to-long v1, v1

    iget-wide v3, v9, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->timescale:J

    move-wide/from16 v46, v1

    move-wide/from16 v48, v3

    invoke-static/range {v44 .. v49}, Landroidx/media2/exoplayer/external/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v4

    .line 399
    .local v4, "encoderDelay":J
    iget-object v1, v9, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->format:Landroidx/media2/exoplayer/external/Format;

    iget v1, v1, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    int-to-long v1, v1

    move-object/from16 v24, v13

    move/from16 v27, v14

    .end local v13    # "sampleSizeBox":Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$SampleSizeBox;
    .end local v14    # "sampleCount":I
    .local v24, "sampleSizeBox":Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$SampleSizeBox;
    .local v27, "sampleCount":I
    iget-wide v13, v9, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->timescale:J

    move-wide/from16 v44, v59

    move-wide/from16 v46, v1

    move-wide/from16 v48, v13

    invoke-static/range {v44 .. v49}, Landroidx/media2/exoplayer/external/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v13

    .line 401
    .local v13, "encoderPadding":J
    const-wide/16 v1, 0x0

    cmp-long v3, v4, v1

    if-nez v3, :cond_1d

    cmp-long v3, v13, v1

    if-eqz v3, :cond_1c

    goto :goto_17

    :cond_1c
    move-object/from16 v42, v0

    move-object/from16 v48, v6

    move-object/from16 v49, v7

    move/from16 v50, v10

    move-object v10, v8

    move-object/from16 v70, v34

    move/from16 v34, v33

    move-object/from16 v33, v70

    goto/16 :goto_18

    :cond_1d
    :goto_17
    const-wide/32 v1, 0x7fffffff

    cmp-long v3, v4, v1

    if-gtz v3, :cond_1e

    cmp-long v3, v13, v1

    if-gtz v3, :cond_1e

    .line 403
    long-to-int v1, v4

    move-object/from16 v3, p2

    iput v1, v3, Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;->encoderDelay:I

    .line 404
    long-to-int v1, v13

    iput v1, v3, Landroidx/media2/exoplayer/external/extractor/GaplessInfoHolder;->encoderPadding:I

    .line 405
    iget-wide v1, v9, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->timescale:J

    move-wide/from16 v44, v4

    const-wide/32 v3, 0xf4240

    .end local v4    # "encoderDelay":J
    .local v44, "encoderDelay":J
    invoke-static {v8, v3, v4, v1, v2}, Landroidx/media2/exoplayer/external/util/Util;->scaleLargeTimestampsInPlace([JJJ)V

    .line 406
    iget-object v1, v9, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->editListDurations:[J

    const/4 v2, 0x0

    aget-wide v46, v1, v2

    const-wide/32 v48, 0xf4240

    iget-wide v1, v9, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->movieTimescale:J

    .line 407
    move-wide/from16 v50, v1

    invoke-static/range {v46 .. v51}, Landroidx/media2/exoplayer/external/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v46

    .line 409
    .local v46, "editedDurationUs":J
    new-instance v16, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;

    move-object/from16 v42, v0

    .end local v0    # "chunkIterator":Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;
    .local v42, "chunkIterator":Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v12

    move-object v3, v7

    move v4, v11

    move-object v5, v8

    move-object/from16 v48, v6

    .end local v6    # "flags":[I
    .local v48, "flags":[I
    move-object/from16 v49, v7

    move/from16 v50, v10

    move-object v10, v8

    move-object/from16 v70, v34

    move/from16 v34, v33

    move-object/from16 v33, v70

    .end local v7    # "sizes":[I
    .end local v8    # "timestamps":[J
    .local v10, "timestamps":[J
    .local v33, "chunkOffsets":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .local v34, "chunkOffsetsAreLongs":Z
    .local v49, "sizes":[I
    .local v50, "timestampDeltaInTimeUnits":I
    move-wide/from16 v7, v46

    invoke-direct/range {v0 .. v8}, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;-><init>(Landroidx/media2/exoplayer/external/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v16

    .line 401
    .end local v42    # "chunkIterator":Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;
    .end local v44    # "encoderDelay":J
    .end local v46    # "editedDurationUs":J
    .end local v48    # "flags":[I
    .end local v49    # "sizes":[I
    .end local v50    # "timestampDeltaInTimeUnits":I
    .restart local v0    # "chunkIterator":Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;
    .restart local v4    # "encoderDelay":J
    .restart local v6    # "flags":[I
    .restart local v7    # "sizes":[I
    .restart local v8    # "timestamps":[J
    .local v10, "timestampDeltaInTimeUnits":I
    .local v33, "chunkOffsetsAreLongs":Z
    .local v34, "chunkOffsets":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    :cond_1e
    move-object/from16 v42, v0

    move-wide/from16 v44, v4

    move-object/from16 v48, v6

    move-object/from16 v49, v7

    move/from16 v50, v10

    move-object v10, v8

    move-object/from16 v70, v34

    move/from16 v34, v33

    move-object/from16 v33, v70

    .end local v0    # "chunkIterator":Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;
    .end local v4    # "encoderDelay":J
    .end local v6    # "flags":[I
    .end local v7    # "sizes":[I
    .end local v8    # "timestamps":[J
    .local v10, "timestamps":[J
    .local v33, "chunkOffsets":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .local v34, "chunkOffsetsAreLongs":Z
    .restart local v42    # "chunkIterator":Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;
    .restart local v44    # "encoderDelay":J
    .restart local v48    # "flags":[I
    .restart local v49    # "sizes":[I
    .restart local v50    # "timestampDeltaInTimeUnits":I
    goto :goto_18

    .line 395
    .end local v24    # "sampleSizeBox":Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$SampleSizeBox;
    .end local v27    # "sampleCount":I
    .end local v42    # "chunkIterator":Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;
    .end local v44    # "encoderDelay":J
    .end local v48    # "flags":[I
    .end local v49    # "sizes":[I
    .end local v50    # "timestampDeltaInTimeUnits":I
    .end local v59    # "paddingTimeUnits":J
    .restart local v0    # "chunkIterator":Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;
    .restart local v6    # "flags":[I
    .restart local v7    # "sizes":[I
    .restart local v8    # "timestamps":[J
    .local v10, "timestampDeltaInTimeUnits":I
    .local v13, "sampleSizeBox":Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$SampleSizeBox;
    .restart local v14    # "sampleCount":I
    .local v33, "chunkOffsetsAreLongs":Z
    .local v34, "chunkOffsets":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    :cond_1f
    move-object/from16 v42, v0

    move-object/from16 v48, v6

    move-object/from16 v49, v7

    move/from16 v50, v10

    move-object/from16 v24, v13

    move/from16 v27, v14

    move-object v10, v8

    move-object/from16 v70, v34

    move/from16 v34, v33

    move-object/from16 v33, v70

    .end local v0    # "chunkIterator":Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;
    .end local v6    # "flags":[I
    .end local v7    # "sizes":[I
    .end local v8    # "timestamps":[J
    .end local v13    # "sampleSizeBox":Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$SampleSizeBox;
    .end local v14    # "sampleCount":I
    .local v10, "timestamps":[J
    .restart local v24    # "sampleSizeBox":Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$SampleSizeBox;
    .restart local v27    # "sampleCount":I
    .local v33, "chunkOffsets":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .local v34, "chunkOffsetsAreLongs":Z
    .restart local v42    # "chunkIterator":Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;
    .restart local v48    # "flags":[I
    .restart local v49    # "sizes":[I
    .restart local v50    # "timestampDeltaInTimeUnits":I
    goto :goto_18

    .line 389
    .end local v24    # "sampleSizeBox":Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$SampleSizeBox;
    .end local v27    # "sampleCount":I
    .end local v42    # "chunkIterator":Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;
    .end local v48    # "flags":[I
    .end local v49    # "sizes":[I
    .end local v50    # "timestampDeltaInTimeUnits":I
    .end local v53    # "editStartTime":J
    .end local v57    # "editEndTime":J
    .restart local v0    # "chunkIterator":Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;
    .restart local v6    # "flags":[I
    .restart local v7    # "sizes":[I
    .restart local v8    # "timestamps":[J
    .local v10, "timestampDeltaInTimeUnits":I
    .restart local v13    # "sampleSizeBox":Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$SampleSizeBox;
    .restart local v14    # "sampleCount":I
    .local v33, "chunkOffsetsAreLongs":Z
    .local v34, "chunkOffsets":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    :cond_20
    move-object/from16 v42, v0

    move-object/from16 v48, v6

    move-object/from16 v49, v7

    move/from16 v50, v10

    move-object/from16 v24, v13

    move/from16 v27, v14

    move-object v10, v8

    move-object/from16 v70, v34

    move/from16 v34, v33

    move-object/from16 v33, v70

    .line 415
    .end local v0    # "chunkIterator":Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;
    .end local v6    # "flags":[I
    .end local v7    # "sizes":[I
    .end local v8    # "timestamps":[J
    .end local v13    # "sampleSizeBox":Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$SampleSizeBox;
    .end local v14    # "sampleCount":I
    .local v10, "timestamps":[J
    .restart local v24    # "sampleSizeBox":Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$SampleSizeBox;
    .restart local v27    # "sampleCount":I
    .local v33, "chunkOffsets":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .local v34, "chunkOffsetsAreLongs":Z
    .restart local v42    # "chunkIterator":Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;
    .restart local v48    # "flags":[I
    .restart local v49    # "sizes":[I
    .restart local v50    # "timestampDeltaInTimeUnits":I
    :goto_18
    iget-object v0, v9, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->editListDurations:[J

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_22

    iget-object v0, v9, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->editListDurations:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_22

    .line 419
    iget-object v0, v9, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->editListMediaTimes:[J

    aget-wide v13, v0, v1

    .line 420
    .local v13, "editStartTime":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    array-length v1, v10

    if-ge v0, v1, :cond_21

    .line 421
    aget-wide v1, v10, v0

    sub-long v3, v1, v13

    const-wide/32 v5, 0xf4240

    iget-wide v7, v9, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->timescale:J

    .line 422
    invoke-static/range {v3 .. v8}, Landroidx/media2/exoplayer/external/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v1

    aput-wide v1, v10, v0

    .line 420
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 425
    .end local v0    # "i":I
    :cond_21
    sub-long v1, v40, v13

    const-wide/32 v3, 0xf4240

    iget-wide v5, v9, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->timescale:J

    .line 426
    invoke-static/range {v1 .. v6}, Landroidx/media2/exoplayer/external/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v38

    .line 427
    new-instance v16, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v12

    move-object/from16 v3, v49

    move v4, v11

    move-object v5, v10

    move-object/from16 v6, v48

    move-wide/from16 v7, v38

    invoke-direct/range {v0 .. v8}, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;-><init>(Landroidx/media2/exoplayer/external/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v16

    .line 415
    .end local v13    # "editStartTime":J
    :cond_22
    nop

    .line 432
    iget v0, v9, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_23

    const/4 v0, 0x1

    goto :goto_1a

    :cond_23
    const/4 v0, 0x0

    :goto_1a
    move v13, v0

    .line 435
    .local v13, "omitClippedSample":Z
    const/4 v0, 0x0

    .line 436
    .local v0, "editedSampleCount":I
    const/4 v1, 0x0

    .line 437
    .local v1, "nextSampleIndex":I
    const/4 v2, 0x0

    .line 438
    .local v2, "copyMetadata":Z
    iget-object v3, v9, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->editListDurations:[J

    array-length v3, v3

    new-array v14, v3, [I

    .line 439
    .local v14, "startIndices":[I
    iget-object v3, v9, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->editListDurations:[J

    array-length v3, v3

    new-array v7, v3, [I

    .line 440
    .local v7, "endIndices":[I
    const/4 v3, 0x0

    move v8, v0

    move v6, v1

    .end local v0    # "editedSampleCount":I
    .end local v1    # "nextSampleIndex":I
    .local v3, "i":I
    .local v6, "nextSampleIndex":I
    .local v8, "editedSampleCount":I
    :goto_1b
    iget-object v0, v9, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->editListDurations:[J

    array-length v0, v0

    if-ge v3, v0, :cond_28

    .line 441
    iget-object v0, v9, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->editListMediaTimes:[J

    aget-wide v4, v0, v3

    .line 442
    .local v4, "editMediaTime":J
    const-wide/16 v0, -0x1

    cmp-long v44, v4, v0

    if-eqz v44, :cond_27

    .line 443
    iget-object v0, v9, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->editListDurations:[J

    aget-wide v51, v0, v3

    iget-wide v0, v9, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->timescale:J

    move/from16 v44, v11

    move-object/from16 v45, v12

    .end local v11    # "maximumSize":I
    .end local v12    # "offsets":[J
    .local v44, "maximumSize":I
    .local v45, "offsets":[J
    iget-wide v11, v9, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->movieTimescale:J

    .line 444
    move-wide/from16 v53, v0

    move-wide/from16 v55, v11

    invoke-static/range {v51 .. v56}, Landroidx/media2/exoplayer/external/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v0

    .line 446
    .local v0, "editDuration":J
    const/4 v11, 0x1

    invoke-static {v10, v4, v5, v11, v11}, Landroidx/media2/exoplayer/external/util/Util;->binarySearchCeil([JJZZ)I

    move-result v12

    aput v12, v14, v3

    .line 447
    add-long v11, v4, v0

    .line 448
    move-wide/from16 v46, v0

    const/4 v0, 0x0

    .end local v0    # "editDuration":J
    .local v46, "editDuration":J
    invoke-static {v10, v11, v12, v13, v0}, Landroidx/media2/exoplayer/external/util/Util;->binarySearchCeil([JJZZ)I

    move-result v1

    aput v1, v7, v3

    .line 450
    :goto_1c
    aget v1, v14, v3

    aget v11, v7, v3

    if-ge v1, v11, :cond_24

    aget v1, v14, v3

    move-object/from16 v11, v48

    .end local v48    # "flags":[I
    .local v11, "flags":[I
    aget v1, v11, v1

    const/4 v12, 0x1

    and-int/2addr v1, v12

    if-nez v1, :cond_25

    .line 456
    aget v1, v14, v3

    add-int/2addr v1, v12

    aput v1, v14, v3

    move-object/from16 v48, v11

    goto :goto_1c

    .line 450
    .end local v11    # "flags":[I
    .restart local v48    # "flags":[I
    :cond_24
    move-object/from16 v11, v48

    const/4 v12, 0x1

    .line 458
    .end local v48    # "flags":[I
    .restart local v11    # "flags":[I
    :cond_25
    aget v1, v7, v3

    aget v16, v14, v3

    sub-int v1, v1, v16

    add-int/2addr v8, v1

    .line 459
    aget v1, v14, v3

    if-eq v6, v1, :cond_26

    const/4 v1, 0x1

    goto :goto_1d

    :cond_26
    const/4 v1, 0x0

    :goto_1d
    or-int/2addr v1, v2

    .line 460
    .end local v2    # "copyMetadata":Z
    .local v1, "copyMetadata":Z
    aget v2, v7, v3

    move v6, v2

    move v2, v1

    goto :goto_1e

    .line 442
    .end local v1    # "copyMetadata":Z
    .end local v44    # "maximumSize":I
    .end local v45    # "offsets":[J
    .end local v46    # "editDuration":J
    .restart local v2    # "copyMetadata":Z
    .local v11, "maximumSize":I
    .restart local v12    # "offsets":[J
    .restart local v48    # "flags":[I
    :cond_27
    move/from16 v44, v11

    move-object/from16 v45, v12

    move-object/from16 v11, v48

    const/4 v0, 0x0

    const/4 v12, 0x1

    .line 440
    .end local v4    # "editMediaTime":J
    .end local v12    # "offsets":[J
    .end local v48    # "flags":[I
    .local v11, "flags":[I
    .restart local v44    # "maximumSize":I
    .restart local v45    # "offsets":[J
    :goto_1e
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v48, v11

    move/from16 v11, v44

    move-object/from16 v12, v45

    goto :goto_1b

    .end local v44    # "maximumSize":I
    .end local v45    # "offsets":[J
    .local v11, "maximumSize":I
    .restart local v12    # "offsets":[J
    .restart local v48    # "flags":[I
    :cond_28
    move/from16 v44, v11

    move-object/from16 v45, v12

    move-object/from16 v11, v48

    const/4 v0, 0x0

    const/4 v12, 0x1

    .line 463
    .end local v3    # "i":I
    .end local v12    # "offsets":[J
    .end local v48    # "flags":[I
    .local v11, "flags":[I
    .restart local v44    # "maximumSize":I
    .restart local v45    # "offsets":[J
    move/from16 v5, v27

    .end local v27    # "sampleCount":I
    .local v5, "sampleCount":I
    if-eq v8, v5, :cond_29

    goto :goto_1f

    :cond_29
    const/4 v12, 0x0

    :goto_1f
    or-int/2addr v12, v2

    .line 466
    .end local v2    # "copyMetadata":Z
    .local v12, "copyMetadata":Z
    if-eqz v12, :cond_2a

    new-array v1, v8, [J

    goto :goto_20

    :cond_2a
    move-object/from16 v1, v45

    :goto_20
    move-object v4, v1

    .line 467
    .local v4, "editedOffsets":[J
    if-eqz v12, :cond_2b

    new-array v1, v8, [I

    goto :goto_21

    :cond_2b
    move-object/from16 v1, v49

    :goto_21
    move-object v3, v1

    .line 468
    .local v3, "editedSizes":[I
    if-eqz v12, :cond_2c

    goto :goto_22

    :cond_2c
    move/from16 v0, v44

    .line 469
    .local v0, "editedMaximumSize":I
    :goto_22
    if-eqz v12, :cond_2d

    new-array v1, v8, [I

    goto :goto_23

    :cond_2d
    move-object v1, v11

    :goto_23
    move-object v2, v1

    .line 470
    .local v2, "editedFlags":[I
    new-array v1, v8, [J

    .line 471
    .local v1, "editedTimestamps":[J
    const-wide/16 v46, 0x0

    .line 472
    .local v46, "pts":J
    const/16 v16, 0x0

    .line 473
    .local v16, "sampleIndex":I
    const/16 v21, 0x0

    move/from16 v70, v16

    move/from16 v16, v0

    move/from16 v0, v21

    move/from16 v21, v13

    move/from16 v13, v70

    .local v0, "i":I
    .local v13, "sampleIndex":I
    .local v16, "editedMaximumSize":I
    .local v21, "omitClippedSample":Z
    :goto_24
    move/from16 v27, v5

    .end local v5    # "sampleCount":I
    .restart local v27    # "sampleCount":I
    iget-object v5, v9, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->editListDurations:[J

    array-length v5, v5

    if-ge v0, v5, :cond_32

    .line 474
    iget-object v5, v9, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->editListMediaTimes:[J

    aget-wide v57, v5, v0

    .line 475
    .local v57, "editMediaTime":J
    aget v5, v14, v0

    .line 476
    .local v5, "startIndex":I
    move/from16 v48, v6

    .end local v6    # "nextSampleIndex":I
    .local v48, "nextSampleIndex":I
    aget v6, v7, v0

    .line 477
    .local v6, "endIndex":I
    if-eqz v12, :cond_2e

    .line 478
    move-object/from16 v59, v7

    .end local v7    # "endIndices":[I
    .local v59, "endIndices":[I
    sub-int v7, v6, v5

    .line 479
    .local v7, "count":I
    move-object/from16 v60, v14

    move-object/from16 v14, v45

    .end local v45    # "offsets":[J
    .local v14, "offsets":[J
    .local v60, "startIndices":[I
    invoke-static {v14, v5, v4, v13, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 480
    move-object/from16 v45, v15

    move-object/from16 v15, v49

    .end local v49    # "sizes":[I
    .local v15, "sizes":[I
    .local v45, "ctts":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    invoke-static {v15, v5, v3, v13, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 481
    invoke-static {v11, v5, v2, v13, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_25

    .line 477
    .end local v59    # "endIndices":[I
    .end local v60    # "startIndices":[I
    .local v7, "endIndices":[I
    .local v14, "startIndices":[I
    .local v15, "ctts":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .local v45, "offsets":[J
    .restart local v49    # "sizes":[I
    :cond_2e
    move-object/from16 v59, v7

    move-object/from16 v60, v14

    move-object/from16 v14, v45

    move-object/from16 v45, v15

    move-object/from16 v15, v49

    .line 483
    .end local v7    # "endIndices":[I
    .end local v49    # "sizes":[I
    .local v14, "offsets":[J
    .local v15, "sizes":[I
    .local v45, "ctts":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .restart local v59    # "endIndices":[I
    .restart local v60    # "startIndices":[I
    :goto_25
    move v7, v5

    move/from16 v70, v16

    move/from16 v16, v13

    move/from16 v13, v70

    .local v7, "j":I
    .local v13, "editedMaximumSize":I
    .local v16, "sampleIndex":I
    :goto_26
    if-ge v7, v6, :cond_31

    .line 484
    const-wide/32 v53, 0xf4240

    move/from16 v49, v5

    move/from16 v61, v6

    .end local v5    # "startIndex":I
    .end local v6    # "endIndex":I
    .local v49, "startIndex":I
    .local v61, "endIndex":I
    iget-wide v5, v9, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v51, v46

    move-wide/from16 v55, v5

    invoke-static/range {v51 .. v56}, Landroidx/media2/exoplayer/external/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v5

    .line 485
    .local v5, "ptsUs":J
    aget-wide v51, v10, v7

    sub-long v62, v51, v57

    const-wide/32 v64, 0xf4240

    move-object/from16 v68, v10

    move-object/from16 v69, v11

    .end local v10    # "timestamps":[J
    .end local v11    # "flags":[I
    .local v68, "timestamps":[J
    .local v69, "flags":[I
    iget-wide v10, v9, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->timescale:J

    .line 486
    move-wide/from16 v66, v10

    invoke-static/range {v62 .. v67}, Landroidx/media2/exoplayer/external/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v10

    .line 488
    .local v10, "timeInSegmentUs":J
    add-long v51, v5, v10

    aput-wide v51, v1, v16

    .line 489
    if-eqz v12, :cond_2f

    move-object/from16 v62, v1

    .end local v1    # "editedTimestamps":[J
    .local v62, "editedTimestamps":[J
    aget v1, v3, v16

    if-le v1, v13, :cond_30

    .line 490
    aget v1, v15, v7

    move v13, v1

    goto :goto_27

    .line 489
    .end local v62    # "editedTimestamps":[J
    .restart local v1    # "editedTimestamps":[J
    :cond_2f
    move-object/from16 v62, v1

    .line 492
    .end local v1    # "editedTimestamps":[J
    .restart local v62    # "editedTimestamps":[J
    :cond_30
    :goto_27
    nop

    .end local v5    # "ptsUs":J
    .end local v10    # "timeInSegmentUs":J
    add-int/lit8 v16, v16, 0x1

    .line 483
    add-int/lit8 v7, v7, 0x1

    move/from16 v5, v49

    move/from16 v6, v61

    move-object/from16 v1, v62

    move-object/from16 v10, v68

    move-object/from16 v11, v69

    goto :goto_26

    .end local v49    # "startIndex":I
    .end local v61    # "endIndex":I
    .end local v62    # "editedTimestamps":[J
    .end local v68    # "timestamps":[J
    .end local v69    # "flags":[I
    .restart local v1    # "editedTimestamps":[J
    .local v5, "startIndex":I
    .restart local v6    # "endIndex":I
    .local v10, "timestamps":[J
    .restart local v11    # "flags":[I
    :cond_31
    move-object/from16 v62, v1

    move/from16 v49, v5

    move/from16 v61, v6

    move-object/from16 v68, v10

    move-object/from16 v69, v11

    .line 494
    .end local v1    # "editedTimestamps":[J
    .end local v5    # "startIndex":I
    .end local v6    # "endIndex":I
    .end local v7    # "j":I
    .end local v10    # "timestamps":[J
    .end local v11    # "flags":[I
    .restart local v49    # "startIndex":I
    .restart local v61    # "endIndex":I
    .restart local v62    # "editedTimestamps":[J
    .restart local v68    # "timestamps":[J
    .restart local v69    # "flags":[I
    iget-object v1, v9, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->editListDurations:[J

    aget-wide v5, v1, v0

    add-long v46, v46, v5

    .line 473
    .end local v49    # "startIndex":I
    .end local v57    # "editMediaTime":J
    .end local v61    # "endIndex":I
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v49, v15

    move/from16 v5, v27

    move-object/from16 v15, v45

    move/from16 v6, v48

    move-object/from16 v7, v59

    move-object/from16 v1, v62

    move-object/from16 v45, v14

    move-object/from16 v14, v60

    move/from16 v70, v16

    move/from16 v16, v13

    move/from16 v13, v70

    goto/16 :goto_24

    .end local v48    # "nextSampleIndex":I
    .end local v59    # "endIndices":[I
    .end local v60    # "startIndices":[I
    .end local v62    # "editedTimestamps":[J
    .end local v68    # "timestamps":[J
    .end local v69    # "flags":[I
    .restart local v1    # "editedTimestamps":[J
    .local v6, "nextSampleIndex":I
    .local v7, "endIndices":[I
    .restart local v10    # "timestamps":[J
    .restart local v11    # "flags":[I
    .local v13, "sampleIndex":I
    .local v14, "startIndices":[I
    .local v15, "ctts":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .local v16, "editedMaximumSize":I
    .local v45, "offsets":[J
    .local v49, "sizes":[I
    :cond_32
    move-object/from16 v62, v1

    move/from16 v48, v6

    move-object/from16 v59, v7

    move-object/from16 v68, v10

    move-object/from16 v69, v11

    move-object/from16 v60, v14

    move-object/from16 v14, v45

    move-object/from16 v45, v15

    move-object/from16 v15, v49

    .line 496
    .end local v0    # "i":I
    .end local v1    # "editedTimestamps":[J
    .end local v6    # "nextSampleIndex":I
    .end local v7    # "endIndices":[I
    .end local v10    # "timestamps":[J
    .end local v11    # "flags":[I
    .end local v49    # "sizes":[I
    .local v14, "offsets":[J
    .local v15, "sizes":[I
    .local v45, "ctts":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .restart local v48    # "nextSampleIndex":I
    .restart local v59    # "endIndices":[I
    .restart local v60    # "startIndices":[I
    .restart local v62    # "editedTimestamps":[J
    .restart local v68    # "timestamps":[J
    .restart local v69    # "flags":[I
    const-wide/32 v53, 0xf4240

    iget-wide v0, v9, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->movieTimescale:J

    .line 497
    move-wide/from16 v51, v46

    move-wide/from16 v55, v0

    invoke-static/range {v51 .. v56}, Landroidx/media2/exoplayer/external/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v10

    .line 498
    .local v10, "editedDurationUs":J
    new-instance v49, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;

    move-object/from16 v0, v49

    move-object/from16 v51, v62

    .end local v62    # "editedTimestamps":[J
    .local v51, "editedTimestamps":[J
    move-object/from16 v1, p0

    move-object/from16 v52, v2

    .end local v2    # "editedFlags":[I
    .local v52, "editedFlags":[I
    move-object v2, v4

    move-object/from16 v53, v3

    .end local v3    # "editedSizes":[I
    .local v53, "editedSizes":[I
    move-object/from16 v54, v4

    .end local v4    # "editedOffsets":[J
    .local v54, "editedOffsets":[J
    move/from16 v4, v16

    move-object/from16 v5, v51

    move-object/from16 v6, v52

    move/from16 v56, v8

    move-object/from16 v55, v59

    .end local v8    # "editedSampleCount":I
    .end local v59    # "endIndices":[I
    .local v55, "endIndices":[I
    .local v56, "editedSampleCount":I
    move-wide v7, v10

    invoke-direct/range {v0 .. v8}, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;-><init>(Landroidx/media2/exoplayer/external/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v49

    .line 374
    .end local v16    # "editedMaximumSize":I
    .end local v21    # "omitClippedSample":Z
    .end local v24    # "sampleSizeBox":Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$SampleSizeBox;
    .end local v27    # "sampleCount":I
    .end local v42    # "chunkIterator":Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;
    .end local v44    # "maximumSize":I
    .end local v45    # "ctts":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .end local v46    # "pts":J
    .end local v48    # "nextSampleIndex":I
    .end local v50    # "timestampDeltaInTimeUnits":I
    .end local v51    # "editedTimestamps":[J
    .end local v52    # "editedFlags":[I
    .end local v53    # "editedSizes":[I
    .end local v54    # "editedOffsets":[J
    .end local v55    # "endIndices":[I
    .end local v56    # "editedSampleCount":I
    .end local v60    # "startIndices":[I
    .end local v68    # "timestamps":[J
    .end local v69    # "flags":[I
    .local v0, "chunkIterator":Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;
    .local v6, "flags":[I
    .local v7, "sizes":[I
    .local v8, "timestamps":[J
    .local v10, "timestampDeltaInTimeUnits":I
    .local v11, "maximumSize":I
    .local v12, "offsets":[J
    .local v13, "sampleSizeBox":Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$SampleSizeBox;
    .local v14, "sampleCount":I
    .local v15, "ctts":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .local v33, "chunkOffsetsAreLongs":Z
    .local v34, "chunkOffsets":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    :cond_33
    move-object/from16 v42, v0

    move-object/from16 v69, v6

    move-object/from16 v68, v8

    move/from16 v50, v10

    move/from16 v44, v11

    move-object/from16 v24, v13

    move/from16 v27, v14

    move-object/from16 v45, v15

    move-object v15, v7

    move-object v14, v12

    move-object/from16 v70, v34

    move/from16 v34, v33

    move-object/from16 v33, v70

    .line 377
    .end local v0    # "chunkIterator":Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;
    .end local v6    # "flags":[I
    .end local v7    # "sizes":[I
    .end local v8    # "timestamps":[J
    .end local v10    # "timestampDeltaInTimeUnits":I
    .end local v11    # "maximumSize":I
    .end local v12    # "offsets":[J
    .end local v13    # "sampleSizeBox":Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$SampleSizeBox;
    .local v14, "offsets":[J
    .local v15, "sizes":[I
    .restart local v24    # "sampleSizeBox":Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$SampleSizeBox;
    .restart local v27    # "sampleCount":I
    .local v33, "chunkOffsets":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .local v34, "chunkOffsetsAreLongs":Z
    .restart local v42    # "chunkIterator":Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;
    .restart local v44    # "maximumSize":I
    .restart local v45    # "ctts":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .restart local v50    # "timestampDeltaInTimeUnits":I
    .restart local v68    # "timestamps":[J
    .restart local v69    # "flags":[I
    :goto_28
    iget-wide v0, v9, Landroidx/media2/exoplayer/external/extractor/mp4/Track;->timescale:J

    move-object/from16 v10, v68

    const-wide/32 v2, 0xf4240

    .end local v68    # "timestamps":[J
    .local v10, "timestamps":[J
    invoke-static {v10, v2, v3, v0, v1}, Landroidx/media2/exoplayer/external/util/Util;->scaleLargeTimestampsInPlace([JJJ)V

    .line 378
    new-instance v11, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v3, v15

    move/from16 v4, v44

    move-object v5, v10

    move-object/from16 v6, v69

    move-wide/from16 v7, v38

    invoke-direct/range {v0 .. v8}, Landroidx/media2/exoplayer/external/extractor/mp4/TrackSampleTable;-><init>(Landroidx/media2/exoplayer/external/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v11

    .line 161
    .end local v10    # "timestamps":[J
    .end local v14    # "offsets":[J
    .end local v15    # "sizes":[I
    .end local v17    # "cttsAtom":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    .end local v18    # "remainingTimestampDeltaChanges":I
    .end local v19    # "stss":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .end local v20    # "remainingSamplesAtTimestampDelta":I
    .end local v22    # "remainingSamplesAtTimestampOffset":I
    .end local v23    # "remainingTimestampOffsetChanges":I
    .end local v24    # "sampleSizeBox":Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$SampleSizeBox;
    .end local v25    # "stssAtom":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    .end local v26    # "remainingSynchronizationSamples":I
    .end local v27    # "sampleCount":I
    .end local v28    # "isFixedSampleSizeRawAudio":Z
    .end local v29    # "timestampTimeUnits":J
    .end local v31    # "timestampOffset":I
    .end local v32    # "stsc":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .end local v33    # "chunkOffsets":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .end local v34    # "chunkOffsetsAreLongs":Z
    .end local v35    # "stszAtom":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    .end local v36    # "nextSynchronizationSampleIndex":I
    .end local v37    # "chunkOffsetsAtom":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    .end local v38    # "durationUs":J
    .end local v40    # "duration":J
    .end local v42    # "chunkIterator":Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$ChunkIterator;
    .end local v43    # "stts":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .end local v44    # "maximumSize":I
    .end local v45    # "ctts":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .end local v50    # "timestampDeltaInTimeUnits":I
    .end local v69    # "flags":[I
    .local v0, "stz2Atom":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    .local v12, "stszAtom":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    :cond_34
    move-object/from16 v35, v12

    .end local v12    # "stszAtom":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    .restart local v35    # "stszAtom":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    new-instance v1, Landroidx/media2/exoplayer/external/ParserException;

    const-string v2, "Track has no sample table size information"

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    return-void
.end method

.method private static parseStsd(Landroidx/media2/exoplayer/external/util/ParsableByteArray;IILjava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData;Z)Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;
    .locals 17
    .param p0, "stsd"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p1, "trackId"    # I
    .param p2, "rotationDegrees"    # I
    .param p3, "language"    # Ljava/lang/String;
    .param p4, "drmInitData"    # Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .param p5, "isQuickTime"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 755
    move-object/from16 v10, p0

    const/16 v0, 0xc

    invoke-virtual {v10, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 756
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v11

    .line 757
    .local v11, "numberOfEntries":I
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;

    invoke-direct {v0, v11}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;-><init>(I)V

    move-object v12, v0

    .line 758
    .local v12, "out":Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;
    const/4 v0, 0x0

    move v13, v0

    .local v13, "i":I
    :goto_0
    if-ge v13, v11, :cond_8

    .line 759
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v14

    .line 760
    .local v14, "childStartPosition":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v15

    .line 761
    .local v15, "childAtomSize":I
    if-lez v15, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    const-string v1, "childAtomSize should be positive"

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 762
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v9

    .line 763
    .local v9, "childAtomType":I
    const v0, 0x61766331

    if-eq v9, v0, :cond_7

    const v0, 0x61766333

    if-eq v9, v0, :cond_7

    const v0, 0x656e6376

    if-eq v9, v0, :cond_7

    const v0, 0x6d703476

    if-eq v9, v0, :cond_7

    const v0, 0x68766331

    if-eq v9, v0, :cond_7

    const v0, 0x68657631

    if-eq v9, v0, :cond_7

    const v0, 0x73323633

    if-eq v9, v0, :cond_7

    const v0, 0x76703038

    if-eq v9, v0, :cond_7

    const v0, 0x76703039

    if-eq v9, v0, :cond_7

    const v0, 0x61763031

    if-eq v9, v0, :cond_7

    const v0, 0x64766176

    if-eq v9, v0, :cond_7

    const v0, 0x64766131

    if-eq v9, v0, :cond_7

    const v0, 0x64766865

    if-eq v9, v0, :cond_7

    const v0, 0x64766831

    if-ne v9, v0, :cond_1

    move/from16 v16, v9

    goto/16 :goto_4

    .line 779
    :cond_1
    const v0, 0x6d703461

    if-eq v9, v0, :cond_6

    const v0, 0x656e6361

    if-eq v9, v0, :cond_6

    const v0, 0x61632d33

    if-eq v9, v0, :cond_6

    const v0, 0x65632d33

    if-eq v9, v0, :cond_6

    const v0, 0x61632d34

    if-eq v9, v0, :cond_6

    const v0, 0x64747363

    if-eq v9, v0, :cond_6

    const v0, 0x64747365

    if-eq v9, v0, :cond_6

    const v0, 0x64747368

    if-eq v9, v0, :cond_6

    const v0, 0x6474736c

    if-eq v9, v0, :cond_6

    const v0, 0x73616d72

    if-eq v9, v0, :cond_6

    const v0, 0x73617762

    if-eq v9, v0, :cond_6

    const v0, 0x6c70636d

    if-eq v9, v0, :cond_6

    const v0, 0x736f7774

    if-eq v9, v0, :cond_6

    const v0, 0x2e6d7033

    if-eq v9, v0, :cond_6

    const v0, 0x616c6163

    if-eq v9, v0, :cond_6

    const v0, 0x616c6177

    if-eq v9, v0, :cond_6

    const v0, 0x756c6177

    if-eq v9, v0, :cond_6

    const v0, 0x4f707573

    if-eq v9, v0, :cond_6

    const v0, 0x664c6143

    if-ne v9, v0, :cond_2

    goto :goto_3

    .line 800
    :cond_2
    const v0, 0x54544d4c

    if-eq v9, v0, :cond_5

    const v0, 0x74783367

    if-eq v9, v0, :cond_5

    const v0, 0x77767474

    if-eq v9, v0, :cond_5

    const v0, 0x73747070

    if-eq v9, v0, :cond_5

    const v0, 0x63363038

    if-ne v9, v0, :cond_3

    goto :goto_2

    .line 805
    :cond_3
    const v0, 0x63616d6d

    if-ne v9, v0, :cond_4

    .line 806
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/x-camera-motion"

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Landroidx/media2/exoplayer/external/Format;->createSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    iput-object v0, v12, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;->format:Landroidx/media2/exoplayer/external/Format;

    move/from16 v16, v9

    goto :goto_5

    .line 805
    :cond_4
    move/from16 v16, v9

    goto :goto_5

    .line 800
    :cond_5
    :goto_2
    nop

    .line 803
    move-object/from16 v0, p0

    move v1, v9

    move v2, v14

    move v3, v15

    move/from16 v4, p1

    move-object/from16 v5, p3

    move-object v6, v12

    invoke-static/range {v0 .. v6}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->parseTextSampleEntry(Landroidx/media2/exoplayer/external/util/ParsableByteArray;IIIILjava/lang/String;Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;)V

    move/from16 v16, v9

    goto :goto_5

    .line 779
    :cond_6
    :goto_3
    nop

    .line 798
    move-object/from16 v0, p0

    move v1, v9

    move v2, v14

    move v3, v15

    move/from16 v4, p1

    move-object/from16 v5, p3

    move/from16 v6, p5

    move-object/from16 v7, p4

    move-object v8, v12

    move/from16 v16, v9

    .end local v9    # "childAtomType":I
    .local v16, "childAtomType":I
    move v9, v13

    invoke-static/range {v0 .. v9}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->parseAudioSampleEntry(Landroidx/media2/exoplayer/external/util/ParsableByteArray;IIIILjava/lang/String;ZLandroidx/media2/exoplayer/external/drm/DrmInitData;Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;I)V

    goto :goto_5

    .line 763
    .end local v16    # "childAtomType":I
    .restart local v9    # "childAtomType":I
    :cond_7
    move/from16 v16, v9

    .line 777
    .end local v9    # "childAtomType":I
    .restart local v16    # "childAtomType":I
    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v16

    move v2, v14

    move v3, v15

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p4

    move-object v7, v12

    move v8, v13

    invoke-static/range {v0 .. v8}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->parseVideoSampleEntry(Landroidx/media2/exoplayer/external/util/ParsableByteArray;IIIIILandroidx/media2/exoplayer/external/drm/DrmInitData;Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;I)V

    .line 809
    :goto_5
    add-int v0, v14, v15

    invoke-virtual {v10, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 758
    .end local v14    # "childStartPosition":I
    .end local v15    # "childAtomSize":I
    .end local v16    # "childAtomType":I
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 811
    .end local v13    # "i":I
    :cond_8
    return-object v12
.end method

.method private static parseTextSampleEntry(Landroidx/media2/exoplayer/external/util/ParsableByteArray;IIIILjava/lang/String;Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;)V
    .locals 19
    .param p0, "parent"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p1, "atomType"    # I
    .param p2, "position"    # I
    .param p3, "atomSize"    # I
    .param p4, "trackId"    # I
    .param p5, "language"    # Ljava/lang/String;
    .param p6, "out"    # Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 816
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p6

    add-int/lit8 v3, p2, 0x8

    add-int/lit8 v3, v3, 0x8

    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 819
    const/4 v3, 0x0

    .line 820
    .local v3, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const-wide v4, 0x7fffffffffffffffL

    .line 823
    .local v4, "subsampleOffsetUs":J
    const v6, 0x54544d4c

    if-ne v1, v6, :cond_0

    .line 824
    const-string v6, "application/ttml+xml"

    goto :goto_0

    .line 825
    :cond_0
    const v6, 0x74783367

    if-ne v1, v6, :cond_1

    .line 826
    const-string v6, "application/x-quicktime-tx3g"

    .line 827
    .local v6, "mimeType":Ljava/lang/String;
    add-int/lit8 v7, p3, -0x8

    add-int/lit8 v7, v7, -0x8

    .line 828
    .local v7, "sampleDescriptionLength":I
    new-array v8, v7, [B

    .line 829
    .local v8, "sampleDescriptionData":[B
    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9, v7}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    .line 830
    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 831
    .end local v7    # "sampleDescriptionLength":I
    .end local v8    # "sampleDescriptionData":[B
    goto :goto_0

    .end local v6    # "mimeType":Ljava/lang/String;
    :cond_1
    const v6, 0x77767474

    if-ne v1, v6, :cond_2

    .line 832
    const-string v6, "application/x-mp4-vtt"

    goto :goto_0

    .line 833
    :cond_2
    const v6, 0x73747070

    if-ne v1, v6, :cond_3

    .line 834
    const-string v6, "application/ttml+xml"

    .line 835
    .restart local v6    # "mimeType":Ljava/lang/String;
    const-wide/16 v4, 0x0

    goto :goto_0

    .line 836
    .end local v6    # "mimeType":Ljava/lang/String;
    :cond_3
    const v6, 0x63363038

    if-ne v1, v6, :cond_4

    .line 838
    const-string v6, "application/x-mp4-cea-608"

    .line 839
    .restart local v6    # "mimeType":Ljava/lang/String;
    const/4 v7, 0x1

    iput v7, v2, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;->requiredSampleTransformation:I

    .line 845
    :goto_0
    nop

    .line 847
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    .line 846
    move-object v9, v6

    move-object/from16 v13, p5

    move-wide/from16 v16, v4

    move-object/from16 v18, v3

    invoke-static/range {v8 .. v18}, Landroidx/media2/exoplayer/external/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroidx/media2/exoplayer/external/drm/DrmInitData;JLjava/util/List;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v7

    iput-object v7, v2, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;->format:Landroidx/media2/exoplayer/external/Format;

    .line 857
    return-void

    .line 842
    .end local v6    # "mimeType":Ljava/lang/String;
    :cond_4
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6}, Ljava/lang/IllegalStateException;-><init>()V

    throw v6
.end method

.method private static parseTkhd(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$TkhdData;
    .locals 15
    .param p0, "tkhd"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 640
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 641
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 642
    .local v1, "fullAtom":I
    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v2

    .line 644
    .local v2, "version":I
    const/16 v3, 0x10

    if-nez v2, :cond_0

    const/16 v4, 0x8

    goto :goto_0

    :cond_0
    const/16 v4, 0x10

    :goto_0
    invoke-virtual {p0, v4}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 645
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 647
    .local v4, "trackId":I
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 648
    const/4 v6, 0x1

    .line 649
    .local v6, "durationUnknown":Z
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v7

    .line 650
    .local v7, "durationPosition":I
    if-nez v2, :cond_1

    const/4 v0, 0x4

    nop

    .line 651
    .local v0, "durationByteCount":I
    :cond_1
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v0, :cond_3

    .line 652
    iget-object v9, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    add-int v10, v7, v8

    aget-byte v9, v9, v10

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2

    .line 653
    const/4 v6, 0x0

    .line 654
    goto :goto_2

    .line 651
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 658
    .end local v8    # "i":I
    :cond_3
    :goto_2
    if-eqz v6, :cond_4

    .line 659
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 660
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_4

    .line 662
    :cond_4
    if-nez v2, :cond_5

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v8

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v8

    .line 663
    .local v8, "duration":J
    :goto_3
    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-nez v12, :cond_6

    .line 666
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_4

    .line 663
    :cond_6
    nop

    .line 670
    :goto_4
    invoke-virtual {p0, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 671
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 672
    .local v3, "a00":I
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v10

    .line 673
    .local v10, "a01":I
    invoke-virtual {p0, v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 674
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 675
    .local v5, "a10":I
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v11

    .line 678
    .local v11, "a11":I
    const/high16 v12, 0x10000

    .line 679
    .local v12, "fixedOne":I
    if-nez v3, :cond_7

    if-ne v10, v12, :cond_7

    neg-int v13, v12

    if-ne v5, v13, :cond_7

    if-nez v11, :cond_7

    .line 680
    const/16 v13, 0x5a

    goto :goto_5

    .line 679
    :cond_7
    nop

    .line 681
    if-nez v3, :cond_8

    neg-int v13, v12

    if-ne v10, v13, :cond_8

    if-ne v5, v12, :cond_8

    if-nez v11, :cond_8

    .line 682
    const/16 v13, 0x10e

    goto :goto_5

    .line 681
    :cond_8
    nop

    .line 683
    neg-int v13, v12

    if-ne v3, v13, :cond_9

    if-nez v10, :cond_9

    if-nez v5, :cond_9

    neg-int v13, v12

    if-ne v11, v13, :cond_9

    .line 684
    const/16 v13, 0xb4

    goto :goto_5

    .line 683
    :cond_9
    nop

    .line 687
    const/4 v13, 0x0

    .line 690
    .local v13, "rotationDegrees":I
    :goto_5
    new-instance v14, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$TkhdData;

    invoke-direct {v14, v4, v8, v9, v13}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$TkhdData;-><init>(IJI)V

    return-object v14
.end method

.method public static parseTrak(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;JLandroidx/media2/exoplayer/external/drm/DrmInitData;ZZ)Landroidx/media2/exoplayer/external/extractor/mp4/Track;
    .locals 31
    .param p0, "trak"    # Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;
    .param p1, "mvhd"    # Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    .param p2, "duration"    # J
    .param p4, "drmInitData"    # Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .param p5, "ignoreEditLists"    # Z
    .param p6, "isQuickTime"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 106
    move-object/from16 v0, p0

    const v1, 0x6d646961

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;

    move-result-object v1

    .line 107
    .local v1, "mdia":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;
    const v2, 0x68646c72    # 4.3148E24f

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    iget-object v2, v2, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-static {v2}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->parseHdlr(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)I

    move-result v2

    invoke-static {v2}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->getTrackTypeForHdlr(I)I

    move-result v2

    .line 108
    .local v2, "trackType":I
    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 109
    return-object v3

    .line 112
    :cond_0
    const v4, 0x746b6864

    invoke-virtual {v0, v4}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    iget-object v4, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-static {v4}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->parseTkhd(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$TkhdData;

    move-result-object v18

    .line 113
    .local v18, "tkhdData":Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$TkhdData;
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, p2, v4

    if-nez v6, :cond_1

    .line 114
    invoke-static/range {v18 .. v18}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$TkhdData;->access$000(Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$TkhdData;)J

    move-result-wide v6

    move-wide/from16 v19, v6

    goto :goto_0

    .line 113
    :cond_1
    move-wide/from16 v19, p2

    .line 116
    .end local p2    # "duration":J
    .local v19, "duration":J
    :goto_0
    move-object/from16 v15, p1

    iget-object v6, v15, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-static {v6}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->parseMvhd(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)J

    move-result-wide v21

    .line 118
    .local v21, "movieTimescale":J
    cmp-long v6, v19, v4

    if-nez v6, :cond_2

    .line 119
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-wide/from16 v23, v4

    goto :goto_1

    .line 121
    :cond_2
    const-wide/32 v10, 0xf4240

    move-wide/from16 v8, v19

    move-wide/from16 v12, v21

    invoke-static/range {v8 .. v13}, Landroidx/media2/exoplayer/external/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v4

    move-wide/from16 v23, v4

    .line 123
    .local v23, "durationUs":J
    :goto_1
    const v4, 0x6d696e66

    invoke-virtual {v1, v4}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;

    move-result-object v4

    const v5, 0x7374626c

    .line 124
    invoke-virtual {v4, v5}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;

    move-result-object v14

    .line 126
    .local v14, "stbl":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;
    const v4, 0x6d646864

    invoke-virtual {v1, v4}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    iget-object v4, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-static {v4}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->parseMdhd(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v13

    .line 127
    .local v13, "mdhdData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    const v4, 0x73747364

    invoke-virtual {v14, v4}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    iget-object v5, v4, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-static/range {v18 .. v18}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$TkhdData;->access$100(Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v6

    .line 128
    invoke-static/range {v18 .. v18}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$TkhdData;->access$200(Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v7

    iget-object v4, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v8, v4

    check-cast v8, Ljava/lang/String;

    .line 127
    move-object/from16 v9, p4

    move/from16 v10, p6

    invoke-static/range {v5 .. v10}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->parseStsd(Landroidx/media2/exoplayer/external/util/ParsableByteArray;IILjava/lang/String;Landroidx/media2/exoplayer/external/drm/DrmInitData;Z)Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;

    move-result-object v12

    .line 129
    .local v12, "stsdData":Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;
    const/4 v4, 0x0

    .line 130
    .local v4, "editListDurations":[J
    const/4 v5, 0x0

    .line 131
    .local v5, "editListMediaTimes":[J
    if-nez p5, :cond_3

    .line 132
    const v6, 0x65647473

    invoke-virtual {v0, v6}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;

    move-result-object v6

    invoke-static {v6}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->parseEdts(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;)Landroid/util/Pair;

    move-result-object v6

    .line 133
    .local v6, "edtsData":Landroid/util/Pair;, "Landroid/util/Pair<[J[J>;"
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v4, v7

    check-cast v4, [J

    .line 134
    iget-object v7, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v5, v7

    check-cast v5, [J

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    goto :goto_2

    .line 131
    .end local v6    # "edtsData":Landroid/util/Pair;, "Landroid/util/Pair<[J[J>;"
    :cond_3
    move-object/from16 v25, v4

    move-object/from16 v26, v5

    .line 136
    .end local v4    # "editListDurations":[J
    .end local v5    # "editListMediaTimes":[J
    .local v25, "editListDurations":[J
    .local v26, "editListMediaTimes":[J
    :goto_2
    iget-object v4, v12, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;->format:Landroidx/media2/exoplayer/external/Format;

    if-nez v4, :cond_4

    move-object/from16 v27, v3

    move-object/from16 v30, v12

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    goto :goto_3

    .line 137
    :cond_4
    new-instance v27, Landroidx/media2/exoplayer/external/extractor/mp4/Track;

    invoke-static/range {v18 .. v18}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$TkhdData;->access$100(Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v4

    iget-object v3, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v10, v12, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;->format:Landroidx/media2/exoplayer/external/Format;

    iget v11, v12, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;->requiredSampleTransformation:I

    iget-object v8, v12, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;

    iget v9, v12, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    move-object/from16 v3, v27

    move v5, v2

    move-object/from16 v16, v8

    move/from16 v17, v9

    move-wide/from16 v8, v21

    move-object/from16 v28, v10

    move/from16 v29, v11

    move-wide/from16 v10, v23

    move-object/from16 v30, v12

    .end local v12    # "stsdData":Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;
    .local v30, "stsdData":Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;
    move-object/from16 v12, v28

    move-object/from16 v28, v13

    .end local v13    # "mdhdData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    .local v28, "mdhdData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    move/from16 v13, v29

    move-object/from16 v29, v14

    .end local v14    # "stbl":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;
    .local v29, "stbl":Landroidx/media2/exoplayer/external/extractor/mp4/Atom$ContainerAtom;
    move-object/from16 v14, v16

    move/from16 v15, v17

    move-object/from16 v16, v25

    move-object/from16 v17, v26

    invoke-direct/range {v3 .. v17}, Landroidx/media2/exoplayer/external/extractor/mp4/Track;-><init>(IIJJJLandroidx/media2/exoplayer/external/Format;I[Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;I[J[J)V

    .line 136
    :goto_3
    return-object v27
.end method

.method public static parseUdta(Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;Z)Landroidx/media2/exoplayer/external/metadata/Metadata;
    .locals 7
    .param p0, "udtaAtom"    # Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;
    .param p1, "isQuickTime"    # Z
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 517
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 520
    return-object v0

    .line 522
    :cond_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/Atom$LeafAtom;->data:Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 523
    .local v1, "udtaData":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 524
    :goto_0
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    if-lt v3, v2, :cond_2

    .line 525
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v3

    .line 526
    .local v3, "atomPosition":I
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 527
    .local v4, "atomSize":I
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 528
    .local v5, "atomType":I
    const v6, 0x6d657461

    if-ne v5, v6, :cond_1

    .line 529
    invoke-virtual {v1, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 530
    add-int v0, v3, v4

    invoke-static {v1, v0}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->parseUdtaMeta(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-result-object v0

    return-object v0

    .line 532
    :cond_1
    add-int v6, v3, v4

    invoke-virtual {v1, v6}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 533
    .end local v3    # "atomPosition":I
    .end local v4    # "atomSize":I
    .end local v5    # "atomType":I
    goto :goto_0

    .line 534
    :cond_2
    return-object v0
.end method

.method private static parseUdtaMeta(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)Landroidx/media2/exoplayer/external/metadata/Metadata;
    .locals 4
    .param p0, "meta"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p1, "limit"    # I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 593
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 594
    :goto_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 595
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 596
    .local v0, "atomPosition":I
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 597
    .local v1, "atomSize":I
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 598
    .local v2, "atomType":I
    const v3, 0x696c7374

    if-ne v2, v3, :cond_0

    .line 599
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 600
    add-int v3, v0, v1

    invoke-static {p0, v3}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->parseIlst(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-result-object v3

    return-object v3

    .line 602
    :cond_0
    add-int v3, v0, v1

    invoke-virtual {p0, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 603
    .end local v0    # "atomPosition":I
    .end local v1    # "atomSize":I
    .end local v2    # "atomType":I
    goto :goto_0

    .line 604
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static parseVideoSampleEntry(Landroidx/media2/exoplayer/external/util/ParsableByteArray;IIIIILandroidx/media2/exoplayer/external/drm/DrmInitData;Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;I)V
    .locals 31
    .param p0, "parent"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p1, "atomType"    # I
    .param p2, "position"    # I
    .param p3, "size"    # I
    .param p4, "trackId"    # I
    .param p5, "rotationDegrees"    # I
    .param p6, "drmInitData"    # Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .param p7, "out"    # Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;
    .param p8, "entryIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 862
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    add-int/lit8 v5, v1, 0x8

    add-int/lit8 v5, v5, 0x8

    invoke-virtual {v0, v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 864
    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 865
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    .line 866
    .local v5, "width":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v21

    .line 867
    .local v21, "height":I
    const/4 v6, 0x0

    .line 868
    .local v6, "pixelWidthHeightRatioFromPasp":Z
    const/high16 v7, 0x3f800000    # 1.0f

    .line 869
    .local v7, "pixelWidthHeightRatio":F
    const/16 v8, 0x32

    invoke-virtual {v0, v8}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 871
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v8

    .line 872
    .local v8, "childPosition":I
    const v9, 0x656e6376

    move/from16 v10, p1

    if-ne v10, v9, :cond_2

    .line 873
    invoke-static {v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->parseSampleEntryEncryptionData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v9

    .line 875
    .local v9, "sampleEntryEncryptionData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;>;"
    if-eqz v9, :cond_1

    .line 876
    iget-object v11, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 877
    .end local p1    # "atomType":I
    .local v10, "atomType":I
    if-nez v3, :cond_0

    const/4 v11, 0x0

    goto :goto_0

    .line 878
    :cond_0
    iget-object v11, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;

    iget-object v11, v11, Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    invoke-virtual {v3, v11}, Landroidx/media2/exoplayer/external/drm/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Landroidx/media2/exoplayer/external/drm/DrmInitData;

    move-result-object v11

    :goto_0
    move-object v3, v11

    .line 879
    .end local p6    # "drmInitData":Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .local v3, "drmInitData":Landroidx/media2/exoplayer/external/drm/DrmInitData;
    iget-object v11, v4, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;

    iget-object v12, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;

    aput-object v12, v11, p8

    goto :goto_1

    .line 875
    .end local v3    # "drmInitData":Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .end local v10    # "atomType":I
    .restart local p1    # "atomType":I
    .restart local p6    # "drmInitData":Landroidx/media2/exoplayer/external/drm/DrmInitData;
    :cond_1
    nop

    .line 881
    .end local p1    # "atomType":I
    .end local p6    # "drmInitData":Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .restart local v3    # "drmInitData":Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .restart local v10    # "atomType":I
    :goto_1
    invoke-virtual {v0, v8}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    move v15, v10

    goto :goto_2

    .line 872
    .end local v3    # "drmInitData":Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .end local v9    # "sampleEntryEncryptionData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroidx/media2/exoplayer/external/extractor/mp4/TrackEncryptionBox;>;"
    .end local v10    # "atomType":I
    .restart local p1    # "atomType":I
    .restart local p6    # "drmInitData":Landroidx/media2/exoplayer/external/drm/DrmInitData;
    :cond_2
    move v15, v10

    .line 888
    .end local p1    # "atomType":I
    .end local p6    # "drmInitData":Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .restart local v3    # "drmInitData":Landroidx/media2/exoplayer/external/drm/DrmInitData;
    .local v15, "atomType":I
    :goto_2
    const/4 v9, 0x0

    .line 889
    .local v9, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v10, 0x0

    .line 890
    .local v10, "mimeType":Ljava/lang/String;
    const/4 v11, 0x0

    .line 891
    .local v11, "codecs":Ljava/lang/String;
    const/4 v12, 0x0

    .line 893
    .local v12, "projectionData":[B
    const/4 v13, -0x1

    move/from16 v22, v6

    move/from16 v23, v7

    move v14, v8

    move-object/from16 v25, v9

    move-object/from16 v26, v10

    move-object/from16 v27, v11

    move-object/from16 v28, v12

    move/from16 v24, v13

    .line 894
    .end local v6    # "pixelWidthHeightRatioFromPasp":Z
    .end local v7    # "pixelWidthHeightRatio":F
    .end local v8    # "childPosition":I
    .end local v9    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v10    # "mimeType":Ljava/lang/String;
    .end local v11    # "codecs":Ljava/lang/String;
    .end local v12    # "projectionData":[B
    .local v14, "childPosition":I
    .local v22, "pixelWidthHeightRatioFromPasp":Z
    .local v23, "pixelWidthHeightRatio":F
    .local v24, "stereoMode":I
    .local v25, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local v26, "mimeType":Ljava/lang/String;
    .local v27, "codecs":Ljava/lang/String;
    .local v28, "projectionData":[B
    :goto_3
    sub-int v6, v14, v1

    if-ge v6, v2, :cond_1a

    .line 895
    invoke-virtual {v0, v14}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 896
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v6

    .line 897
    .local v6, "childStartPosition":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v7

    .line 898
    .local v7, "childAtomSize":I
    if-nez v7, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v8

    sub-int/2addr v8, v1

    if-ne v8, v2, :cond_3

    .line 900
    goto/16 :goto_10

    .line 898
    :cond_3
    nop

    .line 902
    const/4 v8, 0x1

    const/4 v9, 0x0

    if-lez v7, :cond_4

    const/4 v10, 0x1

    goto :goto_4

    :cond_4
    const/4 v10, 0x0

    :goto_4
    const-string v11, "childAtomSize should be positive"

    invoke-static {v10, v11}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 903
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v10

    .line 904
    .local v10, "childAtomType":I
    const v11, 0x61766343

    if-ne v10, v11, :cond_7

    .line 905
    if-nez v26, :cond_5

    goto :goto_5

    :cond_5
    const/4 v8, 0x0

    :goto_5
    invoke-static {v8}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 906
    const-string/jumbo v26, "video/avc"

    .line 907
    add-int/lit8 v8, v6, 0x8

    invoke-virtual {v0, v8}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 908
    invoke-static/range {p0 .. p0}, Landroidx/media2/exoplayer/external/video/AvcConfig;->parse(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/video/AvcConfig;

    move-result-object v8

    .line 909
    .local v8, "avcConfig":Landroidx/media2/exoplayer/external/video/AvcConfig;
    iget-object v9, v8, Landroidx/media2/exoplayer/external/video/AvcConfig;->initializationData:Ljava/util/List;

    .line 910
    .end local v25    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v9    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    iget v11, v8, Landroidx/media2/exoplayer/external/video/AvcConfig;->nalUnitLengthFieldLength:I

    iput v11, v4, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    .line 911
    if-nez v22, :cond_6

    .line 912
    iget v11, v8, Landroidx/media2/exoplayer/external/video/AvcConfig;->pixelWidthAspectRatio:F

    move/from16 v23, v11

    goto :goto_6

    .line 911
    :cond_6
    nop

    .line 914
    .end local v8    # "avcConfig":Landroidx/media2/exoplayer/external/video/AvcConfig;
    :goto_6
    move-object/from16 v25, v9

    goto/16 :goto_f

    .end local v9    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v25    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_7
    const v11, 0x68766343

    if-ne v10, v11, :cond_9

    .line 915
    if-nez v26, :cond_8

    goto :goto_7

    :cond_8
    const/4 v8, 0x0

    :goto_7
    invoke-static {v8}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 916
    const-string/jumbo v26, "video/hevc"

    .line 917
    add-int/lit8 v8, v6, 0x8

    invoke-virtual {v0, v8}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 918
    invoke-static/range {p0 .. p0}, Landroidx/media2/exoplayer/external/video/HevcConfig;->parse(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/video/HevcConfig;

    move-result-object v8

    .line 919
    .local v8, "hevcConfig":Landroidx/media2/exoplayer/external/video/HevcConfig;
    iget-object v9, v8, Landroidx/media2/exoplayer/external/video/HevcConfig;->initializationData:Ljava/util/List;

    .line 920
    .end local v25    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v9    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    iget v11, v8, Landroidx/media2/exoplayer/external/video/HevcConfig;->nalUnitLengthFieldLength:I

    iput v11, v4, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    .line 921
    .end local v8    # "hevcConfig":Landroidx/media2/exoplayer/external/video/HevcConfig;
    move-object/from16 v25, v9

    goto/16 :goto_f

    .end local v9    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v25    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_9
    const v11, 0x64766343

    if-eq v10, v11, :cond_18

    const v11, 0x64767643

    if-ne v10, v11, :cond_a

    goto/16 :goto_d

    .line 927
    :cond_a
    const v11, 0x76706343

    if-ne v10, v11, :cond_d

    .line 928
    if-nez v26, :cond_b

    goto :goto_8

    :cond_b
    const/4 v8, 0x0

    :goto_8
    invoke-static {v8}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 929
    const v8, 0x76703038

    if-ne v15, v8, :cond_c

    const-string/jumbo v8, "video/x-vnd.on2.vp8"

    goto :goto_9

    :cond_c
    const-string/jumbo v8, "video/x-vnd.on2.vp9"

    :goto_9
    move-object/from16 v26, v8

    goto/16 :goto_f

    .line 930
    :cond_d
    const v11, 0x61763143

    if-ne v10, v11, :cond_f

    .line 931
    if-nez v26, :cond_e

    goto :goto_a

    :cond_e
    const/4 v8, 0x0

    :goto_a
    invoke-static {v8}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 932
    const-string/jumbo v26, "video/av01"

    goto/16 :goto_f

    .line 933
    :cond_f
    const v11, 0x64323633

    if-ne v10, v11, :cond_11

    .line 934
    if-nez v26, :cond_10

    goto :goto_b

    :cond_10
    const/4 v8, 0x0

    :goto_b
    invoke-static {v8}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 935
    const-string/jumbo v26, "video/3gpp"

    goto/16 :goto_f

    .line 936
    :cond_11
    const v11, 0x65736473

    if-ne v10, v11, :cond_13

    .line 937
    if-nez v26, :cond_12

    goto :goto_c

    :cond_12
    const/4 v8, 0x0

    :goto_c
    invoke-static {v8}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 938
    nop

    .line 939
    invoke-static {v0, v6}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->parseEsdsFromParent(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)Landroid/util/Pair;

    move-result-object v8

    .line 940
    .local v8, "mimeTypeAndInitializationData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[B>;"
    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v26, v9

    check-cast v26, Ljava/lang/String;

    .line 941
    iget-object v9, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, [B

    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v25

    .line 942
    .end local v8    # "mimeTypeAndInitializationData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[B>;"
    goto :goto_f

    :cond_13
    const v8, 0x70617370

    if-ne v10, v8, :cond_14

    .line 943
    invoke-static {v0, v6}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->parsePaspFromParent(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)F

    move-result v23

    .line 944
    const/4 v8, 0x1

    move/from16 v22, v8

    goto :goto_f

    .line 945
    :cond_14
    const v8, 0x73763364

    if-ne v10, v8, :cond_15

    .line 946
    invoke-static {v0, v6, v7}, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers;->parseProjFromParent(Landroidx/media2/exoplayer/external/util/ParsableByteArray;II)[B

    move-result-object v28

    goto :goto_f

    .line 947
    :cond_15
    const v8, 0x73743364

    if-ne v10, v8, :cond_17

    .line 948
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    .line 949
    .local v8, "version":I
    const/4 v9, 0x3

    invoke-virtual {v0, v9}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 950
    if-nez v8, :cond_16

    .line 951
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v9

    .line 952
    .local v9, "layout":I
    packed-switch v9, :pswitch_data_0

    goto :goto_f

    .line 963
    :pswitch_0
    const/16 v24, 0x3

    .line 964
    goto :goto_f

    .line 960
    :pswitch_1
    const/16 v24, 0x2

    .line 961
    goto :goto_f

    .line 957
    :pswitch_2
    const/16 v24, 0x1

    .line 958
    goto :goto_f

    .line 954
    :pswitch_3
    const/16 v24, 0x0

    .line 955
    goto :goto_f

    .line 950
    .end local v9    # "layout":I
    :cond_16
    goto :goto_f

    .line 947
    .end local v8    # "version":I
    :cond_17
    goto :goto_f

    .line 921
    :cond_18
    :goto_d
    nop

    .line 922
    invoke-static/range {p0 .. p0}, Landroidx/media2/exoplayer/external/video/DolbyVisionConfig;->parse(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/video/DolbyVisionConfig;

    move-result-object v8

    .line 923
    .local v8, "dolbyVisionConfig":Landroidx/media2/exoplayer/external/video/DolbyVisionConfig;
    if-eqz v8, :cond_19

    .line 924
    iget-object v9, v8, Landroidx/media2/exoplayer/external/video/DolbyVisionConfig;->codecs:Ljava/lang/String;

    .line 925
    .end local v27    # "codecs":Ljava/lang/String;
    .local v9, "codecs":Ljava/lang/String;
    const-string/jumbo v26, "video/dolby-vision"

    move-object/from16 v27, v9

    goto :goto_e

    .line 923
    .end local v9    # "codecs":Ljava/lang/String;
    .restart local v27    # "codecs":Ljava/lang/String;
    :cond_19
    nop

    .line 927
    .end local v8    # "dolbyVisionConfig":Landroidx/media2/exoplayer/external/video/DolbyVisionConfig;
    :goto_e
    nop

    .line 970
    :goto_f
    add-int/2addr v14, v7

    .line 971
    .end local v6    # "childStartPosition":I
    .end local v7    # "childAtomSize":I
    .end local v10    # "childAtomType":I
    goto/16 :goto_3

    .line 894
    :cond_1a
    nop

    .line 974
    :goto_10
    if-nez v26, :cond_1b

    .line 975
    return-void

    .line 978
    :cond_1b
    nop

    .line 980
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/high16 v13, -0x40800000    # -1.0f

    const/16 v19, 0x0

    .line 979
    move-object/from16 v7, v26

    move-object/from16 v8, v27

    move v11, v5

    move/from16 v12, v21

    move/from16 v29, v14

    .end local v14    # "childPosition":I
    .local v29, "childPosition":I
    move-object/from16 v14, v25

    move/from16 v30, v15

    .end local v15    # "atomType":I
    .local v30, "atomType":I
    move/from16 v15, p5

    move/from16 v16, v23

    move-object/from16 v17, v28

    move/from16 v18, v24

    move-object/from16 v20, v3

    invoke-static/range {v6 .. v20}, Landroidx/media2/exoplayer/external/Format;->createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILandroidx/media2/exoplayer/external/video/ColorInfo;Landroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v6

    iput-object v6, v4, Landroidx/media2/exoplayer/external/extractor/mp4/AtomParsers$StsdData;->format:Landroidx/media2/exoplayer/external/Format;

    .line 995
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
