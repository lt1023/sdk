.class final Landroidx/media2/exoplayer/external/extractor/ts/TsBinarySearchSeeker;
.super Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker;
.source "TsBinarySearchSeeker.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;
    }
.end annotation


# static fields
.field private static final MINIMUM_SEARCH_RANGE_BYTES:I = 0x3ac

.field private static final SEEK_TOLERANCE_US:J = 0x186a0L

.field private static final TIMESTAMP_SEARCH_BYTES:I = 0x1b8a0


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/util/TimestampAdjuster;JJI)V
    .locals 19
    .param p1, "pcrTimestampAdjuster"    # Landroidx/media2/exoplayer/external/util/TimestampAdjuster;
    .param p2, "streamDurationUs"    # J
    .param p4, "inputLength"    # J
    .param p6, "pcrPid"    # I

    .line 48
    new-instance v1, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$DefaultSeekTimestampConverter;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$DefaultSeekTimestampConverter;-><init>()V

    new-instance v2, Landroidx/media2/exoplayer/external/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;

    move-object/from16 v15, p1

    move/from16 v13, p6

    invoke-direct {v2, v13, v15}, Landroidx/media2/exoplayer/external/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;-><init>(ILandroidx/media2/exoplayer/external/util/TimestampAdjuster;)V

    const-wide/16 v3, 0x1

    add-long v7, p2, v3

    const-wide/16 v5, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v16, 0xbc

    const/16 v18, 0x3ac

    move-object/from16 v0, p0

    move-wide/from16 v3, p2

    move-wide/from16 v11, p4

    move-wide/from16 v13, v16

    move/from16 v15, v18

    invoke-direct/range {v0 .. v15}, Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker;-><init>(Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$SeekTimestampConverter;Landroidx/media2/exoplayer/external/extractor/BinarySearchSeeker$TimestampSeeker;JJJJJJI)V

    .line 58
    return-void
.end method