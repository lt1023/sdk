.class final Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader$MasterElement;
.super Ljava/lang/Object;
.source "DefaultEbmlReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MasterElement"
.end annotation


# instance fields
.field private final elementEndPosition:J

.field private final elementId:I


# direct methods
.method private constructor <init>(IJ)V
    .locals 0
    .param p1, "elementId"    # I
    .param p2, "elementEndPosition"    # J

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader$MasterElement;->elementId:I

    .line 261
    iput-wide p2, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader$MasterElement;->elementEndPosition:J

    .line 262
    return-void
.end method

.method synthetic constructor <init>(IJLandroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # J
    .param p4, "x2"    # Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader$1;

    .line 254
    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader$MasterElement;-><init>(IJ)V

    return-void
.end method

.method static synthetic access$000(Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader$MasterElement;)J
    .locals 2
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader$MasterElement;

    .line 254
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader$MasterElement;->elementEndPosition:J

    return-wide v0
.end method

.method static synthetic access$100(Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader$MasterElement;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader$MasterElement;

    .line 254
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mkv/DefaultEbmlReader$MasterElement;->elementId:I

    return v0
.end method