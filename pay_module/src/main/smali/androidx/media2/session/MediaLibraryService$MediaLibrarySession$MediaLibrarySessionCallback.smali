.class public Landroidx/media2/session/MediaLibraryService$MediaLibrarySession$MediaLibrarySessionCallback;
.super Landroidx/media2/session/MediaSession$SessionCallback;
.source "MediaLibraryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/MediaLibraryService$MediaLibrarySession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaLibrarySessionCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Landroidx/media2/session/MediaSession$SessionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetChildren(Landroidx/media2/session/MediaLibraryService$MediaLibrarySession;Landroidx/media2/session/MediaSession$ControllerInfo;Ljava/lang/String;IILandroidx/media2/session/MediaLibraryService$LibraryParams;)Landroidx/media2/session/LibraryResult;
    .locals 2
    .param p1, "session"    # Landroidx/media2/session/MediaLibraryService$MediaLibrarySession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "controller"    # Landroidx/media2/session/MediaSession$ControllerInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "parentId"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "page"    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p5, "pageSize"    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .param p6, "params"    # Landroidx/media2/session/MediaLibraryService$LibraryParams;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 151
    new-instance v0, Landroidx/media2/session/LibraryResult;

    const/4 v1, -0x6

    invoke-direct {v0, v1}, Landroidx/media2/session/LibraryResult;-><init>(I)V

    return-object v0
.end method

.method public onGetItem(Landroidx/media2/session/MediaLibraryService$MediaLibrarySession;Landroidx/media2/session/MediaSession$ControllerInfo;Ljava/lang/String;)Landroidx/media2/session/LibraryResult;
    .locals 2
    .param p1, "session"    # Landroidx/media2/session/MediaLibraryService$MediaLibrarySession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "controller"    # Landroidx/media2/session/MediaSession$ControllerInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "mediaId"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 126
    new-instance v0, Landroidx/media2/session/LibraryResult;

    const/4 v1, -0x6

    invoke-direct {v0, v1}, Landroidx/media2/session/LibraryResult;-><init>(I)V

    return-object v0
.end method

.method public onGetLibraryRoot(Landroidx/media2/session/MediaLibraryService$MediaLibrarySession;Landroidx/media2/session/MediaSession$ControllerInfo;Landroidx/media2/session/MediaLibraryService$LibraryParams;)Landroidx/media2/session/LibraryResult;
    .locals 2
    .param p1, "session"    # Landroidx/media2/session/MediaLibraryService$MediaLibrarySession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "controller"    # Landroidx/media2/session/MediaSession$ControllerInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "params"    # Landroidx/media2/session/MediaLibraryService$LibraryParams;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 108
    new-instance v0, Landroidx/media2/session/LibraryResult;

    const/4 v1, -0x6

    invoke-direct {v0, v1}, Landroidx/media2/session/LibraryResult;-><init>(I)V

    return-object v0
.end method

.method public onGetSearchResult(Landroidx/media2/session/MediaLibraryService$MediaLibrarySession;Landroidx/media2/session/MediaSession$ControllerInfo;Ljava/lang/String;IILandroidx/media2/session/MediaLibraryService$LibraryParams;)Landroidx/media2/session/LibraryResult;
    .locals 2
    .param p1, "session"    # Landroidx/media2/session/MediaLibraryService$MediaLibrarySession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "controller"    # Landroidx/media2/session/MediaSession$ControllerInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "query"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "page"    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p5, "pageSize"    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .param p6, "params"    # Landroidx/media2/session/MediaLibraryService$LibraryParams;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 248
    new-instance v0, Landroidx/media2/session/LibraryResult;

    const/4 v1, -0x6

    invoke-direct {v0, v1}, Landroidx/media2/session/LibraryResult;-><init>(I)V

    return-object v0
.end method

.method public onSearch(Landroidx/media2/session/MediaLibraryService$MediaLibrarySession;Landroidx/media2/session/MediaSession$ControllerInfo;Ljava/lang/String;Landroidx/media2/session/MediaLibraryService$LibraryParams;)I
    .locals 1
    .param p1, "session"    # Landroidx/media2/session/MediaLibraryService$MediaLibrarySession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "controller"    # Landroidx/media2/session/MediaSession$ControllerInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "query"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "params"    # Landroidx/media2/session/MediaLibraryService$LibraryParams;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 219
    const/4 v0, -0x6

    return v0
.end method

.method public onSubscribe(Landroidx/media2/session/MediaLibraryService$MediaLibrarySession;Landroidx/media2/session/MediaSession$ControllerInfo;Ljava/lang/String;Landroidx/media2/session/MediaLibraryService$LibraryParams;)I
    .locals 1
    .param p1, "session"    # Landroidx/media2/session/MediaLibraryService$MediaLibrarySession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "controller"    # Landroidx/media2/session/MediaSession$ControllerInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "parentId"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "params"    # Landroidx/media2/session/MediaLibraryService$LibraryParams;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 177
    const/4 v0, -0x6

    return v0
.end method

.method public onUnsubscribe(Landroidx/media2/session/MediaLibraryService$MediaLibrarySession;Landroidx/media2/session/MediaSession$ControllerInfo;Ljava/lang/String;)I
    .locals 1
    .param p1, "session"    # Landroidx/media2/session/MediaLibraryService$MediaLibrarySession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "controller"    # Landroidx/media2/session/MediaSession$ControllerInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "parentId"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 195
    const/4 v0, -0x6

    return v0
.end method
