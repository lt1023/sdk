.class public final Landroidx/media2/exoplayer/external/metadata/scte35/TimeSignalCommand;
.super Landroidx/media2/exoplayer/external/metadata/scte35/SpliceCommand;
.source "TimeSignalCommand.java"


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
            "Landroidx/media2/exoplayer/external/metadata/scte35/TimeSignalCommand;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final playbackPositionUs:J

.field public final ptsTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    new-instance v0, Landroidx/media2/exoplayer/external/metadata/scte35/TimeSignalCommand$1;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/metadata/scte35/TimeSignalCommand$1;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/metadata/scte35/TimeSignalCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(JJ)V
    .locals 0
    .param p1, "ptsTime"    # J
    .param p3, "playbackPositionUs"    # J

    .line 43
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceCommand;-><init>()V

    .line 44
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/metadata/scte35/TimeSignalCommand;->ptsTime:J

    .line 45
    iput-wide p3, p0, Landroidx/media2/exoplayer/external/metadata/scte35/TimeSignalCommand;->playbackPositionUs:J

    .line 46
    return-void
.end method

.method synthetic constructor <init>(JJLandroidx/media2/exoplayer/external/metadata/scte35/TimeSignalCommand$1;)V
    .locals 0
    .param p1, "x0"    # J
    .param p3, "x1"    # J
    .param p5, "x2"    # Landroidx/media2/exoplayer/external/metadata/scte35/TimeSignalCommand$1;

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media2/exoplayer/external/metadata/scte35/TimeSignalCommand;-><init>(JJ)V

    return-void
.end method

.method static parseFromSection(Landroidx/media2/exoplayer/external/util/ParsableByteArray;JLandroidx/media2/exoplayer/external/util/TimestampAdjuster;)Landroidx/media2/exoplayer/external/metadata/scte35/TimeSignalCommand;
    .locals 5
    .param p0, "sectionData"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p1, "ptsAdjustment"    # J
    .param p3, "timestampAdjuster"    # Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    .line 50
    invoke-static {p0, p1, p2}, Landroidx/media2/exoplayer/external/metadata/scte35/TimeSignalCommand;->parseSpliceTime(Landroidx/media2/exoplayer/external/util/ParsableByteArray;J)J

    move-result-wide v0

    .line 51
    .local v0, "ptsTime":J
    invoke-virtual {p3, v0, v1}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v2

    .line 52
    .local v2, "playbackPositionUs":J
    new-instance v4, Landroidx/media2/exoplayer/external/metadata/scte35/TimeSignalCommand;

    invoke-direct {v4, v0, v1, v2, v3}, Landroidx/media2/exoplayer/external/metadata/scte35/TimeSignalCommand;-><init>(JJ)V

    return-object v4
.end method

.method static parseSpliceTime(Landroidx/media2/exoplayer/external/util/ParsableByteArray;J)J
    .locals 9
    .param p0, "sectionData"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p1, "ptsAdjustment"    # J

    .line 65
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    int-to-long v0, v0

    .line 66
    .local v0, "firstByte":J
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 67
    .local v2, "ptsTime":J
    const-wide/16 v4, 0x80

    and-long/2addr v4, v0

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_0

    .line 69
    const-wide/16 v4, 0x1

    and-long/2addr v4, v0

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    or-long v2, v4, v6

    .line 70
    add-long/2addr v2, p1

    .line 71
    const-wide v4, 0x1ffffffffL

    and-long/2addr v2, v4

    goto :goto_0

    .line 67
    :cond_0
    nop

    .line 73
    :goto_0
    return-wide v2
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 80
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/metadata/scte35/TimeSignalCommand;->ptsTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 81
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/metadata/scte35/TimeSignalCommand;->playbackPositionUs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 82
    return-void
.end method
