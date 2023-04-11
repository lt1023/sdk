.class public final Landroidx/media2/exoplayer/external/source/TrackGroupArray;
.super Ljava/lang/Object;
.source "TrackGroupArray.java"

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
            "Landroidx/media2/exoplayer/external/source/TrackGroupArray;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY:Landroidx/media2/exoplayer/external/source/TrackGroupArray;


# instance fields
.field private hashCode:I

.field public final length:I

.field private final trackGroups:[Landroidx/media2/exoplayer/external/source/TrackGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    const/4 v1, 0x0

    new-array v1, v1, [Landroidx/media2/exoplayer/external/source/TrackGroup;

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/source/TrackGroupArray;-><init>([Landroidx/media2/exoplayer/external/source/TrackGroup;)V

    sput-object v0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->EMPTY:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 136
    new-instance v0, Landroidx/media2/exoplayer/external/source/TrackGroupArray$1;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/source/TrackGroupArray$1;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    .line 60
    iget v0, p0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    new-array v0, v0, [Landroidx/media2/exoplayer/external/source/TrackGroup;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->trackGroups:[Landroidx/media2/exoplayer/external/source/TrackGroup;

    .line 61
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    if-ge v0, v1, :cond_0

    .line 62
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->trackGroups:[Landroidx/media2/exoplayer/external/source/TrackGroup;

    const-class v2, Landroidx/media2/exoplayer/external/source/TrackGroup;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/source/TrackGroup;

    aput-object v2, v1, v0

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public varargs constructor <init>([Landroidx/media2/exoplayer/external/source/TrackGroup;)V
    .locals 1
    .param p1, "trackGroups"    # [Landroidx/media2/exoplayer/external/source/TrackGroup;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->trackGroups:[Landroidx/media2/exoplayer/external/source/TrackGroup;

    .line 55
    array-length v0, p1

    iput v0, p0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    .line 56
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 111
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 112
    return v0

    .line 114
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 117
    :cond_1
    move-object v2, p1

    check-cast v2, Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 118
    .local v2, "other":Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    iget v3, p0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    iget v4, v2, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->trackGroups:[Landroidx/media2/exoplayer/external/source/TrackGroup;

    iget-object v4, v2, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->trackGroups:[Landroidx/media2/exoplayer/external/source/TrackGroup;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 114
    .end local v2    # "other":Landroidx/media2/exoplayer/external/source/TrackGroupArray;
    :cond_3
    :goto_1
    nop

    .line 115
    return v1
.end method

.method public get(I)Landroidx/media2/exoplayer/external/source/TrackGroup;
    .locals 1
    .param p1, "index"    # I

    .line 73
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->trackGroups:[Landroidx/media2/exoplayer/external/source/TrackGroup;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 103
    iget v0, p0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->hashCode:I

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->trackGroups:[Landroidx/media2/exoplayer/external/source/TrackGroup;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->hashCode:I

    goto :goto_0

    .line 103
    :cond_0
    nop

    .line 106
    :goto_0
    iget v0, p0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->hashCode:I

    return v0
.end method

.method public indexOf(Landroidx/media2/exoplayer/external/source/TrackGroup;)I
    .locals 2
    .param p1, "group"    # Landroidx/media2/exoplayer/external/source/TrackGroup;

    .line 84
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    if-ge v0, v1, :cond_1

    .line 87
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->trackGroups:[Landroidx/media2/exoplayer/external/source/TrackGroup;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 88
    return v0

    .line 84
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 98
    iget v0, p0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 130
    iget v0, p0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    if-ge v0, v1, :cond_0

    .line 132
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->trackGroups:[Landroidx/media2/exoplayer/external/source/TrackGroup;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
