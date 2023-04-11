.class Landroidx/media2/session/MediaControllerImplLegacy$2;
.super Landroid/os/ResultReceiver;
.source "MediaControllerImplLegacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/MediaControllerImplLegacy;->sendCustomCommand(Landroidx/media2/session/SessionCommand;Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/session/MediaControllerImplLegacy;

.field final synthetic val$result:Landroidx/media2/session/futures/ResolvableFuture;


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaControllerImplLegacy;Landroid/os/Handler;Landroidx/media2/session/futures/ResolvableFuture;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/session/MediaControllerImplLegacy;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 590
    iput-object p1, p0, Landroidx/media2/session/MediaControllerImplLegacy$2;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    iput-object p3, p0, Landroidx/media2/session/MediaControllerImplLegacy$2;->val$result:Landroidx/media2/session/futures/ResolvableFuture;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .line 593
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy$2;->val$result:Landroidx/media2/session/futures/ResolvableFuture;

    new-instance v1, Landroidx/media2/session/SessionResult;

    invoke-direct {v1, p1, p2}, Landroidx/media2/session/SessionResult;-><init>(ILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroidx/media2/session/futures/ResolvableFuture;->set(Ljava/lang/Object;)Z

    .line 594
    return-void
.end method
