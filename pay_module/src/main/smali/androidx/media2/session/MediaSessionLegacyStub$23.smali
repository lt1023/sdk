.class Landroidx/media2/session/MediaSessionLegacyStub$23;
.super Ljava/lang/Object;
.source "MediaSessionLegacyStub.java"

# interfaces
.implements Landroidx/media2/session/MediaSessionLegacyStub$SessionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/MediaSessionLegacyStub;->onRemoveQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/session/MediaSessionLegacyStub;

.field final synthetic val$description:Landroid/support/v4/media/MediaDescriptionCompat;


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaSessionLegacyStub;Landroid/support/v4/media/MediaDescriptionCompat;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/session/MediaSessionLegacyStub;

    .line 441
    iput-object p1, p0, Landroidx/media2/session/MediaSessionLegacyStub$23;->this$0:Landroidx/media2/session/MediaSessionLegacyStub;

    iput-object p2, p0, Landroidx/media2/session/MediaSessionLegacyStub$23;->val$description:Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroidx/media2/session/MediaSession$ControllerInfo;)V
    .locals 5
    .param p1, "controller"    # Landroidx/media2/session/MediaSession$ControllerInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 444
    iget-object v0, p0, Landroidx/media2/session/MediaSessionLegacyStub$23;->val$description:Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->getMediaId()Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, "mediaId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 446
    const-string v1, "MediaSessionLegacyStub"

    const-string v2, "onRemoveQueueItem(): Media ID shouldn\'t be null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    return-void

    .line 449
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/MediaSessionLegacyStub$23;->this$0:Landroidx/media2/session/MediaSessionLegacyStub;

    iget-object v1, v1, Landroidx/media2/session/MediaSessionLegacyStub;->mSessionImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    invoke-interface {v1}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->getPlaylist()Ljava/util/List;

    move-result-object v1

    .line 450
    .local v1, "playlist":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/MediaItem;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 451
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/common/MediaItem;

    .line 452
    .local v3, "item":Landroidx/media2/common/MediaItem;
    invoke-virtual {v3}, Landroidx/media2/common/MediaItem;->getMediaId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 453
    iget-object v4, p0, Landroidx/media2/session/MediaSessionLegacyStub$23;->this$0:Landroidx/media2/session/MediaSessionLegacyStub;

    iget-object v4, v4, Landroidx/media2/session/MediaSessionLegacyStub;->mSessionImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    invoke-interface {v4, v2}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->removePlaylistItem(I)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 454
    return-void

    .line 452
    :cond_1
    nop

    .line 450
    .end local v3    # "item":Landroidx/media2/common/MediaItem;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 457
    .end local v2    # "i":I
    :cond_2
    return-void
.end method
