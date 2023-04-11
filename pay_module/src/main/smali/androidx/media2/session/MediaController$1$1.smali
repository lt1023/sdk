.class Landroidx/media2/session/MediaController$1$1;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Landroidx/media2/session/MediaController$ControllerCallbackRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/MediaController$1;->onSessionTokenCreated(Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroidx/media2/session/SessionToken;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/media2/session/MediaController$1;


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaController$1;)V
    .locals 0
    .param p1, "this$1"    # Landroidx/media2/session/MediaController$1;

    .line 199
    iput-object p1, p0, Landroidx/media2/session/MediaController$1$1;->this$1:Landroidx/media2/session/MediaController$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroidx/media2/session/MediaController$ControllerCallback;)V
    .locals 1
    .param p1, "callback"    # Landroidx/media2/session/MediaController$ControllerCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 202
    iget-object v0, p0, Landroidx/media2/session/MediaController$1$1;->this$1:Landroidx/media2/session/MediaController$1;

    iget-object v0, v0, Landroidx/media2/session/MediaController$1;->this$0:Landroidx/media2/session/MediaController;

    invoke-virtual {p1, v0}, Landroidx/media2/session/MediaController$ControllerCallback;->onDisconnected(Landroidx/media2/session/MediaController;)V

    .line 203
    return-void
.end method
