.class public Landroidx/media2/common/CallbackMediaItem;
.super Landroidx/media2/common/MediaItem;
.source "CallbackMediaItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/common/CallbackMediaItem$Builder;
    }
.end annotation


# instance fields
.field mDataSourceCallback:Landroidx/media2/common/DataSourceCallback;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Landroidx/media2/common/MediaItem;-><init>()V

    .line 47
    return-void
.end method

.method constructor <init>(Landroidx/media2/common/CallbackMediaItem$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroidx/media2/common/CallbackMediaItem$Builder;

    .line 50
    invoke-direct {p0, p1}, Landroidx/media2/common/MediaItem;-><init>(Landroidx/media2/common/MediaItem$Builder;)V

    .line 51
    iget-object v0, p1, Landroidx/media2/common/CallbackMediaItem$Builder;->mDataSourceCallback:Landroidx/media2/common/DataSourceCallback;

    iput-object v0, p0, Landroidx/media2/common/CallbackMediaItem;->mDataSourceCallback:Landroidx/media2/common/DataSourceCallback;

    .line 52
    return-void
.end method


# virtual methods
.method public getDataSourceCallback()Landroidx/media2/common/DataSourceCallback;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 62
    iget-object v0, p0, Landroidx/media2/common/CallbackMediaItem;->mDataSourceCallback:Landroidx/media2/common/DataSourceCallback;

    return-object v0
.end method
