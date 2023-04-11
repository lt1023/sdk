.class public final Landroidx/media2/exoplayer/external/offline/StreamKey;
.super Ljava/lang/Object;
.source "StreamKey.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/media2/exoplayer/external/offline/StreamKey;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media2/exoplayer/external/offline/StreamKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final groupIndex:I

.field public final periodIndex:I

.field public final trackIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 126
    new-instance v0, Landroidx/media2/exoplayer/external/offline/StreamKey$1;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/offline/StreamKey$1;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/offline/StreamKey;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "groupIndex"    # I
    .param p2, "trackIndex"    # I

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroidx/media2/exoplayer/external/offline/StreamKey;-><init>(III)V

    .line 51
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "periodIndex"    # I
    .param p2, "groupIndex"    # I
    .param p3, "trackIndex"    # I

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p1, p0, Landroidx/media2/exoplayer/external/offline/StreamKey;->periodIndex:I

    .line 60
    iput p2, p0, Landroidx/media2/exoplayer/external/offline/StreamKey;->groupIndex:I

    .line 61
    iput p3, p0, Landroidx/media2/exoplayer/external/offline/StreamKey;->trackIndex:I

    .line 62
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/offline/StreamKey;->periodIndex:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/offline/StreamKey;->groupIndex:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/offline/StreamKey;->trackIndex:I

    .line 68
    return-void
.end method


# virtual methods
.method public compareTo(Landroidx/media2/exoplayer/external/offline/StreamKey;)I
    .locals 3
    .param p1, "o"    # Landroidx/media2/exoplayer/external/offline/StreamKey;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 102
    iget v0, p0, Landroidx/media2/exoplayer/external/offline/StreamKey;->periodIndex:I

    iget v1, p1, Landroidx/media2/exoplayer/external/offline/StreamKey;->periodIndex:I

    sub-int/2addr v0, v1

    .line 103
    .local v0, "result":I
    if-nez v0, :cond_1

    .line 104
    iget v1, p0, Landroidx/media2/exoplayer/external/offline/StreamKey;->groupIndex:I

    iget v2, p1, Landroidx/media2/exoplayer/external/offline/StreamKey;->groupIndex:I

    sub-int v0, v1, v2

    .line 105
    if-nez v0, :cond_0

    .line 106
    iget v1, p0, Landroidx/media2/exoplayer/external/offline/StreamKey;->trackIndex:I

    iget v2, p1, Landroidx/media2/exoplayer/external/offline/StreamKey;->trackIndex:I

    sub-int v0, v1, v2

    goto :goto_0

    .line 105
    :cond_0
    goto :goto_0

    .line 103
    :cond_1
    nop

    .line 109
    :goto_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 35
    check-cast p1, Landroidx/media2/exoplayer/external/offline/StreamKey;

    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/offline/StreamKey;->compareTo(Landroidx/media2/exoplayer/external/offline/StreamKey;)I

    move-result p1

    return p1
.end method

.method public describeContents()I
    .locals 1

    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 77
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 78
    return v0

    .line 80
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 84
    :cond_1
    move-object v2, p1

    check-cast v2, Landroidx/media2/exoplayer/external/offline/StreamKey;

    .line 85
    .local v2, "that":Landroidx/media2/exoplayer/external/offline/StreamKey;
    iget v3, p0, Landroidx/media2/exoplayer/external/offline/StreamKey;->periodIndex:I

    iget v4, v2, Landroidx/media2/exoplayer/external/offline/StreamKey;->periodIndex:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroidx/media2/exoplayer/external/offline/StreamKey;->groupIndex:I

    iget v4, v2, Landroidx/media2/exoplayer/external/offline/StreamKey;->groupIndex:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroidx/media2/exoplayer/external/offline/StreamKey;->trackIndex:I

    iget v4, v2, Landroidx/media2/exoplayer/external/offline/StreamKey;->trackIndex:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 80
    .end local v2    # "that":Landroidx/media2/exoplayer/external/offline/StreamKey;
    :cond_3
    :goto_1
    nop

    .line 81
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 92
    iget v0, p0, Landroidx/media2/exoplayer/external/offline/StreamKey;->periodIndex:I

    .line 93
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/media2/exoplayer/external/offline/StreamKey;->groupIndex:I

    add-int/2addr v1, v2

    .line 94
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroidx/media2/exoplayer/external/offline/StreamKey;->trackIndex:I

    add-int/2addr v0, v2

    .line 95
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 72
    iget v0, p0, Landroidx/media2/exoplayer/external/offline/StreamKey;->periodIndex:I

    iget v1, p0, Landroidx/media2/exoplayer/external/offline/StreamKey;->groupIndex:I

    iget v2, p0, Landroidx/media2/exoplayer/external/offline/StreamKey;->trackIndex:I

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x23

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 121
    iget v0, p0, Landroidx/media2/exoplayer/external/offline/StreamKey;->periodIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget v0, p0, Landroidx/media2/exoplayer/external/offline/StreamKey;->groupIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget v0, p0, Landroidx/media2/exoplayer/external/offline/StreamKey;->trackIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    return-void
.end method
