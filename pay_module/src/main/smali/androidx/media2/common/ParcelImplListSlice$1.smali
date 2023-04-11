.class Landroidx/media2/common/ParcelImplListSlice$1;
.super Landroid/os/Binder;
.source "ParcelImplListSlice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/common/ParcelImplListSlice;->writeToParcel(Landroid/os/Parcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/common/ParcelImplListSlice;

.field final synthetic val$itemCount:I


# direct methods
.method constructor <init>(Landroidx/media2/common/ParcelImplListSlice;I)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/common/ParcelImplListSlice;

    .line 148
    iput-object p1, p0, Landroidx/media2/common/ParcelImplListSlice$1;->this$0:Landroidx/media2/common/ParcelImplListSlice;

    iput p2, p0, Landroidx/media2/common/ParcelImplListSlice$1;->val$itemCount:I

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 152
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 153
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 155
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 159
    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroidx/media2/common/ParcelImplListSlice$1;->val$itemCount:I

    if-ge v1, v2, :cond_1

    invoke-virtual {p3}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    const/high16 v3, 0x10000

    if-ge v2, v3, :cond_1

    .line 160
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget-object v2, p0, Landroidx/media2/common/ParcelImplListSlice$1;->this$0:Landroidx/media2/common/ParcelImplListSlice;

    iget-object v2, v2, Landroidx/media2/common/ParcelImplListSlice;->mList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/versionedparcelable/ParcelImpl;

    .line 163
    .local v2, "parcelable":Landroidx/versionedparcelable/ParcelImpl;
    invoke-virtual {p3, v2, p4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 168
    nop

    .end local v2    # "parcelable":Landroidx/versionedparcelable/ParcelImpl;
    add-int/lit8 v1, v1, 0x1

    .line 169
    goto :goto_0

    .line 159
    :cond_1
    nop

    .line 170
    iget v2, p0, Landroidx/media2/common/ParcelImplListSlice$1;->val$itemCount:I

    if-ge v1, v2, :cond_2

    .line 174
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 170
    :cond_2
    nop

    .line 176
    :goto_1
    return v0
.end method
