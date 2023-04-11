.class public Landroidx/media2/common/ParcelImplListSlice;
.super Ljava/lang/Object;
.source "ParcelImplListSlice.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "BanParcelableUsage"
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
            "Landroidx/media2/common/ParcelImplListSlice;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final MAX_IPC_SIZE:I = 0x10000

.field private static final TAG:Ljava/lang/String; = "ParcelImplListSlice"


# instance fields
.field final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/versionedparcelable/ParcelImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 192
    new-instance v0, Landroidx/media2/common/ParcelImplListSlice$2;

    invoke-direct {v0}, Landroidx/media2/common/ParcelImplListSlice$2;-><init>()V

    sput-object v0, Landroidx/media2/common/ParcelImplListSlice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 9
    .param p1, "p"    # Landroid/os/Parcel;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 63
    .local v0, "itemCount":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroidx/media2/common/ParcelImplListSlice;->mList:Ljava/util/List;

    .line 67
    if-gtz v0, :cond_0

    .line 68
    return-void

    .line 71
    :cond_0
    const/4 v1, 0x0

    .line 72
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-nez v2, :cond_1

    .line 74
    goto :goto_1

    .line 77
    :cond_1
    const-class v2, Landroidx/versionedparcelable/ParcelImpl;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroidx/versionedparcelable/ParcelImpl;

    .line 78
    .local v2, "parcelImpl":Landroidx/versionedparcelable/ParcelImpl;
    iget-object v3, p0, Landroidx/media2/common/ParcelImplListSlice;->mList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    nop

    .end local v2    # "parcelImpl":Landroidx/versionedparcelable/ParcelImpl;
    add-int/lit8 v1, v1, 0x1

    .line 84
    goto :goto_0

    .line 72
    :cond_2
    nop

    .line 85
    :goto_1
    if-lt v1, v0, :cond_3

    .line 86
    return-void

    .line 88
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 89
    .local v2, "retriever":Landroid/os/IBinder;
    :goto_2
    if-ge v1, v0, :cond_5

    .line 93
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 94
    .local v3, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 95
    .local v4, "reply":Landroid/os/Parcel;
    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_0
    invoke-interface {v2, v6, v3, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    nop

    .line 102
    :goto_3
    if-ge v1, v0, :cond_4

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    .line 103
    const-class v5, Landroidx/versionedparcelable/ParcelImpl;

    .line 104
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 103
    invoke-virtual {v4, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroidx/versionedparcelable/ParcelImpl;

    .line 105
    .local v5, "parcelImpl":Landroidx/versionedparcelable/ParcelImpl;
    iget-object v6, p0, Landroidx/media2/common/ParcelImplListSlice;->mList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    nop

    .end local v5    # "parcelImpl":Landroidx/versionedparcelable/ParcelImpl;
    add-int/lit8 v1, v1, 0x1

    .line 111
    goto :goto_3

    .line 102
    :cond_4
    nop

    .line 112
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 113
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 114
    .end local v3    # "data":Landroid/os/Parcel;
    .end local v4    # "reply":Landroid/os/Parcel;
    goto :goto_2

    .line 98
    .restart local v3    # "data":Landroid/os/Parcel;
    .restart local v4    # "reply":Landroid/os/Parcel;
    :catch_0
    move-exception v5

    .line 99
    .local v5, "e":Landroid/os/RemoteException;
    const-string v6, "ParcelImplListSlice"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failure retrieving array; only received "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    return-void

    .line 115
    .end local v3    # "data":Landroid/os/Parcel;
    .end local v4    # "reply":Landroid/os/Parcel;
    .end local v5    # "e":Landroid/os/RemoteException;
    :cond_5
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/versionedparcelable/ParcelImpl;",
            ">;)V"
        }
    .end annotation

    .line 54
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroidx/versionedparcelable/ParcelImpl;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    if-eqz p1, :cond_0

    .line 58
    iput-object p1, p0, Landroidx/media2/common/ParcelImplListSlice;->mList:Ljava/util/List;

    .line 59
    return-void

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "list shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/versionedparcelable/ParcelImpl;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Landroidx/media2/common/ParcelImplListSlice;->mList:Ljava/util/List;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 128
    iget-object v0, p0, Landroidx/media2/common/ParcelImplListSlice;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 129
    .local v0, "itemCount":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    if-lez v0, :cond_2

    .line 134
    const/4 v1, 0x0

    .line 135
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    const/high16 v3, 0x10000

    if-ge v2, v3, :cond_0

    .line 136
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget-object v2, p0, Landroidx/media2/common/ParcelImplListSlice;->mList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/versionedparcelable/ParcelImpl;

    .line 139
    .local v2, "parcelable":Landroidx/versionedparcelable/ParcelImpl;
    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 144
    nop

    .end local v2    # "parcelable":Landroidx/versionedparcelable/ParcelImpl;
    add-int/lit8 v1, v1, 0x1

    .line 145
    goto :goto_0

    .line 135
    :cond_0
    nop

    .line 146
    if-ge v1, v0, :cond_1

    .line 147
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    new-instance v2, Landroidx/media2/common/ParcelImplListSlice$1;

    invoke-direct {v2, p0, v0}, Landroidx/media2/common/ParcelImplListSlice$1;-><init>(Landroidx/media2/common/ParcelImplListSlice;I)V

    .line 182
    .local v2, "retriever":Landroid/os/Binder;
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_1

    .line 146
    .end local v2    # "retriever":Landroid/os/Binder;
    :cond_1
    goto :goto_1

    .line 133
    .end local v1    # "i":I
    :cond_2
    nop

    .line 185
    :goto_1
    return-void
.end method
