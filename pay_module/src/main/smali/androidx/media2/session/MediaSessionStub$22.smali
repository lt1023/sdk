.class Landroidx/media2/session/MediaSessionStub$22;
.super Ljava/lang/Object;
.source "MediaSessionStub.java"

# interfaces
.implements Landroidx/media2/session/MediaSessionStub$SessionPlayerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/MediaSessionStub;->setPlaylist(Landroidx/media2/session/IMediaController;ILjava/util/List;Landroidx/versionedparcelable/ParcelImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/session/MediaSessionStub;

.field final synthetic val$metadata:Landroidx/versionedparcelable/ParcelImpl;

.field final synthetic val$playlist:Ljava/util/List;


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaSessionStub;Ljava/util/List;Landroidx/versionedparcelable/ParcelImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/session/MediaSessionStub;

    .line 826
    iput-object p1, p0, Landroidx/media2/session/MediaSessionStub$22;->this$0:Landroidx/media2/session/MediaSessionStub;

    iput-object p2, p0, Landroidx/media2/session/MediaSessionStub$22;->val$playlist:Ljava/util/List;

    iput-object p3, p0, Landroidx/media2/session/MediaSessionStub$22;->val$metadata:Landroidx/versionedparcelable/ParcelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroidx/media2/session/MediaSession$ControllerInfo;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .param p1, "controller"    # Landroidx/media2/session/MediaSession$ControllerInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/session/MediaSession$ControllerInfo;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .line 829
    iget-object v0, p0, Landroidx/media2/session/MediaSessionStub$22;->val$playlist:Ljava/util/List;

    if-nez v0, :cond_0

    .line 830
    const-string v0, "MediaSessionStub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPlaylist(): Ignoring null playlist from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    const/4 v0, -0x3

    invoke-static {v0}, Landroidx/media2/common/SessionPlayer$PlayerResult;->createFuture(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 833
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 834
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/MediaItem;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroidx/media2/session/MediaSessionStub$22;->val$playlist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 835
    iget-object v2, p0, Landroidx/media2/session/MediaSessionStub$22;->this$0:Landroidx/media2/session/MediaSessionStub;

    iget-object v3, p0, Landroidx/media2/session/MediaSessionStub$22;->val$playlist:Ljava/util/List;

    .line 836
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 835
    invoke-virtual {v2, p1, v3}, Landroidx/media2/session/MediaSessionStub;->convertMediaItemOnExecutor(Landroidx/media2/session/MediaSession$ControllerInfo;Ljava/lang/String;)Landroidx/media2/common/MediaItem;

    move-result-object v2

    .line 837
    .local v2, "item":Landroidx/media2/common/MediaItem;
    if-eqz v2, :cond_1

    .line 838
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 837
    :cond_1
    nop

    .line 834
    .end local v2    # "item":Landroidx/media2/common/MediaItem;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 841
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Landroidx/media2/session/MediaSessionStub$22;->this$0:Landroidx/media2/session/MediaSessionStub;

    iget-object v1, v1, Landroidx/media2/session/MediaSessionStub;->mSessionImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    iget-object v2, p0, Landroidx/media2/session/MediaSessionStub$22;->val$metadata:Landroidx/versionedparcelable/ParcelImpl;

    .line 842
    invoke-static {v2}, Landroidx/media2/common/MediaParcelUtils;->fromParcelable(Landroidx/versionedparcelable/ParcelImpl;)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v2

    check-cast v2, Landroidx/media2/common/MediaMetadata;

    .line 841
    invoke-interface {v1, v0, v2}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->setPlaylist(Ljava/util/List;Landroidx/media2/common/MediaMetadata;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    return-object v1
.end method
