.class final Landroidx/media2/session/MediaSessionImplBase$MediaButtonReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaSessionImplBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/MediaSessionImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MediaButtonReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/session/MediaSessionImplBase;


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaSessionImplBase;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/session/MediaSessionImplBase;

    .line 1737
    iput-object p1, p0, Landroidx/media2/session/MediaSessionImplBase$MediaButtonReceiver;->this$0:Landroidx/media2/session/MediaSessionImplBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1740
    const-string v0, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1741
    return-void

    .line 1743
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1744
    .local v0, "sessionUri":Landroid/net/Uri;
    iget-object v1, p0, Landroidx/media2/session/MediaSessionImplBase$MediaButtonReceiver;->this$0:Landroidx/media2/session/MediaSessionImplBase;

    iget-object v1, v1, Landroidx/media2/session/MediaSessionImplBase;->mSessionUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1745
    return-void

    .line 1747
    :cond_1
    const-string v1, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    .line 1748
    .local v1, "keyEvent":Landroid/view/KeyEvent;
    if-nez v1, :cond_2

    .line 1749
    return-void

    .line 1751
    :cond_2
    iget-object v2, p0, Landroidx/media2/session/MediaSessionImplBase$MediaButtonReceiver;->this$0:Landroidx/media2/session/MediaSessionImplBase;

    invoke-virtual {v2}, Landroidx/media2/session/MediaSessionImplBase;->getSessionCompat()Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/media/session/MediaSessionCompat;->getController()Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/media/session/MediaControllerCompat;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    .line 1752
    return-void
.end method
