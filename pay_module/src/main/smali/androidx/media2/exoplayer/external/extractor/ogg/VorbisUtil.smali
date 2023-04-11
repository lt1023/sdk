.class final Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil;
.super Ljava/lang/Object;
.source "VorbisUtil.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$Mode;,
        Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$VorbisIdHeader;,
        Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$CommentHeader;,
        Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$CodeBook;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VorbisUtil"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    return-void
.end method

.method public static iLog(I)I
    .locals 1
    .param p0, "x"    # I

    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, "val":I
    :goto_0
    if-lez p0, :cond_0

    .line 47
    add-int/lit8 v0, v0, 0x1

    .line 48
    ushr-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 50
    :cond_0
    return v0
.end method

.method private static mapType1QuantValues(JJ)J
    .locals 6
    .param p0, "entries"    # J
    .param p2, "dimension"    # J

    .line 411
    long-to-double v0, p0

    long-to-double v2, p2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method

.method private static readBook(Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;)Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$CodeBook;
    .locals 12
    .param p0, "bitArray"    # Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 350
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v1

    const v2, 0x564342

    if-ne v1, v2, :cond_b

    .line 354
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v1

    .line 355
    .local v1, "dimensions":I
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v0

    .line 356
    .local v0, "entries":I
    new-array v8, v0, [J

    .line 358
    .local v8, "lengthMap":[J
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->readBit()Z

    move-result v9

    .line 359
    .local v9, "isOrdered":Z
    const/4 v2, 0x5

    const/4 v3, 0x1

    if-nez v9, :cond_3

    .line 360
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->readBit()Z

    move-result v4

    .line 361
    .local v4, "isSparse":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v8

    if-ge v5, v6, :cond_2

    .line 362
    if-eqz v4, :cond_1

    .line 363
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 364
    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v6

    add-int/2addr v6, v3

    int-to-long v6, v6

    aput-wide v6, v8, v5

    goto :goto_1

    .line 366
    :cond_0
    const-wide/16 v6, 0x0

    aput-wide v6, v8, v5

    goto :goto_1

    .line 369
    :cond_1
    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v6

    add-int/2addr v6, v3

    int-to-long v6, v6

    aput-wide v6, v8, v5

    .line 361
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 372
    .end local v4    # "isSparse":Z
    .end local v5    # "i":I
    :cond_2
    goto :goto_4

    .line 373
    :cond_3
    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v2

    add-int/2addr v2, v3

    .line 374
    .local v2, "length":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    array-length v5, v8

    if-ge v4, v5, :cond_5

    .line 375
    sub-int v5, v0, v4

    invoke-static {v5}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil;->iLog(I)I

    move-result v5

    invoke-virtual {p0, v5}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v5

    .line 376
    .local v5, "num":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_3
    if-ge v6, v5, :cond_4

    array-length v7, v8

    if-ge v4, v7, :cond_4

    .line 377
    int-to-long v10, v2

    aput-wide v10, v8, v4

    .line 376
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 379
    .end local v6    # "j":I
    :cond_4
    nop

    .end local v5    # "num":I
    add-int/lit8 v2, v2, 0x1

    .line 380
    goto :goto_2

    .line 374
    :cond_5
    nop

    .line 383
    .end local v2    # "length":I
    .end local v4    # "i":I
    :goto_4
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v10

    .line 384
    .local v10, "lookupType":I
    const/4 v4, 0x2

    if-gt v10, v4, :cond_a

    .line 386
    if-eq v10, v3, :cond_7

    if-ne v10, v4, :cond_6

    goto :goto_5

    :cond_6
    goto :goto_7

    .line 387
    :cond_7
    :goto_5
    const/16 v4, 0x20

    invoke-virtual {p0, v4}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 388
    invoke-virtual {p0, v4}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 389
    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v2

    add-int/2addr v2, v3

    .line 390
    .local v2, "valueBits":I
    invoke-virtual {p0, v3}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 392
    if-ne v10, v3, :cond_9

    .line 393
    if-eqz v1, :cond_8

    .line 394
    int-to-long v3, v0

    int-to-long v5, v1

    invoke-static {v3, v4, v5, v6}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil;->mapType1QuantValues(JJ)J

    move-result-wide v3

    goto :goto_6

    .line 396
    :cond_8
    const-wide/16 v3, 0x0

    goto :goto_6

    .line 399
    :cond_9
    int-to-long v3, v0

    int-to-long v5, v1

    mul-long v3, v3, v5

    .line 402
    .local v3, "lookupValuesCount":J
    :goto_6
    int-to-long v5, v2

    mul-long v5, v5, v3

    long-to-int v6, v5

    invoke-virtual {p0, v6}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 404
    .end local v2    # "valueBits":I
    .end local v3    # "lookupValuesCount":J
    :goto_7
    new-instance v11, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$CodeBook;

    move-object v2, v11

    move v3, v1

    move v4, v0

    move-object v5, v8

    move v6, v10

    move v7, v9

    invoke-direct/range {v2 .. v7}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$CodeBook;-><init>(II[JIZ)V

    return-object v11

    .line 385
    :cond_a
    new-instance v2, Landroidx/media2/exoplayer/external/ParserException;

    const/16 v3, 0x35

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "lookup type greater than 2 not decodable: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 351
    .end local v0    # "entries":I
    .end local v1    # "dimensions":I
    .end local v8    # "lengthMap":[J
    .end local v9    # "isOrdered":Z
    .end local v10    # "lookupType":I
    :cond_b
    new-instance v0, Landroidx/media2/exoplayer/external/ParserException;

    .line 352
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->getPosition()I

    move-result v1

    const/16 v2, 0x42

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "expected code book to start with [0x56, 0x43, 0x42] at "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    return-void
.end method

.method private static readFloors(Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;)V
    .locals 15
    .param p0, "bitArray"    # Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 296
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 297
    .local v1, "floorCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_8

    .line 298
    const/16 v4, 0x10

    invoke-virtual {p0, v4}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v5

    .line 299
    .local v5, "floorType":I
    const/4 v6, 0x4

    const/16 v7, 0x8

    packed-switch v5, :pswitch_data_0

    .line 344
    new-instance v0, Landroidx/media2/exoplayer/external/ParserException;

    const/16 v2, 0x34

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "floor type greater than 1 not decodable: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :pswitch_0
    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v4

    .line 313
    .local v4, "partitions":I
    const/4 v8, -0x1

    .line 314
    .local v8, "maximumClass":I
    new-array v9, v4, [I

    .line 315
    .local v9, "partitionClassList":[I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_1
    if-ge v10, v4, :cond_1

    .line 316
    invoke-virtual {p0, v6}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v11

    aput v11, v9, v10

    .line 317
    aget v11, v9, v10

    if-le v11, v8, :cond_0

    .line 318
    aget v8, v9, v10

    goto :goto_2

    .line 317
    :cond_0
    nop

    .line 315
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 321
    .end local v10    # "j":I
    :cond_1
    add-int/lit8 v10, v8, 0x1

    new-array v10, v10, [I

    .line 322
    .local v10, "classDimensions":[I
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_3
    array-length v12, v10

    const/4 v13, 0x2

    if-ge v11, v12, :cond_4

    .line 323
    const/4 v12, 0x3

    invoke-virtual {p0, v12}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v12

    add-int/2addr v12, v2

    aput v12, v10, v11

    .line 324
    invoke-virtual {p0, v13}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v12

    .line 325
    .local v12, "classSubclasses":I
    if-lez v12, :cond_2

    .line 326
    invoke-virtual {p0, v7}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->skipBits(I)V

    goto :goto_4

    .line 325
    :cond_2
    nop

    .line 328
    :goto_4
    const/4 v13, 0x0

    .local v13, "k":I
    :goto_5
    shl-int v14, v2, v12

    if-ge v13, v14, :cond_3

    .line 329
    invoke-virtual {p0, v7}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 328
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 322
    .end local v12    # "classSubclasses":I
    .end local v13    # "k":I
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 332
    .end local v11    # "j":I
    :cond_4
    invoke-virtual {p0, v13}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 333
    invoke-virtual {p0, v6}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v6

    .line 334
    .local v6, "rangeBits":I
    const/4 v7, 0x0

    .line 335
    .local v7, "count":I
    const/4 v11, 0x0

    .restart local v11    # "j":I
    const/4 v12, 0x0

    .local v12, "k":I
    :goto_6
    if-ge v11, v4, :cond_6

    .line 336
    aget v13, v9, v11

    .line 337
    .local v13, "idx":I
    aget v14, v10, v13

    add-int/2addr v7, v14

    .line 338
    :goto_7
    if-ge v12, v7, :cond_5

    .line 339
    invoke-virtual {p0, v6}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 338
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 335
    .end local v13    # "idx":I
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 342
    .end local v11    # "j":I
    .end local v12    # "k":I
    :cond_6
    goto :goto_9

    .line 301
    .end local v4    # "partitions":I
    .end local v6    # "rangeBits":I
    .end local v7    # "count":I
    .end local v8    # "maximumClass":I
    .end local v9    # "partitionClassList":[I
    .end local v10    # "classDimensions":[I
    :pswitch_1
    invoke-virtual {p0, v7}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 302
    invoke-virtual {p0, v4}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 303
    invoke-virtual {p0, v4}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 304
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 305
    invoke-virtual {p0, v7}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 306
    invoke-virtual {p0, v6}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v4

    add-int/2addr v4, v2

    .line 307
    .local v4, "floorNumberOfBooks":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_8
    if-ge v6, v4, :cond_7

    .line 308
    invoke-virtual {p0, v7}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 307
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 310
    .end local v6    # "j":I
    :cond_7
    nop

    .line 297
    .end local v4    # "floorNumberOfBooks":I
    .end local v5    # "floorType":I
    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 347
    .end local v3    # "i":I
    :cond_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static readMappings(ILandroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;)V
    .locals 10
    .param p0, "channels"    # I
    .param p1, "bitArray"    # Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 224
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 225
    .local v0, "mappingsCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_8

    .line 226
    const/16 v3, 0x10

    invoke-virtual {p1, v3}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v3

    .line 227
    .local v3, "mappingType":I
    if-eqz v3, :cond_0

    .line 228
    const-string v4, "VorbisUtil"

    const/16 v5, 0x34

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "mapping type other than 0 not supported: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroidx/media2/exoplayer/external/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    goto :goto_7

    .line 232
    :cond_0
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->readBit()Z

    move-result v4

    const/4 v5, 0x4

    if-eqz v4, :cond_1

    .line 233
    invoke-virtual {p1, v5}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v4

    add-int/2addr v4, v1

    goto :goto_1

    .line 235
    :cond_1
    const/4 v4, 0x1

    .line 238
    .local v4, "submaps":I
    :goto_1
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->readBit()Z

    move-result v6

    const/16 v7, 0x8

    if-eqz v6, :cond_3

    .line 239
    invoke-virtual {p1, v7}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v6

    add-int/2addr v6, v1

    .line 240
    .local v6, "couplingSteps":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_2
    if-ge v8, v6, :cond_2

    .line 241
    add-int/lit8 v9, p0, -0x1

    invoke-static {v9}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil;->iLog(I)I

    move-result v9

    invoke-virtual {p1, v9}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 242
    add-int/lit8 v9, p0, -0x1

    invoke-static {v9}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil;->iLog(I)I

    move-result v9

    invoke-virtual {p1, v9}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 240
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    goto :goto_3

    .line 238
    .end local v6    # "couplingSteps":I
    .end local v8    # "j":I
    :cond_3
    nop

    .line 247
    :goto_3
    const/4 v6, 0x2

    invoke-virtual {p1, v6}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v6

    if-nez v6, :cond_7

    .line 250
    if-le v4, v1, :cond_5

    .line 251
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_4
    if-ge v6, p0, :cond_4

    .line 252
    invoke-virtual {p1, v5}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 251
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_4
    goto :goto_5

    .line 250
    .end local v6    # "j":I
    :cond_5
    nop

    .line 255
    :goto_5
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_6
    if-ge v5, v4, :cond_6

    .line 256
    invoke-virtual {p1, v7}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 257
    invoke-virtual {p1, v7}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 258
    invoke-virtual {p1, v7}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 255
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 225
    .end local v3    # "mappingType":I
    .end local v4    # "submaps":I
    .end local v5    # "j":I
    :cond_6
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 248
    .restart local v3    # "mappingType":I
    .restart local v4    # "submaps":I
    :cond_7
    new-instance v1, Landroidx/media2/exoplayer/external/ParserException;

    const-string/jumbo v5, "to reserved bits must be zero after mapping coupling steps"

    invoke-direct {v1, v5}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 225
    .end local v3    # "mappingType":I
    .end local v4    # "submaps":I
    :cond_8
    nop

    .line 261
    .end local v2    # "i":I
    return-void
.end method

.method private static readModes(Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;)[Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$Mode;
    .locals 8
    .param p0, "bitArray"    # Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;

    .line 210
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 211
    .local v0, "modeCount":I
    new-array v1, v0, [Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$Mode;

    .line 212
    .local v1, "modes":[Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$Mode;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 213
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->readBit()Z

    move-result v3

    .line 214
    .local v3, "blockFlag":Z
    const/16 v4, 0x10

    invoke-virtual {p0, v4}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v5

    .line 215
    .local v5, "windowType":I
    invoke-virtual {p0, v4}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v4

    .line 216
    .local v4, "transformType":I
    const/16 v6, 0x8

    invoke-virtual {p0, v6}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v6

    .line 217
    .local v6, "mapping":I
    new-instance v7, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$Mode;

    invoke-direct {v7, v3, v5, v4, v6}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$Mode;-><init>(ZIII)V

    aput-object v7, v1, v2

    .line 212
    .end local v3    # "blockFlag":Z
    .end local v4    # "transformType":I
    .end local v5    # "windowType":I
    .end local v6    # "mapping":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 219
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method private static readResidues(Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;)V
    .locals 12
    .param p0, "bitArray"    # Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 264
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 265
    .local v1, "residueCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_6

    .line 266
    const/16 v4, 0x10

    invoke-virtual {p0, v4}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v4

    .line 267
    .local v4, "residueType":I
    const/4 v5, 0x2

    if-gt v4, v5, :cond_5

    .line 270
    const/16 v5, 0x18

    invoke-virtual {p0, v5}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 271
    invoke-virtual {p0, v5}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 272
    invoke-virtual {p0, v5}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 273
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v5

    add-int/2addr v5, v2

    .line 274
    .local v5, "classifications":I
    const/16 v6, 0x8

    invoke-virtual {p0, v6}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 275
    new-array v7, v5, [I

    .line 276
    .local v7, "cascade":[I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    if-ge v8, v5, :cond_1

    .line 277
    const/4 v9, 0x0

    .line 278
    .local v9, "highBits":I
    const/4 v10, 0x3

    invoke-virtual {p0, v10}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v10

    .line 279
    .local v10, "lowBits":I
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->readBit()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 280
    const/4 v11, 0x5

    invoke-virtual {p0, v11}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v9

    goto :goto_2

    .line 279
    :cond_0
    nop

    .line 282
    :goto_2
    mul-int/lit8 v11, v9, 0x8

    add-int/2addr v11, v10

    aput v11, v7, v8

    .line 276
    .end local v9    # "highBits":I
    .end local v10    # "lowBits":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 284
    .end local v8    # "j":I
    :cond_1
    const/4 v8, 0x0

    .restart local v8    # "j":I
    :goto_3
    if-ge v8, v5, :cond_4

    .line 285
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_4
    if-ge v9, v6, :cond_3

    .line 286
    aget v10, v7, v8

    shl-int v11, v2, v9

    and-int/2addr v10, v11

    if-eqz v10, :cond_2

    .line 287
    invoke-virtual {p0, v6}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->skipBits(I)V

    goto :goto_5

    .line 286
    :cond_2
    nop

    .line 285
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 284
    .end local v9    # "k":I
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 265
    .end local v4    # "residueType":I
    .end local v5    # "classifications":I
    .end local v7    # "cascade":[I
    .end local v8    # "j":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 268
    .restart local v4    # "residueType":I
    :cond_5
    new-instance v0, Landroidx/media2/exoplayer/external/ParserException;

    const-string v2, "residueType greater than 2 is not decodable"

    invoke-direct {v0, v2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    .end local v4    # "residueType":I
    :cond_6
    nop

    .line 293
    .end local v3    # "i":I
    return-void
.end method

.method public static readVorbisCommentHeader(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$CommentHeader;
    .locals 10
    .param p0, "headerData"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 98
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil;->verifyVorbisHeaderCapturePattern(ILandroidx/media2/exoplayer/external/util/ParsableByteArray;Z)Z

    .line 99
    const/4 v0, 0x7

    .line 101
    .local v0, "length":I
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v1

    long-to-int v2, v1

    .line 102
    .local v2, "len":I
    add-int/lit8 v0, v0, 0x4

    .line 103
    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "vendor":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    .line 106
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v3

    .line 107
    .local v3, "commentListLen":J
    long-to-int v5, v3

    new-array v5, v5, [Ljava/lang/String;

    .line 108
    .local v5, "comments":[Ljava/lang/String;
    add-int/lit8 v0, v0, 0x4

    .line 109
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    int-to-long v7, v6

    cmp-long v9, v7, v3

    if-gez v9, :cond_0

    .line 110
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v7

    long-to-int v2, v7

    .line 111
    add-int/lit8 v0, v0, 0x4

    .line 112
    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 113
    aget-object v7, v5, v6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v0, v7

    .line 109
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 115
    .end local v6    # "i":I
    :cond_0
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    .line 118
    add-int/lit8 v0, v0, 0x1

    .line 119
    new-instance v6, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$CommentHeader;

    invoke-direct {v6, v1, v5, v0}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$CommentHeader;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    return-object v6

    .line 116
    :cond_1
    new-instance v6, Landroidx/media2/exoplayer/external/ParserException;

    const-string v7, "framing bit expected to be set"

    invoke-direct {v6, v7}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v6

    return-void
.end method

.method public static readVorbisIdentificationHeader(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$VorbisIdHeader;
    .locals 27
    .param p0, "headerData"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 65
    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil;->verifyVorbisHeaderCapturePattern(ILandroidx/media2/exoplayer/external/util/ParsableByteArray;Z)Z

    .line 67
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v16

    .line 68
    .local v16, "version":J
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v18

    .line 69
    .local v18, "channels":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v19

    .line 70
    .local v19, "sampleRate":J
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v21

    .line 71
    .local v21, "bitrateMax":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v22

    .line 72
    .local v22, "bitrateNominal":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v23

    .line 74
    .local v23, "bitrateMin":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v15

    .line 75
    .local v15, "blockSize":I
    and-int/lit8 v3, v15, 0xf

    int-to-double v3, v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-int v13, v3

    .line 76
    .local v13, "blockSize0":I
    and-int/lit16 v3, v15, 0xf0

    shr-int/lit8 v3, v3, 0x4

    int-to-double v3, v3

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-int v12, v3

    .line 78
    .local v12, "blockSize1":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    and-int/2addr v3, v2

    if-lez v3, :cond_0

    const/4 v14, 0x1

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    .line 80
    .local v14, "framingFlag":Z
    :goto_0
    iget-object v1, v0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->limit()I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 82
    .local v1, "data":[B
    new-instance v2, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$VorbisIdHeader;

    move-object v3, v2

    move-wide/from16 v4, v16

    move/from16 v6, v18

    move-wide/from16 v7, v19

    move/from16 v9, v21

    move/from16 v10, v22

    move/from16 v11, v23

    move/from16 v24, v12

    .end local v12    # "blockSize1":I
    .local v24, "blockSize1":I
    move v12, v13

    move/from16 v25, v13

    .end local v13    # "blockSize0":I
    .local v25, "blockSize0":I
    move/from16 v13, v24

    move/from16 v26, v15

    .end local v15    # "blockSize":I
    .local v26, "blockSize":I
    move-object v15, v1

    invoke-direct/range {v3 .. v15}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$VorbisIdHeader;-><init>(JIJIIIIIZ[B)V

    return-object v2
.end method

.method public static readVorbisModes(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)[Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$Mode;
    .locals 6
    .param p0, "headerData"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p1, "channels"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 181
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil;->verifyVorbisHeaderCapturePattern(ILandroidx/media2/exoplayer/external/util/ParsableByteArray;Z)Z

    .line 183
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 185
    .local v0, "numberOfBooks":I
    new-instance v1, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->data:[B

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;-><init>([B)V

    .line 186
    .local v1, "bitArray":Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->getPosition()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->skipBits(I)V

    .line 188
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 189
    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil;->readBook(Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;)Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$CodeBook;

    .line 188
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 192
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 193
    .local v2, "timeCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 194
    const/16 v4, 0x10

    invoke-virtual {v1, v4}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->readBits(I)I

    move-result v4

    if-nez v4, :cond_1

    .line 193
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 195
    :cond_1
    new-instance v4, Landroidx/media2/exoplayer/external/ParserException;

    const-string v5, "placeholder of time domain transforms not zeroed out"

    invoke-direct {v4, v5}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 193
    :cond_2
    nop

    .line 198
    .end local v3    # "i":I
    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil;->readFloors(Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;)V

    .line 199
    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil;->readResidues(Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;)V

    .line 200
    invoke-static {p1, v1}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil;->readMappings(ILandroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;)V

    .line 202
    invoke-static {v1}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil;->readModes(Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;)[Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$Mode;

    move-result-object v3

    .line 203
    .local v3, "modes":[Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$Mode;
    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 206
    return-object v3

    .line 204
    :cond_3
    new-instance v4, Landroidx/media2/exoplayer/external/ParserException;

    const-string v5, "framing bit after modes not set as expected"

    invoke-direct {v4, v5}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v4

    return-void
.end method

.method public static verifyVorbisHeaderCapturePattern(ILandroidx/media2/exoplayer/external/util/ParsableByteArray;Z)Z
    .locals 4
    .param p0, "headerType"    # I
    .param p1, "header"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p2, "quiet"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 135
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x7

    if-ge v0, v2, :cond_1

    .line 136
    if-eqz p2, :cond_0

    .line 137
    return v1

    .line 139
    :cond_0
    new-instance v0, Landroidx/media2/exoplayer/external/ParserException;

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    const/16 v2, 0x1d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "too short header: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_1
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    if-eq v0, p0, :cond_4

    .line 144
    if-eqz p2, :cond_2

    .line 145
    return v1

    .line 147
    :cond_2
    new-instance v0, Landroidx/media2/exoplayer/external/ParserException;

    const-string v1, "expected header type "

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_0
    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_4
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/16 v2, 0x76

    if-ne v0, v2, :cond_a

    .line 152
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/16 v2, 0x6f

    if-ne v0, v2, :cond_9

    .line 153
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/16 v2, 0x72

    if-ne v0, v2, :cond_8

    .line 154
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/16 v2, 0x62

    if-ne v0, v2, :cond_7

    .line 155
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/16 v2, 0x69

    if-ne v0, v2, :cond_6

    .line 156
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/16 v2, 0x73

    if-eq v0, v2, :cond_5

    goto :goto_1

    .line 163
    :cond_5
    const/4 v0, 0x1

    return v0

    .line 155
    :cond_6
    goto :goto_1

    .line 154
    :cond_7
    goto :goto_1

    .line 153
    :cond_8
    goto :goto_1

    .line 152
    :cond_9
    goto :goto_1

    .line 151
    :cond_a
    nop

    .line 157
    :goto_1
    if-eqz p2, :cond_b

    .line 158
    return v1

    .line 160
    :cond_b
    new-instance v0, Landroidx/media2/exoplayer/external/ParserException;

    const-string v1, "expected characters \'vorbis\'"

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
