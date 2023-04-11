.class Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$MediaDrmEventListener;
.super Ljava/lang/Object;
.source "DefaultDrmSessionManager.java"

# interfaces
.implements Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaDrmEventListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/media2/exoplayer/external/drm/ExoMediaDrm$OnEventListener<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;


# direct methods
.method private constructor <init>(Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;)V
    .locals 0

    .line 548
    .local p0, "this":Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$MediaDrmEventListener;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager<TT;>.MediaDrmEventListener;"
    iput-object p1, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$MediaDrmEventListener;->this$0:Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;
    .param p2, "x1"    # Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$1;

    .line 548
    .local p0, "this":Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$MediaDrmEventListener;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager<TT;>.MediaDrmEventListener;"
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$MediaDrmEventListener;-><init>(Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;)V

    return-void
.end method


# virtual methods
.method public onEvent(Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;[BII[B)V
    .locals 1
    .param p2, "sessionId"    # [B
    .param p3, "event"    # I
    .param p4, "extra"    # I
    .param p5, "data"    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/drm/ExoMediaDrm<",
            "+TT;>;[BII[B)V"
        }
    .end annotation

    .line 557
    .local p0, "this":Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$MediaDrmEventListener;, "Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager<TT;>.MediaDrmEventListener;"
    .local p1, "md":Landroidx/media2/exoplayer/external/drm/ExoMediaDrm;, "Landroidx/media2/exoplayer/external/drm/ExoMediaDrm<+TT;>;"
    iget-object v0, p0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$MediaDrmEventListener;->this$0:Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager;->mediaDrmHandler:Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$MediaDrmHandler;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$MediaDrmHandler;

    invoke-virtual {v0, p3, p2}, Landroidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$MediaDrmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 558
    return-void
.end method
