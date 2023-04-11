.class public final Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand;
.super Landroidx/media2/exoplayer/external/metadata/scte35/SpliceCommand;
.source "SpliceInsertCommand.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand$ComponentSplice;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final autoReturn:Z

.field public final availNum:I

.field public final availsExpected:I

.field public final breakDurationUs:J

.field public final componentSpliceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand$ComponentSplice;",
            ">;"
        }
    .end annotation
.end field

.field public final outOfNetworkIndicator:Z

.field public final programSpliceFlag:Z

.field public final programSplicePlaybackPositionUs:J

.field public final programSplicePts:J

.field public final spliceEventCancelIndicator:Z

.field public final spliceEventId:J

.field public final spliceImmediateFlag:Z

.field public final uniqueProgramId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 245
    new-instance v0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand$1;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand$1;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(JZZZZJJLjava/util/List;ZJIII)V
    .locals 16
    .param p1, "spliceEventId"    # J
    .param p3, "spliceEventCancelIndicator"    # Z
    .param p4, "outOfNetworkIndicator"    # Z
    .param p5, "programSpliceFlag"    # Z
    .param p6, "spliceImmediateFlag"    # Z
    .param p7, "programSplicePts"    # J
    .param p9, "programSplicePlaybackPositionUs"    # J
    .param p12, "autoReturn"    # Z
    .param p13, "breakDurationUs"    # J
    .param p15, "uniqueProgramId"    # I
    .param p16, "availNum"    # I
    .param p17, "availsExpected"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZZZZJJ",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand$ComponentSplice;",
            ">;ZJIII)V"
        }
    .end annotation

    .line 104
    .local p11, "componentSpliceList":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand$ComponentSplice;>;"
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceCommand;-><init>()V

    .line 105
    move-wide/from16 v1, p1

    iput-wide v1, v0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand;->spliceEventId:J

    .line 106
    move/from16 v3, p3

    iput-boolean v3, v0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand;->spliceEventCancelIndicator:Z

    .line 107
    move/from16 v4, p4

    iput-boolean v4, v0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand;->outOfNetworkIndicator:Z

    .line 108
    move/from16 v5, p5

    iput-boolean v5, v0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand;->programSpliceFlag:Z

    .line 109
    move/from16 v6, p6

    iput-boolean v6, v0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand;->spliceImmediateFlag:Z

    .line 110
    move-wide/from16 v7, p7

    iput-wide v7, v0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand;->programSplicePts:J

    .line 111
    move-wide/from16 v9, p9

    iput-wide v9, v0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand;->programSplicePlaybackPositionUs:J

    .line 112
    invoke-static/range {p11 .. p11}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    iput-object v11, v0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand;->componentSpliceList:Ljava/util/List;

    .line 113
    move/from16 v11, p12

    iput-boolean v11, v0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand;->autoReturn:Z

    .line 114
    move-wide/from16 v12, p13

    iput-wide v12, v0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand;->breakDurationUs:J

    .line 115
    move/from16 v14, p15

    iput v14, v0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand;->uniqueProgramId:I

    .line 116
    move/from16 v15, p16

    iput v15, v0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand;->availNum:I

    .line 117
    move/from16 v1, p17

    iput v1, v0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand;->availsExpected:I

    .line 118
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 120
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceCommand;-><init>()V

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand;->spliceEventId:J

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand;->spliceEventCancelIndicator:Z

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand;->outOfNetworkIndicator:Z

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand;->programSpliceFlag:Z

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand;->spliceImmediateFlag:Z

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand;->programSplicePts:J

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand;->programSplicePlaybackPositionUs:J

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 129
    .local v0, "componentSpliceListSize":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 130
    .local v3, "componentSpliceList":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand$ComponentSplice;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    if-ge v4, v0, :cond_4

    .line 131
    invoke-static {p1}, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand$ComponentSplice;->createFromParcel(Landroid/os/Parcel;)Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand$ComponentSplice;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 133
    .end local v4    # "i":I
    :cond_4
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand;->componentSpliceList:Ljava/util/List;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    if-ne v4, v2, :cond_5

    const/4 v1, 0x1

    nop

    :cond_5
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand;->autoReturn:Z

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand;->breakDurationUs:J

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand;->uniqueProgramId:I

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand;->availNum:I

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand;->availsExpected:I

    .line 139
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand$1;

    .line 36
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static parseFromSection(Landroidx/media2/exoplayer/external/util/ParsableByteArray;JLandroidx/media2/exoplayer/external/util/TimestampAdjuster;)Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand;
    .locals 35
    .param p0, "sectionData"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;
    .param p1, "ptsAdjustment"    # J
    .param p3, "timestampAdjuster"    # Landroidx/media2/exoplayer/external/util/TimestampAdjuster;

    .line 143
    move-object/from16 v0, p3

    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v19

    .line 145
    .local v19, "spliceEventId":J
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move/from16 v21, v1

    .line 146
    .local v21, "spliceEventCancelIndicator":Z
    const/4 v1, 0x0

    .line 147
    .local v1, "outOfNetworkIndicator":Z
    const/4 v4, 0x0

    .line 148
    .local v4, "programSpliceFlag":Z
    const/4 v5, 0x0

    .line 149
    .local v5, "spliceImmediateFlag":Z
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 150
    .local v6, "programSplicePts":J
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 151
    .local v8, "componentSplices":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand$ComponentSplice;>;"
    const/4 v9, 0x0

    .line 152
    .local v9, "uniqueProgramId":I
    const/4 v10, 0x0

    .line 153
    .local v10, "availNum":I
    const/4 v11, 0x0

    .line 154
    .local v11, "availsExpected":I
    const/4 v12, 0x0

    .line 155
    .local v12, "autoReturn":Z
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 156
    .local v13, "breakDurationUs":J
    if-nez v21, :cond_b

    .line 157
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v15

    .line 158
    .local v15, "headerByte":I
    and-int/lit16 v2, v15, 0x80

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    move v1, v2

    .line 159
    and-int/lit8 v2, v15, 0x40

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 160
    .end local v4    # "programSpliceFlag":Z
    .local v2, "programSpliceFlag":Z
    :goto_2
    and-int/lit8 v4, v15, 0x20

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    .line 161
    .local v4, "durationFlag":Z
    :goto_3
    and-int/lit8 v17, v15, 0x10

    if-eqz v17, :cond_4

    const/16 v17, 0x1

    goto :goto_4

    :cond_4
    const/16 v17, 0x0

    :goto_4
    move/from16 v5, v17

    .line 162
    if-eqz v2, :cond_5

    if-nez v5, :cond_5

    .line 163
    invoke-static/range {p0 .. p2}, Landroidx/media2/exoplayer/external/metadata/scte35/TimeSignalCommand;->parseSpliceTime(Landroidx/media2/exoplayer/external/util/ParsableByteArray;J)J

    move-result-wide v6

    goto :goto_5

    .line 162
    :cond_5
    nop

    .line 165
    :goto_5
    if-nez v2, :cond_8

    .line 166
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 167
    .local v3, "componentCount":I
    move/from16 v18, v1

    .end local v1    # "outOfNetworkIndicator":Z
    .local v18, "outOfNetworkIndicator":Z
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v8, v1

    .line 168
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    if-ge v1, v3, :cond_7

    .line 169
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v29

    .line 170
    .local v29, "componentTag":I
    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    .line 171
    .local v22, "componentSplicePts":J
    if-nez v5, :cond_6

    .line 172
    invoke-static/range {p0 .. p2}, Landroidx/media2/exoplayer/external/metadata/scte35/TimeSignalCommand;->parseSpliceTime(Landroidx/media2/exoplayer/external/util/ParsableByteArray;J)J

    move-result-wide v22

    move/from16 v30, v2

    move/from16 v31, v3

    move-wide/from16 v2, v22

    goto :goto_7

    .line 171
    :cond_6
    move/from16 v30, v2

    move/from16 v31, v3

    move-wide/from16 v2, v22

    .line 174
    .end local v3    # "componentCount":I
    .end local v22    # "componentSplicePts":J
    .local v2, "componentSplicePts":J
    .local v30, "programSpliceFlag":Z
    .local v31, "componentCount":I
    :goto_7
    move/from16 v32, v5

    .end local v5    # "spliceImmediateFlag":Z
    .local v32, "spliceImmediateFlag":Z
    new-instance v5, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand$ComponentSplice;

    .line 175
    invoke-virtual {v0, v2, v3}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v26

    const/16 v28, 0x0

    move-object/from16 v22, v5

    move/from16 v23, v29

    move-wide/from16 v24, v2

    invoke-direct/range {v22 .. v28}, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand$ComponentSplice;-><init>(IJJLandroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand$1;)V

    .line 174
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    .end local v2    # "componentSplicePts":J
    .end local v29    # "componentTag":I
    add-int/lit8 v1, v1, 0x1

    move/from16 v2, v30

    move/from16 v3, v31

    move/from16 v5, v32

    goto :goto_6

    .end local v30    # "programSpliceFlag":Z
    .end local v31    # "componentCount":I
    .end local v32    # "spliceImmediateFlag":Z
    .local v2, "programSpliceFlag":Z
    .restart local v3    # "componentCount":I
    .restart local v5    # "spliceImmediateFlag":Z
    :cond_7
    move/from16 v30, v2

    move/from16 v31, v3

    move/from16 v32, v5

    .end local v2    # "programSpliceFlag":Z
    .end local v3    # "componentCount":I
    .end local v5    # "spliceImmediateFlag":Z
    .restart local v30    # "programSpliceFlag":Z
    .restart local v31    # "componentCount":I
    .restart local v32    # "spliceImmediateFlag":Z
    goto :goto_8

    .line 165
    .end local v18    # "outOfNetworkIndicator":Z
    .end local v30    # "programSpliceFlag":Z
    .end local v31    # "componentCount":I
    .end local v32    # "spliceImmediateFlag":Z
    .local v1, "outOfNetworkIndicator":Z
    .restart local v2    # "programSpliceFlag":Z
    .restart local v5    # "spliceImmediateFlag":Z
    :cond_8
    move/from16 v18, v1

    move/from16 v30, v2

    move/from16 v32, v5

    .line 178
    .end local v1    # "outOfNetworkIndicator":Z
    .end local v2    # "programSpliceFlag":Z
    .end local v5    # "spliceImmediateFlag":Z
    .restart local v18    # "outOfNetworkIndicator":Z
    .restart local v30    # "programSpliceFlag":Z
    .restart local v32    # "spliceImmediateFlag":Z
    :goto_8
    if-eqz v4, :cond_a

    .line 179
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    int-to-long v1, v1

    .line 180
    .local v1, "firstByte":J
    const-wide/16 v22, 0x80

    and-long v22, v1, v22

    const-wide/16 v24, 0x0

    cmp-long v3, v22, v24

    if-eqz v3, :cond_9

    const/16 v16, 0x1

    goto :goto_9

    :cond_9
    const/16 v16, 0x0

    :goto_9
    move/from16 v12, v16

    .line 181
    const-wide/16 v16, 0x1

    and-long v16, v1, v16

    const/16 v3, 0x20

    shl-long v16, v16, v3

    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v22

    or-long v16, v16, v22

    .line 182
    .local v16, "breakDuration90khz":J
    const-wide/16 v22, 0x3e8

    mul-long v22, v22, v16

    const-wide/16 v24, 0x5a

    div-long v13, v22, v24

    goto :goto_a

    .line 178
    .end local v1    # "firstByte":J
    .end local v16    # "breakDuration90khz":J
    :cond_a
    nop

    .line 184
    :goto_a
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    .line 185
    .end local v9    # "uniqueProgramId":I
    .local v1, "uniqueProgramId":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 186
    .end local v10    # "availNum":I
    .local v2, "availNum":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    move/from16 v27, v1

    move/from16 v28, v2

    move/from16 v29, v3

    move-object/from16 v23, v8

    move/from16 v24, v12

    move-wide/from16 v25, v13

    move/from16 v22, v18

    move-wide v14, v6

    goto :goto_b

    .line 156
    .end local v2    # "availNum":I
    .end local v15    # "headerByte":I
    .end local v18    # "outOfNetworkIndicator":Z
    .end local v30    # "programSpliceFlag":Z
    .end local v32    # "spliceImmediateFlag":Z
    .local v1, "outOfNetworkIndicator":Z
    .local v4, "programSpliceFlag":Z
    .restart local v5    # "spliceImmediateFlag":Z
    .restart local v9    # "uniqueProgramId":I
    .restart local v10    # "availNum":I
    :cond_b
    move/from16 v22, v1

    move/from16 v30, v4

    move/from16 v32, v5

    move-object/from16 v23, v8

    move/from16 v27, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v24, v12

    move-wide/from16 v25, v13

    move-wide v14, v6

    .line 188
    .end local v1    # "outOfNetworkIndicator":Z
    .end local v4    # "programSpliceFlag":Z
    .end local v5    # "spliceImmediateFlag":Z
    .end local v6    # "programSplicePts":J
    .end local v8    # "componentSplices":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand$ComponentSplice;>;"
    .end local v9    # "uniqueProgramId":I
    .end local v10    # "availNum":I
    .end local v11    # "availsExpected":I
    .end local v12    # "autoReturn":Z
    .end local v13    # "breakDurationUs":J
    .local v14, "programSplicePts":J
    .local v22, "outOfNetworkIndicator":Z
    .local v23, "componentSplices":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand$ComponentSplice;>;"
    .local v24, "autoReturn":Z
    .local v25, "breakDurationUs":J
    .local v27, "uniqueProgramId":I
    .local v28, "availNum":I
    .local v29, "availsExpected":I
    .restart local v30    # "programSpliceFlag":Z
    .restart local v32    # "spliceImmediateFlag":Z
    :goto_b
    new-instance v31, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand;

    move-object/from16 v1, v31

    .line 190
    invoke-virtual {v0, v14, v15}, Landroidx/media2/exoplayer/external/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v10

    move-wide/from16 v2, v19

    move/from16 v4, v21

    move/from16 v5, v22

    move/from16 v6, v30

    move/from16 v7, v32

    move-wide v8, v14

    move-object/from16 v12, v23

    move/from16 v13, v24

    move-wide/from16 v33, v14

    .end local v14    # "programSplicePts":J
    .local v33, "programSplicePts":J
    move-wide/from16 v14, v25

    move/from16 v16, v27

    move/from16 v17, v28

    move/from16 v18, v29

    invoke-direct/range {v1 .. v18}, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand;-><init>(JZZZZJJLjava/util/List;ZJIII)V

    .line 188
    return-object v31
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 226
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand;->spliceEventId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 227
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand;->spliceEventCancelIndicator:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 228
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand;->outOfNetworkIndicator:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 229
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand;->programSpliceFlag:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 230
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand;->spliceImmediateFlag:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 231
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand;->programSplicePts:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 232
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand;->programSplicePlaybackPositionUs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 233
    iget-object v0, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand;->componentSpliceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 234
    .local v0, "componentSpliceListSize":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 236
    iget-object v2, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand;->componentSpliceList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand$ComponentSplice;

    invoke-virtual {v2, p1}, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand$ComponentSplice;->writeToParcel(Landroid/os/Parcel;)V

    .line 235
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 238
    .end local v1    # "i":I
    :cond_0
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand;->autoReturn:Z

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 239
    iget-wide v1, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand;->breakDurationUs:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 240
    iget v1, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand;->uniqueProgramId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    iget v1, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand;->availNum:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    iget v1, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand;->availsExpected:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    return-void
.end method
