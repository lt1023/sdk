.class Landroidx/media2/session/MediaSessionImplBase$15;
.super Ljava/lang/Object;
.source "MediaSessionImplBase.java"

# interfaces
.implements Landroidx/media2/session/MediaSessionImplBase$PlayerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/MediaSessionImplBase;->getBufferedPosition()J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/media2/session/MediaSessionImplBase$PlayerTask<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/session/MediaSessionImplBase;


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaSessionImplBase;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/session/MediaSessionImplBase;

    .line 573
    iput-object p1, p0, Landroidx/media2/session/MediaSessionImplBase$15;->this$0:Landroidx/media2/session/MediaSessionImplBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroidx/media2/common/SessionPlayer;)Ljava/lang/Long;
    .locals 2
    .param p1, "player"    # Landroidx/media2/common/SessionPlayer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 576
    iget-object v0, p0, Landroidx/media2/session/MediaSessionImplBase$15;->this$0:Landroidx/media2/session/MediaSessionImplBase;

    invoke-virtual {v0, p1}, Landroidx/media2/session/MediaSessionImplBase;->isInPlaybackState(Landroidx/media2/common/SessionPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    invoke-virtual {p1}, Landroidx/media2/common/SessionPlayer;->getBufferedPosition()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 579
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

    .line 573
    invoke-virtual {p0, p1}, Landroidx/media2/session/MediaSessionImplBase$15;->run(Landroidx/media2/common/SessionPlayer;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
