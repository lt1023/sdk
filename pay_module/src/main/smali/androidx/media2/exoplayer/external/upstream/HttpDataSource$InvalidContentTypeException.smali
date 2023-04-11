.class public final Landroidx/media2/exoplayer/external/upstream/HttpDataSource$InvalidContentTypeException;
.super Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;
.source "HttpDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/upstream/HttpDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InvalidContentTypeException"
.end annotation


# instance fields
.field public final contentType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/upstream/DataSpec;)V
    .locals 3
    .param p1, "contentType"    # Ljava/lang/String;
    .param p2, "dataSpec"    # Landroidx/media2/exoplayer/external/upstream/DataSpec;

    .line 288
    const-string v0, "Invalid content type: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/upstream/DataSpec;I)V

    .line 289
    iput-object p1, p0, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$InvalidContentTypeException;->contentType:Ljava/lang/String;

    .line 290
    return-void
.end method
