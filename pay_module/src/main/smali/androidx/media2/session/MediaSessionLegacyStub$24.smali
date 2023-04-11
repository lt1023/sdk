.class Landroidx/media2/session/MediaSessionLegacyStub$24;
.super Ljava/lang/Object;
.source "MediaSessionLegacyStub.java"

# interfaces
.implements Landroidx/media2/session/MediaSessionLegacyStub$SessionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/MediaSessionLegacyStub;->onRemoveQueueItemAt(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/session/MediaSessionLegacyStub;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaSessionLegacyStub;I)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/session/MediaSessionLegacyStub;

    .line 464
    iput-object p1, p0, Landroidx/media2/session/MediaSessionLegacyStub$24;->this$0:Landroidx/media2/session/MediaSessionLegacyStub;

    iput p2, p0, Landroidx/media2/session/MediaSessionLegacyStub$24;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroidx/media2/session/MediaSession$ControllerInfo;)V
    .locals 2
    .param p1, "controller"    # Landroidx/media2/session/MediaSession$ControllerInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 467
    iget v0, p0, Landroidx/media2/session/MediaSessionLegacyStub$24;->val$index:I

    if-gez v0, :cond_0

    .line 468
    const-string v0, "MediaSessionLegacyStub"

    const-string v1, "onRemoveQueueItem(): index shouldn\'t be negative"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    return-void

    .line 471
    :cond_0
    iget-object v0, p0, Landroidx/media2/session/MediaSessionLegacyStub$24;->this$0:Landroidx/media2/session/MediaSessionLegacyStub;

    iget-object v0, v0, Landroidx/media2/session/MediaSessionLegacyStub;->mSessionImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    iget v1, p0, Landroidx/media2/session/MediaSessionLegacyStub$24;->val$index:I

    invoke-interface {v0, v1}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->removePlaylistItem(I)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 472
    return-void
.end method
