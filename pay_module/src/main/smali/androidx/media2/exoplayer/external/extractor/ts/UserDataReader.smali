.class final Landroidx/media2/exoplayer/external/extractor/ts/UserDataReader;
.super Ljava/lang/Object;
.source "UserDataReader.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final USER_DATA_START_CODE:I = 0x1b2


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

.field private final outputs:[Landroidx/media2/exoplayer/external/extractor/TrackOutput;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/Format;",
            ">;)V"
        }
    .end annotation

    .line 44
    .local p1, "closedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/Format;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/ts/UserDataReader;->closedCaptionFormats:Ljava/util/List;

    .line 46
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/ts/UserDataReader;->outputs:[Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    .line 47
    return-void
.end method


# virtual methods
.method public consume(JLandroidx/media2/exoplayer/external/util/ParsableByteArray;)V
    .locals 4
    .param p1, "pesTimeUs"    # J
    .param p3, "userDataPayload"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 77
    invoke-virtual {p3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 78
    return-void

    .line 80
    :cond_0
    invoke-virtual {p3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 81
    .local v0, "userDataStartCode":I
    invoke-virtual {p3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 82
    .local v1, "userDataIdentifier":I
    invoke-virtual {p3}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 83
    .local v2, "userDataTypeCode":I
    const/16 v3, 0x1b2

    if-ne v0, v3, :cond_1

    const v3, 0x47413934

    if-ne v1, v3, :cond_1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 86
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/ts/UserDataReader;->outputs:[Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    invoke-static {p1, p2, p3, v3}, Landroidx/media2/exoplayer/external/text/cea/CeaUtil;->consumeCcData(JLandroidx/media2/exoplayer/external/util/ParsableByteArray;[Landroidx/media2/exoplayer/external/extractor/TrackOutput;)V

    goto :goto_0

    .line 83
    :cond_1
    nop

    .line 88
    :goto_0
    return-void
.end method

.method public createTracks(Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 18
    .param p1, "extractorOutput"    # Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;
    .param p2, "idGenerator"    # Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;

    .line 51
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/ts/UserDataReader;->outputs:[Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v2

    const/4 v3, 0x3

    move-object/from16 v4, p1

    invoke-interface {v4, v2, v3}, Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;->track(II)Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    move-result-object v2

    .line 54
    .local v2, "output":Landroidx/media2/exoplayer/external/extractor/TrackOutput;
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/ts/UserDataReader;->closedCaptionFormats:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/Format;

    .line 55
    .local v3, "channelFormat":Landroidx/media2/exoplayer/external/Format;
    iget-object v15, v3, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    .line 56
    .local v15, "channelMimeType":Ljava/lang/String;
    const-string v5, "application/cea-608"

    .line 57
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "application/cea-708"

    .line 58
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    goto :goto_2

    .line 57
    :cond_1
    nop

    .line 58
    :goto_1
    const/4 v5, 0x1

    :goto_2
    const-string v6, "Invalid closed caption mime type provided: "

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_2
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v6, v7

    .line 56
    :goto_3
    invoke-static {v5, v6}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 60
    nop

    .line 62
    invoke-virtual/range {p2 .. p2}, Landroidx/media2/exoplayer/external/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, -0x1

    iget v9, v3, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    iget-object v10, v3, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    iget v11, v3, Landroidx/media2/exoplayer/external/Format;->accessibilityChannel:I

    const/4 v12, 0x0

    const-wide v13, 0x7fffffffffffffffL

    iget-object v6, v3, Landroidx/media2/exoplayer/external/Format;->initializationData:Ljava/util/List;

    .line 61
    move-object/from16 v16, v6

    move-object v6, v15

    move-object/from16 v17, v15

    .end local v15    # "channelMimeType":Ljava/lang/String;
    .local v17, "channelMimeType":Ljava/lang/String;
    move-object/from16 v15, v16

    invoke-static/range {v5 .. v15}, Landroidx/media2/exoplayer/external/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroidx/media2/exoplayer/external/drm/DrmInitData;JLjava/util/List;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v5

    .line 60
    invoke-interface {v2, v5}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->format(Landroidx/media2/exoplayer/external/Format;)V

    .line 72
    iget-object v5, v0, Landroidx/media2/exoplayer/external/extractor/ts/UserDataReader;->outputs:[Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    aput-object v2, v5, v1

    .line 51
    .end local v2    # "output":Landroidx/media2/exoplayer/external/extractor/TrackOutput;
    .end local v3    # "channelFormat":Landroidx/media2/exoplayer/external/Format;
    .end local v17    # "channelMimeType":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v4, p1

    .line 74
    .end local v1    # "i":I
    return-void
.end method
