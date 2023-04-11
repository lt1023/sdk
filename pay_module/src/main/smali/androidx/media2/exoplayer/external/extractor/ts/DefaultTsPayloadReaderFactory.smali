.class public final Landroidx/media2/exoplayer/external/extractor/ts/DefaultTsPayloadReaderFactory;
.super Ljava/lang/Object;
.source "DefaultTsPayloadReaderFactory.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$Factory;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/extractor/ts/DefaultTsPayloadReaderFactory$Flags;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR_TAG_CAPTION_SERVICE:I = 0x86

.field public static final FLAG_ALLOW_NON_IDR_KEYFRAMES:I = 0x1

.field public static final FLAG_DETECT_ACCESS_UNITS:I = 0x8

.field public static final FLAG_ENABLE_HDMV_DTS_AUDIO_STREAMS:I = 0x40

.field public static final FLAG_IGNORE_AAC_STREAM:I = 0x2

.field public static final FLAG_IGNORE_H264_STREAM:I = 0x4

.field public static final FLAG_IGNORE_SPLICE_INFO_STREAM:I = 0x10

.field public static final FLAG_OVERRIDE_CAPTION_DESCRIPTORS:I = 0x20


# instance fields
.field private final closedCaptionFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;"
        }
    .end annotation
.end field

.field private final flags:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(I)V

    .line 110
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "flags"    # I

    .line 117
    const-string v0, "application/cea-608"

    .line 120
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, v1}, Landroidx/media2/exoplayer/external/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    .line 119
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 117
    invoke-direct {p0, p1, v0}, Landroidx/media2/exoplayer/external/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(ILjava/util/List;)V

    .line 121
    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;)V"
        }
    .end annotation

    .line 133
    .local p2, "closedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/Format;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/DefaultTsPayloadReaderFactory;->flags:I

    .line 135
    iput-object p2, p0, Landroidx/media2/exoplayer/external/extractor/ts/DefaultTsPayloadReaderFactory;->closedCaptionFormats:Ljava/util/List;

    .line 136
    return-void
.end method

.method private buildSeiReader(Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$EsInfo;)Landroidx/media2/exoplayer/external/extractor/ts/SeiReader;
    .locals 2
    .param p1, "esInfo"    # Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$EsInfo;

    .line 198
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/ts/SeiReader;

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/ts/DefaultTsPayloadReaderFactory;->getClosedCaptionFormats(Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$EsInfo;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/extractor/ts/SeiReader;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private buildUserDataReader(Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$EsInfo;)Landroidx/media2/exoplayer/external/extractor/ts/UserDataReader;
    .locals 2
    .param p1, "esInfo"    # Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$EsInfo;

    .line 211
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/ts/UserDataReader;

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/ts/DefaultTsPayloadReaderFactory;->getClosedCaptionFormats(Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$EsInfo;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/extractor/ts/UserDataReader;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private getClosedCaptionFormats(Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$EsInfo;)Ljava/util/List;
    .locals 27
    .param p1, "esInfo"    # Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$EsInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$EsInfo;",
            ")",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;"
        }
    .end annotation

    .line 224
    move-object/from16 v0, p0

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/ts/DefaultTsPayloadReaderFactory;->closedCaptionFormats:Ljava/util/List;

    return-object v1

    .line 227
    :cond_0
    new-instance v1, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    move-object/from16 v2, p1

    iget-object v3, v2, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$EsInfo;->descriptorBytes:[B

    invoke-direct {v1, v3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>([B)V

    .line 228
    .local v1, "scratchDescriptorData":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/ts/DefaultTsPayloadReaderFactory;->closedCaptionFormats:Ljava/util/List;

    .line 229
    .local v3, "closedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/Format;>;"
    :goto_0
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    if-lez v4, :cond_7

    .line 230
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 231
    .local v4, "descriptorTag":I
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    .line 232
    .local v5, "descriptorLength":I
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v6

    add-int/2addr v6, v5

    .line 233
    .local v6, "nextDescriptorPosition":I
    const/16 v7, 0x86

    if-ne v4, v7, :cond_6

    .line 235
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v7

    .line 236
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    and-int/lit8 v7, v7, 0x1f

    .line 237
    .local v7, "numberOfServices":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v7, :cond_5

    .line 238
    const/4 v9, 0x3

    invoke-virtual {v1, v9}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v9

    .line 239
    .local v9, "language":Ljava/lang/String;
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v15

    .line 240
    .local v15, "captionTypeByte":I
    and-int/lit16 v10, v15, 0x80

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    goto :goto_2

    :cond_1
    const/4 v10, 0x0

    :goto_2
    move/from16 v21, v10

    .line 243
    .local v21, "isDigital":Z
    if-eqz v21, :cond_2

    .line 244
    const-string v10, "application/cea-708"

    .line 245
    .local v10, "mimeType":Ljava/lang/String;
    and-int/lit8 v13, v15, 0x3f

    move-object/from16 v22, v10

    move/from16 v23, v13

    goto :goto_3

    .line 247
    .end local v10    # "mimeType":Ljava/lang/String;
    :cond_2
    const-string v10, "application/cea-608"

    .line 248
    .restart local v10    # "mimeType":Ljava/lang/String;
    const/4 v13, 0x1

    move-object/from16 v22, v10

    move/from16 v23, v13

    .line 252
    .end local v10    # "mimeType":Ljava/lang/String;
    .local v22, "mimeType":Ljava/lang/String;
    .local v23, "accessibilityChannel":I
    :goto_3
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    int-to-byte v14, v10

    .line 254
    .local v14, "flags":B
    invoke-virtual {v1, v12}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    .line 256
    const/4 v10, 0x0

    .line 258
    .local v10, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    if-eqz v21, :cond_4

    .line 259
    and-int/lit8 v13, v14, 0x40

    if-eqz v13, :cond_3

    const/4 v11, 0x1

    nop

    .line 260
    .local v11, "isWideAspectRatio":Z
    :cond_3
    invoke-static {v11}, Landroidx/media2/exoplayer/external/text/cea/Cea708InitializationData;->buildData(Z)Ljava/util/List;

    move-result-object v10

    move-object/from16 v24, v10

    goto :goto_4

    .line 258
    .end local v11    # "isWideAspectRatio":Z
    :cond_4
    move-object/from16 v24, v10

    .line 263
    .end local v10    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local v24, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :goto_4
    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide v18, 0x7fffffffffffffffL

    .line 264
    move-object/from16 v11, v22

    move/from16 v25, v14

    .end local v14    # "flags":B
    .local v25, "flags":B
    move/from16 v14, v16

    move/from16 v26, v15

    .end local v15    # "captionTypeByte":I
    .local v26, "captionTypeByte":I
    move-object v15, v9

    move/from16 v16, v23

    move-object/from16 v20, v24

    invoke-static/range {v10 .. v20}, Landroidx/media2/exoplayer/external/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroidx/media2/exoplayer/external/drm/DrmInitData;JLjava/util/List;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v10

    .line 263
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    .end local v9    # "language":Ljava/lang/String;
    .end local v21    # "isDigital":Z
    .end local v22    # "mimeType":Ljava/lang/String;
    .end local v23    # "accessibilityChannel":I
    .end local v24    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v25    # "flags":B
    .end local v26    # "captionTypeByte":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    goto :goto_5

    .line 233
    .end local v7    # "numberOfServices":I
    .end local v8    # "i":I
    :cond_6
    nop

    .line 279
    :goto_5
    invoke-virtual {v1, v6}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 280
    .end local v4    # "descriptorTag":I
    .end local v5    # "descriptorLength":I
    .end local v6    # "nextDescriptorPosition":I
    goto/16 :goto_0

    .line 282
    :cond_7
    return-object v3
.end method

.method private isSet(I)Z
    .locals 1
    .param p1, "flag"    # I

    .line 286
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/DefaultTsPayloadReaderFactory;->flags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public createInitialPayloadReaders()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;",
            ">;"
        }
    .end annotation

    .line 140
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    return-object v0
.end method

.method public createPayloadReader(ILandroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$EsInfo;)Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader;
    .locals 5
    .param p1, "streamType"    # I
    .param p2, "esInfo"    # Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$EsInfo;

    .line 145
    const/4 v0, 0x2

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    .line 184
    return-object v1

    .line 159
    :sswitch_0
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;

    new-instance v1, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;

    iget-object v2, p2, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/extractor/ts/Ac4Reader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;-><init>(Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;)V

    return-object v0

    .line 145
    :sswitch_1
    goto :goto_1

    .line 176
    :sswitch_2
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/media2/exoplayer/external/extractor/ts/SectionReader;

    new-instance v0, Landroidx/media2/exoplayer/external/extractor/ts/SpliceInfoSectionReader;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/extractor/ts/SpliceInfoSectionReader;-><init>()V

    invoke-direct {v1, v0}, Landroidx/media2/exoplayer/external/extractor/ts/SectionReader;-><init>(Landroidx/media2/exoplayer/external/extractor/ts/SectionPayloadReader;)V

    .line 176
    :goto_0
    return-object v1

    .line 161
    :sswitch_3
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 162
    return-object v1

    .line 161
    :cond_1
    nop

    .line 166
    :goto_1
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;

    new-instance v1, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;

    iget-object v2, p2, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/extractor/ts/DtsReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;-><init>(Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;)V

    return-object v0

    .line 157
    :sswitch_4
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;

    new-instance v1, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;

    iget-object v2, p2, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/extractor/ts/Ac3Reader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;-><init>(Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;)V

    return-object v0

    .line 181
    :sswitch_5
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;

    new-instance v1, Landroidx/media2/exoplayer/external/extractor/ts/DvbSubtitleReader;

    iget-object v2, p2, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$EsInfo;->dvbSubtitleInfos:Ljava/util/List;

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/extractor/ts/DvbSubtitleReader;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;-><init>(Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;)V

    return-object v0

    .line 174
    :sswitch_6
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;

    new-instance v1, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;

    invoke-direct {p0, p2}, Landroidx/media2/exoplayer/external/extractor/ts/DefaultTsPayloadReaderFactory;->buildSeiReader(Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$EsInfo;)Landroidx/media2/exoplayer/external/extractor/ts/SeiReader;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/extractor/ts/H265Reader;-><init>(Landroidx/media2/exoplayer/external/extractor/ts/SeiReader;)V

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;-><init>(Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;)V

    return-object v0

    .line 170
    :sswitch_7
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 171
    :cond_2
    new-instance v1, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;

    new-instance v0, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;

    invoke-direct {p0, p2}, Landroidx/media2/exoplayer/external/extractor/ts/DefaultTsPayloadReaderFactory;->buildSeiReader(Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$EsInfo;)Landroidx/media2/exoplayer/external/extractor/ts/SeiReader;

    move-result-object v2

    const/4 v3, 0x1

    .line 172
    invoke-direct {p0, v3}, Landroidx/media2/exoplayer/external/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result v3

    const/16 v4, 0x8

    invoke-direct {p0, v4}, Landroidx/media2/exoplayer/external/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Landroidx/media2/exoplayer/external/extractor/ts/H264Reader;-><init>(Landroidx/media2/exoplayer/external/extractor/ts/SeiReader;ZZ)V

    invoke-direct {v1, v0}, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;-><init>(Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;)V

    .line 170
    :goto_2
    return-object v1

    .line 179
    :sswitch_8
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;

    new-instance v1, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/extractor/ts/Id3Reader;-><init>()V

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;-><init>(Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;)V

    return-object v0

    .line 153
    :sswitch_9
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 154
    goto :goto_3

    :cond_3
    new-instance v1, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;

    new-instance v0, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;

    iget-object v2, p2, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroidx/media2/exoplayer/external/extractor/ts/LatmReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0}, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;-><init>(Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;)V

    .line 153
    :goto_3
    return-object v1

    .line 150
    :sswitch_a
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 151
    goto :goto_4

    :cond_4
    new-instance v1, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;

    new-instance v0, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;

    const/4 v2, 0x0

    iget-object v3, p2, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroidx/media2/exoplayer/external/extractor/ts/AdtsReader;-><init>(ZLjava/lang/String;)V

    invoke-direct {v1, v0}, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;-><init>(Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;)V

    .line 150
    :goto_4
    return-object v1

    .line 148
    :sswitch_b
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;

    new-instance v1, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;

    iget-object v2, p2, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/extractor/ts/MpegAudioReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;-><init>(Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;)V

    return-object v0

    .line 168
    :sswitch_c
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;

    new-instance v1, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;

    invoke-direct {p0, p2}, Landroidx/media2/exoplayer/external/extractor/ts/DefaultTsPayloadReaderFactory;->buildUserDataReader(Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$EsInfo;)Landroidx/media2/exoplayer/external/extractor/ts/UserDataReader;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/extractor/ts/H262Reader;-><init>(Landroidx/media2/exoplayer/external/extractor/ts/UserDataReader;)V

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/extractor/ts/PesReader;-><init>(Landroidx/media2/exoplayer/external/extractor/ts/ElementaryStreamReader;)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_c
        0x3 -> :sswitch_b
        0x4 -> :sswitch_b
        0xf -> :sswitch_a
        0x11 -> :sswitch_9
        0x15 -> :sswitch_8
        0x1b -> :sswitch_7
        0x24 -> :sswitch_6
        0x59 -> :sswitch_5
        0x81 -> :sswitch_4
        0x82 -> :sswitch_3
        0x86 -> :sswitch_2
        0x87 -> :sswitch_4
        0x8a -> :sswitch_1
        0xac -> :sswitch_0
    .end sparse-switch
.end method
