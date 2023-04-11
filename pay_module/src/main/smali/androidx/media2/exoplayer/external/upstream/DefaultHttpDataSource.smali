.class public Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;
.super Landroidx/media2/exoplayer/external/upstream/BaseDataSource;
.source "DefaultHttpDataSource.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/upstream/HttpDataSource;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final CONTENT_RANGE_HEADER:Ljava/util/regex/Pattern;

.field public static final DEFAULT_CONNECT_TIMEOUT_MILLIS:I = 0x1f40

.field public static final DEFAULT_READ_TIMEOUT_MILLIS:I = 0x1f40

.field private static final HTTP_STATUS_PERMANENT_REDIRECT:I = 0x134

.field private static final HTTP_STATUS_TEMPORARY_REDIRECT:I = 0x133

.field private static final MAX_BYTES_TO_DRAIN:J = 0x800L

.field private static final MAX_REDIRECTS:I = 0x14

.field private static final TAG:Ljava/lang/String; = "DefaultHttpDataSource"

.field private static final skipBufferReference:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[B>;"
        }
    .end annotation
.end field


# instance fields
.field private final allowCrossProtocolRedirects:Z

.field private bytesRead:J

.field private bytesSkipped:J

.field private bytesToRead:J

.field private bytesToSkip:J

.field private final connectTimeoutMillis:I

.field private connection:Ljava/net/HttpURLConnection;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private contentTypePredicate:Landroidx/media2/exoplayer/external/util/Predicate;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media2/exoplayer/external/util/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final defaultRequestProperties:Landroidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private inputStream:Ljava/io/InputStream;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private opened:Z

.field private final readTimeoutMillis:I

.field private final requestProperties:Landroidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties;

.field private final userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    const-string v0, "^bytes (\\d+)-(\\d+)/(\\d+)$"

    .line 76
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->CONTENT_RANGE_HEADER:Ljava/util/regex/Pattern;

    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->skipBufferReference:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "userAgent"    # Ljava/lang/String;

    .line 100
    const/16 v0, 0x1f40

    invoke-direct {p0, p1, v0, v0}, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;-><init>(Ljava/lang/String;II)V

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 6
    .param p1, "userAgent"    # Ljava/lang/String;
    .param p2, "connectTimeoutMillis"    # I
    .param p3, "readTimeoutMillis"    # I

    .line 111
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;-><init>(Ljava/lang/String;IIZLandroidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZLandroidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties;)V
    .locals 1
    .param p1, "userAgent"    # Ljava/lang/String;
    .param p2, "connectTimeoutMillis"    # I
    .param p3, "readTimeoutMillis"    # I
    .param p4, "allowCrossProtocolRedirects"    # Z
    .param p5, "defaultRequestProperties"    # Landroidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 137
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/upstream/BaseDataSource;-><init>(Z)V

    .line 138
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->userAgent:Ljava/lang/String;

    .line 139
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->requestProperties:Landroidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties;

    .line 140
    iput p2, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->connectTimeoutMillis:I

    .line 141
    iput p3, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->readTimeoutMillis:I

    .line 142
    iput-boolean p4, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->allowCrossProtocolRedirects:Z

    .line 143
    iput-object p5, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->defaultRequestProperties:Landroidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties;

    .line 144
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/util/Predicate;)V
    .locals 1
    .param p1, "userAgent"    # Ljava/lang/String;
    .param p2    # Landroidx/media2/exoplayer/external/util/Predicate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/util/Predicate<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 156
    .local p2, "contentTypePredicate":Landroidx/media2/exoplayer/external/util/Predicate;, "Landroidx/media2/exoplayer/external/util/Predicate<Ljava/lang/String;>;"
    const/16 v0, 0x1f40

    invoke-direct {p0, p1, p2, v0, v0}, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;-><init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/util/Predicate;II)V

    .line 161
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/util/Predicate;II)V
    .locals 7
    .param p1, "userAgent"    # Ljava/lang/String;
    .param p2    # Landroidx/media2/exoplayer/external/util/Predicate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "connectTimeoutMillis"    # I
    .param p4, "readTimeoutMillis"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/util/Predicate<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 181
    .local p2, "contentTypePredicate":Landroidx/media2/exoplayer/external/util/Predicate;, "Landroidx/media2/exoplayer/external/util/Predicate<Ljava/lang/String;>;"
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;-><init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/util/Predicate;IIZLandroidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties;)V

    .line 188
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/util/Predicate;IIZLandroidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties;)V
    .locals 1
    .param p1, "userAgent"    # Ljava/lang/String;
    .param p2    # Landroidx/media2/exoplayer/external/util/Predicate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "connectTimeoutMillis"    # I
    .param p4, "readTimeoutMillis"    # I
    .param p5, "allowCrossProtocolRedirects"    # Z
    .param p6, "defaultRequestProperties"    # Landroidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/media2/exoplayer/external/util/Predicate<",
            "Ljava/lang/String;",
            ">;IIZ",
            "Landroidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 215
    .local p2, "contentTypePredicate":Landroidx/media2/exoplayer/external/util/Predicate;, "Landroidx/media2/exoplayer/external/util/Predicate<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/upstream/BaseDataSource;-><init>(Z)V

    .line 216
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->userAgent:Ljava/lang/String;

    .line 217
    iput-object p2, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->contentTypePredicate:Landroidx/media2/exoplayer/external/util/Predicate;

    .line 218
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->requestProperties:Landroidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties;

    .line 219
    iput p3, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->connectTimeoutMillis:I

    .line 220
    iput p4, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->readTimeoutMillis:I

    .line 221
    iput-boolean p5, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->allowCrossProtocolRedirects:Z

    .line 222
    iput-object p6, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->defaultRequestProperties:Landroidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties;

    .line 223
    return-void
.end method

.method private closeConnectionQuietly()V
    .locals 3

    .line 746
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 748
    nop

    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 751
    nop

    goto :goto_0

    .line 749
    :catch_0
    move-exception v0

    nop

    .line 750
    .local v0, "e":Ljava/lang/Exception;
    nop

    const-string v1, "DefaultHttpDataSource"

    const-string v2, "Unexpected error while disconnecting"

    invoke-static {v1, v2, v0}, Landroidx/media2/exoplayer/external/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 752
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    nop

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    goto :goto_1

    .line 746
    :cond_0
    nop

    .line 754
    :goto_1
    nop

    return-void
.end method

.method private static getContentLength(Ljava/net/HttpURLConnection;)J
    .locals 10
    .param p0, "connection"    # Ljava/net/HttpURLConnection;

    .line 584
    const-wide/16 v0, -0x1

    .line 585
    .local v0, "contentLength":J
    const-string v2, "Content-Length"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 586
    .local v2, "contentLengthHeader":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 588
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v3

    .line 591
    goto :goto_0

    .line 589
    :catch_0
    move-exception v3

    .line 590
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string v4, "DefaultHttpDataSource"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Unexpected Content-Length ["

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroidx/media2/exoplayer/external/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 586
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    nop

    .line 593
    :goto_0
    const-string v3, "Content-Range"

    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 594
    .local v3, "contentRangeHeader":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 595
    sget-object v4, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->CONTENT_RANGE_HEADER:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 596
    .local v4, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 598
    const/4 v5, 0x2

    .line 599
    :try_start_1
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    .line 600
    .local v5, "contentLengthFromRange":J
    const-wide/16 v7, 0x0

    cmp-long v9, v0, v7

    if-gez v9, :cond_1

    .line 603
    move-wide v0, v5

    goto :goto_1

    .line 604
    :cond_1
    cmp-long v7, v0, v5

    if-eqz v7, :cond_2

    .line 609
    const-string v7, "DefaultHttpDataSource"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x1a

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Inconsistent headers ["

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "] ["

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-wide v0, v7

    goto :goto_1

    .line 604
    :cond_2
    nop

    .line 615
    .end local v5    # "contentLengthFromRange":J
    :goto_1
    goto :goto_2

    .line 613
    :catch_1
    move-exception v5

    .line 614
    .local v5, "e":Ljava/lang/NumberFormatException;
    const-string v6, "DefaultHttpDataSource"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1b

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Unexpected Content-Range ["

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroidx/media2/exoplayer/external/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 596
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    goto :goto_2

    .line 594
    .end local v4    # "matcher":Ljava/util/regex/Matcher;
    :cond_4
    nop

    .line 618
    :goto_2
    return-wide v0
.end method

.method private static handleRedirect(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;
    .locals 6
    .param p0, "originalUrl"    # Ljava/net/URL;
    .param p1, "location"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 557
    if-eqz p1, :cond_2

    .line 561
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 563
    .local v0, "url":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 564
    .local v1, "protocol":Ljava/lang/String;
    const-string v2, "https"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "http"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 565
    new-instance v2, Ljava/net/ProtocolException;

    const-string v3, "Unsupported protocol redirect: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    :goto_0
    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 564
    :cond_1
    nop

    .line 574
    return-object v0

    .line 558
    .end local v0    # "url":Ljava/net/URL;
    .end local v1    # "protocol":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Null location redirect"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private makeConnection(Landroidx/media2/exoplayer/external/upstream/DataSpec;)Ljava/net/HttpURLConnection;
    .locals 29
    .param p1, "dataSpec"    # Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 419
    move-object/from16 v0, p1

    new-instance v2, Ljava/net/URL;

    iget-object v1, v0, Landroidx/media2/exoplayer/external/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 420
    .local v2, "url":Ljava/net/URL;
    iget v12, v0, Landroidx/media2/exoplayer/external/upstream/DataSpec;->httpMethod:I

    .line 421
    .local v12, "httpMethod":I
    iget-object v13, v0, Landroidx/media2/exoplayer/external/upstream/DataSpec;->httpBody:[B

    .line 422
    .local v13, "httpBody":[B
    iget-wide v14, v0, Landroidx/media2/exoplayer/external/upstream/DataSpec;->position:J

    .line 423
    .local v14, "position":J
    iget-wide v10, v0, Landroidx/media2/exoplayer/external/upstream/DataSpec;->length:J

    .line 424
    .local v10, "length":J
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/upstream/DataSpec;->isFlagSet(I)Z

    move-result v25

    .line 425
    .local v25, "allowGzip":Z
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/upstream/DataSpec;->isFlagSet(I)Z

    move-result v26

    .line 427
    .local v26, "allowIcyMetadata":Z
    move-object/from16 v9, p0

    iget-boolean v4, v9, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->allowCrossProtocolRedirects:Z

    if-nez v4, :cond_0

    .line 430
    const/16 v16, 0x1

    move-object/from16 v1, p0

    move v3, v12

    move-object v4, v13

    move-wide v5, v14

    move-wide v7, v10

    move/from16 v9, v25

    move-wide/from16 v27, v10

    .end local v10    # "length":J
    .local v27, "length":J
    move/from16 v10, v26

    move/from16 v11, v16

    invoke-direct/range {v1 .. v11}, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->makeConnection(Ljava/net/URL;I[BJJZZZ)Ljava/net/HttpURLConnection;

    move-result-object v1

    return-object v1

    .line 442
    .end local v27    # "length":J
    .restart local v10    # "length":J
    :cond_0
    move-wide/from16 v27, v10

    .end local v10    # "length":J
    .restart local v27    # "length":J
    const/4 v4, 0x0

    .line 443
    .local v4, "redirectCount":I
    :goto_0
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "redirectCount":I
    .local v5, "redirectCount":I
    const/16 v6, 0x14

    if-gt v4, v6, :cond_6

    .line 444
    const/16 v24, 0x0

    .line 445
    move-wide v6, v14

    .end local v14    # "position":J
    .local v6, "position":J
    move-object/from16 v14, p0

    move-object v15, v2

    move/from16 v16, v12

    move-object/from16 v17, v13

    move-wide/from16 v18, v6

    move-wide/from16 v20, v27

    move/from16 v22, v25

    move/from16 v23, v26

    invoke-direct/range {v14 .. v24}, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->makeConnection(Ljava/net/URL;I[BJJZZZ)Ljava/net/HttpURLConnection;

    move-result-object v4

    .line 454
    .local v4, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    .line 455
    .local v8, "responseCode":I
    const-string v9, "Location"

    invoke-virtual {v4, v9}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 456
    .local v9, "location":Ljava/lang/String;
    const/16 v10, 0x12f

    const/16 v11, 0x12e

    const/16 v14, 0x12d

    const/16 v15, 0x12c

    if-eq v12, v1, :cond_2

    const/4 v1, 0x3

    if-ne v12, v1, :cond_1

    goto :goto_1

    :cond_1
    goto :goto_2

    :cond_2
    :goto_1
    if-eq v8, v15, :cond_5

    if-eq v8, v14, :cond_5

    if-eq v8, v11, :cond_5

    if-eq v8, v10, :cond_5

    const/16 v1, 0x133

    if-eq v8, v1, :cond_5

    const/16 v1, 0x134

    if-ne v8, v1, :cond_1

    goto :goto_3

    .line 465
    :goto_2
    if-ne v12, v3, :cond_4

    if-eq v8, v15, :cond_3

    if-eq v8, v14, :cond_3

    if-eq v8, v11, :cond_3

    if-ne v8, v10, :cond_4

    .line 471
    :cond_3
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 472
    const/4 v1, 0x1

    .line 473
    .end local v12    # "httpMethod":I
    .local v1, "httpMethod":I
    const/4 v10, 0x0

    .line 474
    .end local v13    # "httpBody":[B
    .local v10, "httpBody":[B
    invoke-static {v2, v9}, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->handleRedirect(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    move v12, v1

    move-object v13, v10

    goto :goto_4

    .line 465
    .end local v1    # "httpMethod":I
    .end local v10    # "httpBody":[B
    .restart local v12    # "httpMethod":I
    .restart local v13    # "httpBody":[B
    :cond_4
    nop

    .line 476
    return-object v4

    .line 456
    :cond_5
    :goto_3
    nop

    .line 463
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 464
    invoke-static {v2, v9}, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->handleRedirect(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    move-object v2, v1

    .line 478
    .end local v4    # "connection":Ljava/net/HttpURLConnection;
    .end local v8    # "responseCode":I
    .end local v9    # "location":Ljava/lang/String;
    :goto_4
    move v4, v5

    move-wide v14, v6

    const/4 v1, 0x1

    goto :goto_0

    .line 481
    .end local v6    # "position":J
    .restart local v14    # "position":J
    :cond_6
    move-wide v6, v14

    .end local v14    # "position":J
    .restart local v6    # "position":J
    new-instance v1, Ljava/net/NoRouteToHostException;

    const/16 v3, 0x1f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Too many redirects: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v1

    return-void
.end method

.method private makeConnection(Ljava/net/URL;I[BJJZZZ)Ljava/net/HttpURLConnection;
    .locals 11
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "httpMethod"    # I
    .param p3, "httpBody"    # [B
    .param p4, "position"    # J
    .param p6, "length"    # J
    .param p8, "allowGzip"    # Z
    .param p9, "allowIcyMetadata"    # Z
    .param p10, "followRedirects"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 506
    move-object v0, p0

    move-object v1, p3

    move-wide v2, p4

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    .line 507
    .local v4, "connection":Ljava/net/HttpURLConnection;
    iget v5, v0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->connectTimeoutMillis:I

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 508
    iget v5, v0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->readTimeoutMillis:I

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 509
    iget-object v5, v0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->defaultRequestProperties:Landroidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties;

    if-eqz v5, :cond_1

    .line 510
    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties;->getSnapshot()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 511
    .local v6, "property":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    .end local v6    # "property":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 510
    :cond_0
    goto :goto_1

    .line 509
    :cond_1
    nop

    .line 514
    :goto_1
    iget-object v5, v0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->requestProperties:Landroidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties;

    invoke-virtual {v5}, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties;->getSnapshot()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 515
    .restart local v6    # "property":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    .end local v6    # "property":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_2

    .line 517
    :cond_2
    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x1

    cmp-long v9, v2, v5

    if-nez v9, :cond_4

    cmp-long v5, p6, v7

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    goto :goto_5

    .line 518
    :cond_4
    :goto_3
    const/16 v5, 0x1b

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "bytes="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 519
    .local v5, "rangeRequest":Ljava/lang/String;
    cmp-long v6, p6, v7

    if-eqz v6, :cond_5

    .line 520
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    add-long v7, v2, p6

    const-wide/16 v9, 0x1

    sub-long/2addr v7, v9

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x14

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 519
    :cond_5
    nop

    .line 522
    :goto_4
    const-string v6, "Range"

    invoke-virtual {v4, v6, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    .end local v5    # "rangeRequest":Ljava/lang/String;
    :goto_5
    const-string v5, "User-Agent"

    iget-object v6, v0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->userAgent:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    if-nez p8, :cond_6

    .line 526
    const-string v5, "Accept-Encoding"

    const-string v6, "identity"

    invoke-virtual {v4, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 525
    :cond_6
    nop

    .line 528
    :goto_6
    if-eqz p9, :cond_7

    .line 529
    const-string v5, "Icy-MetaData"

    const-string v6, "1"

    invoke-virtual {v4, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 528
    :cond_7
    nop

    .line 533
    :goto_7
    move/from16 v5, p10

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 534
    if-eqz v1, :cond_8

    const/4 v6, 0x1

    goto :goto_8

    :cond_8
    const/4 v6, 0x0

    :goto_8
    invoke-virtual {v4, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 535
    invoke-static {p2}, Landroidx/media2/exoplayer/external/upstream/DataSpec;->getStringForHttpMethod(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 536
    if-eqz v1, :cond_9

    .line 537
    array-length v6, v1

    invoke-virtual {v4, v6}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 538
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 539
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    .line 540
    .local v6, "os":Ljava/io/OutputStream;
    invoke-virtual {v6, p3}, Ljava/io/OutputStream;->write([B)V

    .line 541
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 542
    .end local v6    # "os":Ljava/io/OutputStream;
    goto :goto_9

    .line 543
    :cond_9
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 545
    :goto_9
    return-object v4
.end method

.method private static maybeTerminateInputStream(Ljava/net/HttpURLConnection;J)V
    .locals 6
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .param p1, "bytesRemaining"    # J

    .line 709
    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    sget v0, Landroidx/media2/exoplayer/external/util/Util;->SDK_INT:I

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    .line 710
    return-void

    .line 709
    :cond_0
    nop

    .line 714
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 715
    .local v0, "inputStream":Ljava/io/InputStream;
    const-wide/16 v1, -0x1

    cmp-long v3, p1, v1

    if-nez v3, :cond_2

    .line 717
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 718
    return-void

    .line 717
    :cond_1
    goto :goto_0

    .line 720
    :cond_2
    const-wide/16 v1, 0x800

    cmp-long v3, p1, v1

    if-gtz v3, :cond_3

    .line 723
    return-void

    .line 720
    :cond_3
    nop

    .line 725
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 726
    .local v1, "className":Ljava/lang/String;
    const-string v2, "com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream"

    .line 728
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    goto :goto_2

    .line 726
    :cond_5
    nop

    .line 729
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    .line 730
    .local v2, "superclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v3, "unexpectedEndOfInput"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 731
    .local v3, "unexpectedEndOfInput":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 732
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 738
    .end local v0    # "inputStream":Ljava/io/InputStream;
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "superclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "unexpectedEndOfInput":Ljava/lang/reflect/Method;
    :goto_2
    goto :goto_3

    .line 734
    :catch_0
    move-exception v0

    .line 739
    :goto_3
    return-void
.end method

.method private readInternal([BII)I
    .locals 8
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "readLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 672
    if-nez p3, :cond_0

    .line 673
    const/4 v0, 0x0

    return v0

    .line 675
    :cond_0
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->bytesToRead:J

    const-wide/16 v2, -0x1

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-eqz v5, :cond_2

    .line 676
    iget-wide v5, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->bytesRead:J

    sub-long/2addr v0, v5

    .line 677
    .local v0, "bytesRemaining":J
    const-wide/16 v5, 0x0

    cmp-long v7, v0, v5

    if-nez v7, :cond_1

    .line 678
    return v4

    .line 680
    :cond_1
    int-to-long v5, p3

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int p3, v5

    goto :goto_0

    .line 675
    .end local v0    # "bytesRemaining":J
    :cond_2
    nop

    .line 683
    :goto_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 684
    .local v0, "read":I
    if-ne v0, v4, :cond_4

    .line 685
    iget-wide v5, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->bytesToRead:J

    cmp-long v1, v5, v2

    if-nez v1, :cond_3

    .line 689
    return v4

    .line 687
    :cond_3
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 692
    :cond_4
    iget-wide v1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->bytesRead:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->bytesRead:J

    .line 693
    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->bytesTransferred(I)V

    .line 694
    return v0
.end method

.method private skipInternal()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 630
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->bytesSkipped:J

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->bytesToSkip:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 631
    return-void

    .line 635
    :cond_0
    sget-object v0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->skipBufferReference:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 636
    .local v0, "skipBuffer":[B
    if-nez v0, :cond_1

    .line 637
    const/16 v1, 0x1000

    new-array v0, v1, [B

    goto :goto_0

    .line 636
    :cond_1
    nop

    .line 640
    :goto_0
    iget-wide v1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->bytesSkipped:J

    iget-wide v3, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->bytesToSkip:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_4

    .line 641
    sub-long/2addr v3, v1

    array-length v1, v0

    int-to-long v1, v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    .line 642
    .local v2, "readLength":I
    iget-object v1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 643
    .local v1, "read":I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-nez v3, :cond_3

    .line 646
    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 649
    iget-wide v3, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->bytesSkipped:J

    int-to-long v5, v1

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->bytesSkipped:J

    .line 650
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->bytesTransferred(I)V

    .line 651
    .end local v1    # "read":I
    .end local v2    # "readLength":I
    goto :goto_0

    .line 647
    .restart local v1    # "read":I
    .restart local v2    # "readLength":I
    :cond_2
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    .line 644
    :cond_3
    new-instance v3, Ljava/io/InterruptedIOException;

    invoke-direct {v3}, Ljava/io/InterruptedIOException;-><init>()V

    throw v3

    .line 654
    .end local v1    # "read":I
    .end local v2    # "readLength":I
    :cond_4
    sget-object v1, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->skipBufferReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 655
    return-void
.end method


# virtual methods
.method protected final bytesRead()J
    .locals 2

    .line 400
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->bytesRead:J

    return-wide v0
.end method

.method protected final bytesRemaining()J
    .locals 5

    .line 412
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->bytesToRead:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->bytesRead:J

    sub-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method protected final bytesSkipped()J
    .locals 2

    .line 390
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->bytesSkipped:J

    return-wide v0
.end method

.method public clearAllRequestProperties()V
    .locals 1

    .line 262
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->requestProperties:Landroidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties;->clear()V

    .line 263
    return-void
.end method

.method public clearRequestProperty(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 256
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->requestProperties:Landroidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties;

    invoke-virtual {v0, p1}, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties;->remove(Ljava/lang/String;)V

    .line 258
    return-void
.end method

.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    .line 356
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    if-eqz v2, :cond_0

    .line 357
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->bytesRemaining()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->maybeTerminateInputStream(Ljava/net/HttpURLConnection;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    :try_start_1
    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 362
    goto :goto_0

    .line 360
    :catch_0
    move-exception v2

    .line 361
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v3, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;

    iget-object v4, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    const/4 v5, 0x3

    invoke-direct {v3, v2, v4, v5}, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Landroidx/media2/exoplayer/external/upstream/DataSpec;I)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 356
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    nop

    .line 365
    :goto_0
    iput-object v1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    .line 366
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 367
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->opened:Z

    if-eqz v1, :cond_1

    .line 368
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->opened:Z

    .line 369
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->transferEnded()V

    goto :goto_1

    .line 367
    :cond_1
    nop

    .line 372
    :goto_1
    return-void

    .line 365
    :catchall_0
    move-exception v2

    iput-object v1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;

    .line 366
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 367
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->opened:Z

    if-eqz v1, :cond_2

    .line 368
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->opened:Z

    .line 369
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->transferEnded()V

    goto :goto_2

    .line 367
    :cond_2
    nop

    .line 369
    :goto_2
    throw v2
.end method

.method protected final getConnection()Ljava/net/HttpURLConnection;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 380
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 244
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 239
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public open(Landroidx/media2/exoplayer/external/upstream/DataSpec;)J
    .locals 9
    .param p1, "dataSpec"    # Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    .line 267
    iput-object p1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    .line 268
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->bytesRead:J

    .line 269
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->bytesSkipped:J

    .line 270
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->transferInitializing(Landroidx/media2/exoplayer/external/upstream/DataSpec;)V

    .line 272
    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->makeConnection(Landroidx/media2/exoplayer/external/upstream/DataSpec;)Ljava/net/HttpURLConnection;

    move-result-object v3

    iput-object v3, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 276
    nop

    .line 281
    :try_start_1
    iget-object v3, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 282
    .local v3, "responseCode":I
    iget-object v4, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 287
    .local v4, "responseMessage":Ljava/lang/String;
    nop

    .line 290
    const/16 v5, 0xc8

    if-lt v3, v5, :cond_7

    const/16 v6, 0x12b

    if-le v3, v6, :cond_0

    goto/16 :goto_3

    .line 302
    :cond_0
    iget-object v6, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v6

    .line 303
    .local v6, "contentType":Ljava/lang/String;
    iget-object v7, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->contentTypePredicate:Landroidx/media2/exoplayer/external/util/Predicate;

    if-eqz v7, :cond_2

    invoke-interface {v7, v6}, Landroidx/media2/exoplayer/external/util/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    .line 304
    :cond_1
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 305
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$InvalidContentTypeException;

    invoke-direct {v0, v6, p1}, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$InvalidContentTypeException;-><init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/upstream/DataSpec;)V

    throw v0

    .line 303
    :cond_2
    :goto_0
    nop

    .line 311
    if-ne v3, v5, :cond_3

    iget-wide v7, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->position:J

    cmp-long v5, v7, v0

    if-eqz v5, :cond_3

    iget-wide v0, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->position:J

    nop

    :cond_3
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->bytesToSkip:J

    .line 314
    invoke-virtual {p1, v2}, Landroidx/media2/exoplayer/external/upstream/DataSpec;->isFlagSet(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 315
    iget-wide v0, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->length:J

    const-wide/16 v7, -0x1

    cmp-long v5, v0, v7

    if-eqz v5, :cond_4

    .line 316
    iget-wide v0, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->length:J

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->bytesToRead:J

    goto :goto_2

    .line 318
    :cond_4
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->getContentLength(Ljava/net/HttpURLConnection;)J

    move-result-wide v0

    .line 319
    .local v0, "contentLength":J
    cmp-long v5, v0, v7

    if-eqz v5, :cond_5

    iget-wide v7, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->bytesToSkip:J

    sub-long v7, v0, v7

    goto :goto_1

    .line 320
    :cond_5
    nop

    :goto_1
    iput-wide v7, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->bytesToRead:J

    .line 321
    .end local v0    # "contentLength":J
    nop

    goto :goto_2

    .line 327
    :cond_6
    nop

    iget-wide v0, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->length:J

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->bytesToRead:J

    .line 331
    :goto_2
    nop

    :try_start_2
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    nop

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    nop

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->inputStream:Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 335
    nop

    .line 337
    nop

    iput-boolean v2, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->opened:Z

    .line 338
    nop

    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->transferStarted(Landroidx/media2/exoplayer/external/upstream/DataSpec;)V

    .line 340
    nop

    iget-wide v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->bytesToRead:J

    return-wide v0

    .line 332
    :catch_0
    move-exception v0

    nop

    .line 333
    .local v0, "e":Ljava/io/IOException;
    nop

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 334
    nop

    new-instance v1, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;

    invoke-direct {v1, v0, p1, v2}, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Landroidx/media2/exoplayer/external/upstream/DataSpec;I)V

    throw v1

    .line 290
    .end local v0    # "e":Ljava/io/IOException;
    .end local v6    # "contentType":Ljava/lang/String;
    :cond_7
    :goto_3
    nop

    .line 291
    nop

    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    .line 292
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    nop

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 293
    nop

    new-instance v1, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$InvalidResponseCodeException;

    invoke-direct {v1, v3, v4, v0, p1}, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$InvalidResponseCodeException;-><init>(ILjava/lang/String;Ljava/util/Map;Landroidx/media2/exoplayer/external/upstream/DataSpec;)V

    .line 295
    .local v1, "exception":Landroidx/media2/exoplayer/external/upstream/HttpDataSource$InvalidResponseCodeException;
    nop

    const/16 v2, 0x1a0

    if-ne v3, v2, :cond_8

    .line 296
    nop

    new-instance v2, Landroidx/media2/exoplayer/external/upstream/DataSourceException;

    const/4 v5, 0x0

    invoke-direct {v2, v5}, Landroidx/media2/exoplayer/external/upstream/DataSourceException;-><init>(I)V

    invoke-virtual {v1, v2}, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$InvalidResponseCodeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    goto :goto_4

    .line 295
    :cond_8
    nop

    .line 298
    :goto_4
    nop

    throw v1

    .line 283
    .end local v0    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v1    # "exception":Landroidx/media2/exoplayer/external/upstream/HttpDataSource$InvalidResponseCodeException;
    .end local v3    # "responseCode":I
    .end local v4    # "responseMessage":Ljava/lang/String;
    :catch_1
    move-exception v0

    nop

    .line 284
    .local v0, "e":Ljava/io/IOException;
    nop

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->closeConnectionQuietly()V

    .line 285
    nop

    new-instance v1, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;

    const-string v3, "Unable to connect to "

    iget-object v4, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_9

    nop

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_9
    nop

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    :goto_5
    nop

    invoke-direct {v1, v3, v0, p1, v2}, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Ljava/io/IOException;Landroidx/media2/exoplayer/external/upstream/DataSpec;I)V

    throw v1

    .line 273
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    nop

    .line 274
    .restart local v0    # "e":Ljava/io/IOException;
    nop

    new-instance v1, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;

    const-string v3, "Unable to connect to "

    iget-object v4, p1, Landroidx/media2/exoplayer/external/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_a

    nop

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_a
    nop

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    :goto_6
    nop

    invoke-direct {v1, v3, v0, p1, v2}, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Ljava/io/IOException;Landroidx/media2/exoplayer/external/upstream/DataSpec;I)V

    throw v1
.end method

.method public read([BII)I
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "readLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    .line 346
    :try_start_0
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->skipInternal()V

    .line 347
    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->readInternal([BII)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    const/4 v3, 0x2

    invoke-direct {v1, v0, v2, v3}, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Landroidx/media2/exoplayer/external/upstream/DataSpec;I)V

    throw v1
.end method

.method public setContentTypePredicate(Landroidx/media2/exoplayer/external/util/Predicate;)V
    .locals 0
    .param p1    # Landroidx/media2/exoplayer/external/util/Predicate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/util/Predicate<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 233
    .local p1, "contentTypePredicate":Landroidx/media2/exoplayer/external/util/Predicate;, "Landroidx/media2/exoplayer/external/util/Predicate<Ljava/lang/String;>;"
    iput-object p1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->contentTypePredicate:Landroidx/media2/exoplayer/external/util/Predicate;

    .line 234
    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 249
    invoke-static {p1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    invoke-static {p2}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultHttpDataSource;->requestProperties:Landroidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties;

    invoke-virtual {v0, p1, p2}, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    return-void
.end method
