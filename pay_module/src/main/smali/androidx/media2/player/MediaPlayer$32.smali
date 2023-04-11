.class Landroidx/media2/player/MediaPlayer$32;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/MediaPlayer;->notifySessionPlayerCallback(Landroidx/media2/player/MediaPlayer$SessionPlayerCallbackNotifier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/player/MediaPlayer;

.field final synthetic val$callback:Landroidx/media2/common/SessionPlayer$PlayerCallback;

.field final synthetic val$notifier:Landroidx/media2/player/MediaPlayer$SessionPlayerCallbackNotifier;


# direct methods
.method constructor <init>(Landroidx/media2/player/MediaPlayer;Landroidx/media2/player/MediaPlayer$SessionPlayerCallbackNotifier;Landroidx/media2/common/SessionPlayer$PlayerCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/player/MediaPlayer;

    .line 2728
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$32;->this$0:Landroidx/media2/player/MediaPlayer;

    iput-object p2, p0, Landroidx/media2/player/MediaPlayer$32;->val$notifier:Landroidx/media2/player/MediaPlayer$SessionPlayerCallbackNotifier;

    iput-object p3, p0, Landroidx/media2/player/MediaPlayer$32;->val$callback:Landroidx/media2/common/SessionPlayer$PlayerCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2731
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$32;->val$notifier:Landroidx/media2/player/MediaPlayer$SessionPlayerCallbackNotifier;

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$32;->val$callback:Landroidx/media2/common/SessionPlayer$PlayerCallback;

    invoke-interface {v0, v1}, Landroidx/media2/player/MediaPlayer$SessionPlayerCallbackNotifier;->callCallback(Landroidx/media2/common/SessionPlayer$PlayerCallback;)V

    .line 2732
    return-void
.end method
