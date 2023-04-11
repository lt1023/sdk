.class public final Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;
.super Ljava/lang/Object;
.source "DrmInitData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/drm/DrmInitData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SchemeData"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final data:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private hashCode:I

.field public final licenseServerUrl:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final mimeType:Ljava/lang/String;

.field private final uuid:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 414
    new-instance v0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData$1;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData$1;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    new-instance v0, Ljava/util/UUID;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->data:[B

    .line 332
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 1
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "licenseServerUrl"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "data"    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    .line 322
    iput-object p2, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    .line 323
    invoke-static {p3}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    .line 324
    iput-object p4, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->data:[B

    .line 325
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/lang/String;[B)V
    .locals 1
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "data"    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 309
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 310
    return-void
.end method

.method static synthetic access$000(Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)Ljava/util/UUID;
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    .line 285
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    return-object v0
.end method


# virtual methods
.method public canReplace(Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)Z
    .locals 1
    .param p1, "other"    # Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    .line 351
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->hasData()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->matches(Ljava/util/UUID;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public copyWithData([B)Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;
    .locals 4
    .param p1, "data"    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 368
    new-instance v0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p1}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .line 402
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 373
    instance-of v0, p1, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 374
    return v1

    .line 376
    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    .line 377
    return v0

    .line 379
    :cond_1
    move-object v2, p1

    check-cast v2, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    .line 380
    .local v2, "other":Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;
    iget-object v3, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    iget-object v4, v2, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    invoke-static {v3, v4}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    iget-object v4, v2, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    .line 381
    invoke-static {v3, v4}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    iget-object v4, v2, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    .line 382
    invoke-static {v3, v4}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->data:[B

    iget-object v4, v2, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->data:[B

    .line 383
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    goto :goto_0

    .line 382
    :cond_3
    goto :goto_0

    .line 381
    :cond_4
    goto :goto_0

    .line 380
    :cond_5
    nop

    .line 383
    :goto_0
    const/4 v0, 0x0

    .line 380
    :goto_1
    return v0
.end method

.method public hasData()Z
    .locals 1

    .line 358
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->data:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 388
    iget v0, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->hashCode:I

    if-nez v0, :cond_1

    .line 389
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    .line 390
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    .line 391
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 392
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->data:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v1, v2

    .line 393
    .end local v0    # "result":I
    .restart local v1    # "result":I
    iput v1, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->hashCode:I

    goto :goto_1

    .line 388
    .end local v1    # "result":I
    :cond_1
    nop

    .line 395
    :goto_1
    iget v0, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->hashCode:I

    return v0
.end method

.method public matches(Ljava/util/UUID;)Z
    .locals 2
    .param p1, "schemeUuid"    # Ljava/util/UUID;

    .line 341
    sget-object v0, Landroidx/media2/exoplayer/external/C;->UUID_NIL:Ljava/util/UUID;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 407
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 408
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 409
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->licenseServerUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->data:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 412
    return-void
.end method
