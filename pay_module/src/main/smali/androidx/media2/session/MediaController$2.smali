.class Landroidx/media2/session/MediaController$2;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/MediaController;->notifyControllerCallback(Landroidx/media2/session/MediaController$ControllerCallbackRunnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/session/MediaController;

.field final synthetic val$callbackRunnable:Landroidx/media2/session/MediaController$ControllerCallbackRunnable;


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaController;Landroidx/media2/session/MediaController$ControllerCallbackRunnable;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/session/MediaController;

    .line 1310
    iput-object p1, p0, Landroidx/media2/session/MediaController$2;->this$0:Landroidx/media2/session/MediaController;

    iput-object p2, p0, Landroidx/media2/session/MediaController$2;->val$callbackRunnable:Landroidx/media2/session/MediaController$ControllerCallbackRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1313
    iget-object v0, p0, Landroidx/media2/session/MediaController$2;->val$callbackRunnable:Landroidx/media2/session/MediaController$ControllerCallbackRunnable;

    iget-object v1, p0, Landroidx/media2/session/MediaController$2;->this$0:Landroidx/media2/session/MediaController;

    iget-object v1, v1, Landroidx/media2/session/MediaController;->mCallback:Landroidx/media2/session/MediaController$ControllerCallback;

    invoke-interface {v0, v1}, Landroidx/media2/session/MediaController$ControllerCallbackRunnable;->run(Landroidx/media2/session/MediaController$ControllerCallback;)V

    .line 1314
    return-void
.end method
