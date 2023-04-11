.class Landroidx/media2/session/MediaSessionImplBase$PlaylistItemListener;
.super Ljava/lang/Object;
.source "MediaSessionImplBase.java"

# interfaces
.implements Landroidx/media2/common/MediaItem$OnMetadataChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/MediaSessionImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PlaylistItemListener"
.end annotation


# instance fields
.field private final mSession:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/media2/session/MediaSessionImplBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaSessionImplBase;)V
    .locals 1
    .param p1, "session"    # Landroidx/media2/session/MediaSessionImplBase;

    .line 1653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1654
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/media2/session/MediaSessionImplBase$PlaylistItemListener;->mSession:Ljava/lang/ref/WeakReference;

    .line 1655
    return-void
.end method


# virtual methods
.method public onMetadataChanged(Landroidx/media2/common/MediaItem;)V
    .locals 4
    .param p1, "item"    # Landroidx/media2/common/MediaItem;

    .line 1659
    iget-object v0, p0, Landroidx/media2/session/MediaSessionImplBase$PlaylistItemListener;->mSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/session/MediaSessionImplBase;

    .line 1660
    .local v0, "session":Landroidx/media2/session/MediaSessionImplBase;
    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 1663
    :cond_0
    invoke-virtual {v0}, Landroidx/media2/session/MediaSessionImplBase;->getPlaylist()Ljava/util/List;

    move-result-object v1

    .line 1664
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/MediaItem;>;"
    if-nez v1, :cond_1

    .line 1665
    return-void

    .line 1667
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 1668
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1669
    new-instance v3, Landroidx/media2/session/MediaSessionImplBase$PlaylistItemListener$1;

    invoke-direct {v3, p0, v1, v0}, Landroidx/media2/session/MediaSessionImplBase$PlaylistItemListener$1;-><init>(Landroidx/media2/session/MediaSessionImplBase$PlaylistItemListener;Ljava/util/List;Landroidx/media2/session/MediaSessionImplBase;)V

    invoke-virtual {v0, v3}, Landroidx/media2/session/MediaSessionImplBase;->dispatchRemoteControllerTaskWithoutReturn(Landroidx/media2/session/MediaSessionImplBase$RemoteControllerTask;)V

    .line 1679
    return-void

    .line 1667
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1682
    .end local v2    # "i":I
    :cond_3
    return-void

    .line 1660
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/MediaItem;>;"
    :cond_4
    :goto_1
    nop

    .line 1661
    return-void
.end method
