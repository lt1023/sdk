.class Landroidx/media2/session/MediaSessionImplBase$51;
.super Ljava/lang/Object;
.source "MediaSessionImplBase.java"

# interfaces
.implements Landroidx/media2/session/MediaSessionImplBase$RemoteControllerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/MediaSessionImplBase;->notifyPlayerUpdatedNotLocked(Landroidx/media2/common/SessionPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/session/MediaSessionImplBase;

.field final synthetic val$currentTimeMs:J

.field final synthetic val$positionMs:J

.field final synthetic val$speed:F


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaSessionImplBase;JJF)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/session/MediaSessionImplBase;

    .line 1154
    iput-object p1, p0, Landroidx/media2/session/MediaSessionImplBase$51;->this$0:Landroidx/media2/session/MediaSessionImplBase;

    iput-wide p2, p0, Landroidx/media2/session/MediaSessionImplBase$51;->val$currentTimeMs:J

    iput-wide p4, p0, Landroidx/media2/session/MediaSessionImplBase$51;->val$positionMs:J

    iput p6, p0, Landroidx/media2/session/MediaSessionImplBase$51;->val$speed:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroidx/media2/session/MediaSession$ControllerCb;I)V
    .locals 7
    .param p1, "callback"    # Landroidx/media2/session/MediaSession$ControllerCb;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1157
    iget-wide v2, p0, Landroidx/media2/session/MediaSessionImplBase$51;->val$currentTimeMs:J

    iget-wide v4, p0, Landroidx/media2/session/MediaSessionImplBase$51;->val$positionMs:J

    iget v6, p0, Landroidx/media2/session/MediaSessionImplBase$51;->val$speed:F

    move-object v0, p1

    move v1, p2

    invoke-virtual/range {v0 .. v6}, Landroidx/media2/session/MediaSession$ControllerCb;->onPlaybackSpeedChanged(IJJF)V

    .line 1158
    return-void
.end method
