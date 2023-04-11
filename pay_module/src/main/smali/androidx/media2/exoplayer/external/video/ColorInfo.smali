.class public final Landroidx/media2/exoplayer/external/video/ColorInfo;
.super Ljava/lang/Object;
.source "ColorInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media2/exoplayer/external/video/ColorInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final colorRange:I

.field public final colorSpace:I

.field public final colorTransfer:I

.field private hashCode:I

.field public final hdrStaticInfo:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 144
    new-instance v0, Landroidx/media2/exoplayer/external/video/ColorInfo$1;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/video/ColorInfo$1;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/video/ColorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(III[B)V
    .locals 0
    .param p1, "colorSpace"    # I
    .param p2, "colorRange"    # I
    .param p3, "colorTransfer"    # I
    .param p4, "hdrStaticInfo"    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput p1, p0, Landroidx/media2/exoplayer/external/video/ColorInfo;->colorSpace:I

    .line 79
    iput p2, p0, Landroidx/media2/exoplayer/external/video/ColorInfo;->colorRange:I

    .line 80
    iput p3, p0, Landroidx/media2/exoplayer/external/video/ColorInfo;->colorTransfer:I

    .line 81
    iput-object p4, p0, Landroidx/media2/exoplayer/external/video/ColorInfo;->hdrStaticInfo:[B

    .line 82
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/video/ColorInfo;->colorSpace:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/video/ColorInfo;->colorRange:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/video/ColorInfo;->colorTransfer:I

    .line 89
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Util;->readBoolean(Landroid/os/Parcel;)Z

    move-result v0

    .line 90
    .local v0, "hasHdrStaticInfo":Z
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Landroidx/media2/exoplayer/external/video/ColorInfo;->hdrStaticInfo:[B

    .line 91
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 96
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 97
    return v0

    .line 99
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 102
    :cond_1
    move-object v2, p1

    check-cast v2, Landroidx/media2/exoplayer/external/video/ColorInfo;

    .line 103
    .local v2, "other":Landroidx/media2/exoplayer/external/video/ColorInfo;
    iget v3, p0, Landroidx/media2/exoplayer/external/video/ColorInfo;->colorSpace:I

    iget v4, v2, Landroidx/media2/exoplayer/external/video/ColorInfo;->colorSpace:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroidx/media2/exoplayer/external/video/ColorInfo;->colorRange:I

    iget v4, v2, Landroidx/media2/exoplayer/external/video/ColorInfo;->colorRange:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroidx/media2/exoplayer/external/video/ColorInfo;->colorTransfer:I

    iget v4, v2, Landroidx/media2/exoplayer/external/video/ColorInfo;->colorTransfer:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Landroidx/media2/exoplayer/external/video/ColorInfo;->hdrStaticInfo:[B

    iget-object v4, v2, Landroidx/media2/exoplayer/external/video/ColorInfo;->hdrStaticInfo:[B

    .line 106
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    goto :goto_0

    .line 103
    :cond_3
    nop

    .line 106
    :goto_0
    const/4 v0, 0x0

    .line 103
    :goto_1
    return v0

    .line 99
    .end local v2    # "other":Landroidx/media2/exoplayer/external/video/ColorInfo;
    :cond_4
    :goto_2
    nop

    .line 100
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 117
    iget v0, p0, Landroidx/media2/exoplayer/external/video/ColorInfo;->hashCode:I

    if-nez v0, :cond_0

    .line 118
    const/16 v0, 0x11

    .line 119
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/media2/exoplayer/external/video/ColorInfo;->colorSpace:I

    add-int/2addr v1, v2

    .line 120
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroidx/media2/exoplayer/external/video/ColorInfo;->colorRange:I

    add-int/2addr v0, v2

    .line 121
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/media2/exoplayer/external/video/ColorInfo;->colorTransfer:I

    add-int/2addr v1, v2

    .line 122
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroidx/media2/exoplayer/external/video/ColorInfo;->hdrStaticInfo:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    .line 123
    .end local v1    # "result":I
    .restart local v0    # "result":I
    iput v0, p0, Landroidx/media2/exoplayer/external/video/ColorInfo;->hashCode:I

    goto :goto_0

    .line 117
    .end local v0    # "result":I
    :cond_0
    nop

    .line 125
    :goto_0
    iget v0, p0, Landroidx/media2/exoplayer/external/video/ColorInfo;->hashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 111
    iget v0, p0, Landroidx/media2/exoplayer/external/video/ColorInfo;->colorSpace:I

    iget v1, p0, Landroidx/media2/exoplayer/external/video/ColorInfo;->colorRange:I

    iget v2, p0, Landroidx/media2/exoplayer/external/video/ColorInfo;->colorTransfer:I

    iget-object v3, p0, Landroidx/media2/exoplayer/external/video/ColorInfo;->hdrStaticInfo:[B

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x37

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "ColorInfo("

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 135
    iget v0, p0, Landroidx/media2/exoplayer/external/video/ColorInfo;->colorSpace:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget v0, p0, Landroidx/media2/exoplayer/external/video/ColorInfo;->colorRange:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget v0, p0, Landroidx/media2/exoplayer/external/video/ColorInfo;->colorTransfer:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/ColorInfo;->hdrStaticInfo:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Landroidx/media2/exoplayer/external/util/Util;->writeBoolean(Landroid/os/Parcel;Z)V

    .line 139
    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/ColorInfo;->hdrStaticInfo:[B

    if-eqz v0, :cond_1

    .line 140
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_1

    .line 139
    :cond_1
    nop

    .line 142
    :goto_1
    return-void
.end method
