.class public Landroidx/media2/session/MediaNotificationHandler;
.super Landroidx/media2/session/MediaSession$SessionCallback$ForegroundServiceEventCallback;
.source "MediaNotificationHandler.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation build Landroidx/annotation/VisibleForTesting;
    otherwise = 0x3
.end annotation


# static fields
.field private static final NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "default_channel_id"

.field private static final NOTIFICATION_ID:I = 0x3e9


# instance fields
.field private final mNotificationChannelName:Ljava/lang/String;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mPauseAction:Landroidx/core/app/NotificationCompat$Action;

.field private final mPlayAction:Landroidx/core/app/NotificationCompat$Action;

.field private final mServiceInstance:Landroidx/media2/session/MediaSessionService;

.field private final mSkipToNextAction:Landroidx/core/app/NotificationCompat$Action;

.field private final mSkipToPrevAction:Landroidx/core/app/NotificationCompat$Action;

.field private final mStartSelfIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroidx/media2/session/MediaSessionService;)V
    .locals 4
    .param p1, "service"    # Landroidx/media2/session/MediaSessionService;

    .line 71
    invoke-direct {p0}, Landroidx/media2/session/MediaSession$SessionCallback$ForegroundServiceEventCallback;-><init>()V

    .line 72
    iput-object p1, p0, Landroidx/media2/session/MediaNotificationHandler;->mServiceInstance:Landroidx/media2/session/MediaSessionService;

    .line 73
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Landroidx/media2/session/MediaNotificationHandler;->mServiceInstance:Landroidx/media2/session/MediaSessionService;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Landroidx/media2/session/MediaNotificationHandler;->mStartSelfIntent:Landroid/content/Intent;

    .line 75
    iget-object v0, p0, Landroidx/media2/session/MediaNotificationHandler;->mServiceInstance:Landroidx/media2/session/MediaSessionService;

    const-string v1, "notification"

    .line 76
    invoke-virtual {v0, v1}, Landroidx/media2/session/MediaSessionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Landroidx/media2/session/MediaNotificationHandler;->mNotificationManager:Landroid/app/NotificationManager;

    .line 77
    iget-object v0, p0, Landroidx/media2/session/MediaNotificationHandler;->mServiceInstance:Landroidx/media2/session/MediaSessionService;

    invoke-virtual {v0}, Landroidx/media2/session/MediaSessionService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/media2/session/R$string;->default_notification_channel_name:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/session/MediaNotificationHandler;->mNotificationChannelName:Ljava/lang/String;

    .line 80
    sget v0, Landroidx/media2/session/R$drawable;->media_session_service_notification_ic_play:I

    sget v1, Landroidx/media2/session/R$string;->play_button_content_description:I

    const-wide/16 v2, 0x4

    invoke-direct {p0, v0, v1, v2, v3}, Landroidx/media2/session/MediaNotificationHandler;->createNotificationAction(IIJ)Landroidx/core/app/NotificationCompat$Action;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/session/MediaNotificationHandler;->mPlayAction:Landroidx/core/app/NotificationCompat$Action;

    .line 83
    sget v0, Landroidx/media2/session/R$drawable;->media_session_service_notification_ic_pause:I

    sget v1, Landroidx/media2/session/R$string;->pause_button_content_description:I

    const-wide/16 v2, 0x2

    invoke-direct {p0, v0, v1, v2, v3}, Landroidx/media2/session/MediaNotificationHandler;->createNotificationAction(IIJ)Landroidx/core/app/NotificationCompat$Action;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/session/MediaNotificationHandler;->mPauseAction:Landroidx/core/app/NotificationCompat$Action;

    .line 86
    sget v0, Landroidx/media2/session/R$drawable;->media_session_service_notification_ic_skip_to_previous:I

    sget v1, Landroidx/media2/session/R$string;->skip_to_previous_item_button_content_description:I

    const-wide/16 v2, 0x10

    invoke-direct {p0, v0, v1, v2, v3}, Landroidx/media2/session/MediaNotificationHandler;->createNotificationAction(IIJ)Landroidx/core/app/NotificationCompat$Action;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/session/MediaNotificationHandler;->mSkipToPrevAction:Landroidx/core/app/NotificationCompat$Action;

    .line 89
    sget v0, Landroidx/media2/session/R$drawable;->media_session_service_notification_ic_skip_to_next:I

    sget v1, Landroidx/media2/session/R$string;->skip_to_next_item_button_content_description:I

    const-wide/16 v2, 0x20

    invoke-direct {p0, v0, v1, v2, v3}, Landroidx/media2/session/MediaNotificationHandler;->createNotificationAction(IIJ)Landroidx/core/app/NotificationCompat$Action;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/session/MediaNotificationHandler;->mSkipToNextAction:Landroidx/core/app/NotificationCompat$Action;

    .line 92
    return-void
.end method

.method private createNotificationAction(IIJ)Landroidx/core/app/NotificationCompat$Action;
    .locals 3
    .param p1, "iconResId"    # I
    .param p2, "titleResId"    # I
    .param p3, "action"    # J

    .line 196
    iget-object v0, p0, Landroidx/media2/session/MediaNotificationHandler;->mServiceInstance:Landroidx/media2/session/MediaSessionService;

    invoke-virtual {v0}, Landroidx/media2/session/MediaSessionService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 197
    .local v0, "title":Ljava/lang/CharSequence;
    new-instance v1, Landroidx/core/app/NotificationCompat$Action;

    invoke-direct {p0, p3, p4}, Landroidx/media2/session/MediaNotificationHandler;->createPendingIntent(J)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-direct {v1, p1, v0, v2}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    return-object v1
.end method

.method private createPendingIntent(J)Landroid/app/PendingIntent;
    .locals 6
    .param p1, "action"    # J

    .line 201
    invoke-static {p1, p2}, Landroid/support/v4/media/session/PlaybackStateCompat;->toKeyCode(J)I

    move-result v0

    .line 202
    .local v0, "keyCode":I
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 203
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Landroidx/media2/session/MediaNotificationHandler;->mServiceInstance:Landroidx/media2/session/MediaSessionService;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 204
    const-string v2, "android.intent.extra.KEY_EVENT"

    new-instance v3, Landroid/view/KeyEvent;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 206
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    const-wide/16 v2, 0x2

    cmp-long v5, p1, v2

    if-eqz v5, :cond_0

    .line 207
    iget-object v2, p0, Landroidx/media2/session/MediaNotificationHandler;->mServiceInstance:Landroidx/media2/session/MediaSessionService;

    invoke-static {v2, v0, v1, v4}, Landroid/app/PendingIntent;->getForegroundService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    return-object v2

    .line 206
    :cond_0
    nop

    .line 210
    iget-object v2, p0, Landroidx/media2/session/MediaNotificationHandler;->mServiceInstance:Landroidx/media2/session/MediaSessionService;

    invoke-static {v2, v0, v1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    return-object v2
.end method

.method private ensureNotificationChannel()V
    .locals 4

    .line 216
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Landroidx/media2/session/MediaNotificationHandler;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v1, "default_channel_id"

    .line 217
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 221
    :cond_0
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "default_channel_id"

    iget-object v2, p0, Landroidx/media2/session/MediaNotificationHandler;->mNotificationChannelName:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 223
    .local v0, "channel":Landroid/app/NotificationChannel;
    iget-object v1, p0, Landroidx/media2/session/MediaNotificationHandler;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 224
    return-void

    .line 216
    .end local v0    # "channel":Landroid/app/NotificationChannel;
    :cond_1
    nop

    .line 218
    :goto_0
    return-void
.end method

.method private getSmallIconResId()I
    .locals 2

    .line 227
    iget-object v0, p0, Landroidx/media2/session/MediaNotificationHandler;->mServiceInstance:Landroidx/media2/session/MediaSessionService;

    invoke-virtual {v0}, Landroidx/media2/session/MediaSessionService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 228
    .local v0, "appIcon":I
    if-eqz v0, :cond_0

    .line 229
    return v0

    .line 232
    :cond_0
    sget v1, Landroidx/media2/session/R$drawable;->media_session_service_notification_ic_music_note:I

    return v1
.end method

.method static isPlaybackStopped(I)Z
    .locals 2
    .param p0, "state"    # I

    .line 238
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    if-eqz p0, :cond_1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    nop

    :cond_1
    :goto_0
    return v0
.end method

.method private stopForegroundServiceIfNeeded()V
    .locals 3

    .line 132
    iget-object v0, p0, Landroidx/media2/session/MediaNotificationHandler;->mServiceInstance:Landroidx/media2/session/MediaSessionService;

    invoke-virtual {v0}, Landroidx/media2/session/MediaSessionService;->getSessions()Ljava/util/List;

    move-result-object v0

    .line 133
    .local v0, "sessions":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/session/MediaSession;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 134
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/session/MediaSession;

    invoke-virtual {v2}, Landroidx/media2/session/MediaSession;->getPlayer()Landroidx/media2/common/SessionPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media2/common/SessionPlayer;->getPlayerState()I

    move-result v2

    invoke-static {v2}, Landroidx/media2/session/MediaNotificationHandler;->isPlaybackStopped(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 135
    return-void

    .line 133
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    .end local v1    # "i":I
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 141
    .local v1, "shouldRemoveNotification":Z
    :goto_1
    iget-object v2, p0, Landroidx/media2/session/MediaNotificationHandler;->mServiceInstance:Landroidx/media2/session/MediaSessionService;

    invoke-virtual {v2, v1}, Landroidx/media2/session/MediaSessionService;->stopForeground(Z)V

    .line 142
    return-void
.end method


# virtual methods
.method public onPlayerStateChanged(Landroidx/media2/session/MediaSession;I)V
    .locals 5
    .param p1, "session"    # Landroidx/media2/session/MediaSession;
    .param p2, "state"    # I

    .line 103
    iget-object v0, p0, Landroidx/media2/session/MediaNotificationHandler;->mServiceInstance:Landroidx/media2/session/MediaSessionService;

    .line 104
    invoke-virtual {v0, p1}, Landroidx/media2/session/MediaSessionService;->onUpdateNotification(Landroidx/media2/session/MediaSession;)Landroidx/media2/session/MediaSessionService$MediaNotification;

    move-result-object v0

    .line 105
    .local v0, "mediaNotification":Landroidx/media2/session/MediaSessionService$MediaNotification;
    if-nez v0, :cond_0

    .line 108
    return-void

    .line 111
    :cond_0
    invoke-virtual {v0}, Landroidx/media2/session/MediaSessionService$MediaNotification;->getNotificationId()I

    move-result v1

    .line 112
    .local v1, "id":I
    invoke-virtual {v0}, Landroidx/media2/session/MediaSessionService$MediaNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 114
    .local v2, "notification":Landroid/app/Notification;
    invoke-static {p2}, Landroidx/media2/session/MediaNotificationHandler;->isPlaybackStopped(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 115
    invoke-direct {p0}, Landroidx/media2/session/MediaNotificationHandler;->stopForegroundServiceIfNeeded()V

    .line 116
    iget-object v3, p0, Landroidx/media2/session/MediaNotificationHandler;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v3, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 117
    return-void

    .line 121
    :cond_1
    iget-object v3, p0, Landroidx/media2/session/MediaNotificationHandler;->mServiceInstance:Landroidx/media2/session/MediaSessionService;

    iget-object v4, p0, Landroidx/media2/session/MediaNotificationHandler;->mStartSelfIntent:Landroid/content/Intent;

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 122
    iget-object v3, p0, Landroidx/media2/session/MediaNotificationHandler;->mServiceInstance:Landroidx/media2/session/MediaSessionService;

    invoke-virtual {v3, v1, v2}, Landroidx/media2/session/MediaSessionService;->startForeground(ILandroid/app/Notification;)V

    .line 123
    return-void
.end method

.method public onSessionClosed(Landroidx/media2/session/MediaSession;)V
    .locals 1
    .param p1, "session"    # Landroidx/media2/session/MediaSession;

    .line 127
    iget-object v0, p0, Landroidx/media2/session/MediaNotificationHandler;->mServiceInstance:Landroidx/media2/session/MediaSessionService;

    invoke-virtual {v0, p1}, Landroidx/media2/session/MediaSessionService;->removeSession(Landroidx/media2/session/MediaSession;)V

    .line 128
    invoke-direct {p0}, Landroidx/media2/session/MediaNotificationHandler;->stopForegroundServiceIfNeeded()V

    .line 129
    return-void
.end method

.method public onUpdateNotification(Landroidx/media2/session/MediaSession;)Landroidx/media2/session/MediaSessionService$MediaNotification;
    .locals 7
    .param p1, "session"    # Landroidx/media2/session/MediaSession;

    .line 148
    invoke-direct {p0}, Landroidx/media2/session/MediaNotificationHandler;->ensureNotificationChannel()V

    .line 150
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, p0, Landroidx/media2/session/MediaNotificationHandler;->mServiceInstance:Landroidx/media2/session/MediaSessionService;

    const-string v2, "default_channel_id"

    invoke-direct {v0, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 154
    .local v0, "builder":Landroidx/core/app/NotificationCompat$Builder;
    iget-object v1, p0, Landroidx/media2/session/MediaNotificationHandler;->mSkipToPrevAction:Landroidx/core/app/NotificationCompat$Action;

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    .line 155
    invoke-virtual {p1}, Landroidx/media2/session/MediaSession;->getPlayer()Landroidx/media2/common/SessionPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media2/common/SessionPlayer;->getPlayerState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 156
    iget-object v1, p0, Landroidx/media2/session/MediaNotificationHandler;->mPauseAction:Landroidx/core/app/NotificationCompat$Action;

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_0

    .line 158
    :cond_0
    iget-object v1, p0, Landroidx/media2/session/MediaNotificationHandler;->mPlayAction:Landroidx/core/app/NotificationCompat$Action;

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    .line 160
    :goto_0
    iget-object v1, p0, Landroidx/media2/session/MediaNotificationHandler;->mSkipToNextAction:Landroidx/core/app/NotificationCompat$Action;

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    .line 163
    invoke-virtual {p1}, Landroidx/media2/session/MediaSession;->getPlayer()Landroidx/media2/common/SessionPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media2/common/SessionPlayer;->getCurrentMediaItem()Landroidx/media2/common/MediaItem;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 164
    invoke-virtual {p1}, Landroidx/media2/session/MediaSession;->getPlayer()Landroidx/media2/common/SessionPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media2/common/SessionPlayer;->getCurrentMediaItem()Landroidx/media2/common/MediaItem;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media2/common/MediaItem;->getMetadata()Landroidx/media2/common/MediaMetadata;

    move-result-object v1

    .line 165
    .local v1, "metadata":Landroidx/media2/common/MediaMetadata;
    if-eqz v1, :cond_2

    .line 166
    const-string v2, "android.media.metadata.DISPLAY_TITLE"

    invoke-virtual {v1, v2}, Landroidx/media2/common/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 167
    .local v2, "title":Ljava/lang/CharSequence;
    if-nez v2, :cond_1

    .line 168
    const-string v3, "android.media.metadata.TITLE"

    invoke-virtual {v1, v3}, Landroidx/media2/common/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1

    .line 167
    :cond_1
    nop

    .line 170
    :goto_1
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    const-string v4, "android.media.metadata.ARTIST"

    .line 171
    invoke-virtual {v1, v4}, Landroidx/media2/common/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    const-string v4, "android.media.metadata.ALBUM_ART"

    .line 172
    invoke-virtual {v1, v4}, Landroidx/media2/common/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_2

    .line 165
    .end local v2    # "title":Ljava/lang/CharSequence;
    :cond_2
    goto :goto_2

    .line 163
    .end local v1    # "metadata":Landroidx/media2/common/MediaMetadata;
    :cond_3
    nop

    .line 176
    :goto_2
    new-instance v1, Landroidx/media/app/NotificationCompat$MediaStyle;

    invoke-direct {v1}, Landroidx/media/app/NotificationCompat$MediaStyle;-><init>()V

    .line 177
    const-wide/16 v2, 0x1

    invoke-direct {p0, v2, v3}, Landroidx/media2/session/MediaNotificationHandler;->createPendingIntent(J)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/media/app/NotificationCompat$MediaStyle;->setCancelButtonIntent(Landroid/app/PendingIntent;)Landroidx/media/app/NotificationCompat$MediaStyle;

    move-result-object v1

    .line 178
    invoke-virtual {p1}, Landroidx/media2/session/MediaSession;->getSessionCompat()Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/media/session/MediaSessionCompat;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/media/app/NotificationCompat$MediaStyle;->setMediaSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)Landroidx/media/app/NotificationCompat$MediaStyle;

    move-result-object v1

    const/4 v4, 0x1

    new-array v5, v4, [I

    const/4 v6, 0x0

    aput v4, v5, v6

    .line 179
    invoke-virtual {v1, v5}, Landroidx/media/app/NotificationCompat$MediaStyle;->setShowActionsInCompactView([I)Landroidx/media/app/NotificationCompat$MediaStyle;

    move-result-object v1

    .line 181
    .local v1, "mediaStyle":Landroidx/media/app/NotificationCompat$MediaStyle;
    nop

    .line 182
    invoke-virtual {p1}, Landroidx/media2/session/MediaSession;->getImpl()Landroidx/media2/session/MediaSession$MediaSessionImpl;

    move-result-object v5

    invoke-interface {v5}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->getSessionActivity()Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 183
    invoke-direct {p0, v2, v3}, Landroidx/media2/session/MediaNotificationHandler;->createPendingIntent(J)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 184
    invoke-virtual {v2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 185
    invoke-direct {p0}, Landroidx/media2/session/MediaNotificationHandler;->getSmallIconResId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 186
    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 187
    invoke-virtual {v2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 188
    invoke-virtual {v2, v6}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 189
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 191
    .local v2, "notification":Landroid/app/Notification;
    new-instance v3, Landroidx/media2/session/MediaSessionService$MediaNotification;

    const/16 v4, 0x3e9

    invoke-direct {v3, v4, v2}, Landroidx/media2/session/MediaSessionService$MediaNotification;-><init>(ILandroid/app/Notification;)V

    return-object v3
.end method
