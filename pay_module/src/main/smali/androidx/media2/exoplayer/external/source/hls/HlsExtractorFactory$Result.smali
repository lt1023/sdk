.class public final Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory$Result;
.super Ljava/lang/Object;
.source "HlsExtractorFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field public final extractor:Landroidx/media2/exoplayer/external/extractor/Extractor;

.field public final isPackedAudioExtractor:Z

.field public final isReusable:Z


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/extractor/Extractor;ZZ)V
    .locals 0
    .param p1, "extractor"    # Landroidx/media2/exoplayer/external/extractor/Extractor;
    .param p2, "isPackedAudioExtractor"    # Z
    .param p3, "isReusable"    # Z

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory$Result;->extractor:Landroidx/media2/exoplayer/external/extractor/Extractor;

    .line 62
    iput-boolean p2, p0, Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory$Result;->isPackedAudioExtractor:Z

    .line 63
    iput-boolean p3, p0, Landroidx/media2/exoplayer/external/source/hls/HlsExtractorFactory$Result;->isReusable:Z

    .line 64
    return-void
.end method
