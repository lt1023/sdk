.class public Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;
.super Ljava/io/IOException;
.source "HttpDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/upstream/HttpDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpDataSourceException"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException$Type;
    }
.end annotation


# static fields
.field public static final TYPE_CLOSE:I = 0x3

.field public static final TYPE_OPEN:I = 0x1

.field public static final TYPE_READ:I = 0x2


# instance fields
.field public final dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

.field public final type:I


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/DataSpec;I)V
    .locals 0
    .param p1, "dataSpec"    # Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .param p2, "type"    # I

    .line 254
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 255
    iput-object p1, p0, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    .line 256
    iput p2, p0, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;->type:I

    .line 257
    return-void
.end method

.method public constructor <init>(Ljava/io/IOException;Landroidx/media2/exoplayer/external/upstream/DataSpec;I)V
    .locals 0
    .param p1, "cause"    # Ljava/io/IOException;
    .param p2, "dataSpec"    # Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .param p3, "type"    # I

    .line 266
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 267
    iput-object p2, p0, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    .line 268
    iput p3, p0, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;->type:I

    .line 269
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/upstream/DataSpec;I)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "dataSpec"    # Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .param p3, "type"    # I

    .line 260
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 261
    iput-object p2, p0, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    .line 262
    iput p3, p0, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;->type:I

    .line 263
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/IOException;Landroidx/media2/exoplayer/external/upstream/DataSpec;I)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/io/IOException;
    .param p3, "dataSpec"    # Landroidx/media2/exoplayer/external/upstream/DataSpec;
    .param p4, "type"    # I

    .line 273
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 274
    iput-object p3, p0, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;->dataSpec:Landroidx/media2/exoplayer/external/upstream/DataSpec;

    .line 275
    iput p4, p0, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;->type:I

    .line 276
    return-void
.end method
