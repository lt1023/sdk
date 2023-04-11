.class final Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractorHolder;
.super Ljava/lang/Object;
.source "ProgressiveMediaPeriod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ExtractorHolder"
.end annotation


# instance fields
.field private extractor:Landroidx/media2/exoplayer/external/extractor/Extractor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final extractors:[Landroidx/media2/exoplayer/external/extractor/Extractor;


# direct methods
.method public constructor <init>([Landroidx/media2/exoplayer/external/extractor/Extractor;)V
    .locals 0
    .param p1, "extractors"    # [Landroidx/media2/exoplayer/external/extractor/Extractor;

    .line 1031
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1032
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractorHolder;->extractors:[Landroidx/media2/exoplayer/external/extractor/Extractor;

    .line 1033
    return-void
.end method


# virtual methods
.method public release()V
    .locals 1

    .line 1074
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractorHolder;->extractor:Landroidx/media2/exoplayer/external/extractor/Extractor;

    if-eqz v0, :cond_0

    .line 1075
    invoke-interface {v0}, Landroidx/media2/exoplayer/external/extractor/Extractor;->release()V

    .line 1076
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractorHolder;->extractor:Landroidx/media2/exoplayer/external/extractor/Extractor;

    goto :goto_0

    .line 1074
    :cond_0
    nop

    .line 1078
    :goto_0
    return-void
.end method

.method public selectExtractor(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;Landroid/net/Uri;)Landroidx/media2/exoplayer/external/extractor/Extractor;
    .locals 5
    .param p1, "input"    # Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    .param p2, "output"    # Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;
    .param p3, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1050
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractorHolder;->extractor:Landroidx/media2/exoplayer/external/extractor/Extractor;

    if-eqz v0, :cond_0

    .line 1051
    return-object v0

    .line 1053
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractorHolder;->extractors:[Landroidx/media2/exoplayer/external/extractor/Extractor;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 1055
    .local v3, "extractor":Landroidx/media2/exoplayer/external/extractor/Extractor;
    :try_start_0
    invoke-interface {v3, p1}, Landroidx/media2/exoplayer/external/extractor/Extractor;->sniff(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1056
    iput-object v3, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractorHolder;->extractor:Landroidx/media2/exoplayer/external/extractor/Extractor;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1062
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->resetPeekPosition()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->resetPeekPosition()V

    throw v0

    .line 1059
    :catch_0
    move-exception v4

    .line 1062
    :cond_1
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->resetPeekPosition()V

    .line 1063
    nop

    .line 1053
    .end local v3    # "extractor":Landroidx/media2/exoplayer/external/extractor/Extractor;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1065
    :cond_2
    :goto_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractorHolder;->extractor:Landroidx/media2/exoplayer/external/extractor/Extractor;

    if-eqz v0, :cond_3

    .line 1069
    invoke-interface {v0, p2}, Landroidx/media2/exoplayer/external/extractor/Extractor;->init(Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;)V

    .line 1070
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractorHolder;->extractor:Landroidx/media2/exoplayer/external/extractor/Extractor;

    return-object v0

    .line 1066
    :cond_3
    new-instance v0, Landroidx/media2/exoplayer/external/source/UnrecognizedInputFormatException;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractorHolder;->extractors:[Landroidx/media2/exoplayer/external/extractor/Extractor;

    .line 1067
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Util;->getCommaDelimitedSimpleClassNames([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "None of the available extractors ("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") could read the stream."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Landroidx/media2/exoplayer/external/source/UnrecognizedInputFormatException;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    throw v0

    return-void
.end method
