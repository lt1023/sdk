.class Landroidx/media2/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb$1;
.super Ljava/lang/Object;
.source "MediaLibraryServiceLegacyStub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;->onSearchResultChanged(ILjava/lang/String;ILandroidx/media2/session/MediaLibraryService$LibraryParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/media2/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;

.field final synthetic val$searchRequests:Ljava/util/List;


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Landroidx/media2/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;

    .line 568
    iput-object p1, p0, Landroidx/media2/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb$1;->this$1:Landroidx/media2/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;

    iput-object p2, p0, Landroidx/media2/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb$1;->val$searchRequests:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 571
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media2/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb$1;->val$searchRequests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 572
    iget-object v1, p0, Landroidx/media2/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb$1;->val$searchRequests:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/session/MediaLibraryServiceLegacyStub$SearchRequest;

    .line 573
    .local v1, "request":Landroidx/media2/session/MediaLibraryServiceLegacyStub$SearchRequest;
    const/4 v2, 0x0

    .line 574
    .local v2, "page":I
    const v3, 0x7fffffff

    .line 575
    .local v3, "pageSize":I
    iget-object v4, v1, Landroidx/media2/session/MediaLibraryServiceLegacyStub$SearchRequest;->mExtras:Landroid/os/Bundle;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 577
    :try_start_0
    iget-object v4, v1, Landroidx/media2/session/MediaLibraryServiceLegacyStub$SearchRequest;->mExtras:Landroid/os/Bundle;

    iget-object v6, p0, Landroidx/media2/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb$1;->this$1:Landroidx/media2/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;

    iget-object v6, v6, Landroidx/media2/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;->this$0:Landroidx/media2/session/MediaLibraryServiceLegacyStub;

    iget-object v6, v6, Landroidx/media2/session/MediaLibraryServiceLegacyStub;->mLibrarySessionImpl:Landroidx/media2/session/MediaLibraryService$MediaLibrarySession$MediaLibrarySessionImpl;

    .line 578
    invoke-interface {v6}, Landroidx/media2/session/MediaLibraryService$MediaLibrarySession$MediaLibrarySessionImpl;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 577
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 579
    iget-object v4, v1, Landroidx/media2/session/MediaLibraryServiceLegacyStub$SearchRequest;->mExtras:Landroid/os/Bundle;

    const-string v6, "android.media.browse.extra.PAGE"

    const/4 v7, -0x1

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    move v2, v4

    .line 580
    iget-object v4, v1, Landroidx/media2/session/MediaLibraryServiceLegacyStub$SearchRequest;->mExtras:Landroid/os/Bundle;

    const-string v6, "android.media.browse.extra.PAGE_SIZE"

    .line 581
    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 585
    goto :goto_1

    .line 582
    :catch_0
    move-exception v4

    .line 583
    .local v4, "e":Landroid/os/BadParcelableException;
    iget-object v6, v1, Landroidx/media2/session/MediaLibraryServiceLegacyStub$SearchRequest;->mResult:Landroidx/media/MediaBrowserServiceCompat$Result;

    invoke-virtual {v6, v5}, Landroidx/media/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    .line 584
    return-void

    .line 575
    .end local v4    # "e":Landroid/os/BadParcelableException;
    :cond_0
    nop

    .line 587
    :goto_1
    if-ltz v2, :cond_2

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    goto :goto_2

    :cond_1
    goto :goto_3

    .line 588
    :cond_2
    :goto_2
    const/4 v2, 0x0

    .line 589
    const v3, 0x7fffffff

    .line 591
    :goto_3
    iget-object v4, p0, Landroidx/media2/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb$1;->this$1:Landroidx/media2/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;

    iget-object v4, v4, Landroidx/media2/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;->this$0:Landroidx/media2/session/MediaLibraryServiceLegacyStub;

    iget-object v4, v4, Landroidx/media2/session/MediaLibraryServiceLegacyStub;->mLibrarySessionImpl:Landroidx/media2/session/MediaLibraryService$MediaLibrarySession$MediaLibrarySessionImpl;

    .line 592
    invoke-interface {v4}, Landroidx/media2/session/MediaLibraryService$MediaLibrarySession$MediaLibrarySessionImpl;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v6, v1, Landroidx/media2/session/MediaLibraryServiceLegacyStub$SearchRequest;->mExtras:Landroid/os/Bundle;

    .line 591
    invoke-static {v4, v6}, Landroidx/media2/session/MediaUtils;->convertToLibraryParams(Landroid/content/Context;Landroid/os/Bundle;)Landroidx/media2/session/MediaLibraryService$LibraryParams;

    move-result-object v4

    .line 593
    .local v4, "params":Landroidx/media2/session/MediaLibraryService$LibraryParams;
    iget-object v6, p0, Landroidx/media2/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb$1;->this$1:Landroidx/media2/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;

    iget-object v6, v6, Landroidx/media2/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;->this$0:Landroidx/media2/session/MediaLibraryServiceLegacyStub;

    iget-object v6, v6, Landroidx/media2/session/MediaLibraryServiceLegacyStub;->mLibrarySessionImpl:Landroidx/media2/session/MediaLibraryService$MediaLibrarySession$MediaLibrarySessionImpl;

    invoke-interface {v6}, Landroidx/media2/session/MediaLibraryService$MediaLibrarySession$MediaLibrarySessionImpl;->getCallback()Landroidx/media2/session/MediaLibraryService$MediaLibrarySession$MediaLibrarySessionCallback;

    move-result-object v6

    iget-object v7, p0, Landroidx/media2/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb$1;->this$1:Landroidx/media2/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;

    iget-object v7, v7, Landroidx/media2/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;->this$0:Landroidx/media2/session/MediaLibraryServiceLegacyStub;

    iget-object v7, v7, Landroidx/media2/session/MediaLibraryServiceLegacyStub;->mLibrarySessionImpl:Landroidx/media2/session/MediaLibraryService$MediaLibrarySession$MediaLibrarySessionImpl;

    .line 594
    invoke-interface {v7}, Landroidx/media2/session/MediaLibraryService$MediaLibrarySession$MediaLibrarySessionImpl;->getInstance()Landroidx/media2/session/MediaLibraryService$MediaLibrarySession;

    move-result-object v7

    iget-object v8, v1, Landroidx/media2/session/MediaLibraryServiceLegacyStub$SearchRequest;->mController:Landroidx/media2/session/MediaSession$ControllerInfo;

    iget-object v9, v1, Landroidx/media2/session/MediaLibraryServiceLegacyStub$SearchRequest;->mQuery:Ljava/lang/String;

    move v10, v2

    move v11, v3

    move-object v12, v4

    invoke-virtual/range {v6 .. v12}, Landroidx/media2/session/MediaLibraryService$MediaLibrarySession$MediaLibrarySessionCallback;->onGetSearchResult(Landroidx/media2/session/MediaLibraryService$MediaLibrarySession;Landroidx/media2/session/MediaSession$ControllerInfo;Ljava/lang/String;IILandroidx/media2/session/MediaLibraryService$LibraryParams;)Landroidx/media2/session/LibraryResult;

    move-result-object v6

    .line 597
    .local v6, "libraryResult":Landroidx/media2/session/LibraryResult;
    if-eqz v6, :cond_4

    .line 598
    invoke-virtual {v6}, Landroidx/media2/session/LibraryResult;->getResultCode()I

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_4

    .line 601
    :cond_3
    iget-object v5, v1, Landroidx/media2/session/MediaLibraryServiceLegacyStub$SearchRequest;->mResult:Landroidx/media/MediaBrowserServiceCompat$Result;

    .line 604
    invoke-virtual {v6}, Landroidx/media2/session/LibraryResult;->getMediaItems()Ljava/util/List;

    move-result-object v7

    .line 603
    invoke-static {v7}, Landroidx/media2/session/MediaUtils;->convertToMediaItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    const/high16 v8, 0x40000

    .line 602
    invoke-static {v7, v8}, Landroidx/media2/session/MediaUtils;->truncateListBySize(Ljava/util/List;I)Ljava/util/List;

    move-result-object v7

    .line 601
    invoke-virtual {v5, v7}, Landroidx/media/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    goto :goto_5

    .line 597
    :cond_4
    nop

    .line 599
    :goto_4
    iget-object v7, v1, Landroidx/media2/session/MediaLibraryServiceLegacyStub$SearchRequest;->mResult:Landroidx/media/MediaBrowserServiceCompat$Result;

    invoke-virtual {v7, v5}, Landroidx/media/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    .line 571
    .end local v1    # "request":Landroidx/media2/session/MediaLibraryServiceLegacyStub$SearchRequest;
    .end local v2    # "page":I
    .end local v3    # "pageSize":I
    .end local v4    # "params":Landroidx/media2/session/MediaLibraryService$LibraryParams;
    .end local v6    # "libraryResult":Landroidx/media2/session/LibraryResult;
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 608
    .end local v0    # "i":I
    :cond_5
    return-void
.end method
