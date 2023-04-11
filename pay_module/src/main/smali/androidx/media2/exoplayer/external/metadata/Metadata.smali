.class public final Landroidx/media2/exoplayer/external/metadata/Metadata;
.super Ljava/lang/Object;
.source "Metadata.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media2/exoplayer/external/metadata/Metadata;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final entries:[Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 146
    new-instance v0, Landroidx/media2/exoplayer/external/metadata/Metadata$1;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/metadata/Metadata$1;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/metadata/Metadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/metadata/Metadata;->entries:[Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    .line 65
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/metadata/Metadata;->entries:[Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 66
    const-class v2, Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    aput-object v2, v1, v0

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;",
            ">;)V"
        }
    .end annotation

    .line 54
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<+Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    if-eqz p1, :cond_0

    .line 56
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/metadata/Metadata;->entries:[Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    .line 57
    iget-object v0, p0, Landroidx/media2/exoplayer/external/metadata/Metadata;->entries:[Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0

    .line 59
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/metadata/Metadata;->entries:[Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    .line 61
    :goto_0
    return-void
.end method

.method public varargs constructor <init>([Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;)V
    .locals 1
    .param p1, "entries"    # [Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Landroidx/media2/exoplayer/external/metadata/Metadata;->entries:[Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    .line 49
    return-void
.end method


# virtual methods
.method public varargs copyWithAppendedEntries([Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;)Landroidx/media2/exoplayer/external/metadata/Metadata;
    .locals 4
    .param p1, "entriesToAppend"    # [Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    .line 109
    iget-object v0, p0, Landroidx/media2/exoplayer/external/metadata/Metadata;->entries:[Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    array-length v1, v0

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    .line 110
    .local v0, "merged":[Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/metadata/Metadata;->entries:[Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    array-length v1, v1

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    new-instance v1, Landroidx/media2/exoplayer/external/metadata/Metadata;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->castNonNullTypeArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    invoke-direct {v1, v2}, Landroidx/media2/exoplayer/external/metadata/Metadata;-><init>([Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;)V

    return-object v1
.end method

.method public copyWithAppendedEntriesFrom(Landroidx/media2/exoplayer/external/metadata/Metadata;)Landroidx/media2/exoplayer/external/metadata/Metadata;
    .locals 1
    .param p1, "other"    # Landroidx/media2/exoplayer/external/metadata/Metadata;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 96
    if-nez p1, :cond_0

    .line 97
    return-object p0

    .line 99
    :cond_0
    iget-object v0, p1, Landroidx/media2/exoplayer/external/metadata/Metadata;->entries:[Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/metadata/Metadata;->copyWithAppendedEntries([Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;)Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 116
    if-ne p0, p1, :cond_0

    .line 117
    const/4 v0, 0x1

    return v0

    .line 119
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 122
    :cond_1
    move-object v0, p1

    check-cast v0, Landroidx/media2/exoplayer/external/metadata/Metadata;

    .line 123
    .local v0, "other":Landroidx/media2/exoplayer/external/metadata/Metadata;
    iget-object v1, p0, Landroidx/media2/exoplayer/external/metadata/Metadata;->entries:[Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    iget-object v2, v0, Landroidx/media2/exoplayer/external/metadata/Metadata;->entries:[Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 119
    .end local v0    # "other":Landroidx/media2/exoplayer/external/metadata/Metadata;
    :cond_2
    :goto_0
    nop

    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public get(I)Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;
    .locals 1
    .param p1, "index"    # I

    .line 84
    iget-object v0, p0, Landroidx/media2/exoplayer/external/metadata/Metadata;->entries:[Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 128
    iget-object v0, p0, Landroidx/media2/exoplayer/external/metadata/Metadata;->entries:[Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    .line 74
    iget-object v0, p0, Landroidx/media2/exoplayer/external/metadata/Metadata;->entries:[Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    array-length v0, v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 140
    iget-object v0, p0, Landroidx/media2/exoplayer/external/metadata/Metadata;->entries:[Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget-object v0, p0, Landroidx/media2/exoplayer/external/metadata/Metadata;->entries:[Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 142
    .local v4, "entry":Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;
    invoke-virtual {p1, v4, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 141
    .end local v4    # "entry":Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 144
    :cond_0
    return-void
.end method
