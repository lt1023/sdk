.class Landroidx/media2/session/MediaSessionImplBase$41;
.super Ljava/lang/Object;
.source "MediaSessionImplBase.java"

# interfaces
.implements Landroidx/media2/session/MediaSessionImplBase$PlayerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/MediaSessionImplBase;->selectTrack(Landroidx/media2/common/SessionPlayer$TrackInfo;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/media2/session/MediaSessionImplBase$PlayerTask<",
        "Lcom/google/common/util/concurrent/ListenableFuture<",
        "Landroidx/media2/common/SessionPlayer$PlayerResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/session/MediaSessionImplBase;

.field final synthetic val$trackInfo:Landroidx/media2/common/SessionPlayer$TrackInfo;


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaSessionImplBase;Landroidx/media2/common/SessionPlayer$TrackInfo;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/session/MediaSessionImplBase;

    .line 878
    iput-object p1, p0, Landroidx/media2/session/MediaSessionImplBase$41;->this$0:Landroidx/media2/session/MediaSessionImplBase;

    iput-object p2, p0, Landroidx/media2/session/MediaSessionImplBase$41;->val$trackInfo:Landroidx/media2/common/SessionPlayer$TrackInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroidx/media2/common/SessionPlayer;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p1, "player"    # Landroidx/media2/common/SessionPlayer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/SessionPlayer;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/media2/common/SessionPlayer$PlayerResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 881
    iget-object v0, p0, Landroidx/media2/session/MediaSessionImplBase$41;->val$trackInfo:Landroidx/media2/common/SessionPlayer$TrackInfo;

    invoke-virtual {p1, v0}, Landroidx/media2/common/SessionPlayer;->selectTrackInternal(Landroidx/media2/common/SessionPlayer$TrackInfo;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic run(Landroidx/media2/common/SessionPlayer;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 878
    invoke-virtual {p0, p1}, Landroidx/media2/session/MediaSessionImplBase$41;->run(Landroidx/media2/common/SessionPlayer;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
