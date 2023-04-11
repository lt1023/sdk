.class Landroidx/media2/session/MediaControllerImplBase$53;
.super Ljava/lang/Object;
.source "MediaControllerImplBase.java"

# interfaces
.implements Landroidx/media2/session/MediaController$ControllerCallbackRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/MediaControllerImplBase;->onCustomCommand(ILandroidx/media2/session/SessionCommand;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/session/MediaControllerImplBase;

.field final synthetic val$args:Landroid/os/Bundle;

.field final synthetic val$command:Landroidx/media2/session/SessionCommand;

.field final synthetic val$seq:I


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaControllerImplBase;Landroidx/media2/session/SessionCommand;Landroid/os/Bundle;I)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/session/MediaControllerImplBase;

    .line 1331
    iput-object p1, p0, Landroidx/media2/session/MediaControllerImplBase$53;->this$0:Landroidx/media2/session/MediaControllerImplBase;

    iput-object p2, p0, Landroidx/media2/session/MediaControllerImplBase$53;->val$command:Landroidx/media2/session/SessionCommand;

    iput-object p3, p0, Landroidx/media2/session/MediaControllerImplBase$53;->val$args:Landroid/os/Bundle;

    iput p4, p0, Landroidx/media2/session/MediaControllerImplBase$53;->val$seq:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroidx/media2/session/MediaController$ControllerCallback;)V
    .locals 4
    .param p1, "callback"    # Landroidx/media2/session/MediaController$ControllerCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1334
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase$53;->this$0:Landroidx/media2/session/MediaControllerImplBase;

    iget-object v0, v0, Landroidx/media2/session/MediaControllerImplBase;->mInstance:Landroidx/media2/session/MediaController;

    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplBase$53;->val$command:Landroidx/media2/session/SessionCommand;

    iget-object v2, p0, Landroidx/media2/session/MediaControllerImplBase$53;->val$args:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1, v2}, Landroidx/media2/session/MediaController$ControllerCallback;->onCustomCommand(Landroidx/media2/session/MediaController;Landroidx/media2/session/SessionCommand;Landroid/os/Bundle;)Landroidx/media2/session/SessionResult;

    move-result-object v0

    .line 1335
    .local v0, "result":Landroidx/media2/session/SessionResult;
    if-eqz v0, :cond_0

    .line 1343
    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplBase$53;->this$0:Landroidx/media2/session/MediaControllerImplBase;

    iget v2, p0, Landroidx/media2/session/MediaControllerImplBase$53;->val$seq:I

    invoke-virtual {v1, v2, v0}, Landroidx/media2/session/MediaControllerImplBase;->sendControllerResult(ILandroidx/media2/session/SessionResult;)V

    .line 1344
    return-void

    .line 1337
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ControllerCallback#onCustomCommand() has returned null, command="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/media2/session/MediaControllerImplBase$53;->val$command:Landroidx/media2/session/SessionCommand;

    .line 1338
    invoke-virtual {v3}, Landroidx/media2/session/SessionCommand;->getCustomAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
