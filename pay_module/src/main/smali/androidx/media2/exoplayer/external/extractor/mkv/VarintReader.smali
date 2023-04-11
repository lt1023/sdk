.class final Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;
.super Ljava/lang/Object;
.source "VarintReader.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final STATE_BEGIN_READING:I = 0x0

.field private static final STATE_READ_CONTENTS:I = 0x1

.field private static final VARINT_LENGTH_MASKS:[J


# instance fields
.field private length:I

.field private final scratch:[B

.field private state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const/16 v0, 0x8

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;->VARINT_LENGTH_MASKS:[J

    return-void

    :array_0
    .array-data 8
        0x80
        0x40
        0x20
        0x10
        0x8
        0x4
        0x2
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;->scratch:[B

    .line 54
    return-void
.end method

.method public static assembleVarint([BIZ)J
    .locals 9
    .param p0, "varintBytes"    # [B
    .param p1, "varintLength"    # I
    .param p2, "removeLengthMask"    # Z

    .line 151
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    .line 152
    .local v0, "varint":J
    if-eqz p2, :cond_0

    .line 153
    sget-object v4, Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;->VARINT_LENGTH_MASKS:[J

    add-int/lit8 v5, p1, -0x1

    aget-wide v5, v4, v5

    const-wide/16 v7, -0x1

    xor-long/2addr v5, v7

    and-long/2addr v0, v5

    goto :goto_0

    .line 152
    :cond_0
    nop

    .line 155
    :goto_0
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_1
    if-ge v4, p1, :cond_1

    .line 156
    const/16 v5, 0x8

    shl-long v5, v0, v5

    aget-byte v7, p0, v4

    int-to-long v7, v7

    and-long/2addr v7, v2

    or-long v0, v5, v7

    .line 155
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 158
    .end local v4    # "i":I
    :cond_1
    return-wide v0
.end method

.method public static parseUnsignedVarintLength(I)I
    .locals 7
    .param p0, "firstByte"    # I

    .line 131
    const/4 v0, -0x1

    .line 132
    .local v0, "varIntLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;->VARINT_LENGTH_MASKS:[J

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 133
    aget-wide v3, v2, v1

    int-to-long v5, p0

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v2, v3, v5

    if-eqz v2, :cond_0

    .line 134
    add-int/lit8 v0, v1, 0x1

    .line 135
    goto :goto_1

    .line 132
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return v0
.end method


# virtual methods
.method public getLastLength()I
    .locals 1

    .line 120
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;->length:I

    return v0
.end method

.method public readUnsignedVarint(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;ZZI)J
    .locals 5
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .param p2, "allowEndOfInput"    # Z
    .param p3, "removeLengthMask"    # Z
    .param p4, "maximumAllowedLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 89
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;->state:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 91
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;->scratch:[B

    invoke-interface {p1, v0, v1, v2, p2}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    const-wide/16 v0, -0x1

    return-wide v0

    .line 94
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;->scratch:[B

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 95
    .local v0, "firstByte":I
    invoke-static {v0}, Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;->parseUnsignedVarintLength(I)I

    move-result v3

    iput v3, p0, Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;->length:I

    .line 96
    iget v3, p0, Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;->length:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 99
    iput v2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;->state:I

    goto :goto_0

    .line 97
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No valid varint length mask found"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 89
    .end local v0    # "firstByte":I
    :cond_2
    nop

    .line 102
    :goto_0
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;->length:I

    if-le v0, p4, :cond_3

    .line 103
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;->state:I

    .line 104
    const-wide/16 v0, -0x2

    return-wide v0

    .line 107
    :cond_3
    if-eq v0, v2, :cond_4

    .line 109
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;->scratch:[B

    sub-int/2addr v0, v2

    invoke-interface {p1, v3, v2, v0}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->readFully([BII)V

    goto :goto_1

    .line 107
    :cond_4
    nop

    .line 112
    :goto_1
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;->state:I

    .line 113
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;->scratch:[B

    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;->length:I

    invoke-static {v0, v1, p3}, Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;->assembleVarint([BIZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public reset()V
    .locals 1

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;->state:I

    .line 61
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/VarintReader;->length:I

    .line 62
    return-void
.end method
