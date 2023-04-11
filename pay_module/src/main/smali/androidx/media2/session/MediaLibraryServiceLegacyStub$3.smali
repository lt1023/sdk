.class Landroidx/media2/session/MediaLibraryServiceLegacyStub$3;
.super Ljava/lang/Object;
.source "MediaLibraryServiceLegacyStub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/MediaLibraryServiceLegacyStub;->onLoadChildren(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$Result;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/session/MediaLibraryServiceLegacyStub;

.field final synthetic val$controller:Landroidx/media2/session/MediaSession$ControllerInfo;

.field final synthetic val$options:Landroid/os/Bundle;

.field final synthetic val$parentId:Ljava/lang/String;

.field final synthetic val$result:Landroidx/media/MediaBrowserServiceCompat$Result;


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaLibraryServiceLegacyStub;Landroidx/media2/session/MediaSession$ControllerInfo;Landroidx/media/MediaBrowserServiceCompat$Result;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/session/MediaLibraryServiceLegacyStub;

    .line 193
    iput-object p1, p0, Landroidx/media2/session/MediaLibraryServiceLegacyStub$3;->this$0:Landroidx/media2/session/MediaLibraryServiceLegacyStub;

    iput-object p2, p0, Landroidx/media2/session/MediaLibraryServiceLegacyStub$3;->val$controller:Landroidx/media2/session/MediaSession$ControllerInfo;

    iput-object p3, p0, Landroidx/media2/session/MediaLibraryServiceLegacyStub$3;->val$result:Landroidx/media/MediaBrowserServiceCompat$Result;

    iput-object p4, p0, Landroidx/media2/session/MediaLibraryServiceLegacyStub$3;->val$options:Landroid/os/Bundle;

    iput-object p5, p0, Landroidx/media2/session/MediaLibraryServiceLegacyStub$3;->val$parentId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 196
    iget-object v0, p0, Landroidx/media2/session/MediaLibraryServiceLegacyStub$3;->this$0:Landroidx/media2/session/MediaLibraryServiceLegacyStub;

    invoke-virtual {v0}, Landroidx/media2/session/MediaLibraryServiceLegacyStub;->getConnectedControllersManager()Landroidx/media2/session/ConnectedControllersManager;

    move-result-object v0

    iget-object v1, p0, Landroidx/media2/session/MediaLibraryServiceLegacyStub$3;->val$controller:Landroidx/media2/session/MediaSession$ControllerInfo;

    const v2, 0xc353

    invoke-virtual {v0, v1, v2}, Landroidx/media2/session/ConnectedControllersManager;->isAllowedCommand(Landroidx/media2/session/MediaSession$ControllerInfo;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Landroidx/media2/session/MediaLibraryServiceLegacyStub$3;->val$result:Landroidx/media/MediaBrowserServiceCompat$Result;

    invoke-virtual {v0, v1}, Landroidx/media/MediaBrowserServiceCompat$Result;->sendError(Landroid/os/Bundle;)V

    .line 203
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Landroidx/media2/session/MediaLibraryServiceLegacyStub$3;->val$options:Landroid/os/Bundle;

    const/high16 v2, 0x40000

    if-eqz v0, :cond_4

    .line 206
    iget-object v3, p0, Landroidx/media2/session/MediaLibraryServiceLegacyStub$3;->this$0:Landroidx/media2/session/MediaLibraryServiceLegacyStub;

    iget-object v3, v3, Landroidx/media2/session/MediaLibraryServiceLegacyStub;->mLibrarySessionImpl:Landroidx/media2/session/MediaLibraryService$MediaLibrarySession$MediaLibrarySessionImpl;

    invoke-interface {v3}, Landroidx/media2/session/MediaLibraryService$MediaLibrarySession$MediaLibrarySessionImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 208
    :try_start_0
    iget-object v0, p0, Landroidx/media2/session/MediaLibraryServiceLegacyStub$3;->val$options:Landroid/os/Bundle;

    const-string v3, "android.media.browse.extra.PAGE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 209
    .local v0, "page":I
    iget-object v3, p0, Landroidx/media2/session/MediaLibraryServiceLegacyStub$3;->val$options:Landroid/os/Bundle;

    const-string v4, "android.media.browse.extra.PAGE_SIZE"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    move v10, v3

    .line 210
    .local v10, "pageSize":I
    if-lez v0, :cond_3

    if-lez v10, :cond_3

    .line 212
    iget-object v3, p0, Landroidx/media2/session/MediaLibraryServiceLegacyStub$3;->this$0:Landroidx/media2/session/MediaLibraryServiceLegacyStub;

    iget-object v3, v3, Landroidx/media2/session/MediaLibraryServiceLegacyStub;->mLibrarySessionImpl:Landroidx/media2/session/MediaLibraryService$MediaLibrarySession$MediaLibrarySessionImpl;

    .line 213
    invoke-interface {v3}, Landroidx/media2/session/MediaLibraryService$MediaLibrarySession$MediaLibrarySessionImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Landroidx/media2/session/MediaLibraryServiceLegacyStub$3;->val$options:Landroid/os/Bundle;

    .line 212
    invoke-static {v3, v4}, Landroidx/media2/session/MediaUtils;->convertToLibraryParams(Landroid/content/Context;Landroid/os/Bundle;)Landroidx/media2/session/MediaLibraryService$LibraryParams;

    move-result-object v9

    .line 214
    .local v9, "params":Landroidx/media2/session/MediaLibraryService$LibraryParams;
    iget-object v3, p0, Landroidx/media2/session/MediaLibraryServiceLegacyStub$3;->this$0:Landroidx/media2/session/MediaLibraryServiceLegacyStub;

    iget-object v3, v3, Landroidx/media2/session/MediaLibraryServiceLegacyStub;->mLibrarySessionImpl:Landroidx/media2/session/MediaLibraryService$MediaLibrarySession$MediaLibrarySessionImpl;

    invoke-interface {v3}, Landroidx/media2/session/MediaLibraryService$MediaLibrarySession$MediaLibrarySessionImpl;->getCallback()Landroidx/media2/session/MediaLibraryService$MediaLibrarySession$MediaLibrarySessionCallback;

    move-result-object v3

    iget-object v4, p0, Landroidx/media2/session/MediaLibraryServiceLegacyStub$3;->this$0:Landroidx/media2/session/MediaLibraryServiceLegacyStub;

    iget-object v4, v4, Landroidx/media2/session/MediaLibraryServiceLegacyStub;->mLibrarySessionImpl:Landroidx/media2/session/MediaLibraryService$MediaLibrarySession$MediaLibrarySessionImpl;

    .line 215
    invoke-interface {v4}, Landroidx/media2/session/MediaLibraryService$MediaLibrarySession$MediaLibrarySessionImpl;->getInstance()Landroidx/media2/session/MediaLibraryService$MediaLibrarySession;

    move-result-object v4

    iget-object v5, p0, Landroidx/media2/session/MediaLibraryServiceLegacyStub$3;->val$controller:Landroidx/media2/session/MediaSession$ControllerInfo;

    iget-object v6, p0, Landroidx/media2/session/MediaLibraryServiceLegacyStub$3;->val$parentId:Ljava/lang/String;

    move v7, v0

    move v8, v10

    invoke-virtual/range {v3 .. v9}, Landroidx/media2/session/MediaLibraryService$MediaLibrarySession$MediaLibrarySessionCallback;->onGetChildren(Landroidx/media2/session/MediaLibraryService$MediaLibrarySession;Landroidx/media2/session/MediaSession$ControllerInfo;Ljava/lang/String;IILandroidx/media2/session/MediaLibraryService$LibraryParams;)Landroidx/media2/session/LibraryResult;

    move-result-object v3

    .line 217
    .local v3, "libraryResult":Landroidx/media2/session/LibraryResult;
    if-eqz v3, :cond_2

    .line 218
    invoke-virtual {v3}, Landroidx/media2/session/LibraryResult;->getResultCode()I

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 221
    :cond_1
    iget-object v4, p0, Landroidx/media2/session/MediaLibraryServiceLegacyStub$3;->val$result:Landroidx/media/MediaBrowserServiceCompat$Result;

    .line 223
    invoke-virtual {v3}, Landroidx/media2/session/LibraryResult;->getMediaItems()Ljava/util/List;

    move-result-object v5

    .line 222
    invoke-static {v5}, Landroidx/media2/session/MediaUtils;->convertToMediaItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 221
    invoke-static {v5, v2}, Landroidx/media2/session/MediaUtils;->truncateListBySize(Ljava/util/List;I)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/media/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    goto :goto_1

    .line 217
    :cond_2
    nop

    .line 219
    :goto_0
    iget-object v4, p0, Landroidx/media2/session/MediaLibraryServiceLegacyStub$3;->val$result:Landroidx/media/MediaBrowserServiceCompat$Result;

    invoke-virtual {v4, v1}, Landroidx/media/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :goto_1
    return-void

    .line 210
    .end local v3    # "libraryResult":Landroidx/media2/session/LibraryResult;
    .end local v9    # "params":Landroidx/media2/session/MediaLibraryService$LibraryParams;
    :cond_3
    nop

    .line 233
    .end local v0    # "page":I
    .end local v10    # "pageSize":I
    goto :goto_2

    .line 231
    :catch_0
    move-exception v0

    goto :goto_2

    .line 205
    :cond_4
    nop

    .line 236
    :goto_2
    iget-object v0, p0, Landroidx/media2/session/MediaLibraryServiceLegacyStub$3;->this$0:Landroidx/media2/session/MediaLibraryServiceLegacyStub;

    iget-object v0, v0, Landroidx/media2/session/MediaLibraryServiceLegacyStub;->mLibrarySessionImpl:Landroidx/media2/session/MediaLibraryService$MediaLibrarySession$MediaLibrarySessionImpl;

    invoke-interface {v0}, Landroidx/media2/session/MediaLibraryService$MediaLibrarySession$MediaLibrarySessionImpl;->getCallback()Landroidx/media2/session/MediaLibraryService$MediaLibrarySession$MediaLibrarySessionCallback;

    move-result-object v3

    iget-object v0, p0, Landroidx/media2/session/MediaLibraryServiceLegacyStub$3;->this$0:Landroidx/media2/session/MediaLibraryServiceLegacyStub;

    iget-object v0, v0, Landroidx/media2/session/MediaLibraryServiceLegacyStub;->mLibrarySessionImpl:Landroidx/media2/session/MediaLibraryService$MediaLibrarySession$MediaLibrarySessionImpl;

    .line 237
    invoke-interface {v0}, Landroidx/media2/session/MediaLibraryService$MediaLibrarySession$MediaLibrarySessionImpl;->getInstance()Landroidx/media2/session/MediaLibraryService$MediaLibrarySession;

    move-result-object v4

    iget-object v5, p0, Landroidx/media2/session/MediaLibraryServiceLegacyStub$3;->val$controller:Landroidx/media2/session/MediaSession$ControllerInfo;

    iget-object v6, p0, Landroidx/media2/session/MediaLibraryServiceLegacyStub$3;->val$parentId:Ljava/lang/String;

    const/4 v7, 0x0

    const v8, 0x7fffffff

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Landroidx/media2/session/MediaLibraryService$MediaLibrarySession$MediaLibrarySessionCallback;->onGetChildren(Landroidx/media2/session/MediaLibraryService$MediaLibrarySession;Landroidx/media2/session/MediaSession$ControllerInfo;Ljava/lang/String;IILandroidx/media2/session/MediaLibraryService$LibraryParams;)Landroidx/media2/session/LibraryResult;

    move-result-object v0

    .line 240
    .local v0, "libraryResult":Landroidx/media2/session/LibraryResult;
    if-eqz v0, :cond_6

    .line 241
    invoke-virtual {v0}, Landroidx/media2/session/LibraryResult;->getResultCode()I

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_3

    .line 244
    :cond_5
    iget-object v1, p0, Landroidx/media2/session/MediaLibraryServiceLegacyStub$3;->val$result:Landroidx/media/MediaBrowserServiceCompat$Result;

    .line 245
    invoke-virtual {v0}, Landroidx/media2/session/LibraryResult;->getMediaItems()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Landroidx/media2/session/MediaUtils;->convertToMediaItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 244
    invoke-static {v3, v2}, Landroidx/media2/session/MediaUtils;->truncateListBySize(Ljava/util/List;I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    goto :goto_4

    .line 240
    :cond_6
    nop

    .line 242
    :goto_3
    iget-object v2, p0, Landroidx/media2/session/MediaLibraryServiceLegacyStub$3;->val$result:Landroidx/media/MediaBrowserServiceCompat$Result;

    invoke-virtual {v2, v1}, Landroidx/media/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    .line 248
    :goto_4
    return-void
.end method
