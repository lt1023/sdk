.class public final Landroidx/media2/exoplayer/external/metadata/id3/CommentFrame;
.super Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;
.source "CommentFrame.java"


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
            "Landroidx/media2/exoplayer/external/metadata/id3/CommentFrame;",
            ">;"
        }
    .end annotation
.end field

.field public static final ID:Ljava/lang/String; = "COMM"


# instance fields
.field public final description:Ljava/lang/String;

.field public final language:Ljava/lang/String;

.field public final text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 92
    new-instance v0, Landroidx/media2/exoplayer/external/metadata/id3/CommentFrame$1;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/metadata/id3/CommentFrame$1;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/metadata/id3/CommentFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 50
    const-string v0, "COMM"

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/metadata/id3/CommentFrame;->language:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/metadata/id3/CommentFrame;->description:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/metadata/id3/CommentFrame;->text:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;

    .line 43
    const-string v0, "COMM"

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 44
    iput-object p1, p0, Landroidx/media2/exoplayer/external/metadata/id3/CommentFrame;->language:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Landroidx/media2/exoplayer/external/metadata/id3/CommentFrame;->description:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Landroidx/media2/exoplayer/external/metadata/id3/CommentFrame;->text:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 58
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 59
    return v0

    .line 61
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 64
    :cond_1
    move-object v2, p1

    check-cast v2, Landroidx/media2/exoplayer/external/metadata/id3/CommentFrame;

    .line 65
    .local v2, "other":Landroidx/media2/exoplayer/external/metadata/id3/CommentFrame;
    iget-object v3, p0, Landroidx/media2/exoplayer/external/metadata/id3/CommentFrame;->description:Ljava/lang/String;

    iget-object v4, v2, Landroidx/media2/exoplayer/external/metadata/id3/CommentFrame;->description:Ljava/lang/String;

    invoke-static {v3, v4}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroidx/media2/exoplayer/external/metadata/id3/CommentFrame;->language:Ljava/lang/String;

    iget-object v4, v2, Landroidx/media2/exoplayer/external/metadata/id3/CommentFrame;->language:Ljava/lang/String;

    invoke-static {v3, v4}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroidx/media2/exoplayer/external/metadata/id3/CommentFrame;->text:Ljava/lang/String;

    iget-object v4, v2, Landroidx/media2/exoplayer/external/metadata/id3/CommentFrame;->text:Ljava/lang/String;

    .line 66
    invoke-static {v3, v4}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    goto :goto_0

    .line 65
    :cond_3
    nop

    .line 66
    :goto_0
    const/4 v0, 0x0

    .line 65
    :goto_1
    return v0

    .line 61
    .end local v2    # "other":Landroidx/media2/exoplayer/external/metadata/id3/CommentFrame;
    :cond_4
    :goto_2
    nop

    .line 62
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 71
    const/16 v0, 0x11

    .line 72
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/media2/exoplayer/external/metadata/id3/CommentFrame;->language:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v1, v2

    .line 73
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroidx/media2/exoplayer/external/metadata/id3/CommentFrame;->description:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    .line 74
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/media2/exoplayer/external/metadata/id3/CommentFrame;->text:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    nop

    :cond_2
    add-int/2addr v1, v3

    .line 75
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 80
    iget-object v0, p0, Landroidx/media2/exoplayer/external/metadata/id3/CommentFrame;->id:Ljava/lang/String;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/metadata/id3/CommentFrame;->language:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/metadata/id3/CommentFrame;->description:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x19

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": language="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", description="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 87
    iget-object v0, p0, Landroidx/media2/exoplayer/external/metadata/id3/CommentFrame;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Landroidx/media2/exoplayer/external/metadata/id3/CommentFrame;->language:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Landroidx/media2/exoplayer/external/metadata/id3/CommentFrame;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    return-void
.end method
