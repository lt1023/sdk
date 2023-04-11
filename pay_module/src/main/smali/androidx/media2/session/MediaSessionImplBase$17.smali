.class Landroidx/media2/session/MediaSessionImplBase$17;
.super Ljava/lang/Object;
.source "MediaSessionImplBase.java"

# interfaces
.implements Landroidx/media2/session/MediaSessionImplBase$PlayerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/MediaSessionImplBase;->getPlaybackSpeed()F
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/media2/session/MediaSessionImplBase$PlayerTask<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/session/MediaSessionImplBase;


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaSessionImplBase;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/session/MediaSessionImplBase;

    .line 596
    iput-object p1, p0, Landroidx/media2/session/MediaSessionImplBase$17;->this$0:Landroidx/media2/session/MediaSessionImplBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroidx/media2/common/SessionPlayer;)Ljava/lang/Float;
    .locals 1
    .param p1, "player"    # Landroidx/media2/common/SessionPlayer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 599
    iget-object v0, p0, Landroidx/media2/session/MediaSessionImplBase$17;->this$0:Landroidx/media2/session/MediaSessionImplBase;

    invoke-virtual {v0, p1}, Landroidx/media2/session/MediaSessionImplBase;->isInPlaybackState(Landroidx/media2/common/SessionPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    invoke-virtual {p1}, Landroidx/media2/common/SessionPlayer;->getPlaybackSpeed()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 602
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic run(Landroidx/media2/common/SessionPlayer;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 596
    invoke-virtual {p0, p1}, Landroidx/media2/session/MediaSessionImplBase$17;->run(Landroidx/media2/common/SessionPlayer;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method
