.class Landroidx/media2/session/MediaSessionLegacyStub$11;
.super Ljava/lang/Object;
.source "MediaSessionLegacyStub.java"

# interfaces
.implements Landroidx/media2/session/MediaSessionLegacyStub$SessionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/MediaSessionLegacyStub;->onStop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/session/MediaSessionLegacyStub;


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaSessionLegacyStub;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/session/MediaSessionLegacyStub;

    .line 254
    iput-object p1, p0, Landroidx/media2/session/MediaSessionLegacyStub$11;->this$0:Landroidx/media2/session/MediaSessionLegacyStub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroidx/media2/session/MediaSession$ControllerInfo;)V
    .locals 4
    .param p1, "controller"    # Landroidx/media2/session/MediaSession$ControllerInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 257
    iget-object v0, p0, Landroidx/media2/session/MediaSessionLegacyStub$11;->this$0:Landroidx/media2/session/MediaSessionLegacyStub;

    new-instance v1, Landroidx/media2/session/MediaSessionLegacyStub$11$1;

    invoke-direct {v1, p0}, Landroidx/media2/session/MediaSessionLegacyStub$11$1;-><init>(Landroidx/media2/session/MediaSessionLegacyStub$11;)V

    const/4 v2, 0x0

    const/16 v3, 0x2713

    invoke-virtual {v0, p1, v2, v3, v1}, Landroidx/media2/session/MediaSessionLegacyStub;->handleTaskOnExecutor(Landroidx/media2/session/MediaSession$ControllerInfo;Landroidx/media2/session/SessionCommand;ILandroidx/media2/session/MediaSessionLegacyStub$SessionTask;)V

    .line 265
    return-void
.end method
