.class final Landroidx/media2/player/exoplayer/ByteArrayFrame;
.super Ljava/lang/Object;
.source "ByteArrayFrame.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media2/player/exoplayer/ByteArrayFrame;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mData:[B

.field public final mTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 90
    new-instance v0, Landroidx/media2/player/exoplayer/ByteArrayFrame$1;

    invoke-direct {v0}, Landroidx/media2/player/exoplayer/ByteArrayFrame$1;-><init>()V

    sput-object v0, Landroidx/media2/player/exoplayer/ByteArrayFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(J[B)V
    .locals 0
    .param p1, "timestamp"    # J
    .param p3, "data"    # [B

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-wide p1, p0, Landroidx/media2/player/exoplayer/ByteArrayFrame;->mTimestamp:J

    .line 46
    iput-object p3, p0, Landroidx/media2/player/exoplayer/ByteArrayFrame;->mData:[B

    .line 47
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/player/exoplayer/ByteArrayFrame;->mTimestamp:J

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 52
    .local v0, "length":I
    new-array v1, v0, [B

    .line 53
    .local v1, "data":[B
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 54
    iput-object v1, p0, Landroidx/media2/player/exoplayer/ByteArrayFrame;->mData:[B

    .line 55
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 59
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 60
    return v0

    .line 62
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 65
    :cond_1
    move-object v2, p1

    check-cast v2, Landroidx/media2/player/exoplayer/ByteArrayFrame;

    .line 66
    .local v2, "other":Landroidx/media2/player/exoplayer/ByteArrayFrame;
    iget-wide v3, p0, Landroidx/media2/player/exoplayer/ByteArrayFrame;->mTimestamp:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, v2, Landroidx/media2/player/exoplayer/ByteArrayFrame;->mTimestamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/media2/player/exoplayer/ByteArrayFrame;->mData:[B

    iget-object v4, v2, Landroidx/media2/player/exoplayer/ByteArrayFrame;->mData:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 62
    .end local v2    # "other":Landroidx/media2/player/exoplayer/ByteArrayFrame;
    :cond_3
    :goto_1
    nop

    .line 63
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 71
    const/16 v0, 0x11

    .line 72
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroidx/media2/player/exoplayer/ByteArrayFrame;->mTimestamp:J

    long-to-int v3, v2

    add-int/2addr v1, v3

    .line 73
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroidx/media2/player/exoplayer/ByteArrayFrame;->mData:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    .line 74
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 86
    iget-wide v0, p0, Landroidx/media2/player/exoplayer/ByteArrayFrame;->mTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 87
    iget-object v0, p0, Landroidx/media2/player/exoplayer/ByteArrayFrame;->mData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 88
    return-void
.end method
