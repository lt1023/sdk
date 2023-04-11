.class Landroidx/media2/session/MediaSessionImplBase$1;
.super Ljava/lang/Object;
.source "MediaSessionImplBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/MediaSessionImplBase;->updatePlayer(Landroidx/media2/common/SessionPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/session/MediaSessionImplBase;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaSessionImplBase;I)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/session/MediaSessionImplBase;

    .line 274
    iput-object p1, p0, Landroidx/media2/session/MediaSessionImplBase$1;->this$0:Landroidx/media2/session/MediaSessionImplBase;

    iput p2, p0, Landroidx/media2/session/MediaSessionImplBase$1;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 277
    iget-object v0, p0, Landroidx/media2/session/MediaSessionImplBase$1;->this$0:Landroidx/media2/session/MediaSessionImplBase;

    iget-object v0, v0, Landroidx/media2/session/MediaSessionImplBase;->mCallback:Landroidx/media2/session/MediaSession$SessionCallback;

    iget-object v1, p0, Landroidx/media2/session/MediaSessionImplBase$1;->this$0:Landroidx/media2/session/MediaSessionImplBase;

    invoke-virtual {v1}, Landroidx/media2/session/MediaSessionImplBase;->getInstance()Landroidx/media2/session/MediaSession;

    move-result-object v1

    iget v2, p0, Landroidx/media2/session/MediaSessionImplBase$1;->val$state:I

    invoke-virtual {v0, v1, v2}, Landroidx/media2/session/MediaSession$SessionCallback;->onPlayerStateChanged(Landroidx/media2/session/MediaSession;I)V

    .line 278
    return-void
.end method
