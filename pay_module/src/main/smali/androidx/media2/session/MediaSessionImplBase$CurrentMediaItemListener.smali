.class Landroidx/media2/session/MediaSessionImplBase$CurrentMediaItemListener;
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
    name = "CurrentMediaItemListener"
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

    .line 1625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1626
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/media2/session/MediaSessionImplBase$CurrentMediaItemListener;->mSession:Ljava/lang/ref/WeakReference;

    .line 1627
    return-void
.end method


# virtual methods
.method public onMetadataChanged(Landroidx/media2/common/MediaItem;)V
    .locals 3
    .param p1, "item"    # Landroidx/media2/common/MediaItem;

    .line 1631
    iget-object v0, p0, Landroidx/media2/session/MediaSessionImplBase$CurrentMediaItemListener;->mSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/session/MediaSessionImplBase;

    .line 1632
    .local v0, "session":Landroidx/media2/session/MediaSessionImplBase;
    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 1635
    :cond_0
    invoke-virtual {v0}, Landroidx/media2/session/MediaSessionImplBase;->getCurrentMediaItem()Landroidx/media2/common/MediaItem;

    move-result-object v1

    .line 1636
    .local v1, "currentItem":Landroidx/media2/common/MediaItem;
    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1637
    new-instance v2, Landroidx/media2/session/MediaSessionImplBase$CurrentMediaItemListener$1;

    invoke-direct {v2, p0, p1, v0}, Landroidx/media2/session/MediaSessionImplBase$CurrentMediaItemListener$1;-><init>(Landroidx/media2/session/MediaSessionImplBase$CurrentMediaItemListener;Landroidx/media2/common/MediaItem;Landroidx/media2/session/MediaSessionImplBase;)V

    invoke-virtual {v0, v2}, Landroidx/media2/session/MediaSessionImplBase;->dispatchRemoteControllerTaskWithoutReturn(Landroidx/media2/session/MediaSessionImplBase$RemoteControllerTask;)V

    goto :goto_0

    .line 1636
    :cond_1
    nop

    .line 1647
    :goto_0
    return-void

    .line 1632
    .end local v1    # "currentItem":Landroidx/media2/common/MediaItem;
    :cond_2
    :goto_1
    nop

    .line 1633
    return-void
.end method
