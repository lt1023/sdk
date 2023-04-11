.class public final Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;
.super Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;
.source "ChapterFrame.java"


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
            "Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;",
            ">;"
        }
    .end annotation
.end field

.field public static final ID:Ljava/lang/String; = "CHAP"


# instance fields
.field public final chapterId:Ljava/lang/String;

.field public final endOffset:J

.field public final endTimeMs:I

.field public final startOffset:J

.field public final startTimeMs:I

.field private final subFrames:[Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 137
    new-instance v0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame$1;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame$1;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 64
    const-string v0, "CHAP"

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->chapterId:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->startTimeMs:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->endTimeMs:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->startOffset:J

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->endOffset:J

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 71
    .local v0, "subFrameCount":I
    new-array v1, v0, [Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    iput-object v1, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->subFrames:[Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    .line 72
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 73
    iget-object v2, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->subFrames:[Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    const-class v3, Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    aput-object v3, v2, v1

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIJJ[Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;)V
    .locals 1
    .param p1, "chapterId"    # Ljava/lang/String;
    .param p2, "startTimeMs"    # I
    .param p3, "endTimeMs"    # I
    .param p4, "startOffset"    # J
    .param p6, "endOffset"    # J
    .param p8, "subFrames"    # [Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    .line 54
    const-string v0, "CHAP"

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 55
    iput-object p1, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->chapterId:Ljava/lang/String;

    .line 56
    iput p2, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->startTimeMs:I

    .line 57
    iput p3, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->endTimeMs:I

    .line 58
    iput-wide p4, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->startOffset:J

    .line 59
    iput-wide p6, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->endOffset:J

    .line 60
    iput-object p8, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->subFrames:[Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    .line 61
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 93
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 94
    return v0

    .line 96
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 99
    :cond_1
    move-object v2, p1

    check-cast v2, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;

    .line 100
    .local v2, "other":Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;
    iget v3, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->startTimeMs:I

    iget v4, v2, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->startTimeMs:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->endTimeMs:I

    iget v4, v2, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->endTimeMs:I

    if-ne v3, v4, :cond_4

    iget-wide v3, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->startOffset:J

    iget-wide v5, v2, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->startOffset:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_4

    iget-wide v3, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->endOffset:J

    iget-wide v5, v2, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->endOffset:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_4

    iget-object v3, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->chapterId:Ljava/lang/String;

    iget-object v4, v2, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->chapterId:Ljava/lang/String;

    .line 104
    invoke-static {v3, v4}, Landroidx/media2/exoplayer/external/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->subFrames:[Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    iget-object v4, v2, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->subFrames:[Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    .line 105
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    goto :goto_0

    .line 104
    :cond_3
    goto :goto_0

    .line 100
    :cond_4
    nop

    .line 105
    :goto_0
    const/4 v0, 0x0

    .line 100
    :goto_1
    return v0

    .line 96
    .end local v2    # "other":Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;
    :cond_5
    :goto_2
    nop

    .line 97
    return v1
.end method

.method public getSubFrame(I)Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;
    .locals 1
    .param p1, "index"    # I

    .line 88
    iget-object v0, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->subFrames:[Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getSubFrameCount()I
    .locals 1

    .line 81
    iget-object v0, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->subFrames:[Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    array-length v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 110
    const/16 v0, 0x11

    .line 111
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->startTimeMs:I

    add-int/2addr v1, v2

    .line 112
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->endTimeMs:I

    add-int/2addr v0, v2

    .line 113
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->startOffset:J

    long-to-int v3, v2

    add-int/2addr v1, v3

    .line 114
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->endOffset:J

    long-to-int v3, v2

    add-int/2addr v0, v3

    .line 115
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->chapterId:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v1, v2

    .line 116
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 121
    iget-object v0, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->chapterId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget v0, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->startTimeMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget v0, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->endTimeMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->startOffset:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 125
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->endOffset:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 126
    iget-object v0, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->subFrames:[Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget-object v0, p0, Landroidx/media2/exoplayer/external/metadata/id3/ChapterFrame;->subFrames:[Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 128
    .local v4, "subFrame":Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;
    invoke-virtual {p1, v4, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 127
    .end local v4    # "subFrame":Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 130
    :cond_0
    return-void
.end method
