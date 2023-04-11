.class final Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;
.super Ljava/lang/Object;
.source "ProgressiveMediaPeriod.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/upstream/Loader$Loadable;
.implements Landroidx/media2/exoplayer/external/source/IcyDataSource$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ExtractingLoadable"
.end annotation


# instance fields
.field private final dataSource:Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

.field private dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

.field private final extractorHolder:Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractorHolder;

.field private final extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

.field private icyTrackOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private length:J

.field private volatile loadCanceled:Z

.field private final loadCondition:Landroidx/media2/exoplayer/external/util/ConditionVariable;

.field private pendingExtractorSeek:Z

.field private final positionHolder:Landroidx/media2/exoplayer/external/extractor/PositionHolder;

.field private seekTimeUs:J

.field private seenIcyMetadata:Z

.field final synthetic this$0:Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;Landroid/net/Uri;Landroidx/media2/exoplayer/external/upstream/DataSource;Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractorHolder;Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;Landroidx/media2/exoplayer/external/util/ConditionVariable;)V
    .locals 2
    .param p1, "this$0"    # Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "dataSource"    # Landroidx/media2/exoplayer/external/upstream/DataSource;
    .param p4, "extractorHolder"    # Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractorHolder;
    .param p5, "extractorOutput"    # Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;
    .param p6, "loadCondition"    # Landroidx/media2/exoplayer/external/util/ConditionVariable;

    .line 915
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 916
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->uri:Landroid/net/Uri;

    .line 917
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    invoke-direct {v0, p3}, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;-><init>(Landroidx/media2/exoplayer/external/upstream/DataSource;)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    .line 918
    iput-object p4, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->extractorHolder:Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractorHolder;

    .line 919
    iput-object p5, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    .line 920
    iput-object p6, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadCondition:Landroidx/media2/exoplayer/external/util/ConditionVariable;

    .line 921
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/PositionHolder;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/extractor/PositionHolder;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->positionHolder:Landroidx/media2/exoplayer/external/extractor/PositionHolder;

    .line 922
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    .line 923
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->length:J

    .line 924
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->buildDataSpec(J)Landroidx/media2/exoplayer/external/upstream/DataSpec;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    .line 925
    return-void
.end method

.method static synthetic access$100(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;)Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;

    .line 891
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    return-object v0
.end method

.method static synthetic access$200(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;)Landroidx/media2/exoplayer/external/upstream/StatsDataSource;
    .locals 1
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;

    .line 891
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    return-object v0
.end method

.method static synthetic access$300(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;)J
    .locals 2
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;

    .line 891
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    return-wide v0
.end method

.method static synthetic access$400(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;)J
    .locals 2
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;

    .line 891
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->length:J

    return-wide v0
.end method

.method static synthetic access$500(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;JJ)V
    .locals 0
    .param p0, "x0"    # Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .line 891
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->setLoadPosition(JJ)V

    return-void
.end method

.method private buildDataSpec(J)Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .locals 9
    .param p1, "position"    # J

    .line 1001
    new-instance v8, Landroidx/media2/exoplayer/external/upstream/DataSpec;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->uri:Landroid/net/Uri;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;

    .line 1005
    invoke-static {v0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->access$1200(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v4, -0x1

    const/16 v7, 0x16

    move-object v0, v8

    move-wide v2, p1

    invoke-direct/range {v0 .. v7}, Landroidx/media2/exoplayer/external/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    .line 1001
    return-object v8
.end method

.method private setLoadPosition(JJ)V
    .locals 1
    .param p1, "position"    # J
    .param p3, "timeUs"    # J

    .line 1012
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->positionHolder:Landroidx/media2/exoplayer/external/extractor/PositionHolder;

    iput-wide p1, v0, Landroidx/media2/exoplayer/external/extractor/PositionHolder;->position:J

    .line 1013
    iput-wide p3, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    .line 1014
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    .line 1015
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->seenIcyMetadata:Z

    .line 1016
    return-void
.end method


# virtual methods
.method public cancelLoad()V
    .locals 1

    .line 931
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadCanceled:Z

    .line 932
    return-void
.end method

.method public load()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 936
    const/4 v0, 0x0

    .line 937
    .local v0, "result":I
    :goto_0
    if-nez v0, :cond_8

    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadCanceled:Z

    if-nez v1, :cond_8

    .line 938
    const/4 v1, 0x0

    .line 940
    .local v1, "input":Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->positionHolder:Landroidx/media2/exoplayer/external/extractor/PositionHolder;

    iget-wide v3, v3, Landroidx/media2/exoplayer/external/extractor/PositionHolder;->position:J

    .line 941
    .local v3, "position":J
    invoke-direct {p0, v3, v4}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->buildDataSpec(J)Landroidx/media2/exoplayer/external/upstream/DataSpec;

    move-result-object v5

    iput-object v5, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    .line 942
    iget-object v5, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    iget-object v6, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    invoke-virtual {v5, v6}, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->open(Landroidx/media2/exoplayer/external/upstream/DataSpec;)J

    move-result-wide v5

    iput-wide v5, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->length:J

    .line 943
    iget-wide v5, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->length:J

    const-wide/16 v7, -0x1

    cmp-long v9, v5, v7

    if-eqz v9, :cond_0

    .line 944
    iget-wide v5, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->length:J

    add-long/2addr v5, v3

    iput-wide v5, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->length:J

    goto :goto_1

    .line 943
    :cond_0
    nop

    .line 946
    :goto_1
    iget-object v5, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    move-object v11, v5

    .line 947
    .local v11, "uri":Landroid/net/Uri;
    iget-object v5, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;

    iget-object v6, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    invoke-virtual {v6}, Landroidx/media2/exoplayer/external/upstream/StatsDataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object v6

    invoke-static {v6}, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->parse(Ljava/util/Map;)Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;

    move-result-object v6

    invoke-static {v5, v6}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->access$602(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;)Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;

    .line 948
    iget-object v5, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    .line 949
    .local v5, "extractorDataSource":Landroidx/media2/exoplayer/external/upstream/DataSource;
    iget-object v6, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;

    invoke-static {v6}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->access$600(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;)Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;

    invoke-static {v6}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->access$600(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;)Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;

    move-result-object v6

    iget v6, v6, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->metadataInterval:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 950
    new-instance v6, Landroidx/media2/exoplayer/external/source/IcyDataSource;

    iget-object v7, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    iget-object v8, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;

    invoke-static {v8}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->access$600(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;)Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;

    move-result-object v8

    iget v8, v8, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->metadataInterval:I

    invoke-direct {v6, v7, v8, p0}, Landroidx/media2/exoplayer/external/source/IcyDataSource;-><init>(Landroidx/media2/exoplayer/external/upstream/DataSource;ILandroidx/media2/exoplayer/external/source/IcyDataSource$Listener;)V

    move-object v5, v6

    .line 951
    iget-object v6, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;

    invoke-virtual {v6}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->icyTrack()Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    move-result-object v6

    iput-object v6, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->icyTrackOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    .line 952
    iget-object v6, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->icyTrackOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    invoke-static {}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->access$700()Landroidx/media2/exoplayer/external/Format;

    move-result-object v7

    invoke-interface {v6, v7}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->format(Landroidx/media2/exoplayer/external/Format;)V

    move-object v12, v5

    goto :goto_2

    .line 949
    :cond_1
    nop

    .line 954
    move-object v12, v5

    .end local v5    # "extractorDataSource":Landroidx/media2/exoplayer/external/upstream/DataSource;
    .local v12, "extractorDataSource":Landroidx/media2/exoplayer/external/upstream/DataSource;
    :goto_2
    new-instance v13, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;

    iget-wide v9, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->length:J

    move-object v5, v13

    move-object v6, v12

    move-wide v7, v3

    invoke-direct/range {v5 .. v10}, Landroidx/media2/exoplayer/external/extractor/DefaultExtractorInput;-><init>(Landroidx/media2/exoplayer/external/upstream/DataSource;JJ)V

    move-object v1, v13

    .line 955
    iget-object v5, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->extractorHolder:Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractorHolder;

    iget-object v6, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->extractorOutput:Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;

    invoke-virtual {v5, v1, v6, v11}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractorHolder;->selectExtractor(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/ExtractorOutput;Landroid/net/Uri;)Landroidx/media2/exoplayer/external/extractor/Extractor;

    move-result-object v5

    .line 956
    .local v5, "extractor":Landroidx/media2/exoplayer/external/extractor/Extractor;
    iget-boolean v6, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    if-eqz v6, :cond_2

    .line 957
    iget-wide v6, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    invoke-interface {v5, v3, v4, v6, v7}, Landroidx/media2/exoplayer/external/extractor/Extractor;->seek(JJ)V

    .line 958
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->pendingExtractorSeek:Z

    goto :goto_3

    .line 956
    :cond_2
    nop

    .line 960
    :goto_3
    if-nez v0, :cond_4

    iget-boolean v6, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadCanceled:Z

    if-nez v6, :cond_4

    .line 961
    iget-object v6, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadCondition:Landroidx/media2/exoplayer/external/util/ConditionVariable;

    invoke-virtual {v6}, Landroidx/media2/exoplayer/external/util/ConditionVariable;->block()V

    .line 962
    iget-object v6, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->positionHolder:Landroidx/media2/exoplayer/external/extractor/PositionHolder;

    invoke-interface {v5, v1, v6}, Landroidx/media2/exoplayer/external/extractor/Extractor;->read(Landroidx/media2/exoplayer/external/extractor/ExtractorInput;Landroidx/media2/exoplayer/external/extractor/PositionHolder;)I

    move-result v6

    move v0, v6

    .line 963
    invoke-interface {v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    iget-object v8, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;

    invoke-static {v8}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->access$800(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;)J

    move-result-wide v8

    add-long/2addr v8, v3

    cmp-long v10, v6, v8

    if-lez v10, :cond_3

    .line 964
    invoke-interface {v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    move-wide v3, v6

    .line 965
    iget-object v6, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->loadCondition:Landroidx/media2/exoplayer/external/util/ConditionVariable;

    invoke-virtual {v6}, Landroidx/media2/exoplayer/external/util/ConditionVariable;->close()Z

    .line 966
    iget-object v6, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;

    invoke-static {v6}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->access$1000(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;

    invoke-static {v7}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->access$900(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 963
    :cond_3
    goto :goto_3

    .line 960
    :cond_4
    nop

    .line 970
    .end local v3    # "position":J
    .end local v5    # "extractor":Landroidx/media2/exoplayer/external/extractor/Extractor;
    .end local v11    # "uri":Landroid/net/Uri;
    .end local v12    # "extractorDataSource":Landroidx/media2/exoplayer/external/upstream/DataSource;
    if-ne v0, v2, :cond_5

    .line 971
    const/4 v0, 0x0

    goto :goto_4

    .line 972
    :cond_5
    nop

    .line 973
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->positionHolder:Landroidx/media2/exoplayer/external/extractor/PositionHolder;

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    iput-wide v3, v2, Landroidx/media2/exoplayer/external/extractor/PositionHolder;->position:J

    .line 975
    :goto_4
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/Util;->closeQuietly(Landroidx/media2/exoplayer/external/upstream/DataSource;)V

    .line 976
    nop

    .line 977
    .end local v1    # "input":Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    goto/16 :goto_0

    .line 970
    .restart local v1    # "input":Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    :catchall_0
    move-exception v3

    if-eq v0, v2, :cond_7

    .line 972
    if-eqz v1, :cond_6

    .line 973
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->positionHolder:Landroidx/media2/exoplayer/external/extractor/PositionHolder;

    invoke-interface {v1}, Landroidx/media2/exoplayer/external/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    iput-wide v4, v2, Landroidx/media2/exoplayer/external/extractor/PositionHolder;->position:J

    goto :goto_5

    .line 972
    :cond_6
    goto :goto_5

    .line 971
    :cond_7
    const/4 v0, 0x0

    .line 975
    :goto_5
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->dataSource:Landroidx/media2/exoplayer/external/upstream/StatsDataSource;

    invoke-static {v2}, Landroidx/media2/exoplayer/external/util/Util;->closeQuietly(Landroidx/media2/exoplayer/external/upstream/DataSource;)V

    throw v3

    .line 937
    .end local v1    # "input":Landroidx/media2/exoplayer/external/extractor/ExtractorInput;
    :cond_8
    nop

    .line 978
    return-void
.end method

.method public onIcyMetadata(Landroidx/media2/exoplayer/external/util/ParsableByteArray;)V
    .locals 9
    .param p1, "metadata"    # Landroidx/media2/exoplayer/external/util/ParsableByteArray;

    .line 987
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->seenIcyMetadata:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->this$0:Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;->access$1100(Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod;)J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->seekTimeUs:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_0
    move-wide v3, v0

    .line 988
    .local v3, "timeUs":J
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    .line 989
    .local v0, "length":I
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->icyTrackOutput:Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/extractor/TrackOutput;

    .line 990
    .local v1, "icyTrackOutput":Landroidx/media2/exoplayer/external/extractor/TrackOutput;
    invoke-interface {v1, p1, v0}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleData(Landroidx/media2/exoplayer/external/util/ParsableByteArray;I)V

    .line 991
    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v1

    move v6, v0

    invoke-interface/range {v2 .. v8}, Landroidx/media2/exoplayer/external/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media2/exoplayer/external/extractor/TrackOutput$CryptoData;)V

    .line 993
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/source/ProgressiveMediaPeriod$ExtractingLoadable;->seenIcyMetadata:Z

    .line 994
    return-void
.end method
