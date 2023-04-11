.class public final Landroidx/media2/exoplayer/external/source/TrackGroup;
.super Ljava/lang/Object;
.source "TrackGroup.java"

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
            "Landroidx/media2/exoplayer/external/source/TrackGroup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final formats:[Landroidx/media2/exoplayer/external/Format;

.field private hashCode:I

.field public final length:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 135
    new-instance v0, Landroidx/media2/exoplayer/external/source/TrackGroup$1;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/source/TrackGroup$1;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/source/TrackGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    .line 64
    iget v0, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    new-array v0, v0, [Landroidx/media2/exoplayer/external/Format;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->formats:[Landroidx/media2/exoplayer/external/Format;

    .line 65
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    if-ge v0, v1, :cond_0

    .line 66
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->formats:[Landroidx/media2/exoplayer/external/Format;

    const-class v2, Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/Format;

    aput-object v2, v1, v0

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public varargs constructor <init>([Landroidx/media2/exoplayer/external/Format;)V
    .locals 1
    .param p1, "formats"    # [Landroidx/media2/exoplayer/external/Format;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 58
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->formats:[Landroidx/media2/exoplayer/external/Format;

    .line 59
    array-length v0, p1

    iput v0, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    .line 60
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 110
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 111
    return v0

    .line 113
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 116
    :cond_1
    move-object v2, p1

    check-cast v2, Landroidx/media2/exoplayer/external/source/TrackGroup;

    .line 117
    .local v2, "other":Landroidx/media2/exoplayer/external/source/TrackGroup;
    iget v3, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    iget v4, v2, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->formats:[Landroidx/media2/exoplayer/external/Format;

    iget-object v4, v2, Landroidx/media2/exoplayer/external/source/TrackGroup;->formats:[Landroidx/media2/exoplayer/external/Format;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 113
    .end local v2    # "other":Landroidx/media2/exoplayer/external/source/TrackGroup;
    :cond_3
    :goto_1
    nop

    .line 114
    return v1
.end method

.method public getFormat(I)Landroidx/media2/exoplayer/external/Format;
    .locals 1
    .param p1, "index"    # I

    .line 77
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->formats:[Landroidx/media2/exoplayer/external/Format;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 100
    iget v0, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->hashCode:I

    if-nez v0, :cond_0

    .line 101
    const/16 v0, 0x11

    .line 102
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->formats:[Landroidx/media2/exoplayer/external/Format;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 103
    .end local v0    # "result":I
    .local v1, "result":I
    iput v1, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->hashCode:I

    goto :goto_0

    .line 100
    .end local v1    # "result":I
    :cond_0
    nop

    .line 105
    :goto_0
    iget v0, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->hashCode:I

    return v0
.end method

.method public indexOf(Landroidx/media2/exoplayer/external/Format;)I
    .locals 3
    .param p1, "format"    # Landroidx/media2/exoplayer/external/Format;

    .line 90
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->formats:[Landroidx/media2/exoplayer/external/Format;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 91
    aget-object v1, v1, v0

    if-ne p1, v1, :cond_0

    .line 92
    return v0

    .line 90
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 129
    iget v0, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->length:I

    if-ge v0, v1, :cond_0

    .line 131
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/TrackGroup;->formats:[Landroidx/media2/exoplayer/external/Format;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
