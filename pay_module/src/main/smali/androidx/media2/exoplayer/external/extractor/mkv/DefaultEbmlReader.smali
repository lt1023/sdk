.class final Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;
.super Ljava/lang/Object;
.source "DefaultEbmlReader.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/mkv/EbmlReader;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader$MasterElement;,
        Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader$ElementState;
    }
.end annotation


# static fields
.field private static final ELEMENT_STATE_READ_CONTENT:I = 0x2

.field private static final ELEMENT_STATE_READ_CONTENT_SIZE:I = 0x1

.field private static final ELEMENT_STATE_READ_ID:I = 0x0

.field private static final MAX_ID_BYTES:I = 0x4

.field private static final MAX_INTEGER_ELEMENT_SIZE_BYTES:I = 0x8

.field private static final MAX_LENGTH_BYTES:I = 0x8

.field private static final VALID_FLOAT32_ELEMENT_SIZE_BYTES:I = 0x4

.field private static final VALID_FLOAT64_ELEMENT_SIZE_BYTES:I = 0x8


# instance fields
.field private elementContentSize:J

.field private elementId:I

.field private elementState:I

.field private final masterElementsStack:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader$MasterElement;",
            ">;"
        }
    .end annotation
.end field

.field private processor:Landroidx/media2/exoplayer/external/extractor/mkv/EbmlProcessor;

.field private final scratch:[B

.field private final varintReader:Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->scratch:[B

    .line 68
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/ArrayDeque;

    .line 69
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->varintReader:Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;

    .line 70
    return-void
.end method

.method private maybeResyncToNextLevel1Element(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)J
    .locals 5
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 170
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->resetPeekPosition()V

    .line 172
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->scratch:[B

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->peekFully([BII)V

    .line 173
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->scratch:[B

    aget-byte v0, v0, v2

    invoke-static {v0}, Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;->parseUnsignedVarintLength(I)I

    move-result v0

    .line 174
    .local v0, "varintLength":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-gt v0, v1, :cond_1

    .line 175
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->scratch:[B

    invoke-static {v1, v0, v2}, Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;->assembleVarint([BIZ)J

    move-result-wide v1

    long-to-int v2, v1

    .line 176
    .local v2, "potentialId":I
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->processor:Landroidx/media2/exoplayer/external/extractor/mkv/EbmlProcessor;

    invoke-interface {v1, v2}, Landroidx/media2/exoplayer/external/extractor/mkv/EbmlProcessor;->isLevel1Element(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    invoke-interface {p1, v0}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V

    .line 178
    int-to-long v3, v2

    return-wide v3

    .line 176
    :cond_0
    goto :goto_1

    .line 174
    .end local v2    # "potentialId":I
    :cond_1
    nop

    .line 181
    :goto_1
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V

    .line 182
    .end local v0    # "varintLength":I
    goto :goto_0
.end method

.method private readFloat(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;I)D
    .locals 4
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .param p2, "byteLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 215
    invoke-direct {p0, p1, p2}, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->readInteger(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;I)J

    move-result-wide v0

    .line 217
    .local v0, "integerValue":J
    const/4 v2, 0x4

    if-ne p2, v2, :cond_0

    .line 218
    long-to-int v2, v0

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    float-to-double v2, v2

    goto :goto_0

    .line 220
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    .line 222
    .local v2, "floatValue":D
    :goto_0
    return-wide v2
.end method

.method private readInteger(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;I)J
    .locals 7
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .param p2, "byteLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 196
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->scratch:[B

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, p2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->readFully([BII)V

    .line 197
    const-wide/16 v0, 0x0

    .line 198
    .local v0, "value":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 199
    const/16 v3, 0x8

    shl-long v3, v0, v3

    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->scratch:[B

    aget-byte v5, v5, v2

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    or-long v0, v3, v5

    .line 198
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 201
    .end local v2    # "i":I
    :cond_0
    return-wide v0
.end method

.method private readString(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;I)Ljava/lang/String;
    .locals 4
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .param p2, "byteLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 237
    if-nez p2, :cond_0

    .line 238
    const-string v0, ""

    return-object v0

    .line 240
    :cond_0
    new-array v0, p2, [B

    .line 241
    .local v0, "stringBytes":[B
    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, p2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->readFully([BII)V

    .line 243
    move v2, p2

    .line 244
    .local v2, "trimmedLength":I
    :goto_0
    if-lez v2, :cond_1

    add-int/lit8 v3, v2, -0x1

    aget-byte v3, v0, v3

    if-nez v3, :cond_1

    .line 245
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 244
    :cond_1
    nop

    .line 247
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0, v1, v2}, Ljava/lang/String;-><init>([BII)V

    return-object v3
.end method


# virtual methods
.method public init(Landroidx/media2/exoplayer/external/extractor/mkv/EbmlProcessor;)V
    .locals 0
    .param p1, "processor"    # Landroidx/media2/exoplayer/external/extractor/mkv/EbmlProcessor;

    .line 74
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->processor:Landroidx/media2/exoplayer/external/extractor/mkv/EbmlProcessor;

    .line 75
    return-void
.end method

.method public read(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z
    .locals 13
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->processor:Landroidx/media2/exoplayer/external/extractor/mkv/EbmlProcessor;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 89
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader$MasterElement;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader$MasterElement;->access$000(Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader$MasterElement;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    .line 90
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->processor:Landroidx/media2/exoplayer/external/extractor/mkv/EbmlProcessor;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader$MasterElement;

    invoke-static {v2}, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader$MasterElement;->access$100(Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader$MasterElement;)I

    move-result v2

    invoke-interface {v0, v2}, Landroidx/media2/exoplayer/external/extractor/mkv/EbmlProcessor;->endMasterElement(I)V

    .line 91
    return v1

    .line 89
    :cond_0
    goto :goto_1

    .line 88
    :cond_1
    nop

    .line 94
    :goto_1
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->elementState:I

    const/4 v2, 0x0

    if-nez v0, :cond_4

    .line 95
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->varintReader:Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;

    const/4 v3, 0x4

    invoke-virtual {v0, p1, v1, v2, v3}, Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;->readUnsignedVarint(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;ZZI)J

    move-result-wide v3

    .line 96
    .local v3, "result":J
    const-wide/16 v5, -0x2

    cmp-long v0, v3, v5

    if-nez v0, :cond_2

    .line 97
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->maybeResyncToNextLevel1Element(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)J

    move-result-wide v3

    goto :goto_2

    .line 96
    :cond_2
    nop

    .line 99
    :goto_2
    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_3

    .line 100
    return v2

    .line 103
    :cond_3
    long-to-int v0, v3

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->elementId:I

    .line 104
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->elementState:I

    goto :goto_3

    .line 94
    .end local v3    # "result":J
    :cond_4
    nop

    .line 107
    :goto_3
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->elementState:I

    if-ne v0, v1, :cond_5

    .line 108
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->varintReader:Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;

    const/16 v3, 0x8

    invoke-virtual {v0, p1, v2, v1, v3}, Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;->readUnsignedVarint(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;ZZI)J

    move-result-wide v3

    iput-wide v3, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    .line 109
    const/4 v0, 0x2

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->elementState:I

    goto :goto_4

    .line 107
    :cond_5
    nop

    .line 112
    :goto_4
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->processor:Landroidx/media2/exoplayer/external/extractor/mkv/EbmlProcessor;

    iget v3, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->elementId:I

    invoke-interface {v0, v3}, Landroidx/media2/exoplayer/external/extractor/mkv/EbmlProcessor;->getElementType(I)I

    move-result v0

    .line 113
    .local v0, "type":I
    const-wide/16 v3, 0x8

    packed-switch v0, :pswitch_data_0

    .line 152
    new-instance v1, Landroidx/media2/exoplayer/external/ParserException;

    const/16 v2, 0x20

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid element type "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 129
    :pswitch_0
    iget-wide v5, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    const-wide/16 v7, 0x4

    cmp-long v9, v5, v7

    if-eqz v9, :cond_7

    cmp-long v7, v5, v3

    if-nez v7, :cond_6

    goto :goto_5

    .line 131
    :cond_6
    new-instance v1, Landroidx/media2/exoplayer/external/ParserException;

    const/16 v2, 0x28

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid float size: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 129
    :cond_7
    :goto_5
    nop

    .line 133
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->processor:Landroidx/media2/exoplayer/external/extractor/mkv/EbmlProcessor;

    iget v4, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->elementId:I

    iget-wide v5, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    long-to-int v6, v5

    invoke-direct {p0, p1, v6}, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->readFloat(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;I)D

    move-result-wide v5

    invoke-interface {v3, v4, v5, v6}, Landroidx/media2/exoplayer/external/extractor/mkv/EbmlProcessor;->floatElement(ID)V

    .line 134
    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 135
    return v1

    .line 144
    :pswitch_1
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->processor:Landroidx/media2/exoplayer/external/extractor/mkv/EbmlProcessor;

    iget v4, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->elementId:I

    iget-wide v5, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    long-to-int v6, v5

    invoke-interface {v3, v4, v6, p1}, Landroidx/media2/exoplayer/external/extractor/mkv/EbmlProcessor;->binaryElement(IILandroidx/media2/exoplayer/external/extractor/ExtractorInput;)V

    .line 145
    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 146
    return v1

    .line 137
    :pswitch_2
    iget-wide v3, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    const-wide/32 v5, 0x7fffffff

    cmp-long v7, v3, v5

    if-gtz v7, :cond_8

    .line 140
    iget-object v5, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->processor:Landroidx/media2/exoplayer/external/extractor/mkv/EbmlProcessor;

    iget v6, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->elementId:I

    long-to-int v4, v3

    invoke-direct {p0, p1, v4}, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->readString(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v6, v3}, Landroidx/media2/exoplayer/external/extractor/mkv/EbmlProcessor;->stringElement(ILjava/lang/String;)V

    .line 141
    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 142
    return v1

    .line 138
    :cond_8
    new-instance v1, Landroidx/media2/exoplayer/external/ParserException;

    const/16 v2, 0x29

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "String element size: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    :pswitch_3
    iget-wide v5, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    cmp-long v7, v5, v3

    if-gtz v7, :cond_9

    .line 125
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->processor:Landroidx/media2/exoplayer/external/extractor/mkv/EbmlProcessor;

    iget v4, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->elementId:I

    long-to-int v6, v5

    invoke-direct {p0, p1, v6}, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->readInteger(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;I)J

    move-result-wide v5

    invoke-interface {v3, v4, v5, v6}, Landroidx/media2/exoplayer/external/extractor/mkv/EbmlProcessor;->integerElement(IJ)V

    .line 126
    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 127
    return v1

    .line 123
    :cond_9
    new-instance v1, Landroidx/media2/exoplayer/external/ParserException;

    const/16 v2, 0x2a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid integer size: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 115
    :pswitch_4
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v9

    .line 116
    .local v9, "elementContentPosition":J
    iget-wide v3, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    add-long v11, v9, v3

    .line 117
    .local v11, "elementEndPosition":J
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/ArrayDeque;

    new-instance v4, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader$MasterElement;

    iget v5, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->elementId:I

    const/4 v6, 0x0

    invoke-direct {v4, v5, v11, v12, v6}, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader$MasterElement;-><init>(IJLandroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader$1;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 118
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->processor:Landroidx/media2/exoplayer/external/extractor/mkv/EbmlProcessor;

    iget v4, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->elementId:I

    iget-wide v7, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    move-wide v5, v9

    invoke-interface/range {v3 .. v8}, Landroidx/media2/exoplayer/external/extractor/mkv/EbmlProcessor;->startMasterElement(IJJ)V

    .line 119
    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 120
    return v1

    .line 148
    .end local v9    # "elementContentPosition":J
    .end local v11    # "elementEndPosition":J
    :pswitch_5
    iget-wide v3, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->elementContentSize:J

    long-to-int v1, v3

    invoke-interface {p1, v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->skipFully(I)V

    .line 149
    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 150
    nop

    .line 154
    .end local v0    # "type":I
    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->elementState:I

    .line 80
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->masterElementsStack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 81
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;->varintReader:Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;->reset()V

    .line 82
    return-void
.end method
