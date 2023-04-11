.class Landroidx/media2/session/MediaControllerImplBase$46;
.super Ljava/lang/Object;
.source "MediaControllerImplBase.java"

# interfaces
.implements Landroidx/media2/session/MediaController$ControllerCallbackRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/MediaControllerImplBase;->notifySeekCompleted(JJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/session/MediaControllerImplBase;

.field final synthetic val$seekPositionMs:J


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaControllerImplBase;J)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/session/MediaControllerImplBase;

    .line 1121
    iput-object p1, p0, Landroidx/media2/session/MediaControllerImplBase$46;->this$0:Landroidx/media2/session/MediaControllerImplBase;

    iput-wide p2, p0, Landroidx/media2/session/MediaControllerImplBase$46;->val$seekPositionMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroidx/media2/session/MediaController$ControllerCallback;)V
    .locals 3
    .param p1, "callback"    # Landroidx/media2/session/MediaController$ControllerCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1124
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase$46;->this$0:Landroidx/media2/session/MediaControllerImplBase;

    iget-object v0, v0, Landroidx/media2/session/MediaControllerImplBase;->mInstance:Landroidx/media2/session/MediaController;

    invoke-virtual {v0}, Landroidx/media2/session/MediaController;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1125
    return-void

    .line 1127
    :cond_0
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase$46;->this$0:Landroidx/media2/session/MediaControllerImplBase;

    iget-object v0, v0, Landroidx/media2/session/MediaControllerImplBase;->mInstance:Landroidx/media2/session/MediaController;

    iget-wide v1, p0, Landroidx/media2/session/MediaControllerImplBase$46;->val$seekPositionMs:J

    invoke-virtual {p1, v0, v1, v2}, Landroidx/media2/session/MediaController$ControllerCallback;->onSeekCompleted(Landroidx/media2/session/MediaController;J)V

    .line 1128
    return-void
.end method
