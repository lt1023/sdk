.class Landroidx/media2/session/MediaSessionLegacyStub$22;
.super Ljava/lang/Object;
.source "MediaSessionLegacyStub.java"

# interfaces
.implements Landroidx/media2/session/MediaSessionLegacyStub$SessionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/MediaSessionLegacyStub;->onAddQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/session/MediaSessionLegacyStub;

.field final synthetic val$description:Landroid/support/v4/media/MediaDescriptionCompat;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaSessionLegacyStub;Landroid/support/v4/media/MediaDescriptionCompat;I)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/session/MediaSessionLegacyStub;

    .line 420
    iput-object p1, p0, Landroidx/media2/session/MediaSessionLegacyStub$22;->this$0:Landroidx/media2/session/MediaSessionLegacyStub;

    iput-object p2, p0, Landroidx/media2/session/MediaSessionLegacyStub$22;->val$description:Landroid/support/v4/media/MediaDescriptionCompat;

    iput p3, p0, Landroidx/media2/session/MediaSessionLegacyStub$22;->val$index:I

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

    .line 423
    iget-object v0, p0, Landroidx/media2/session/MediaSessionLegacyStub$22;->val$description:Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->getMediaId()Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, "mediaId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 425
    const-string v1, "MediaSessionLegacyStub"

    const-string v2, "onAddQueueItem(): Media ID shouldn\'t be empty"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    return-void

    .line 428
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/MediaSessionLegacyStub$22;->this$0:Landroidx/media2/session/MediaSessionLegacyStub;

    iget-object v1, v1, Landroidx/media2/session/MediaSessionLegacyStub;->mSessionImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    invoke-interface {v1}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->getCallback()Landroidx/media2/session/MediaSession$SessionCallback;

    move-result-object v1

    iget-object v2, p0, Landroidx/media2/session/MediaSessionLegacyStub$22;->this$0:Landroidx/media2/session/MediaSessionLegacyStub;

    iget-object v2, v2, Landroidx/media2/session/MediaSessionLegacyStub;->mSessionImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    .line 429
    invoke-interface {v2}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->getInstance()Landroidx/media2/session/MediaSession;

    move-result-object v2

    .line 428
    invoke-virtual {v1, v2, p1, v0}, Landroidx/media2/session/MediaSession$SessionCallback;->onCreateMediaItem(Landroidx/media2/session/MediaSession;Landroidx/media2/session/MediaSession$ControllerInfo;Ljava/lang/String;)Landroidx/media2/common/MediaItem;

    move-result-object v1

    .line 430
    .local v1, "newItem":Landroidx/media2/common/MediaItem;
    iget-object v2, p0, Landroidx/media2/session/MediaSessionLegacyStub$22;->this$0:Landroidx/media2/session/MediaSessionLegacyStub;

    iget-object v2, v2, Landroidx/media2/session/MediaSessionLegacyStub;->mSessionImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    iget v3, p0, Landroidx/media2/session/MediaSessionLegacyStub$22;->val$index:I

    invoke-interface {v2, v3, v1}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->addPlaylistItem(ILandroidx/media2/common/MediaItem;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 431
    return-void
.end method
