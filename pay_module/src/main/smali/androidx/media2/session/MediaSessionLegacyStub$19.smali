.class Landroidx/media2/session/MediaSessionLegacyStub$19;
.super Ljava/lang/Object;
.source "MediaSessionLegacyStub.java"

# interfaces
.implements Landroidx/media2/session/MediaSessionLegacyStub$SessionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/MediaSessionLegacyStub;->onSetRating(Landroid/support/v4/media/RatingCompat;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/session/MediaSessionLegacyStub;

.field final synthetic val$rating:Landroid/support/v4/media/RatingCompat;


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaSessionLegacyStub;Landroid/support/v4/media/RatingCompat;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/session/MediaSessionLegacyStub;

    .line 363
    iput-object p1, p0, Landroidx/media2/session/MediaSessionLegacyStub$19;->this$0:Landroidx/media2/session/MediaSessionLegacyStub;

    iput-object p2, p0, Landroidx/media2/session/MediaSessionLegacyStub$19;->val$rating:Landroid/support/v4/media/RatingCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroidx/media2/session/MediaSession$ControllerInfo;)V
    .locals 5
    .param p1, "controller"    # Landroidx/media2/session/MediaSession$ControllerInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 366
    iget-object v0, p0, Landroidx/media2/session/MediaSessionLegacyStub$19;->this$0:Landroidx/media2/session/MediaSessionLegacyStub;

    iget-object v0, v0, Landroidx/media2/session/MediaSessionLegacyStub;->mSessionImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    invoke-interface {v0}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->getCurrentMediaItem()Landroidx/media2/common/MediaItem;

    move-result-object v0

    .line 367
    .local v0, "currentItem":Landroidx/media2/common/MediaItem;
    if-nez v0, :cond_0

    .line 368
    return-void

    .line 370
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/MediaSessionLegacyStub$19;->this$0:Landroidx/media2/session/MediaSessionLegacyStub;

    iget-object v1, v1, Landroidx/media2/session/MediaSessionLegacyStub;->mSessionImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    invoke-interface {v1}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->getCallback()Landroidx/media2/session/MediaSession$SessionCallback;

    move-result-object v1

    iget-object v2, p0, Landroidx/media2/session/MediaSessionLegacyStub$19;->this$0:Landroidx/media2/session/MediaSessionLegacyStub;

    iget-object v2, v2, Landroidx/media2/session/MediaSessionLegacyStub;->mSessionImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    invoke-interface {v2}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->getInstance()Landroidx/media2/session/MediaSession;

    move-result-object v2

    .line 371
    invoke-virtual {v0}, Landroidx/media2/common/MediaItem;->getMediaId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroidx/media2/session/MediaSessionLegacyStub$19;->val$rating:Landroid/support/v4/media/RatingCompat;

    .line 372
    invoke-static {v4}, Landroidx/media2/session/MediaUtils;->convertToRating(Landroid/support/v4/media/RatingCompat;)Landroidx/media2/common/Rating;

    move-result-object v4

    .line 370
    invoke-virtual {v1, v2, p1, v3, v4}, Landroidx/media2/session/MediaSession$SessionCallback;->onSetRating(Landroidx/media2/session/MediaSession;Landroidx/media2/session/MediaSession$ControllerInfo;Ljava/lang/String;Landroidx/media2/common/Rating;)I

    .line 373
    return-void
.end method
