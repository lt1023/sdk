.class public Landroidx/media2/exoplayer/external/upstream/DefaultLoadErrorHandlingPolicy;
.super Ljava/lang/Object;
.source "DefaultLoadErrorHandlingPolicy.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/upstream/LoadErrorHandlingPolicy;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final DEFAULT_BEHAVIOR_MIN_LOADABLE_RETRY_COUNT:I = -0x1

.field public static final DEFAULT_MIN_LOADABLE_RETRY_COUNT:I = 0x3

.field public static final DEFAULT_MIN_LOADABLE_RETRY_COUNT_PROGRESSIVE_LIVE:I = 0x6

.field public static final DEFAULT_TRACK_BLACKLIST_MS:J = 0xea60L


# instance fields
.field private final minimumLoadableRetryCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/upstream/DefaultLoadErrorHandlingPolicy;-><init>(I)V

    .line 60
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "minimumLoadableRetryCount"    # I

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p1, p0, Landroidx/media2/exoplayer/external/upstream/DefaultLoadErrorHandlingPolicy;->minimumLoadableRetryCount:I

    .line 69
    return-void
.end method


# virtual methods
.method public getBlacklistDurationMsFor(IJLjava/io/IOException;I)J
    .locals 4
    .param p1, "dataType"    # I
    .param p2, "loadDurationMs"    # J
    .param p4, "exception"    # Ljava/io/IOException;
    .param p5, "errorCount"    # I

    .line 78
    instance-of v0, p4, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$InvalidResponseCodeException;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_2

    .line 79
    move-object v0, p4

    check-cast v0, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$InvalidResponseCodeException;

    iget v0, v0, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    .line 81
    .local v0, "responseCode":I
    const/16 v3, 0x194

    if-eq v0, v3, :cond_1

    const/16 v3, 0x19a

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    goto :goto_1

    .line 81
    :cond_1
    :goto_0
    nop

    .line 82
    const-wide/32 v1, 0xea60

    .line 80
    :goto_1
    return-wide v1

    .line 85
    .end local v0    # "responseCode":I
    :cond_2
    return-wide v1
.end method

.method public getMinimumLoadableRetryCount(I)I
    .locals 2
    .param p1, "dataType"    # I

    .line 109
    iget v0, p0, Landroidx/media2/exoplayer/external/upstream/DefaultLoadErrorHandlingPolicy;->minimumLoadableRetryCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 110
    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 111
    const/4 v0, 0x6

    goto :goto_0

    .line 112
    :cond_0
    const/4 v0, 0x3

    .line 110
    :goto_0
    return v0

    .line 114
    :cond_1
    return v0
.end method

.method public getRetryDelayMsFor(IJLjava/io/IOException;I)J
    .locals 2
    .param p1, "dataType"    # I
    .param p2, "loadDurationMs"    # J
    .param p4, "exception"    # Ljava/io/IOException;
    .param p5, "errorCount"    # I

    .line 98
    instance-of v0, p4, Landroidx/media2/exoplayer/external/ParserException;

    if-nez v0, :cond_1

    instance-of v0, p4, Ljava/io/FileNotFoundException;

    if-nez v0, :cond_1

    instance-of v0, p4, Landroidx/media2/exoplayer/external/upstream/Loader$UnexpectedLoaderException;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    add-int/lit8 v0, p5, -0x1

    mul-int/lit16 v0, v0, 0x3e8

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    goto :goto_1

    .line 98
    :cond_1
    :goto_0
    nop

    .line 99
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 96
    :goto_1
    return-wide v0
.end method
