.class Landroidx/media2/session/MediaControllerImplLegacy$1;
.super Ljava/lang/Object;
.source "MediaControllerImplLegacy.java"

# interfaces
.implements Landroidx/media2/session/MediaController$ControllerCallbackRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/MediaControllerImplLegacy;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/session/MediaControllerImplLegacy;


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaControllerImplLegacy;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/session/MediaControllerImplLegacy;

    .line 232
    iput-object p1, p0, Landroidx/media2/session/MediaControllerImplLegacy$1;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

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

    .line 235
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplLegacy$1;->this$0:Landroidx/media2/session/MediaControllerImplLegacy;

    iget-object v0, v0, Landroidx/media2/session/MediaControllerImplLegacy;->mInstance:Landroidx/media2/session/MediaController;

    invoke-virtual {p1, v0}, Landroidx/media2/session/MediaController$ControllerCallback;->onDisconnected(Landroidx/media2/session/MediaController;)V

    .line 236
    return-void
.end method
