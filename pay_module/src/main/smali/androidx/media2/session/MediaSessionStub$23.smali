.class Landroidx/media2/session/MediaSessionStub$23;
.super Ljava/lang/Object;
.source "MediaSessionStub.java"

# interfaces
.implements Landroidx/media2/session/MediaSessionStub$SessionPlayerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/MediaSessionStub;->setMediaItem(Landroidx/media2/session/IMediaController;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/session/MediaSessionStub;

.field final synthetic val$mediaId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaSessionStub;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/session/MediaSessionStub;

    .line 853
    iput-object p1, p0, Landroidx/media2/session/MediaSessionStub$23;->this$0:Landroidx/media2/session/MediaSessionStub;

    iput-object p2, p0, Landroidx/media2/session/MediaSessionStub$23;->val$mediaId:Ljava/lang/String;

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

    .line 856
    iget-object v0, p0, Landroidx/media2/session/MediaSessionStub$23;->val$mediaId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_0

    .line 857
    const-string v0, "MediaSessionStub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMediaItem(): Ignoring empty mediaId from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    invoke-static {v1}, Landroidx/media2/common/SessionPlayer$PlayerResult;->createFuture(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 860
    :cond_0
    iget-object v0, p0, Landroidx/media2/session/MediaSessionStub$23;->this$0:Landroidx/media2/session/MediaSessionStub;

    iget-object v2, p0, Landroidx/media2/session/MediaSessionStub$23;->val$mediaId:Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Landroidx/media2/session/MediaSessionStub;->convertMediaItemOnExecutor(Landroidx/media2/session/MediaSession$ControllerInfo;Ljava/lang/String;)Landroidx/media2/common/MediaItem;

    move-result-object v0

    .line 861
    .local v0, "item":Landroidx/media2/common/MediaItem;
    if-nez v0, :cond_1

    .line 862
    invoke-static {v1}, Landroidx/media2/common/SessionPlayer$PlayerResult;->createFuture(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    return-object v1

    .line 864
    :cond_1
    iget-object v1, p0, Landroidx/media2/session/MediaSessionStub$23;->this$0:Landroidx/media2/session/MediaSessionStub;

    iget-object v1, v1, Landroidx/media2/session/MediaSessionStub;->mSessionImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    invoke-interface {v1, v0}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->setMediaItem(Landroidx/media2/common/MediaItem;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    return-object v1
.end method
