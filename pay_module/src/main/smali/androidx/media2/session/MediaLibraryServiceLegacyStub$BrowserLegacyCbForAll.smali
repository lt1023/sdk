.class Landroidx/media2/session/MediaLibraryServiceLegacyStub$BrowserLegacyCbForAll;
.super Landroidx/media2/session/MediaLibraryServiceLegacyStub$BaseBrowserLegacyCb;
.source "MediaLibraryServiceLegacyStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/MediaLibraryServiceLegacyStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BrowserLegacyCbForAll"
.end annotation


# instance fields
.field private final mService:Landroidx/media/MediaBrowserServiceCompat;


# direct methods
.method constructor <init>(Landroidx/media/MediaBrowserServiceCompat;)V
    .locals 1
    .param p1, "service"    # Landroidx/media/MediaBrowserServiceCompat;

    .line 644
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media2/session/MediaLibraryServiceLegacyStub$BaseBrowserLegacyCb;-><init>(Landroidx/media2/session/MediaLibraryServiceLegacyStub$1;)V

    .line 645
    iput-object p1, p0, Landroidx/media2/session/MediaLibraryServiceLegacyStub$BrowserLegacyCbForAll;->mService:Landroidx/media/MediaBrowserServiceCompat;

    .line 646
    return-void
.end method


# virtual methods
.method onChildrenChanged(ILjava/lang/String;ILandroidx/media2/session/MediaLibraryService$LibraryParams;)V
    .locals 2
    .param p1, "seq"    # I
    .param p2, "parentId"    # Ljava/lang/String;
    .param p3, "itemCount"    # I
    .param p4, "libraryParams"    # Landroidx/media2/session/MediaLibraryService$LibraryParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 652
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Landroidx/media2/session/MediaLibraryService$LibraryParams;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 655
    :cond_0
    iget-object v0, p0, Landroidx/media2/session/MediaLibraryServiceLegacyStub$BrowserLegacyCbForAll;->mService:Landroidx/media/MediaBrowserServiceCompat;

    invoke-virtual {p4}, Landroidx/media2/session/MediaLibraryService$LibraryParams;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroidx/media/MediaBrowserServiceCompat;->notifyChildrenChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 652
    :cond_1
    :goto_0
    nop

    .line 653
    iget-object v0, p0, Landroidx/media2/session/MediaLibraryServiceLegacyStub$BrowserLegacyCbForAll;->mService:Landroidx/media/MediaBrowserServiceCompat;

    invoke-virtual {v0, p2}, Landroidx/media/MediaBrowserServiceCompat;->notifyChildrenChanged(Ljava/lang/String;)V

    .line 657
    :goto_1
    return-void
.end method

.method onSearchResultChanged(ILjava/lang/String;ILandroidx/media2/session/MediaLibraryService$LibraryParams;)V
    .locals 0
    .param p1, "seq"    # I
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "itemCount"    # I
    .param p4, "params"    # Landroidx/media2/session/MediaLibraryService$LibraryParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 671
    return-void
.end method
