.class public final Landroidx/media2/exoplayer/external/drm/FrameworkMediaDrm;
.super Ljava/lang/Object;
.source "FrameworkMediaDrm.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/media2/exoplayer/external/drm/ExoMediaDrm<",
        "Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;",
        ">;"
    }
.end annotation


# static fields
.field private static final CENC_SCHEME_MIME_TYPE:Ljava/lang/String; = "cenc"

.field private static final MOCK_LA_URL:Ljava/lang/String; = "<LA_URL>https://x</LA_URL>"

.field private static final MOCK_LA_URL_VALUE:Ljava/lang/String; = "https://x"

.field private static final TAG:Ljava/lang/String; = "FrameworkMediaDrm"

.field private static final UTF_16_BYTES_PER_CHARACTER:I = 0x2


# instance fields
.field private final mediaDrm:Landroid/media/MediaDrm;

.field private final uuid:Ljava/util/UUID;


# direct methods
.method private constructor <init>(Ljava/util/UUID;)V
    .locals 2
    .param p1, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/UnsupportedSchemeException;
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Landroidx/media2/exoplayer/external/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Use C.CLEARKEY_UUID instead"

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 86
    iput-object p1, p0, Landroidx/media2/exoplayer/external/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    .line 87
    new-instance v0, Landroid/media/MediaDrm;

    invoke-static {p1}, Landroidx/media2/exoplayer/external/drm/FrameworkMediaDrm;->adjustUuid(Ljava/util/UUID;)Ljava/util/UUID;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    .line 88
    sget-object v0, Landroidx/media2/exoplayer/external/C;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroidx/media2/exoplayer/external/drm/FrameworkMediaDrm;->needsForceWidevineL3Workaround()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/drm/FrameworkMediaDrm;->forceWidevineL3(Landroid/media/MediaDrm;)V

    goto :goto_0

    .line 88
    :cond_0
    nop

    .line 91
    :goto_0
    return-void
.end method

.method private static addLaUrlAttributeIfMissing([B)[B
    .locals 11
    .param p0, "data"    # [B

    .line 364
    new-instance v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    invoke-direct {v0, p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;-><init>([B)V

    .line 367
    .local v0, "byteArray":Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v1

    .line 368
    .local v1, "length":I
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLittleEndianShort()S

    move-result v2

    .line 369
    .local v2, "objectRecordCount":I
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLittleEndianShort()S

    move-result v3

    .line 370
    .local v3, "recordType":I
    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    if-eq v3, v4, :cond_0

    goto/16 :goto_1

    .line 374
    :cond_0
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLittleEndianShort()S

    move-result v4

    .line 375
    .local v4, "recordLength":I
    const-string v5, "UTF-16LE"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    .line 376
    .local v5, "xml":Ljava/lang/String;
    const-string v6, "<LA_URL>"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 378
    return-object p0

    .line 381
    :cond_1
    const-string v6, "</DATA>"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 382
    .local v6, "endOfDataTagIndex":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    .line 383
    const-string v7, "FrameworkMediaDrm"

    const-string v8, "Could not find the </DATA> tag. Skipping LA_URL workaround."

    invoke-static {v7, v8}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 382
    :cond_2
    nop

    .line 385
    :goto_0
    const/4 v7, 0x0

    .line 386
    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 388
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x1a

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "<LA_URL>https://x</LA_URL>"

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 389
    .local v7, "xmlWithMockLaUrl":Ljava/lang/String;
    const-string v8, "<LA_URL>https://x</LA_URL>"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    .line 390
    .local v8, "extraBytes":I
    add-int v9, v1, v8

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 391
    .local v9, "newData":Ljava/nio/ByteBuffer;
    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 392
    add-int v10, v1, v8

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 393
    int-to-short v10, v2

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 394
    int-to-short v10, v3

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 395
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    mul-int/lit8 v10, v10, 0x2

    int-to-short v10, v10

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 396
    const-string v10, "UTF-16LE"

    invoke-static {v10}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 397
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    return-object v10

    .line 370
    .end local v4    # "recordLength":I
    .end local v5    # "xml":Ljava/lang/String;
    .end local v6    # "endOfDataTagIndex":I
    .end local v7    # "xmlWithMockLaUrl":Ljava/lang/String;
    .end local v8    # "extraBytes":I
    .end local v9    # "newData":Ljava/nio/ByteBuffer;
    :cond_3
    :goto_1
    nop

    .line 371
    const-string v4, "FrameworkMediaDrm"

    const-string v5, "Unexpected record count or type. Skipping LA_URL workaround."

    invoke-static {v4, v5}, Landroidx/media2/exoplayer/external/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    return-object p0
.end method

.method private static adjustRequestData(Ljava/util/UUID;[B)[B
    .locals 1
    .param p0, "uuid"    # Ljava/util/UUID;
    .param p1, "requestData"    # [B

    .line 337
    sget-object v0, Landroidx/media2/exoplayer/external/C;->CLEARKEY_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    invoke-static {p1}, Landroidx/media2/exoplayer/external/drm/ClearKeyUtil;->adjustRequestData([B)[B

    move-result-object v0

    return-object v0

    .line 340
    :cond_0
    return-object p1
.end method

.method private static adjustRequestInitData(Ljava/util/UUID;[B)[B
    .locals 3
    .param p0, "uuid"    # Ljava/util/UUID;
    .param p1, "initData"    # [B

    .line 298
    sget-object v0, Landroidx/media2/exoplayer/external/C;->PLAYREADY_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    invoke-static {p1, p0}, Landroidx/media2/exoplayer/external/extractor/mp4/PsshAtomUtil;->parseSchemeSpecificData([BLjava/util/UUID;)[B

    move-result-object v0

    .line 300
    .local v0, "schemeSpecificData":[B
    if-nez v0, :cond_0

    .line 302
    move-object v0, p1

    goto :goto_0

    .line 300
    :cond_0
    nop

    .line 304
    :goto_0
    sget-object v1, Landroidx/media2/exoplayer/external/C;->PLAYREADY_UUID:Ljava/util/UUID;

    .line 306
    invoke-static {v0}, Landroidx/media2/exoplayer/external/drm/FrameworkMediaDrm;->addLaUrlAttributeIfMissing([B)[B

    move-result-object v2

    .line 305
    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/extractor/mp4/PsshAtomUtil;->buildPsshAtom(Ljava/util/UUID;[B)[B

    move-result-object p1

    goto :goto_1

    .line 298
    .end local v0    # "schemeSpecificData":[B
    :cond_1
    nop

    .line 311
    :goto_1
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_3

    sget-object v0, Landroidx/media2/exoplayer/external/C;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    goto :goto_3

    :cond_3
    :goto_2
    sget-object v0, Landroidx/media2/exoplayer/external/C;->PLAYREADY_UUID:Ljava/util/UUID;

    .line 312
    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "Amazon"

    sget-object v1, Landroidx/media2/exoplayer/external/util/Util;->MANUFACTURER:Ljava/lang/String;

    .line 313
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "AFTB"

    sget-object v1, Landroidx/media2/exoplayer/external/util/Util;->MODEL:Ljava/lang/String;

    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "AFTS"

    sget-object v1, Landroidx/media2/exoplayer/external/util/Util;->MODEL:Ljava/lang/String;

    .line 315
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "AFTM"

    sget-object v1, Landroidx/media2/exoplayer/external/util/Util;->MODEL:Ljava/lang/String;

    .line 316
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    goto :goto_4

    .line 315
    :cond_5
    goto :goto_3

    .line 314
    :cond_6
    nop

    .line 317
    :goto_3
    invoke-static {p1, p0}, Landroidx/media2/exoplayer/external/extractor/mp4/PsshAtomUtil;->parseSchemeSpecificData([BLjava/util/UUID;)[B

    move-result-object v0

    .line 318
    .local v0, "psshData":[B
    if-eqz v0, :cond_7

    .line 320
    return-object v0

    .line 318
    :cond_7
    goto :goto_4

    .line 313
    .end local v0    # "psshData":[B
    :cond_8
    goto :goto_4

    .line 312
    :cond_9
    nop

    .line 323
    :goto_4
    return-object p1
.end method

.method private static adjustRequestMimeType(Ljava/util/UUID;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "uuid"    # Ljava/util/UUID;
    .param p1, "mimeType"    # Ljava/lang/String;

    .line 328
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_3

    sget-object v0, Landroidx/media2/exoplayer/external/C;->CLEARKEY_UUID:Ljava/util/UUID;

    .line 329
    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "video/mp4"

    .line 330
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "audio/mp4"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    .line 331
    :cond_1
    :goto_0
    const-string v0, "cenc"

    return-object v0

    .line 329
    :cond_2
    goto :goto_1

    .line 328
    :cond_3
    nop

    .line 333
    :goto_1
    return-object p1
.end method

.method private static adjustUuid(Ljava/util/UUID;)Ljava/util/UUID;
    .locals 2
    .param p0, "uuid"    # Ljava/util/UUID;

    .line 293
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x1b

    if-ge v0, v1, :cond_0

    sget-object v0, Landroidx/media2/exoplayer/external/C;->CLEARKEY_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/media2/exoplayer/external/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method private static forceWidevineL3(Landroid/media/MediaDrm;)V
    .locals 2
    .param p0, "mediaDrm"    # Landroid/media/MediaDrm;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 345
    const-string v0, "securityLevel"

    const-string v1, "L3"

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    return-void
.end method

.method private static getSchemeData(Ljava/util/UUID;Ljava/util/List;)Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;
    .locals 10
    .param p0, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;",
            ">;)",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;"
        }
    .end annotation

    .line 238
    .local p1, "schemeDatas":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;>;"
    sget-object v0, Landroidx/media2/exoplayer/external/C;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 240
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    return-object v0

    .line 243
    :cond_0
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v2, 0x1c

    const/4 v3, 0x1

    if-lt v0, v2, :cond_7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_7

    .line 245
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    .line 246
    .local v0, "firstSchemeData":Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;
    const/4 v2, 0x0

    .line 247
    .local v2, "concatenatedDataLength":I
    const/4 v4, 0x1

    .line 248
    .local v4, "canConcatenateData":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 249
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    .line 250
    .local v6, "schemeData":Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;
    iget-object v7, v6, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->data:[B

    invoke-static {v7}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 251
    .local v7, "schemeDataData":[B
    iget-object v8, v6, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    iget-object v9, v0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    invoke-static {v8, v9}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, v6, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    iget-object v9, v0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    .line 252
    invoke-static {v8, v9}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 253
    invoke-static {v7}, Landroidx/media2/exoplayer/external/extractor/mp4/PsshAtomUtil;->isPsshAtom([B)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 254
    array-length v8, v7

    add-int/2addr v2, v8

    .line 248
    .end local v6    # "schemeData":Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;
    .end local v7    # "schemeDataData":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 253
    .restart local v6    # "schemeData":Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;
    .restart local v7    # "schemeDataData":[B
    :cond_1
    goto :goto_1

    .line 252
    :cond_2
    goto :goto_1

    .line 251
    :cond_3
    nop

    .line 256
    :goto_1
    const/4 v4, 0x0

    .line 257
    goto :goto_2

    .line 248
    .end local v6    # "schemeData":Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;
    .end local v7    # "schemeDataData":[B
    :cond_4
    nop

    .line 260
    .end local v5    # "i":I
    :goto_2
    if-eqz v4, :cond_6

    .line 261
    new-array v3, v2, [B

    .line 262
    .local v3, "concatenatedData":[B
    const/4 v5, 0x0

    .line 263
    .local v5, "concatenatedDataPosition":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 264
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    .line 265
    .local v7, "schemeData":Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;
    iget-object v8, v7, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->data:[B

    invoke-static {v8}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 266
    .local v8, "schemeDataData":[B
    array-length v9, v8

    .line 267
    .local v9, "schemeDataLength":I
    invoke-static {v8, v1, v3, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 269
    add-int/2addr v5, v9

    .line 263
    .end local v7    # "schemeData":Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;
    .end local v8    # "schemeDataData":[B
    .end local v9    # "schemeDataLength":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 271
    .end local v6    # "i":I
    :cond_5
    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->copyWithData([B)Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    move-result-object v1

    return-object v1

    .line 260
    .end local v3    # "concatenatedData":[B
    .end local v5    # "concatenatedDataPosition":I
    :cond_6
    goto :goto_4

    .line 243
    .end local v0    # "firstSchemeData":Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;
    .end local v2    # "concatenatedDataLength":I
    .end local v4    # "canConcatenateData":Z
    :cond_7
    nop

    .line 277
    :goto_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_a

    .line 278
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    .line 279
    .local v2, "schemeData":Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;
    iget-object v4, v2, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->data:[B

    invoke-static {v4}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v4}, Landroidx/media2/exoplayer/external/extractor/mp4/PsshAtomUtil;->parseVersion([B)I

    move-result v4

    .line 280
    .local v4, "version":I
    sget v5, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v6, 0x17

    if-ge v5, v6, :cond_8

    if-nez v4, :cond_8

    .line 281
    return-object v2

    .line 280
    :cond_8
    nop

    .line 282
    sget v5, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    if-lt v5, v6, :cond_9

    if-ne v4, v3, :cond_9

    .line 283
    return-object v2

    .line 282
    :cond_9
    nop

    .line 277
    .end local v2    # "schemeData":Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;
    .end local v4    # "version":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 288
    .end local v0    # "i":I
    :cond_a
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    return-object v0
.end method

.method private static needsForceWidevineL3Workaround()Z
    .locals 2

    .line 354
    const-string v0, "ASUS_Z00AD"

    sget-object v1, Landroidx/media2/exoplayer/external/util/Util;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static newInstance(Ljava/util/UUID;)Landroidx/media2/exoplayer/external/drm/FrameworkMediaDrm;
    .locals 3
    .param p0, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/drm/UnsupportedDrmException;
        }
    .end annotation

    .line 75
    :try_start_0
    new-instance v0, Landroidx/media2/exoplayer/external/drm/FrameworkMediaDrm;

    invoke-direct {v0, p0}, Landroidx/media2/exoplayer/external/drm/FrameworkMediaDrm;-><init>(Ljava/util/UUID;)V
    :try_end_0
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroidx/media2/exoplayer/external/drm/UnsupportedDrmException;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, Landroidx/media2/exoplayer/external/drm/UnsupportedDrmException;-><init>(ILjava/lang/Exception;)V

    throw v1

    .line 76
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 77
    .local v0, "e":Landroid/media/UnsupportedSchemeException;
    new-instance v1, Landroidx/media2/exoplayer/external/drm/UnsupportedDrmException;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Landroidx/media2/exoplayer/external/drm/UnsupportedDrmException;-><init>(ILjava/lang/Exception;)V

    throw v1
.end method


# virtual methods
.method public closeSession([B)V
    .locals 1
    .param p1, "sessionId"    # [B

    .line 133
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->closeSession([B)V

    .line 134
    return-void
.end method

.method public bridge synthetic createMediaCrypto([B)Landroidx/media2/exoplayer/external/drm/ExoMediaCrypto;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCryptoException;
        }
    .end annotation

    .line 53
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/drm/FrameworkMediaDrm;->createMediaCrypto([B)Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;

    move-result-object p1

    return-object p1
.end method

.method public createMediaCrypto([B)Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;
    .locals 3
    .param p1, "initData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCryptoException;
        }
    .end annotation

    .line 231
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    sget-object v0, Landroidx/media2/exoplayer/external/C;->WIDEVINE_UUID:Ljava/util/UUID;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    .line 232
    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "L3"

    const-string v1, "securityLevel"

    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/drm/FrameworkMediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    goto :goto_0

    .line 231
    :cond_1
    nop

    .line 232
    :goto_0
    const/4 v0, 0x0

    .line 233
    .local v0, "forceAllowInsecureDecoderComponents":Z
    :goto_1
    new-instance v1, Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    .line 234
    invoke-static {v2}, Landroidx/media2/exoplayer/external/drm/FrameworkMediaDrm;->adjustUuid(Ljava/util/UUID;)Ljava/util/UUID;

    move-result-object v2

    invoke-direct {v1, v2, p1, v0}, Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;-><init>(Ljava/util/UUID;[BZ)V

    .line 233
    return-object v1
.end method

.method public getKeyRequest([BLjava/util/List;ILjava/util/HashMap;)Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$KeyRequest;
    .locals 9
    .param p1, "scope"    # [B
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "keyType"    # I
    .param p4    # Ljava/util/HashMap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;",
            ">;I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$KeyRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;
        }
    .end annotation

    .line 143
    .local p2, "schemeDatas":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;>;"
    .local p4, "optionalParameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 144
    .local v0, "schemeData":Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;
    const/4 v1, 0x0

    .line 145
    .local v1, "initData":[B
    const/4 v2, 0x0

    .line 146
    .local v2, "mimeType":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 147
    iget-object v3, p0, Landroidx/media2/exoplayer/external/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    invoke-static {v3, p2}, Landroidx/media2/exoplayer/external/drm/FrameworkMediaDrm;->getSchemeData(Ljava/util/UUID;Ljava/util/List;)Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    move-result-object v0

    .line 148
    iget-object v3, p0, Landroidx/media2/exoplayer/external/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    iget-object v4, v0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->data:[B

    invoke-static {v4}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v3, v4}, Landroidx/media2/exoplayer/external/drm/FrameworkMediaDrm;->adjustRequestInitData(Ljava/util/UUID;[B)[B

    move-result-object v1

    .line 149
    iget-object v3, p0, Landroidx/media2/exoplayer/external/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    iget-object v4, v0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    invoke-static {v3, v4}, Landroidx/media2/exoplayer/external/drm/FrameworkMediaDrm;->adjustRequestMimeType(Ljava/util/UUID;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 146
    :cond_0
    nop

    .line 151
    :goto_0
    iget-object v3, p0, Landroidx/media2/exoplayer/external/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    .line 152
    move-object v4, p1

    move-object v5, v1

    move-object v6, v2

    move v7, p3

    move-object v8, p4

    invoke-virtual/range {v3 .. v8}, Landroid/media/MediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object v3

    .line 154
    .local v3, "request":Landroid/media/MediaDrm$KeyRequest;
    iget-object v4, p0, Landroidx/media2/exoplayer/external/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    invoke-virtual {v3}, Landroid/media/MediaDrm$KeyRequest;->getData()[B

    move-result-object v5

    invoke-static {v4, v5}, Landroidx/media2/exoplayer/external/drm/FrameworkMediaDrm;->adjustRequestData(Ljava/util/UUID;[B)[B

    move-result-object v4

    .line 156
    .local v4, "requestData":[B
    invoke-virtual {v3}, Landroid/media/MediaDrm$KeyRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v5

    .line 157
    .local v5, "licenseServerUrl":Ljava/lang/String;
    const-string v6, "https://x"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 158
    const-string v5, ""

    goto :goto_1

    .line 157
    :cond_1
    nop

    .line 160
    :goto_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v0, :cond_3

    iget-object v6, v0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    .line 162
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 163
    iget-object v5, v0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    goto :goto_2

    .line 162
    :cond_2
    goto :goto_2

    .line 160
    :cond_3
    nop

    .line 166
    :goto_2
    new-instance v6, Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$KeyRequest;

    invoke-direct {v6, v4, v5}, Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$KeyRequest;-><init>([BLjava/lang/String;)V

    return-object v6
.end method

.method public getPropertyByteArray(Ljava/lang/String;)[B
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;

    .line 214
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->getPropertyByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getPropertyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;

    .line 209
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProvisionRequest()Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$ProvisionRequest;
    .locals 4

    .line 183
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->getProvisionRequest()Landroid/media/MediaDrm$ProvisionRequest;

    move-result-object v0

    .line 184
    .local v0, "request":Landroid/media/MediaDrm$ProvisionRequest;
    new-instance v1, Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$ProvisionRequest;

    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getData()[B

    move-result-object v2

    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$ProvisionRequest;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method final synthetic lambda$setOnEventListener$0$FrameworkMediaDrm(Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$OnEventListener;Landroid/media/MediaDrm;[BII[B)V
    .locals 6
    .param p1, "listener"    # Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$OnEventListener;
    .param p2, "mediaDrm"    # Landroid/media/MediaDrm;
    .param p3, "sessionId"    # [B
    .param p4, "event"    # I
    .param p5, "extra"    # I
    .param p6, "data"    # [B

    .line 102
    move-object v0, p1

    move-object v1, p0

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-interface/range {v0 .. v5}, Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$OnEventListener;->onEvent(Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;[BII[B)V

    return-void
.end method

.method final synthetic lambda$setOnKeyStatusChangeListener$1$FrameworkMediaDrm(Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$OnKeyStatusChangeListener;Landroid/media/MediaDrm;[BLjava/util/List;Z)V
    .locals 6
    .param p1, "listener"    # Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$OnKeyStatusChangeListener;
    .param p2, "mediaDrm"    # Landroid/media/MediaDrm;
    .param p3, "sessionId"    # [B
    .param p4, "keyInfo"    # Ljava/util/List;
    .param p5, "hasNewUsableKey"    # Z

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v0, "exoKeyInfo":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$KeyStatus;>;"
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaDrm$KeyStatus;

    .line 118
    .local v2, "keyStatus":Landroid/media/MediaDrm$KeyStatus;
    new-instance v3, Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$KeyStatus;

    invoke-virtual {v2}, Landroid/media/MediaDrm$KeyStatus;->getStatusCode()I

    move-result v4

    invoke-virtual {v2}, Landroid/media/MediaDrm$KeyStatus;->getKeyId()[B

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$KeyStatus;-><init>(I[B)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    .end local v2    # "keyStatus":Landroid/media/MediaDrm$KeyStatus;
    goto :goto_0

    .line 120
    :cond_0
    invoke-interface {p1, p0, p3, v0, p5}, Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$OnKeyStatusChangeListener;->onKeyStatusChange(Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;[BLjava/util/List;Z)V

    .line 122
    return-void
.end method

.method public openSession()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaDrmException;
        }
    .end annotation

    .line 128
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->openSession()[B

    move-result-object v0

    return-object v0
.end method

.method public provideKeyResponse([B[B)[B
    .locals 2
    .param p1, "scope"    # [B
    .param p2, "response"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;,
            Landroid/media/DeniedByServerException;
        }
    .end annotation

    .line 174
    sget-object v0, Landroidx/media2/exoplayer/external/C;->CLEARKEY_UUID:Ljava/util/UUID;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/drm/FrameworkMediaDrm;->uuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    invoke-static {p2}, Landroidx/media2/exoplayer/external/drm/ClearKeyUtil;->adjustResponseData([B)[B

    move-result-object p2

    goto :goto_0

    .line 174
    :cond_0
    nop

    .line 178
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDrm;->provideKeyResponse([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public provideProvisionResponse([B)V
    .locals 1
    .param p1, "response"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/DeniedByServerException;
        }
    .end annotation

    .line 189
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->provideProvisionResponse([B)V

    .line 190
    return-void
.end method

.method public queryKeyStatus([B)Ljava/util/Map;
    .locals 1
    .param p1, "sessionId"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->queryKeyStatus([B)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .locals 1

    .line 199
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->release()V

    .line 200
    return-void
.end method

.method public restoreKeys([B[B)V
    .locals 1
    .param p1, "sessionId"    # [B
    .param p2, "keySetId"    # [B

    .line 204
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDrm;->restoreKeys([B[B)V

    .line 205
    return-void
.end method

.method public setOnEventListener(Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$OnEventListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$OnEventListener<",
            "-",
            "Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;",
            ">;)V"
        }
    .end annotation

    .line 98
    .local p1, "listener":Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$OnEventListener;, "Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$OnEventListener<-Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;>;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    .line 99
    if-nez p1, :cond_0

    .line 100
    const/4 v1, 0x0

    goto :goto_0

    .line 101
    :cond_0
    new-instance v1, Landroidx/media2/exoplayer/external/drm/FrameworkMediaDrm$$Lambda$0;

    invoke-direct {v1, p0, p1}, Landroidx/media2/exoplayer/external/drm/FrameworkMediaDrm$$Lambda$0;-><init>(Landroidx/media2/exoplayer/external/drm/FrameworkMediaDrm;Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$OnEventListener;)V

    .line 98
    :goto_0
    invoke-virtual {v0, v1}, Landroid/media/MediaDrm;->setOnEventListener(Landroid/media/MediaDrm$OnEventListener;)V

    .line 103
    return-void
.end method

.method public setOnKeyStatusChangeListener(Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$OnKeyStatusChangeListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$OnKeyStatusChangeListener<",
            "-",
            "Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;",
            ">;)V"
        }
    .end annotation

    .line 108
    .local p1, "listener":Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$OnKeyStatusChangeListener;, "Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$OnKeyStatusChangeListener<-Landroidx/media2/exoplayer/external/drm/FrameworkMediaCrypto;>;"
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 112
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    .line 113
    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 114
    move-object v2, v1

    goto :goto_0

    .line 115
    :cond_0
    new-instance v2, Landroidx/media2/exoplayer/external/drm/FrameworkMediaDrm$$Lambda$1;

    invoke-direct {v2, p0, p1}, Landroidx/media2/exoplayer/external/drm/FrameworkMediaDrm$$Lambda$1;-><init>(Landroidx/media2/exoplayer/external/drm/FrameworkMediaDrm;Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$OnKeyStatusChangeListener;)V

    :goto_0
    nop

    .line 112
    invoke-virtual {v0, v2, v1}, Landroid/media/MediaDrm;->setOnKeyStatusChangeListener(Landroid/media/MediaDrm$OnKeyStatusChangeListener;Landroid/os/Handler;)V

    .line 124
    return-void

    .line 109
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setPropertyByteArray(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .line 224
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDrm;->setPropertyByteArray(Ljava/lang/String;[B)V

    .line 225
    return-void
.end method

.method public setPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 219
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/FrameworkMediaDrm;->mediaDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    return-void
.end method
