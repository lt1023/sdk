.class public final Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$CodeBook;
.super Ljava/lang/Object;
.source "VorbisUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CodeBook"
.end annotation


# instance fields
.field public final dimensions:I

.field public final entries:I

.field public final isOrdered:Z

.field public final lengthMap:[J

.field public final lookupType:I


# direct methods
.method public constructor <init>(II[JIZ)V
    .locals 0
    .param p1, "dimensions"    # I
    .param p2, "entries"    # I
    .param p3, "lengthMap"    # [J
    .param p4, "lookupType"    # I
    .param p5, "isOrdered"    # Z

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$CodeBook;->dimensions:I

    .line 429
    iput p2, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$CodeBook;->entries:I

    .line 430
    iput-object p3, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$CodeBook;->lengthMap:[J

    .line 431
    iput p4, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$CodeBook;->lookupType:I

    .line 432
    iput-boolean p5, p0, Landroidx/media2/exoplayer/external/extractor/ogg/VorbisUtil$CodeBook;->isOrdered:Z

    .line 433
    return-void
.end method
