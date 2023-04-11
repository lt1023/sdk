.class final Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;
.super Ljava/lang/Object;
.source "TextRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/exoplayer/TextRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DataBuilder"
.end annotation


# instance fields
.field public mData:[B

.field public mLength:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    const/4 v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;->mData:[B

    .line 338
    return-void
.end method


# virtual methods
.method public append(BB)V
    .locals 3
    .param p1, "cc0"    # B
    .param p2, "cc1"    # B

    .line 341
    iget v0, p0, Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;->mLength:I

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;->mData:[B

    array-length v2, v1

    if-le v0, v2, :cond_0

    .line 343
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;->mData:[B

    goto :goto_0

    .line 341
    :cond_0
    nop

    .line 345
    :goto_0
    iget-object v0, p0, Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;->mData:[B

    iget v1, p0, Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;->mLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;->mLength:I

    aput-byte p1, v0, v1

    .line 346
    iget v1, p0, Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;->mLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;->mLength:I

    aput-byte p2, v0, v1

    .line 347
    return-void
.end method

.method public append(BBB)V
    .locals 3
    .param p1, "cc0"    # B
    .param p2, "cc1"    # B
    .param p3, "cc2"    # B

    .line 350
    iget v0, p0, Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;->mLength:I

    add-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;->mData:[B

    array-length v2, v1

    if-le v0, v2, :cond_0

    .line 351
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;->mData:[B

    goto :goto_0

    .line 350
    :cond_0
    nop

    .line 353
    :goto_0
    iget-object v0, p0, Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;->mData:[B

    iget v1, p0, Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;->mLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;->mLength:I

    aput-byte p1, v0, v1

    .line 354
    iget v1, p0, Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;->mLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;->mLength:I

    aput-byte p2, v0, v1

    .line 355
    iget v1, p0, Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;->mLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;->mLength:I

    aput-byte p3, v0, v1

    .line 356
    return-void
.end method

.method public clear()V
    .locals 1

    .line 363
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;->mLength:I

    .line 364
    return-void
.end method

.method public hasData()Z
    .locals 1

    .line 359
    iget v0, p0, Landroidx/media2/player/exoplayer/TextRenderer$DataBuilder;->mLength:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
