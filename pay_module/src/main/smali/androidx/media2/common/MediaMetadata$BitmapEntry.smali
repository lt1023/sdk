.class final Landroidx/media2/common/MediaMetadata$BitmapEntry;
.super Ljava/lang/Object;
.source "MediaMetadata.java"

# interfaces
.implements Landroidx/versionedparcelable/VersionedParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/common/MediaMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BitmapEntry"
.end annotation


# static fields
.field static final BITMAP_SIZE_LIMIT_IN_BYTES:I = 0x40000


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field mKey:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1287
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1290
    iput-object p1, p0, Landroidx/media2/common/MediaMetadata$BitmapEntry;->mKey:Ljava/lang/String;

    .line 1291
    iput-object p2, p0, Landroidx/media2/common/MediaMetadata$BitmapEntry;->mBitmap:Landroid/graphics/Bitmap;

    .line 1294
    iget-object v0, p0, Landroidx/media2/common/MediaMetadata$BitmapEntry;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Landroidx/media2/common/MediaMetadata$BitmapEntry;->getBitmapSizeInBytes(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 1295
    .local v0, "sizeInBytes":I
    const/high16 v1, 0x40000

    if-le v0, v1, :cond_0

    .line 1296
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 1297
    .local v1, "oldWidth":I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 1299
    .local v2, "oldHeight":I
    const-wide/high16 v3, 0x4110000000000000L    # 262144.0

    int-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    .line 1300
    .local v3, "scaleFactor":D
    int-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v3

    double-to-int v5, v5

    .line 1301
    .local v5, "newWidth":I
    int-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v3

    double-to-int v6, v6

    .line 1302
    .local v6, "newHeight":I
    const-string v7, "MediaMetadata"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Scaling large bitmap of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " into "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    const/4 v7, 0x1

    invoke-static {p2, v5, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Landroidx/media2/common/MediaMetadata$BitmapEntry;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 1295
    .end local v1    # "oldWidth":I
    .end local v2    # "oldHeight":I
    .end local v3    # "scaleFactor":D
    .end local v5    # "newWidth":I
    .end local v6    # "newHeight":I
    :cond_0
    nop

    .line 1306
    :goto_0
    return-void
.end method

.method private getBitmapSizeInBytes(Landroid/graphics/Bitmap;)I
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 1317
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 1318
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v0

    return v0

    .line 1320
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    return v0
.end method


# virtual methods
.method getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1313
    iget-object v0, p0, Landroidx/media2/common/MediaMetadata$BitmapEntry;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method getKey()Ljava/lang/String;
    .locals 1

    .line 1309
    iget-object v0, p0, Landroidx/media2/common/MediaMetadata$BitmapEntry;->mKey:Ljava/lang/String;

    return-object v0
.end method
