.class Landroidx/media2/session/MediaLibraryServiceLegacyStub$SearchRequest;
.super Ljava/lang/Object;
.source "MediaLibraryServiceLegacyStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/MediaLibraryServiceLegacyStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchRequest"
.end annotation


# instance fields
.field public final mController:Landroidx/media2/session/MediaSession$ControllerInfo;

.field public final mExtras:Landroid/os/Bundle;

.field public final mQuery:Ljava/lang/String;

.field public final mRemoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

.field public final mResult:Landroidx/media/MediaBrowserServiceCompat$Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media/MediaBrowserServiceCompat$Result<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaSession$ControllerInfo;Landroidx/media/MediaSessionManager$RemoteUserInfo;Ljava/lang/String;Landroid/os/Bundle;Landroidx/media/MediaBrowserServiceCompat$Result;)V
    .locals 0
    .param p1, "controller"    # Landroidx/media2/session/MediaSession$ControllerInfo;
    .param p2, "remoteUserInfo"    # Landroidx/media/MediaSessionManager$RemoteUserInfo;
    .param p3, "query"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/session/MediaSession$ControllerInfo;",
            "Landroidx/media/MediaSessionManager$RemoteUserInfo;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroidx/media/MediaBrowserServiceCompat$Result<",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;>;)V"
        }
    .end annotation

    .line 376
    .local p5, "result":Landroidx/media/MediaBrowserServiceCompat$Result;, "Landroidx/media/MediaBrowserServiceCompat$Result<Ljava/util/List<Landroid/support/v4/media/MediaBrowserCompat$MediaItem;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    iput-object p1, p0, Landroidx/media2/session/MediaLibraryServiceLegacyStub$SearchRequest;->mController:Landroidx/media2/session/MediaSession$ControllerInfo;

    .line 378
    iput-object p2, p0, Landroidx/media2/session/MediaLibraryServiceLegacyStub$SearchRequest;->mRemoteUserInfo:Landroidx/media/MediaSessionManager$RemoteUserInfo;

    .line 379
    iput-object p3, p0, Landroidx/media2/session/MediaLibraryServiceLegacyStub$SearchRequest;->mQuery:Ljava/lang/String;

    .line 380
    iput-object p4, p0, Landroidx/media2/session/MediaLibraryServiceLegacyStub$SearchRequest;->mExtras:Landroid/os/Bundle;

    .line 381
    iput-object p5, p0, Landroidx/media2/session/MediaLibraryServiceLegacyStub$SearchRequest;->mResult:Landroidx/media/MediaBrowserServiceCompat$Result;

    .line 382
    return-void
.end method
