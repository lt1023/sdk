.class public Landroidx/media2/player/subtitle/SubtitleController;
.super Ljava/lang/Object;
.source "SubtitleController.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/player/subtitle/SubtitleController$Listener;,
        Landroidx/media2/player/subtitle/SubtitleController$Anchor;,
        Landroidx/media2/player/subtitle/SubtitleController$Renderer;,
        Landroidx/media2/player/subtitle/SubtitleController$MediaFormatUtil;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final WHAT_HIDE:I = 0x2

.field private static final WHAT_SELECT_DEFAULT_TRACK:I = 0x4

.field private static final WHAT_SELECT_TRACK:I = 0x3

.field private static final WHAT_SHOW:I = 0x1


# instance fields
.field private mAnchor:Landroidx/media2/player/subtitle/SubtitleController$Anchor;

.field private final mCallback:Landroid/os/Handler$Callback;

.field private mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

.field private mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Landroidx/media2/player/subtitle/SubtitleController$Listener;

.field private mRenderers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media2/player/subtitle/SubtitleController$Renderer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRenderersLock:Ljava/lang/Object;

.field private mSelectedTrack:Landroidx/media2/player/subtitle/SubtitleTrack;

.field private mShowing:Z

.field private mTimeProvider:Landroidx/media2/player/subtitle/MediaTimeProvider;

.field private mTrackIsExplicit:Z

.field private mTracks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media2/player/subtitle/SubtitleTrack;",
            ">;"
        }
    .end annotation
.end field

.field private final mTracksLock:Ljava/lang/Object;

.field private mVisibilityIsExplicit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 44
    nop

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroidx/media2/player/subtitle/SubtitleController;-><init>(Landroid/content/Context;Landroidx/media2/player/subtitle/MediaTimeProvider;Landroidx/media2/player/subtitle/SubtitleController$Listener;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media2/player/subtitle/MediaTimeProvider;Landroidx/media2/player/subtitle/SubtitleController$Listener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "timeProvider"    # Landroidx/media2/player/subtitle/MediaTimeProvider;
    .param p3, "listener"    # Landroidx/media2/player/subtitle/SubtitleController$Listener;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/subtitle/SubtitleController;->mRenderersLock:Ljava/lang/Object;

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/subtitle/SubtitleController;->mTracksLock:Ljava/lang/Object;

    .line 61
    new-instance v0, Landroidx/media2/player/subtitle/SubtitleController$1;

    invoke-direct {v0, p0}, Landroidx/media2/player/subtitle/SubtitleController$1;-><init>(Landroidx/media2/player/subtitle/SubtitleController;)V

    iput-object v0, p0, Landroidx/media2/player/subtitle/SubtitleController;->mCallback:Landroid/os/Handler$Callback;

    .line 83
    new-instance v0, Landroidx/media2/player/subtitle/SubtitleController$2;

    invoke-direct {v0, p0}, Landroidx/media2/player/subtitle/SubtitleController$2;-><init>(Landroidx/media2/player/subtitle/SubtitleController;)V

    iput-object v0, p0, Landroidx/media2/player/subtitle/SubtitleController;->mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    .line 284
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/player/subtitle/SubtitleController;->mTrackIsExplicit:Z

    .line 285
    iput-boolean v0, p0, Landroidx/media2/player/subtitle/SubtitleController;->mVisibilityIsExplicit:Z

    .line 110
    iput-object p2, p0, Landroidx/media2/player/subtitle/SubtitleController;->mTimeProvider:Landroidx/media2/player/subtitle/MediaTimeProvider;

    .line 111
    iput-object p3, p0, Landroidx/media2/player/subtitle/SubtitleController;->mListener:Landroidx/media2/player/subtitle/SubtitleController$Listener;

    .line 113
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/media2/player/subtitle/SubtitleController;->mRenderers:Ljava/util/ArrayList;

    .line 114
    iput-boolean v0, p0, Landroidx/media2/player/subtitle/SubtitleController;->mShowing:Z

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/subtitle/SubtitleController;->mTracks:Ljava/util/ArrayList;

    .line 116
    const-string v0, "captioning"

    .line 117
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    iput-object v0, p0, Landroidx/media2/player/subtitle/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    .line 118
    return-void
.end method

.method private checkAnchorLooper()V
    .locals 0

    .line 512
    nop

    .line 513
    nop

    .line 515
    return-void
.end method

.method private getRenderingWidget()Landroidx/media2/player/subtitle/SubtitleTrack$RenderingWidget;
    .locals 1

    .line 148
    iget-object v0, p0, Landroidx/media2/player/subtitle/SubtitleController;->mSelectedTrack:Landroidx/media2/player/subtitle/SubtitleTrack;

    if-nez v0, :cond_0

    .line 149
    const/4 v0, 0x0

    return-object v0

    .line 151
    :cond_0
    invoke-virtual {v0}, Landroidx/media2/player/subtitle/SubtitleTrack;->getRenderingWidget()Landroidx/media2/player/subtitle/SubtitleTrack$RenderingWidget;

    move-result-object v0

    return-object v0
.end method

.method private processOnAnchor(Landroid/os/Message;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Message;

    .line 518
    nop

    .line 519
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/media2/player/subtitle/SubtitleController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 520
    iget-object v0, p0, Landroidx/media2/player/subtitle/SubtitleController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 522
    :cond_0
    iget-object v0, p0, Landroidx/media2/player/subtitle/SubtitleController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 524
    :goto_0
    return-void
.end method


# virtual methods
.method public addTrack(Landroid/media/MediaFormat;)Landroidx/media2/player/subtitle/SubtitleTrack;
    .locals 6
    .param p1, "format"    # Landroid/media/MediaFormat;

    .line 346
    iget-object v0, p0, Landroidx/media2/player/subtitle/SubtitleController;->mRenderersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 347
    :try_start_0
    iget-object v1, p0, Landroidx/media2/player/subtitle/SubtitleController;->mRenderers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/player/subtitle/SubtitleController$Renderer;

    .line 348
    .local v2, "renderer":Landroidx/media2/player/subtitle/SubtitleController$Renderer;
    invoke-virtual {v2, p1}, Landroidx/media2/player/subtitle/SubtitleController$Renderer;->supports(Landroid/media/MediaFormat;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 349
    invoke-virtual {v2, p1}, Landroidx/media2/player/subtitle/SubtitleController$Renderer;->createTrack(Landroid/media/MediaFormat;)Landroidx/media2/player/subtitle/SubtitleTrack;

    move-result-object v3

    .line 350
    .local v3, "track":Landroidx/media2/player/subtitle/SubtitleTrack;
    if-eqz v3, :cond_1

    .line 351
    iget-object v1, p0, Landroidx/media2/player/subtitle/SubtitleController;->mTracksLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 352
    :try_start_1
    iget-object v4, p0, Landroidx/media2/player/subtitle/SubtitleController;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 353
    iget-object v4, p0, Landroidx/media2/player/subtitle/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v5, p0, Landroidx/media2/player/subtitle/SubtitleController;->mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v4, v5}, Landroid/view/accessibility/CaptioningManager;->addCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    goto :goto_1

    .line 352
    :cond_0
    nop

    .line 356
    :goto_1
    iget-object v4, p0, Landroidx/media2/player/subtitle/SubtitleController;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 358
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v3

    .line 357
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p1    # "format":Landroid/media/MediaFormat;
    :try_start_4
    throw v4

    .line 350
    .restart local p1    # "format":Landroid/media/MediaFormat;
    :cond_1
    goto :goto_2

    .line 348
    .end local v3    # "track":Landroidx/media2/player/subtitle/SubtitleTrack;
    :cond_2
    nop

    .line 361
    .end local v2    # "renderer":Landroidx/media2/player/subtitle/SubtitleController$Renderer;
    :goto_2
    goto :goto_0

    .line 362
    :cond_3
    monitor-exit v0

    .line 363
    const/4 v0, 0x0

    return-object v0

    .line 362
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    return-void
.end method

.method doHide()V
    .locals 1

    .line 395
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/player/subtitle/SubtitleController;->mVisibilityIsExplicit:Z

    .line 396
    iget-object v0, p0, Landroidx/media2/player/subtitle/SubtitleController;->mSelectedTrack:Landroidx/media2/player/subtitle/SubtitleTrack;

    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {v0}, Landroidx/media2/player/subtitle/SubtitleTrack;->hide()V

    goto :goto_0

    .line 396
    :cond_0
    nop

    .line 399
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/player/subtitle/SubtitleController;->mShowing:Z

    .line 400
    return-void
.end method

.method doSelectDefaultTrack()V
    .locals 3

    .line 294
    iget-boolean v0, p0, Landroidx/media2/player/subtitle/SubtitleController;->mTrackIsExplicit:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 295
    iget-boolean v0, p0, Landroidx/media2/player/subtitle/SubtitleController;->mVisibilityIsExplicit:Z

    if-eqz v0, :cond_0

    .line 296
    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Landroidx/media2/player/subtitle/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Landroidx/media2/player/subtitle/SubtitleController;->mSelectedTrack:Landroidx/media2/player/subtitle/SubtitleTrack;

    if-eqz v0, :cond_2

    .line 302
    invoke-virtual {v0}, Landroidx/media2/player/subtitle/SubtitleTrack;->getFormat()Landroid/media/MediaFormat;

    move-result-object v0

    const-string v2, "is-forced-subtitle"

    .line 301
    invoke-static {v0, v2, v1}, Landroidx/media2/player/subtitle/SubtitleController$MediaFormatUtil;->getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    goto :goto_0

    .line 300
    :cond_2
    nop

    .line 305
    :goto_0
    iget-object v0, p0, Landroidx/media2/player/subtitle/SubtitleController;->mSelectedTrack:Landroidx/media2/player/subtitle/SubtitleTrack;

    if-eqz v0, :cond_4

    .line 306
    invoke-virtual {v0}, Landroidx/media2/player/subtitle/SubtitleTrack;->getTrackType()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    .line 307
    invoke-virtual {p0}, Landroidx/media2/player/subtitle/SubtitleController;->hide()V

    goto :goto_2

    .line 306
    :cond_3
    goto :goto_2

    .line 305
    :cond_4
    goto :goto_2

    .line 300
    :cond_5
    nop

    .line 304
    :goto_1
    invoke-virtual {p0}, Landroidx/media2/player/subtitle/SubtitleController;->show()V

    .line 309
    :goto_2
    iput-boolean v1, p0, Landroidx/media2/player/subtitle/SubtitleController;->mVisibilityIsExplicit:Z

    goto :goto_3

    .line 294
    :cond_6
    nop

    .line 315
    :goto_3
    invoke-virtual {p0}, Landroidx/media2/player/subtitle/SubtitleController;->getDefaultTrack()Landroidx/media2/player/subtitle/SubtitleTrack;

    move-result-object v0

    .line 316
    .local v0, "track":Landroidx/media2/player/subtitle/SubtitleTrack;
    if-eqz v0, :cond_8

    .line 317
    invoke-virtual {p0, v0}, Landroidx/media2/player/subtitle/SubtitleController;->selectTrack(Landroidx/media2/player/subtitle/SubtitleTrack;)Z

    .line 318
    iput-boolean v1, p0, Landroidx/media2/player/subtitle/SubtitleController;->mTrackIsExplicit:Z

    .line 319
    iget-boolean v2, p0, Landroidx/media2/player/subtitle/SubtitleController;->mVisibilityIsExplicit:Z

    if-nez v2, :cond_7

    .line 320
    invoke-virtual {p0}, Landroidx/media2/player/subtitle/SubtitleController;->show()V

    .line 321
    iput-boolean v1, p0, Landroidx/media2/player/subtitle/SubtitleController;->mVisibilityIsExplicit:Z

    goto :goto_4

    .line 319
    :cond_7
    goto :goto_4

    .line 316
    :cond_8
    nop

    .line 324
    :goto_4
    return-void
.end method

.method doSelectTrack(Landroidx/media2/player/subtitle/SubtitleTrack;)V
    .locals 2
    .param p1, "track"    # Landroidx/media2/player/subtitle/SubtitleTrack;

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/player/subtitle/SubtitleController;->mTrackIsExplicit:Z

    .line 177
    iget-object v0, p0, Landroidx/media2/player/subtitle/SubtitleController;->mSelectedTrack:Landroidx/media2/player/subtitle/SubtitleTrack;

    if-ne v0, p1, :cond_0

    .line 178
    return-void

    .line 181
    :cond_0
    if-eqz v0, :cond_1

    .line 182
    invoke-virtual {v0}, Landroidx/media2/player/subtitle/SubtitleTrack;->hide()V

    .line 183
    iget-object v0, p0, Landroidx/media2/player/subtitle/SubtitleController;->mSelectedTrack:Landroidx/media2/player/subtitle/SubtitleTrack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media2/player/subtitle/SubtitleTrack;->setTimeProvider(Landroidx/media2/player/subtitle/MediaTimeProvider;)V

    goto :goto_0

    .line 181
    :cond_1
    nop

    .line 186
    :goto_0
    iput-object p1, p0, Landroidx/media2/player/subtitle/SubtitleController;->mSelectedTrack:Landroidx/media2/player/subtitle/SubtitleTrack;

    .line 187
    iget-object v0, p0, Landroidx/media2/player/subtitle/SubtitleController;->mAnchor:Landroidx/media2/player/subtitle/SubtitleController$Anchor;

    if-eqz v0, :cond_2

    .line 188
    invoke-direct {p0}, Landroidx/media2/player/subtitle/SubtitleController;->getRenderingWidget()Landroidx/media2/player/subtitle/SubtitleTrack$RenderingWidget;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/media2/player/subtitle/SubtitleController$Anchor;->setSubtitleWidget(Landroidx/media2/player/subtitle/SubtitleTrack$RenderingWidget;)V

    goto :goto_1

    .line 187
    :cond_2
    nop

    .line 191
    :goto_1
    iget-object v0, p0, Landroidx/media2/player/subtitle/SubtitleController;->mSelectedTrack:Landroidx/media2/player/subtitle/SubtitleTrack;

    if-eqz v0, :cond_3

    .line 192
    iget-object v1, p0, Landroidx/media2/player/subtitle/SubtitleController;->mTimeProvider:Landroidx/media2/player/subtitle/MediaTimeProvider;

    invoke-virtual {v0, v1}, Landroidx/media2/player/subtitle/SubtitleTrack;->setTimeProvider(Landroidx/media2/player/subtitle/MediaTimeProvider;)V

    .line 193
    iget-object v0, p0, Landroidx/media2/player/subtitle/SubtitleController;->mSelectedTrack:Landroidx/media2/player/subtitle/SubtitleTrack;

    invoke-virtual {v0}, Landroidx/media2/player/subtitle/SubtitleTrack;->show()V

    goto :goto_2

    .line 191
    :cond_3
    nop

    .line 196
    :goto_2
    iget-object v0, p0, Landroidx/media2/player/subtitle/SubtitleController;->mListener:Landroidx/media2/player/subtitle/SubtitleController$Listener;

    if-eqz v0, :cond_4

    .line 197
    invoke-interface {v0, p1}, Landroidx/media2/player/subtitle/SubtitleController$Listener;->onSubtitleTrackSelected(Landroidx/media2/player/subtitle/SubtitleTrack;)V

    goto :goto_3

    .line 196
    :cond_4
    nop

    .line 199
    :goto_3
    return-void
.end method

.method doShow()V
    .locals 1

    .line 377
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/player/subtitle/SubtitleController;->mShowing:Z

    .line 378
    iput-boolean v0, p0, Landroidx/media2/player/subtitle/SubtitleController;->mVisibilityIsExplicit:Z

    .line 379
    iget-object v0, p0, Landroidx/media2/player/subtitle/SubtitleController;->mSelectedTrack:Landroidx/media2/player/subtitle/SubtitleTrack;

    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {v0}, Landroidx/media2/player/subtitle/SubtitleTrack;->show()V

    goto :goto_0

    .line 379
    :cond_0
    nop

    .line 382
    :goto_0
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Landroidx/media2/player/subtitle/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v1, p0, Landroidx/media2/player/subtitle/SubtitleController;->mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/CaptioningManager;->removeCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    .line 124
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 125
    return-void
.end method

.method public getDefaultTrack()Landroidx/media2/player/subtitle/SubtitleTrack;
    .locals 18

    .line 225
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 226
    .local v2, "bestTrack":Landroidx/media2/player/subtitle/SubtitleTrack;
    const/4 v3, -0x1

    .line 228
    .local v3, "bestScore":I
    iget-object v0, v1, Landroidx/media2/player/subtitle/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object v4

    .line 229
    .local v4, "selectedLocale":Ljava/util/Locale;
    move-object v0, v4

    .line 230
    .local v0, "locale":Ljava/util/Locale;
    if-nez v0, :cond_0

    .line 231
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    .line 230
    :cond_0
    move-object v5, v0

    .line 233
    .end local v0    # "locale":Ljava/util/Locale;
    .local v5, "locale":Ljava/util/Locale;
    :goto_0
    iget-object v0, v1, Landroidx/media2/player/subtitle/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v0

    const/4 v6, 0x1

    xor-int/2addr v0, v6

    move v7, v0

    .line 235
    .local v7, "selectForced":Z
    iget-object v8, v1, Landroidx/media2/player/subtitle/SubtitleController;->mTracksLock:Ljava/lang/Object;

    monitor-enter v8

    .line 236
    :try_start_0
    iget-object v0, v1, Landroidx/media2/player/subtitle/SubtitleController;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media2/player/subtitle/SubtitleTrack;

    .line 237
    .local v9, "track":Landroidx/media2/player/subtitle/SubtitleTrack;
    invoke-virtual {v9}, Landroidx/media2/player/subtitle/SubtitleTrack;->getFormat()Landroid/media/MediaFormat;

    move-result-object v10

    .line 238
    .local v10, "format":Landroid/media/MediaFormat;
    const-string v11, "language"

    invoke-virtual {v10, v11}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 239
    .local v11, "language":Ljava/lang/String;
    const-string v12, "is-forced-subtitle"

    .line 240
    const/4 v13, 0x0

    invoke-static {v10, v12, v13}, Landroidx/media2/player/subtitle/SubtitleController$MediaFormatUtil;->getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_1

    const/4 v12, 0x1

    goto :goto_2

    :cond_1
    const/4 v12, 0x0

    .line 241
    .local v12, "forced":Z
    :goto_2
    const-string v14, "is-autoselect"

    .line 242
    invoke-static {v10, v14, v6}, Landroidx/media2/player/subtitle/SubtitleController$MediaFormatUtil;->getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v14

    if-eqz v14, :cond_2

    const/4 v14, 0x1

    goto :goto_3

    :cond_2
    const/4 v14, 0x0

    .line 243
    .local v14, "autoselect":Z
    :goto_3
    const-string v15, "is-default"

    .line 244
    invoke-static {v10, v15, v13}, Landroidx/media2/player/subtitle/SubtitleController$MediaFormatUtil;->getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v15

    if-eqz v15, :cond_3

    const/4 v15, 0x1

    goto :goto_4

    :cond_3
    const/4 v15, 0x0

    .line 246
    .local v15, "is_default":Z
    :goto_4
    if-eqz v5, :cond_7

    .line 247
    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    const-string v13, ""

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 248
    invoke-virtual {v5}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 249
    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_5

    :cond_4
    const/4 v6, 0x0

    goto :goto_6

    .line 248
    :cond_5
    goto :goto_5

    .line 247
    :cond_6
    goto :goto_5

    .line 246
    :cond_7
    nop

    .line 249
    :goto_5
    const/4 v6, 0x1

    .line 251
    .local v6, "languageMatches":Z
    :goto_6
    if-eqz v12, :cond_8

    const/4 v13, 0x0

    goto :goto_7

    :cond_8
    const/16 v13, 0x8

    :goto_7
    if-nez v4, :cond_9

    if-eqz v15, :cond_9

    const/16 v17, 0x4

    goto :goto_8

    :cond_9
    const/16 v17, 0x0

    :goto_8
    add-int v13, v13, v17

    if-eqz v14, :cond_a

    const/16 v17, 0x0

    goto :goto_9

    :cond_a
    const/16 v17, 0x2

    :goto_9
    add-int v13, v13, v17

    if-eqz v6, :cond_b

    const/16 v16, 0x1

    goto :goto_a

    :cond_b
    const/16 v16, 0x0

    :goto_a
    add-int v13, v13, v16

    .line 255
    .local v13, "score":I
    if-eqz v7, :cond_c

    if-nez v12, :cond_c

    .line 256
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 255
    :cond_c
    nop

    .line 260
    if-nez v4, :cond_e

    if-nez v15, :cond_d

    goto :goto_c

    :cond_d
    :goto_b
    goto :goto_d

    :cond_e
    :goto_c
    if-eqz v6, :cond_10

    if-nez v14, :cond_d

    if-nez v12, :cond_d

    if-eqz v4, :cond_10

    goto :goto_b

    .line 262
    :goto_d
    if-le v13, v3, :cond_f

    .line 263
    move v3, v13

    .line 264
    move-object v2, v9

    goto :goto_e

    .line 262
    :cond_f
    goto :goto_e

    .line 260
    :cond_10
    nop

    .line 267
    .end local v6    # "languageMatches":Z
    .end local v9    # "track":Landroidx/media2/player/subtitle/SubtitleTrack;
    .end local v10    # "format":Landroid/media/MediaFormat;
    .end local v11    # "language":Ljava/lang/String;
    .end local v12    # "forced":Z
    .end local v13    # "score":I
    .end local v14    # "autoselect":Z
    .end local v15    # "is_default":Z
    :goto_e
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 268
    :cond_11
    monitor-exit v8

    .line 269
    return-object v2

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    return-void
.end method

.method public getSelectedTrack()Landroidx/media2/player/subtitle/SubtitleTrack;
    .locals 1

    .line 144
    iget-object v0, p0, Landroidx/media2/player/subtitle/SubtitleController;->mSelectedTrack:Landroidx/media2/player/subtitle/SubtitleTrack;

    return-object v0
.end method

.method public getTracks()[Landroidx/media2/player/subtitle/SubtitleTrack;
    .locals 3

    .line 133
    iget-object v0, p0, Landroidx/media2/player/subtitle/SubtitleController;->mTracksLock:Ljava/lang/Object;

    monitor-enter v0

    .line 134
    :try_start_0
    iget-object v1, p0, Landroidx/media2/player/subtitle/SubtitleController;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroidx/media2/player/subtitle/SubtitleTrack;

    .line 135
    .local v1, "tracks":[Landroidx/media2/player/subtitle/SubtitleTrack;
    iget-object v2, p0, Landroidx/media2/player/subtitle/SubtitleController;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 136
    monitor-exit v0

    return-object v1

    .line 137
    .end local v1    # "tracks":[Landroidx/media2/player/subtitle/SubtitleTrack;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasRendererFor(Landroid/media/MediaFormat;)Z
    .locals 4
    .param p1, "format"    # Landroid/media/MediaFormat;

    .line 458
    iget-object v0, p0, Landroidx/media2/player/subtitle/SubtitleController;->mRenderersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 460
    :try_start_0
    iget-object v1, p0, Landroidx/media2/player/subtitle/SubtitleController;->mRenderers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/player/subtitle/SubtitleController$Renderer;

    .line 461
    .local v2, "renderer":Landroidx/media2/player/subtitle/SubtitleController$Renderer;
    invoke-virtual {v2, p1}, Landroidx/media2/player/subtitle/SubtitleController$Renderer;->supports(Landroid/media/MediaFormat;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 462
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 461
    :cond_0
    nop

    .line 464
    .end local v2    # "renderer":Landroidx/media2/player/subtitle/SubtitleController$Renderer;
    goto :goto_0

    .line 465
    :cond_1
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 466
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    return-void
.end method

.method public hide()V
    .locals 2

    .line 390
    iget-object v0, p0, Landroidx/media2/player/subtitle/SubtitleController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/media2/player/subtitle/SubtitleController;->processOnAnchor(Landroid/os/Message;)V

    .line 391
    return-void
.end method

.method public registerRenderer(Landroidx/media2/player/subtitle/SubtitleController$Renderer;)V
    .locals 2
    .param p1, "renderer"    # Landroidx/media2/player/subtitle/SubtitleController$Renderer;

    .line 441
    iget-object v0, p0, Landroidx/media2/player/subtitle/SubtitleController;->mRenderersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 443
    :try_start_0
    iget-object v1, p0, Landroidx/media2/player/subtitle/SubtitleController;->mRenderers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 445
    iget-object v1, p0, Landroidx/media2/player/subtitle/SubtitleController;->mRenderers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 443
    :cond_0
    nop

    .line 447
    :goto_0
    monitor-exit v0

    .line 448
    return-void

    .line 447
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reset()V
    .locals 2

    .line 328
    invoke-direct {p0}, Landroidx/media2/player/subtitle/SubtitleController;->checkAnchorLooper()V

    .line 329
    invoke-virtual {p0}, Landroidx/media2/player/subtitle/SubtitleController;->hide()V

    .line 330
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/media2/player/subtitle/SubtitleController;->selectTrack(Landroidx/media2/player/subtitle/SubtitleTrack;)Z

    .line 331
    iget-object v0, p0, Landroidx/media2/player/subtitle/SubtitleController;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 332
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/player/subtitle/SubtitleController;->mTrackIsExplicit:Z

    .line 333
    iput-boolean v0, p0, Landroidx/media2/player/subtitle/SubtitleController;->mVisibilityIsExplicit:Z

    .line 334
    iget-object v0, p0, Landroidx/media2/player/subtitle/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v1, p0, Landroidx/media2/player/subtitle/SubtitleController;->mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/CaptioningManager;->removeCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    .line 336
    return-void
.end method

.method public selectDefaultTrack()V
    .locals 2

    .line 289
    iget-object v0, p0, Landroidx/media2/player/subtitle/SubtitleController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/media2/player/subtitle/SubtitleController;->processOnAnchor(Landroid/os/Message;)V

    .line 290
    return-void
.end method

.method public selectTrack(Landroidx/media2/player/subtitle/SubtitleTrack;)Z
    .locals 2
    .param p1, "track"    # Landroidx/media2/player/subtitle/SubtitleTrack;

    .line 166
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/media2/player/subtitle/SubtitleController;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    const/4 v0, 0x0

    return v0

    .line 166
    :cond_0
    nop

    .line 170
    iget-object v0, p0, Landroidx/media2/player/subtitle/SubtitleController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/media2/player/subtitle/SubtitleController;->processOnAnchor(Landroid/os/Message;)V

    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method public setAnchor(Landroidx/media2/player/subtitle/SubtitleController$Anchor;)V
    .locals 3
    .param p1, "anchor"    # Landroidx/media2/player/subtitle/SubtitleController$Anchor;

    .line 494
    iget-object v0, p0, Landroidx/media2/player/subtitle/SubtitleController;->mAnchor:Landroidx/media2/player/subtitle/SubtitleController$Anchor;

    if-ne v0, p1, :cond_0

    .line 495
    return-void

    .line 498
    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 499
    invoke-direct {p0}, Landroidx/media2/player/subtitle/SubtitleController;->checkAnchorLooper()V

    .line 500
    iget-object v0, p0, Landroidx/media2/player/subtitle/SubtitleController;->mAnchor:Landroidx/media2/player/subtitle/SubtitleController$Anchor;

    invoke-interface {v0, v1}, Landroidx/media2/player/subtitle/SubtitleController$Anchor;->setSubtitleWidget(Landroidx/media2/player/subtitle/SubtitleTrack$RenderingWidget;)V

    goto :goto_0

    .line 498
    :cond_1
    nop

    .line 502
    :goto_0
    iput-object p1, p0, Landroidx/media2/player/subtitle/SubtitleController;->mAnchor:Landroidx/media2/player/subtitle/SubtitleController$Anchor;

    .line 503
    iput-object v1, p0, Landroidx/media2/player/subtitle/SubtitleController;->mHandler:Landroid/os/Handler;

    .line 504
    iget-object v0, p0, Landroidx/media2/player/subtitle/SubtitleController;->mAnchor:Landroidx/media2/player/subtitle/SubtitleController$Anchor;

    if-eqz v0, :cond_2

    .line 505
    new-instance v1, Landroid/os/Handler;

    invoke-interface {v0}, Landroidx/media2/player/subtitle/SubtitleController$Anchor;->getSubtitleLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v2, p0, Landroidx/media2/player/subtitle/SubtitleController;->mCallback:Landroid/os/Handler$Callback;

    invoke-direct {v1, v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Landroidx/media2/player/subtitle/SubtitleController;->mHandler:Landroid/os/Handler;

    .line 506
    invoke-direct {p0}, Landroidx/media2/player/subtitle/SubtitleController;->checkAnchorLooper()V

    .line 507
    iget-object v0, p0, Landroidx/media2/player/subtitle/SubtitleController;->mAnchor:Landroidx/media2/player/subtitle/SubtitleController$Anchor;

    invoke-direct {p0}, Landroidx/media2/player/subtitle/SubtitleController;->getRenderingWidget()Landroidx/media2/player/subtitle/SubtitleTrack$RenderingWidget;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/media2/player/subtitle/SubtitleController$Anchor;->setSubtitleWidget(Landroidx/media2/player/subtitle/SubtitleTrack$RenderingWidget;)V

    goto :goto_1

    .line 504
    :cond_2
    nop

    .line 509
    :goto_1
    return-void
.end method

.method public show()V
    .locals 2

    .line 372
    iget-object v0, p0, Landroidx/media2/player/subtitle/SubtitleController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/media2/player/subtitle/SubtitleController;->processOnAnchor(Landroid/os/Message;)V

    .line 373
    return-void
.end method
