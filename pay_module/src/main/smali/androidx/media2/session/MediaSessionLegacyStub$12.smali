.class Landroidx/media2/session/MediaSessionLegacyStub$12;
.super Ljava/lang/Object;
.source "MediaSessionLegacyStub.java"

# interfaces
.implements Landroidx/media2/session/MediaSessionLegacyStub$SessionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/MediaSessionLegacyStub;->onSeekTo(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/session/MediaSessionLegacyStub;

.field final synthetic val$pos:J


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaSessionLegacyStub;J)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/session/MediaSessionLegacyStub;

    .line 271
    iput-object p1, p0, Landroidx/media2/session/MediaSessionLegacyStub$12;->this$0:Landroidx/media2/session/MediaSessionLegacyStub;

    iput-wide p2, p0, Landroidx/media2/session/MediaSessionLegacyStub$12;->val$pos:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroidx/media2/session/MediaSession$ControllerInfo;)V
    .locals 3
    .param p1, "controller"    # Landroidx/media2/session/MediaSession$ControllerInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 274
    iget-object v0, p0, Landroidx/media2/session/MediaSessionLegacyStub$12;->this$0:Landroidx/media2/session/MediaSessionLegacyStub;

    iget-object v0, v0, Landroidx/media2/session/MediaSessionLegacyStub;->mSessionImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    iget-wide v1, p0, Landroidx/media2/session/MediaSessionLegacyStub$12;->val$pos:J

    invoke-interface {v0, v1, v2}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->seekTo(J)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 275
    return-void
.end method
