.class public final Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand$ComponentSplice;
.super Ljava/lang/Object;
.source "SpliceInsertCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ComponentSplice"
.end annotation


# instance fields
.field public final componentSplicePlaybackPositionUs:J

.field public final componentSplicePts:J

.field public final componentTag:I


# direct methods
.method private constructor <init>(IJJ)V
    .locals 0
    .param p1, "componentTag"    # I
    .param p2, "componentSplicePts"    # J
    .param p4, "componentSplicePlaybackPositionUs"    # J

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput p1, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand$ComponentSplice;->componentTag:I

    .line 206
    iput-wide p2, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand$ComponentSplice;->componentSplicePts:J

    .line 207
    iput-wide p4, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand$ComponentSplice;->componentSplicePlaybackPositionUs:J

    .line 208
    return-void
.end method

.method synthetic constructor <init>(IJJLandroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # J
    .param p4, "x2"    # J
    .param p6, "x3"    # Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand$1;

    .line 197
    invoke-direct/range {p0 .. p5}, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand$ComponentSplice;-><init>(IJJ)V

    return-void
.end method

.method public static createFromParcel(Landroid/os/Parcel;)Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand$ComponentSplice;
    .locals 7
    .param p0, "in"    # Landroid/os/Parcel;

    .line 217
    new-instance v6, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand$ComponentSplice;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand$ComponentSplice;-><init>(IJJ)V

    return-object v6
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;

    .line 211
    iget v0, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand$ComponentSplice;->componentTag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand$ComponentSplice;->componentSplicePts:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 213
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand$ComponentSplice;->componentSplicePlaybackPositionUs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 214
    return-void
.end method