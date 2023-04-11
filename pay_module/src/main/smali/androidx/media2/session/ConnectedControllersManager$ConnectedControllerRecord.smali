.class Landroidx/media2/session/ConnectedControllersManager$ConnectedControllerRecord;
.super Ljava/lang/Object;
.source "ConnectedControllersManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/ConnectedControllersManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectedControllerRecord"
.end annotation


# instance fields
.field public allowedCommands:Landroidx/media2/session/SessionCommandGroup;

.field public final controllerKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final sequencedFutureManager:Landroidx/media2/session/SequencedFutureManager;

.field final synthetic this$0:Landroidx/media2/session/ConnectedControllersManager;


# direct methods
.method constructor <init>(Landroidx/media2/session/ConnectedControllersManager;Ljava/lang/Object;Landroidx/media2/session/SequencedFutureManager;Landroidx/media2/session/SessionCommandGroup;)V
    .locals 0
    .param p3, "sequencedFutureManager"    # Landroidx/media2/session/SequencedFutureManager;
    .param p4, "allowedCommands"    # Landroidx/media2/session/SessionCommandGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/media2/session/SequencedFutureManager;",
            "Landroidx/media2/session/SessionCommandGroup;",
            ")V"
        }
    .end annotation

    .line 202
    .local p0, "this":Landroidx/media2/session/ConnectedControllersManager$ConnectedControllerRecord;, "Landroidx/media2/session/ConnectedControllersManager<TT;>.ConnectedControllerRecord;"
    .local p2, "controllerKey":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Landroidx/media2/session/ConnectedControllersManager$ConnectedControllerRecord;->this$0:Landroidx/media2/session/ConnectedControllersManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-object p2, p0, Landroidx/media2/session/ConnectedControllersManager$ConnectedControllerRecord;->controllerKey:Ljava/lang/Object;

    .line 204
    iput-object p3, p0, Landroidx/media2/session/ConnectedControllersManager$ConnectedControllerRecord;->sequencedFutureManager:Landroidx/media2/session/SequencedFutureManager;

    .line 205
    iput-object p4, p0, Landroidx/media2/session/ConnectedControllersManager$ConnectedControllerRecord;->allowedCommands:Landroidx/media2/session/SessionCommandGroup;

    .line 206
    iget-object p1, p0, Landroidx/media2/session/ConnectedControllersManager$ConnectedControllerRecord;->allowedCommands:Landroidx/media2/session/SessionCommandGroup;

    if-nez p1, :cond_0

    .line 207
    new-instance p1, Landroidx/media2/session/SessionCommandGroup;

    invoke-direct {p1}, Landroidx/media2/session/SessionCommandGroup;-><init>()V

    iput-object p1, p0, Landroidx/media2/session/ConnectedControllersManager$ConnectedControllerRecord;->allowedCommands:Landroidx/media2/session/SessionCommandGroup;

    goto :goto_0

    .line 206
    :cond_0
    nop

    .line 209
    :goto_0
    return-void
.end method
