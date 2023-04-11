.class public final Landroidx/media2/exoplayer/external/extractor/mp4/PsshAtomUtil;
.super Ljava/lang/Object;
.source "PsshAtomUtil.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/extractor/mp4/PsshAtomUtil$PsshAtom;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PsshAtomUtil"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildPsshAtom(Ljava/util/UUID;[B)[B
    .locals 1
    .param p0, "systemId"    # Ljava/util/UUID;
    .param p1, "data"    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 47
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Landroidx/media2/exoplayer/external/extractor/mp4/PsshAtomUtil;->buildPsshAtom(Ljava/util/UUID;[Ljava/util/UUID;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static buildPsshAtom(Ljava/util/UUID;[Ljava/util/UUID;[B)[B
    .locals 8
    .param p0, "systemId"    # Ljava/util/UUID;
    .param p1, "keyIds"    # [Ljava/util/UUID;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "data"    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 61
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    array-length v1, p2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 62
    .local v1, "dataLength":I
    :goto_0
    add-int/lit8 v2, v1, 0x20

    .line 63
    .local v2, "psshBoxLength":I
    if-eqz p1, :cond_1

    .line 64
    array-length v3, p1

    mul-int/lit8 v3, v3, 0x10

    add-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    goto :goto_1

    .line 63
    :cond_1
    nop

    .line 66
    :goto_1
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 67
    .local v3, "psshBox":Ljava/nio/ByteBuffer;
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 68
    const v4, 0x70737368    # 3.013775E29f

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 69
    if-eqz p1, :cond_2

    const/high16 v4, 0x1000000

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 70
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 71
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 72
    if-eqz p1, :cond_4

    .line 73
    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 74
    array-length v4, p1

    :goto_3
    if-ge v0, v4, :cond_3

    aget-object v5, p1, v0

    .line 75
    .local v5, "keyId":Ljava/util/UUID;
    invoke-virtual {v5}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 76
    invoke-virtual {v5}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 74
    .end local v5    # "keyId":Ljava/util/UUID;
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    goto :goto_4

    .line 72
    :cond_4
    nop

    .line 79
    :goto_4
    if-eqz p2, :cond_5

    array-length v0, p2

    if-eqz v0, :cond_5

    .line 80
    array-length v0, p2

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 81
    invoke-virtual {v3, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_5

    .line 79
    :cond_5
    nop

    .line 83
    :goto_5
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public static isPsshAtom([B)Z
    .locals 1
    .param p0, "data"    # [B

    .line 93
    invoke-static {p0}, Landroidx/media2/exoplayer/external/extractor/mp4/PsshAtomUtil;->parsePsshAtom([B)Landroidx/media2/exoplayer/external/extractor/mp4/PsshAtomUtil$PsshAtom;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static parsePsshAtom([B)Landroidx/media2/exoplayer/external/extractor/mp4/PsshAtomUtil$PsshAtom;
    .locals 12
    .param p0, "atom"    # [B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 162
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {v0, p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>([B)V

    .line 163
    .local v0, "atomData":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x20

    if-ge v1, v3, :cond_0

    .line 165
    return-object v2

    .line 167
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->setPosition(I)V

    .line 168
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 169
    .local v3, "atomSize":I
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    if-eq v3, v4, :cond_1

    .line 171
    return-object v2

    .line 173
    :cond_1
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 174
    .local v4, "atomType":I
    const v5, 0x70737368    # 3.013775E29f

    if-eq v4, v5, :cond_2

    .line 176
    return-object v2

    .line 178
    :cond_2
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readInt()I

    move-result v5

    invoke-static {v5}, Landroidx/media2/exoplayer/external/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v5

    .line 179
    .local v5, "atomVersion":I
    const/4 v6, 0x1

    if-le v5, v6, :cond_3

    .line 180
    const-string v1, "PsshAtomUtil"

    const/16 v6, 0x25

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Unsupported pssh version: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-object v2

    .line 183
    :cond_3
    new-instance v7, Ljava/util/UUID;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLong()J

    move-result-wide v8

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLong()J

    move-result-wide v10

    invoke-direct {v7, v8, v9, v10, v11}, Ljava/util/UUID;-><init>(JJ)V

    .line 184
    .local v7, "uuid":Ljava/util/UUID;
    if-ne v5, v6, :cond_4

    .line 185
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v6

    .line 186
    .local v6, "keyIdCount":I
    mul-int/lit8 v8, v6, 0x10

    invoke-virtual {v0, v8}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    .line 184
    .end local v6    # "keyIdCount":I
    :cond_4
    nop

    .line 188
    :goto_0
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v6

    .line 189
    .local v6, "dataSize":I
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v8

    if-eq v6, v8, :cond_5

    .line 191
    return-object v2

    .line 193
    :cond_5
    new-array v2, v6, [B

    .line 194
    .local v2, "data":[B
    invoke-virtual {v0, v2, v1, v6}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readBytes([BII)V

    .line 195
    new-instance v1, Landroidx/media2/exoplayer/external/extractor/mp4/PsshAtomUtil$PsshAtom;

    invoke-direct {v1, v7, v5, v2}, Landroidx/media2/exoplayer/external/extractor/mp4/PsshAtomUtil$PsshAtom;-><init>(Ljava/util/UUID;I[B)V

    return-object v1
.end method

.method public static parseSchemeSpecificData([BLjava/util/UUID;)[B
    .locals 7
    .param p0, "atom"    # [B
    .param p1, "uuid"    # Ljava/util/UUID;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 142
    invoke-static {p0}, Landroidx/media2/exoplayer/external/extractor/mp4/PsshAtomUtil;->parsePsshAtom([B)Landroidx/media2/exoplayer/external/extractor/mp4/PsshAtomUtil$PsshAtom;

    move-result-object v0

    .line 143
    .local v0, "parsedAtom":Landroidx/media2/exoplayer/external/extractor/mp4/PsshAtomUtil$PsshAtom;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 144
    return-object v1

    .line 146
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {v0}, Landroidx/media2/exoplayer/external/extractor/mp4/PsshAtomUtil$PsshAtom;->access$000(Landroidx/media2/exoplayer/external/extractor/mp4/PsshAtomUtil$PsshAtom;)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 147
    const-string v2, "PsshAtomUtil"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Landroidx/media2/exoplayer/external/extractor/mp4/PsshAtomUtil$PsshAtom;->access$000(Landroidx/media2/exoplayer/external/extractor/mp4/PsshAtomUtil$PsshAtom;)Ljava/util/UUID;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x21

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "UUID mismatch. Expected: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", got: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-object v1

    .line 146
    :cond_1
    nop

    .line 150
    invoke-static {v0}, Landroidx/media2/exoplayer/external/extractor/mp4/PsshAtomUtil$PsshAtom;->access$200(Landroidx/media2/exoplayer/external/extractor/mp4/PsshAtomUtil$PsshAtom;)[B

    move-result-object v1

    return-object v1
.end method

.method public static parseUuid([B)Ljava/util/UUID;
    .locals 2
    .param p0, "atom"    # [B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 106
    invoke-static {p0}, Landroidx/media2/exoplayer/external/extractor/mp4/PsshAtomUtil;->parsePsshAtom([B)Landroidx/media2/exoplayer/external/extractor/mp4/PsshAtomUtil$PsshAtom;

    move-result-object v0

    .line 107
    .local v0, "parsedAtom":Landroidx/media2/exoplayer/external/extractor/mp4/PsshAtomUtil$PsshAtom;
    if-nez v0, :cond_0

    .line 108
    const/4 v1, 0x0

    return-object v1

    .line 110
    :cond_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/extractor/mp4/PsshAtomUtil$PsshAtom;->access$000(Landroidx/media2/exoplayer/external/extractor/mp4/PsshAtomUtil$PsshAtom;)Ljava/util/UUID;

    move-result-object v1

    return-object v1
.end method

.method public static parseVersion([B)I
    .locals 2
    .param p0, "atom"    # [B

    .line 123
    invoke-static {p0}, Landroidx/media2/exoplayer/external/extractor/mp4/PsshAtomUtil;->parsePsshAtom([B)Landroidx/media2/exoplayer/external/extractor/mp4/PsshAtomUtil$PsshAtom;

    move-result-object v0

    .line 124
    .local v0, "parsedAtom":Landroidx/media2/exoplayer/external/extractor/mp4/PsshAtomUtil$PsshAtom;
    if-nez v0, :cond_0

    .line 125
    const/4 v1, -0x1

    return v1

    .line 127
    :cond_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/extractor/mp4/PsshAtomUtil$PsshAtom;->access$100(Landroidx/media2/exoplayer/external/extractor/mp4/PsshAtomUtil$PsshAtom;)I

    move-result v1

    return v1
.end method
