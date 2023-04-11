.class public final Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;
.super Ljava/lang/Object;
.source "MdtaMetadataEntry.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;


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
            "Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final key:Ljava/lang/String;

.field public final localeIndicator:I

.field public final typeIndicator:I

.field public final value:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 108
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry$1;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry$1;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;->key:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;->value:[B

    .line 57
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;->value:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;->localeIndicator:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;->typeIndicator:I

    .line 60
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry$1;

    .line 35
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BII)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B
    .param p3, "localeIndicator"    # I
    .param p4, "typeIndicator"    # I

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;->key:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;->value:[B

    .line 50
    iput p3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;->localeIndicator:I

    .line 51
    iput p4, p0, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;->typeIndicator:I

    .line 52
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 64
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 65
    return v0

    .line 67
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 70
    :cond_1
    move-object v2, p1

    check-cast v2, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;

    .line 71
    .local v2, "other":Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;->key:Ljava/lang/String;

    iget-object v4, v2, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;->value:[B

    iget-object v4, v2, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;->value:[B

    .line 72
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;->localeIndicator:I

    iget v4, v2, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;->localeIndicator:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;->typeIndicator:I

    iget v4, v2, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;->typeIndicator:I

    if-ne v3, v4, :cond_2

    goto :goto_1

    :cond_2
    goto :goto_0

    .line 71
    :cond_3
    nop

    .line 72
    :goto_0
    const/4 v0, 0x0

    .line 71
    :goto_1
    return v0

    .line 67
    .end local v2    # "other":Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;
    :cond_4
    :goto_2
    nop

    .line 68
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 79
    const/16 v0, 0x11

    .line 80
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;->key:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 81
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;->value:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    .line 82
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;->localeIndicator:I

    add-int/2addr v1, v2

    .line 83
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;->typeIndicator:I

    add-int/2addr v0, v2

    .line 84
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 89
    const-string v0, "mdta: key="

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;->key:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 96
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;->value:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;->value:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 99
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;->localeIndicator:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;->typeIndicator:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    return-void
.end method
