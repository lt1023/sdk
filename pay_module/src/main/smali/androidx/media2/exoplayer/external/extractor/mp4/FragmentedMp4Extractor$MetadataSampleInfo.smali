.class final Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;
.super Ljava/lang/Object;
.source "FragmentedMp4Extractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MetadataSampleInfo"
.end annotation


# instance fields
.field public final presentationTimeDeltaUs:J

.field public final size:I


# direct methods
.method public constructor <init>(JI)V
    .locals 0
    .param p1, "presentationTimeDeltaUs"    # J
    .param p3, "size"    # I

    .line 1434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1435
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->presentationTimeDeltaUs:J

    .line 1436
    iput p3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->size:I

    .line 1437
    return-void
.end method
