.class Landroidx/media2/session/MediaControllerImplBase$55;
.super Ljava/lang/Object;
.source "MediaControllerImplBase.java"

# interfaces
.implements Landroidx/media2/session/MediaController$ControllerCallbackRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/MediaControllerImplBase;->onSetCustomLayout(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/session/MediaControllerImplBase;

.field final synthetic val$layout:Ljava/util/List;

.field final synthetic val$seq:I


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaControllerImplBase;Ljava/util/List;I)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/session/MediaControllerImplBase;

    .line 1361
    iput-object p1, p0, Landroidx/media2/session/MediaControllerImplBase$55;->this$0:Landroidx/media2/session/MediaControllerImplBase;

    iput-object p2, p0, Landroidx/media2/session/MediaControllerImplBase$55;->val$layout:Ljava/util/List;

    iput p3, p0, Landroidx/media2/session/MediaControllerImplBase$55;->val$seq:I

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

    .line 1364
    iget-object v0, p0, Landroidx/media2/session/MediaControllerImplBase$55;->this$0:Landroidx/media2/session/MediaControllerImplBase;

    iget-object v0, v0, Landroidx/media2/session/MediaControllerImplBase;->mInstance:Landroidx/media2/session/MediaController;

    iget-object v1, p0, Landroidx/media2/session/MediaControllerImplBase$55;->val$layout:Ljava/util/List;

    invoke-virtual {p1, v0, v1}, Landroidx/media2/session/MediaController$ControllerCallback;->onSetCustomLayout(Landroidx/media2/session/MediaController;Ljava/util/List;)I

    move-result v0

    .line 1365
    .local v0, "resultCode":I
    new-instance v1, Landroidx/media2/session/SessionResult;

    invoke-direct {v1, v0}, Landroidx/media2/session/SessionResult;-><init>(I)V

    .line 1366
    .local v1, "result":Landroidx/media2/session/SessionResult;
    iget-object v2, p0, Landroidx/media2/session/MediaControllerImplBase$55;->this$0:Landroidx/media2/session/MediaControllerImplBase;

    iget v3, p0, Landroidx/media2/session/MediaControllerImplBase$55;->val$seq:I

    invoke-virtual {v2, v3, v1}, Landroidx/media2/session/MediaControllerImplBase;->sendControllerResult(ILandroidx/media2/session/SessionResult;)V

    .line 1367
    return-void
.end method
