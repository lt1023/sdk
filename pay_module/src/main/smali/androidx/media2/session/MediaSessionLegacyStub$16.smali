.class Landroidx/media2/session/MediaSessionLegacyStub$16;
.super Ljava/lang/Object;
.source "MediaSessionLegacyStub.java"

# interfaces
.implements Landroidx/media2/session/MediaSessionLegacyStub$SessionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/MediaSessionLegacyStub;->onSkipToQueueItem(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/session/MediaSessionLegacyStub;

.field final synthetic val$queueId:J


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaSessionLegacyStub;J)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/session/MediaSessionLegacyStub;

    .line 314
    iput-object p1, p0, Landroidx/media2/session/MediaSessionLegacyStub$16;->this$0:Landroidx/media2/session/MediaSessionLegacyStub;

    iput-wide p2, p0, Landroidx/media2/session/MediaSessionLegacyStub$16;->val$queueId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroidx/media2/session/MediaSession$ControllerInfo;)V
    .locals 4
    .param p1, "controller"    # Landroidx/media2/session/MediaSession$ControllerInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 317
    iget-object v0, p0, Landroidx/media2/session/MediaSessionLegacyStub$16;->this$0:Landroidx/media2/session/MediaSessionLegacyStub;

    iget-object v0, v0, Landroidx/media2/session/MediaSessionLegacyStub;->mSessionImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    invoke-interface {v0}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->getPlayer()Landroidx/media2/common/SessionPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media2/common/SessionPlayer;->getPlaylist()Ljava/util/List;

    move-result-object v0

    .line 318
    .local v0, "playlist":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/MediaItem;>;"
    if-nez v0, :cond_0

    .line 319
    return-void

    .line 323
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/MediaSessionLegacyStub$16;->this$0:Landroidx/media2/session/MediaSessionLegacyStub;

    iget-object v1, v1, Landroidx/media2/session/MediaSessionLegacyStub;->mSessionImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    iget-wide v2, p0, Landroidx/media2/session/MediaSessionLegacyStub$16;->val$queueId:J

    long-to-int v3, v2

    invoke-interface {v1, v3}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->skipToPlaylistItem(I)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 324
    return-void
.end method
