.class public final Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;
.super Ljava/lang/Object;
.source "DefaultTrackSelector.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SelectionOverride"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final data:I

.field public final groupIndex:I

.field public final length:I

.field public final reason:I

.field public final tracks:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1265
    new-instance v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride$1;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride$1;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public varargs constructor <init>(I[I)V
    .locals 2
    .param p1, "groupIndex"    # I
    .param p2, "tracks"    # [I

    .line 1190
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;-><init>(I[III)V

    .line 1191
    return-void
.end method

.method public constructor <init>(I[III)V
    .locals 1
    .param p1, "groupIndex"    # I
    .param p2, "tracks"    # [I
    .param p3, "reason"    # I
    .param p4, "data"    # I

    .line 1199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1200
    iput p1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;->groupIndex:I

    .line 1201
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;->tracks:[I

    .line 1202
    array-length v0, p2

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;->length:I

    .line 1203
    iput p3, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;->reason:I

    .line 1204
    iput p4, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;->data:I

    .line 1205
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;->tracks:[I

    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 1206
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1209
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;->groupIndex:I

    .line 1210
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;->length:I

    .line 1211
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;->length:I

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;->tracks:[I

    .line 1212
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;->tracks:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 1213
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;->reason:I

    .line 1214
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;->data:I

    .line 1215
    return-void
.end method


# virtual methods
.method public containsTrack(I)Z
    .locals 5
    .param p1, "track"    # I

    .line 1219
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;->tracks:[I

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    .line 1220
    .local v4, "overrideTrack":I
    if-ne v4, p1, :cond_0

    .line 1221
    const/4 v0, 0x1

    return v0

    .line 1220
    :cond_0
    nop

    .line 1219
    .end local v4    # "overrideTrack":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1224
    :cond_1
    return v2
.end method

.method public describeContents()I
    .locals 1

    .line 1253
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1236
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1237
    return v0

    .line 1239
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 1242
    :cond_1
    move-object v2, p1

    check-cast v2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;

    .line 1243
    .local v2, "other":Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;
    iget v3, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;->groupIndex:I

    iget v4, v2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;->groupIndex:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;->tracks:[I

    iget-object v4, v2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;->tracks:[I

    .line 1244
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;->reason:I

    iget v4, v2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;->reason:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;->data:I

    iget v4, v2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;->data:I

    if-ne v3, v4, :cond_2

    goto :goto_1

    :cond_2
    goto :goto_0

    .line 1243
    :cond_3
    nop

    .line 1244
    :goto_0
    const/4 v0, 0x0

    .line 1243
    :goto_1
    return v0

    .line 1239
    .end local v2    # "other":Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;
    :cond_4
    :goto_2
    nop

    .line 1240
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1229
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;->groupIndex:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;->tracks:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    .line 1230
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;->reason:I

    add-int/2addr v1, v2

    .line 1231
    .end local v0    # "hash":I
    .local v1, "hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;->data:I

    add-int/2addr v0, v2

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1258
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;->groupIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1259
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;->tracks:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1260
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;->tracks:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1261
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;->reason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1262
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride;->data:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1263
    return-void
.end method
