.class Landroidx/media2/player/MediaPlayer$Mp2Callback$11;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Landroidx/media2/player/MediaPlayer$SessionPlayerCallbackNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/MediaPlayer$Mp2Callback;->onSubtitleData(Landroidx/media2/player/MediaPlayer2;Landroidx/media2/common/MediaItem;ILandroidx/media2/common/SubtitleData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/media2/player/MediaPlayer$Mp2Callback;

.field final synthetic val$data:Landroidx/media2/common/SubtitleData;

.field final synthetic val$item:Landroidx/media2/common/MediaItem;

.field final synthetic val$trackIdx:I


# direct methods
.method constructor <init>(Landroidx/media2/player/MediaPlayer$Mp2Callback;ILandroidx/media2/common/MediaItem;Landroidx/media2/common/SubtitleData;)V
    .locals 0
    .param p1, "this$1"    # Landroidx/media2/player/MediaPlayer$Mp2Callback;

    .line 3269
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$Mp2Callback$11;->this$1:Landroidx/media2/player/MediaPlayer$Mp2Callback;

    iput p2, p0, Landroidx/media2/player/MediaPlayer$Mp2Callback$11;->val$trackIdx:I

    iput-object p3, p0, Landroidx/media2/player/MediaPlayer$Mp2Callback$11;->val$item:Landroidx/media2/common/MediaItem;

    iput-object p4, p0, Landroidx/media2/player/MediaPlayer$Mp2Callback$11;->val$data:Landroidx/media2/common/SubtitleData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callCallback(Landroidx/media2/common/SessionPlayer$PlayerCallback;)V
    .locals 4
    .param p1, "callback"    # Landroidx/media2/common/SessionPlayer$PlayerCallback;

    .line 3272
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$Mp2Callback$11;->this$1:Landroidx/media2/player/MediaPlayer$Mp2Callback;

    iget-object v0, v0, Landroidx/media2/player/MediaPlayer$Mp2Callback;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$Mp2Callback$11;->this$1:Landroidx/media2/player/MediaPlayer$Mp2Callback;

    iget-object v1, v1, Landroidx/media2/player/MediaPlayer$Mp2Callback;->this$0:Landroidx/media2/player/MediaPlayer;

    iget v2, p0, Landroidx/media2/player/MediaPlayer$Mp2Callback$11;->val$trackIdx:I

    invoke-virtual {v1, v2}, Landroidx/media2/player/MediaPlayer;->getTrackInfo(I)Landroidx/media2/player/MediaPlayer$TrackInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media2/player/MediaPlayer;->createTrackInfoInternal(Landroidx/media2/player/MediaPlayer$TrackInfo;)Landroidx/media2/common/SessionPlayer$TrackInfo;

    move-result-object v0

    .line 3273
    .local v0, "track":Landroidx/media2/common/SessionPlayer$TrackInfo;
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$Mp2Callback$11;->this$1:Landroidx/media2/player/MediaPlayer$Mp2Callback;

    iget-object v1, v1, Landroidx/media2/player/MediaPlayer$Mp2Callback;->this$0:Landroidx/media2/player/MediaPlayer;

    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$Mp2Callback$11;->val$item:Landroidx/media2/common/MediaItem;

    iget-object v3, p0, Landroidx/media2/player/MediaPlayer$Mp2Callback$11;->val$data:Landroidx/media2/common/SubtitleData;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroidx/media2/common/SessionPlayer$PlayerCallback;->onSubtitleData(Landroidx/media2/common/SessionPlayer;Landroidx/media2/common/MediaItem;Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/common/SubtitleData;)V

    .line 3274
    return-void
.end method
