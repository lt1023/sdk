.class Landroidx/media2/session/MediaControllerImplBase$54;
.super Ljava/lang/Object;
.source "MediaControllerImplBase.java"

# interfaces
.implements Landroidx/media2/session/MediaController$ControllerCallbackRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/MediaControllerImplBase;->onAllowedCommandsChanged(Landroidx/media2/session/SessionCommandGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/session/MediaControllerImplBase;

.field final synthetic val$commands:Landroidx/media2/session/SessionCommandGroup;


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaControllerImplBase;Landroidx/media2/session/SessionCommandGroup;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/session/MediaControllerImplBase;

    .line 1352
    iput-object p1, p0, Landroidx/media2/session/MediaControllerImplBase$54;->this$0:Landroidx/media2/session/MediaControllerImplBase;

    iput-object p2, p0, Landroidx/media2/session/MediaControllerImplBase$54;->val$commands:Landroidx/media2/session/SessionCommandGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroidx/media2/session/MediaController$ControllerCallback;)V
    .locals 2
    .param p1, "callback"    # Landroidx/media2/session/MediaController$ControllerCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1355
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase$54;->this$0:Landroidx/media2/session/MediaControllerImplBase;

    iget-object v0, v0, Landroidx/media2/session/MediaControllerImplBase;->mInstance:Landroidx/media2/session/MediaController;

    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplBase$54;->val$commands:Landroidx/media2/session/SessionCommandGroup;

    invoke-virtual {p1, v0, v1}, Landroidx/media2/session/MediaController$ControllerCallback;->onAllowedCommandsChanged(Landroidx/media2/session/MediaController;Landroidx/media2/session/SessionCommandGroup;)V

    .line 1356
    return-void
.end method
