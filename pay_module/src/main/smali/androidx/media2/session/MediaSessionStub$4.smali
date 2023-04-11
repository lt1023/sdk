.class Landroidx/media2/session/MediaSessionStub$4;
.super Ljava/lang/Object;
.source "MediaSessionStub.java"

# interfaces
.implements Landroidx/media2/session/MediaSessionStub$SessionCallbackTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/MediaSessionStub;->adjustVolume(Landroidx/media2/session/IMediaController;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/media2/session/MediaSessionStub$SessionCallbackTask<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/session/MediaSessionStub;

.field final synthetic val$direction:I

.field final synthetic val$flags:I


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaSessionStub;II)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/session/MediaSessionStub;

    .line 502
    iput-object p1, p0, Landroidx/media2/session/MediaSessionStub$4;->this$0:Landroidx/media2/session/MediaSessionStub;

    iput p2, p0, Landroidx/media2/session/MediaSessionStub$4;->val$direction:I

    iput p3, p0, Landroidx/media2/session/MediaSessionStub$4;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroidx/media2/session/MediaSession$ControllerInfo;)Ljava/lang/Integer;
    .locals 4
    .param p1, "controller"    # Landroidx/media2/session/MediaSession$ControllerInfo;

    .line 505
    iget-object v0, p0, Landroidx/media2/session/MediaSessionStub$4;->this$0:Landroidx/media2/session/MediaSessionStub;

    iget-object v0, v0, Landroidx/media2/session/MediaSessionStub;->mSessionImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    invoke-interface {v0}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->getSessionCompat()Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v0

    .line 506
    .local v0, "sessionCompat":Landroid/support/v4/media/session/MediaSessionCompat;
    if-eqz v0, :cond_0

    .line 507
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->getController()Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object v1

    iget v2, p0, Landroidx/media2/session/MediaSessionStub$4;->val$direction:I

    iget v3, p0, Landroidx/media2/session/MediaSessionStub$4;->val$flags:I

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/media/session/MediaControllerCompat;->adjustVolume(II)V

    goto :goto_0

    .line 506
    :cond_0
    nop

    .line 510
    :goto_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic run(Landroidx/media2/session/MediaSession$ControllerInfo;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 502
    invoke-virtual {p0, p1}, Landroidx/media2/session/MediaSessionStub$4;->run(Landroidx/media2/session/MediaSession$ControllerInfo;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
