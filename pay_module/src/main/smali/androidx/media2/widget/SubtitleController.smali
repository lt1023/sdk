.class Landroidx/media2/widget/SubtitleController;
.super Ljava/lang/Object;
.source "SubtitleController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/widget/SubtitleController$Listener;,
        Landroidx/media2/widget/SubtitleController$Anchor;,
        Landroidx/media2/widget/SubtitleController$Renderer;,
        Landroidx/media2/widget/SubtitleController$MediaFormatUtil;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final WHAT_HIDE:I = 0x2

.field private static final WHAT_SELECT_DEFAULT_TRACK:I = 0x4

.field private static final WHAT_SELECT_TRACK:I = 0x3

.field private static final WHAT_SHOW:I = 0x1


# instance fields
.field private mAnchor:Landroidx/media2/widget/SubtitleController$Anchor;

.field private final mCallback:Landroid/os/Handler$Callback;

.field private mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

.field private mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Landroidx/media2/widget/SubtitleController$Listener;

.field private mRenderers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media2/widget/SubtitleController$Renderer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRenderersLock:Ljava/lang/Object;

.field private mSelectedTrack:Landroidx/media2/widget/SubtitleTrack;

.field private mShowing:Z

.field private mTimeProvider:Landroidx/media2/widget/MediaTimeProvider;

.field private mTrackIsExplicit:Z

.field private mTracks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media2/widget/SubtitleTrack;",
            ">;"
        }
    .end annotation
.end field

.field private final mTracksLock:Ljava/lang/Object;

.field private mVisibilityIsExplicit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 41
    nop

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroidx/media2/widget/SubtitleController;-><init>(Landroid/content/Context;Landroidx/media2/widget/MediaTimeProvider;Landroidx/media2/widget/SubtitleController$Listener;)V

    .line 94
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroidx/media2/widget/MediaTimeProvider;Landroidx/media2/widget/SubtitleController$Listener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "timeProvider"    # Landroidx/media2/widget/MediaTimeProvider;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "listener"    # Landroidx/media2/widget/SubtitleController$Listener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media2/widget/SubtitleController;->mRenderersLock:Ljava/lang/Object;

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media2/widget/SubtitleController;->mTracksLock:Ljava/lang/Object;

    .line 57
    new-instance v0, Landroidx/media2/widget/SubtitleController$1;

    invoke-direct {v0, p0}, Landroidx/media2/widget/SubtitleController$1;-><init>(Landroidx/media2/widget/SubtitleController;)V

    iput-object v0, p0, Landroidx/media2/widget/SubtitleController;->mCallback:Landroid/os/Handler$Callback;

    .line 79
    new-instance v0, Landroidx/media2/widget/SubtitleController$2;

    invoke-direct {v0, p0}, Landroidx/media2/widget/SubtitleController$2;-><init>(Landroidx/media2/widget/SubtitleController;)V

    iput-object v0, p0, Landroidx/media2/widget/SubtitleController;->mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    .line 280
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/widget/SubtitleController;->mTrackIsExplicit:Z

    .line 281
    iput-boolean v0, p0, Landroidx/media2/widget/SubtitleController;->mVisibilityIsExplicit:Z

    .line 106
    iput-object p2, p0, Landroidx/media2/widget/SubtitleController;->mTimeProvider:Landroidx/media2/widget/MediaTimeProvider;

    .line 107
    iput-object p3, p0, Landroidx/media2/widget/SubtitleController;->mListener:Landroidx/media2/widget/SubtitleController$Listener;

    .line 109
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/media2/widget/SubtitleController;->mRenderers:Ljava/util/ArrayList;

    .line 110
    iput-boolean v0, p0, Landroidx/media2/widget/SubtitleController;->mShowing:Z

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/widget/SubtitleController;->mTracks:Ljava/util/ArrayList;

    .line 112
    const-string v0, "captioning"

    .line 113
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    iput-object v0, p0, Landroidx/media2/widget/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    .line 114
    return-void
.end method

.method private checkAnchorLooper()V
    .locals 0

    .line 508
    nop

    .line 509
    nop

    .line 511
    return-void
.end method

.method private getRenderingWidget()Landroidx/media2/widget/SubtitleTrack$RenderingWidget;
    .locals 1

    .line 144
    iget-object v0, p0, Landroidx/media2/widget/SubtitleController;->mSelectedTrack:Landroidx/media2/widget/SubtitleTrack;

    if-nez v0, :cond_0

    .line 145
    const/4 v0, 0x0

    return-object v0

    .line 147
    :cond_0
    invoke-virtual {v0}, Landroidx/media2/widget/SubtitleTrack;->getRenderingWidget()Landroidx/media2/widget/SubtitleTrack$RenderingWidget;

    move-result-object v0

    return-object v0
.end method

.method private processOnAnchor(Landroid/os/Message;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Message;

    .line 514
    nop

    .line 515
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/media2/widget/SubtitleController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 516
    iget-object v0, p0, Landroidx/media2/widget/SubtitleController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 518
    :cond_0
    iget-object v0, p0, Landroidx/media2/widget/SubtitleController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 520
    :goto_0
    return-void
.end method


# virtual methods
.method public addTrack(Landroid/media/MediaFormat;)Landroidx/media2/widget/SubtitleTrack;
    .locals 6
    .param p1, "format"    # Landroid/media/MediaFormat;

    .line 342
    iget-object v0, p0, Landroidx/media2/widget/SubtitleController;->mRenderersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 343
    :try_start_0
    iget-object v1, p0, Landroidx/media2/widget/SubtitleController;->mRenderers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/widget/SubtitleController$Renderer;

    .line 344
    .local v2, "renderer":Landroidx/media2/widget/SubtitleController$Renderer;
    invoke-virtual {v2, p1}, Landroidx/media2/widget/SubtitleController$Renderer;->supports(Landroid/media/MediaFormat;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 345
    invoke-virtual {v2, p1}, Landroidx/media2/widget/SubtitleController$Renderer;->createTrack(Landroid/media/MediaFormat;)Landroidx/media2/widget/SubtitleTrack;

    move-result-object v3

    .line 346
    .local v3, "track":Landroidx/media2/widget/SubtitleTrack;
    if-eqz v3, :cond_1

    .line 347
    iget-object v1, p0, Landroidx/media2/widget/SubtitleController;->mTracksLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 348
    :try_start_1
    iget-object v4, p0, Landroidx/media2/widget/SubtitleController;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 349
    iget-object v4, p0, Landroidx/media2/widget/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v5, p0, Landroidx/media2/widget/SubtitleController;->mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v4, v5}, Landroid/view/accessibility/CaptioningManager;->addCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    goto :goto_1

    .line 348
    :cond_0
    nop

    .line 352
    :goto_1
    iget-object v4, p0, Landroidx/media2/widget/SubtitleController;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 354
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v3

    .line 353
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p1    # "format":Landroid/media/MediaFormat;
    :try_start_4
    throw v4

    .line 346
    .restart local p1    # "format":Landroid/media/MediaFormat;
    :cond_1
    goto :goto_2

    .line 344
    .end local v3    # "track":Landroidx/media2/widget/SubtitleTrack;
    :cond_2
    nop

    .line 357
    .end local v2    # "renderer":Landroidx/media2/widget/SubtitleController$Renderer;
    :goto_2
    goto :goto_0

    .line 358
    :cond_3
    monitor-exit v0

    .line 359
    const/4 v0, 0x0

    return-object v0

    .line 358
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

    .line 391
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/widget/SubtitleController;->mVisibilityIsExplicit:Z

    .line 392
    iget-object v0, p0, Landroidx/media2/widget/SubtitleController;->mSelectedTrack:Landroidx/media2/widget/SubtitleTrack;

    if-eqz v0, :cond_0

    .line 393
    invoke-virtual {v0}, Landroidx/media2/widget/SubtitleTrack;->hide()V

    goto :goto_0

    .line 392
    :cond_0
    nop

    .line 395
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/widget/SubtitleController;->mShowing:Z

    .line 396
    return-void
.end method

.method doSelectDefaultTrack()V
    .locals 3

    .line 290
    iget-boolean v0, p0, Landroidx/media2/widget/SubtitleController;->mTrackIsExplicit:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 291
    iget-boolean v0, p0, Landroidx/media2/widget/SubtitleController;->mVisibilityIsExplicit:Z

    if-eqz v0, :cond_0

    .line 292
    return-void

    .line 296
    :cond_0
    iget-object v0, p0, Landroidx/media2/widget/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Landroidx/media2/widget/SubtitleController;->mSelectedTrack:Landroidx/media2/widget/SubtitleTrack;

    if-eqz v0, :cond_2

    .line 298
    invoke-virtual {v0}, Landroidx/media2/widget/SubtitleTrack;->getFormat()Landroid/media/MediaFormat;

    move-result-object v0

    const-string v2, "is-forced-subtitle"

    .line 297
    invoke-static {v0, v2, v1}, Landroidx/media2/widget/SubtitleController$MediaFormatUtil;->getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    goto :goto_0

    .line 296
    :cond_2
    nop

    .line 301
    :goto_0
    iget-object v0, p0, Landroidx/media2/widget/SubtitleController;->mSelectedTrack:Landroidx/media2/widget/SubtitleTrack;

    if-eqz v0, :cond_4

    .line 302
    invoke-virtual {v0}, Landroidx/media2/widget/SubtitleTrack;->getTrackType()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    .line 303
    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleController;->hide()V

    goto :goto_2

    .line 302
    :cond_3
    goto :goto_2

    .line 301
    :cond_4
    goto :goto_2

    .line 296
    :cond_5
    nop

    .line 300
    :goto_1
    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleController;->show()V

    .line 305
    :goto_2
    iput-boolean v1, p0, Landroidx/media2/widget/SubtitleController;->mVisibilityIsExplicit:Z

    goto :goto_3

    .line 290
    :cond_6
    nop

    .line 311
    :goto_3
    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleController;->getDefaultTrack()Landroidx/media2/widget/SubtitleTrack;

    move-result-object v0

    .line 312
    .local v0, "track":Landroidx/media2/widget/SubtitleTrack;
    if-eqz v0, :cond_8

    .line 313
    invoke-virtual {p0, v0}, Landroidx/media2/widget/SubtitleController;->selectTrack(Landroidx/media2/widget/SubtitleTrack;)Z

    .line 314
    iput-boolean v1, p0, Landroidx/media2/widget/SubtitleController;->mTrackIsExplicit:Z

    .line 315
    iget-boolean v2, p0, Landroidx/media2/widget/SubtitleController;->mVisibilityIsExplicit:Z

    if-nez v2, :cond_7

    .line 316
    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleController;->show()V

    .line 317
    iput-boolean v1, p0, Landroidx/media2/widget/SubtitleController;->mVisibilityIsExplicit:Z

    goto :goto_4

    .line 315
    :cond_7
    goto :goto_4

    .line 312
    :cond_8
    nop

    .line 320
    :goto_4
    return-void
.end method

.method doSelectTrack(Landroidx/media2/widget/SubtitleTrack;)V
    .locals 2
    .param p1, "track"    # Landroidx/media2/widget/SubtitleTrack;

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/widget/SubtitleController;->mTrackIsExplicit:Z

    .line 173
    iget-object v0, p0, Landroidx/media2/widget/SubtitleController;->mSelectedTrack:Landroidx/media2/widget/SubtitleTrack;

    if-ne v0, p1, :cond_0

    .line 174
    return-void

    .line 177
    :cond_0
    if-eqz v0, :cond_1

    .line 178
    invoke-virtual {v0}, Landroidx/media2/widget/SubtitleTrack;->hide()V

    .line 179
    iget-object v0, p0, Landroidx/media2/widget/SubtitleController;->mSelectedTrack:Landroidx/media2/widget/SubtitleTrack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media2/widget/SubtitleTrack;->setTimeProvider(Landroidx/media2/widget/MediaTimeProvider;)V

    goto :goto_0

    .line 177
    :cond_1
    nop

    .line 182
    :goto_0
    iput-object p1, p0, Landroidx/media2/widget/SubtitleController;->mSelectedTrack:Landroidx/media2/widget/SubtitleTrack;

    .line 183
    iget-object v0, p0, Landroidx/media2/widget/SubtitleController;->mAnchor:Landroidx/media2/widget/SubtitleController$Anchor;

    if-eqz v0, :cond_2

    .line 184
    invoke-direct {p0}, Landroidx/media2/widget/SubtitleController;->getRenderingWidget()Landroidx/media2/widget/SubtitleTrack$RenderingWidget;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/media2/widget/SubtitleController$Anchor;->setSubtitleWidget(Landroidx/media2/widget/SubtitleTrack$RenderingWidget;)V

    goto :goto_1

    .line 183
    :cond_2
    nop

    .line 187
    :goto_1
    iget-object v0, p0, Landroidx/media2/widget/SubtitleController;->mSelectedTrack:Landroidx/media2/widget/SubtitleTrack;

    if-eqz v0, :cond_3

    .line 188
    iget-object v1, p0, Landroidx/media2/widget/SubtitleController;->mTimeProvider:Landroidx/media2/widget/MediaTimeProvider;

    invoke-virtual {v0, v1}, Landroidx/media2/widget/SubtitleTrack;->setTimeProvider(Landroidx/media2/widget/MediaTimeProvider;)V

    .line 189
    iget-object v0, p0, Landroidx/media2/widget/SubtitleController;->mSelectedTrack:Landroidx/media2/widget/SubtitleTrack;

    invoke-virtual {v0}, Landroidx/media2/widget/SubtitleTrack;->show()V

    goto :goto_2

    .line 187
    :cond_3
    nop

    .line 192
    :goto_2
    iget-object v0, p0, Landroidx/media2/widget/SubtitleController;->mListener:Landroidx/media2/widget/SubtitleController$Listener;

    if-eqz v0, :cond_4

    .line 193
    invoke-interface {v0, p1}, Landroidx/media2/widget/SubtitleController$Listener;->onSubtitleTrackSelected(Landroidx/media2/widget/SubtitleTrack;)V

    goto :goto_3

    .line 192
    :cond_4
    nop

    .line 195
    :goto_3
    return-void
.end method

.method doShow()V
    .locals 1

    .line 373
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/widget/SubtitleController;->mShowing:Z

    .line 374
    iput-boolean v0, p0, Landroidx/media2/widget/SubtitleController;->mVisibilityIsExplicit:Z

    .line 375
    iget-object v0, p0, Landroidx/media2/widget/SubtitleController;->mSelectedTrack:Landroidx/media2/widget/SubtitleTrack;

    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {v0}, Landroidx/media2/widget/SubtitleTrack;->show()V

    goto :goto_0

    .line 375
    :cond_0
    nop

    .line 378
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

    .line 118
    iget-object v0, p0, Landroidx/media2/widget/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v1, p0, Landroidx/media2/widget/SubtitleController;->mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/CaptioningManager;->removeCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    .line 120
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 121
    return-void
.end method

.method public getDefaultTrack()Landroidx/media2/widget/SubtitleTrack;
    .locals 18

    .line 221
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 222
    .local v2, "bestTrack":Landroidx/media2/widget/SubtitleTrack;
    const/4 v3, -0x1

    .line 224
    .local v3, "bestScore":I
    iget-object v0, v1, Landroidx/media2/widget/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object v4

    .line 225
    .local v4, "selectedLocale":Ljava/util/Locale;
    move-object v0, v4

    .line 226
    .local v0, "locale":Ljava/util/Locale;
    if-nez v0, :cond_0

    .line 227
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    .line 226
    :cond_0
    move-object v5, v0

    .line 229
    .end local v0    # "locale":Ljava/util/Locale;
    .local v5, "locale":Ljava/util/Locale;
    :goto_0
    iget-object v0, v1, Landroidx/media2/widget/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v0

    const/4 v6, 0x1

    xor-int/2addr v0, v6

    move v7, v0

    .line 231
    .local v7, "selectForced":Z
    iget-object v8, v1, Landroidx/media2/widget/SubtitleController;->mTracksLock:Ljava/lang/Object;

    monitor-enter v8

    .line 232
    :try_start_0
    iget-object v0, v1, Landroidx/media2/widget/SubtitleController;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media2/widget/SubtitleTrack;

    .line 233
    .local v9, "track":Landroidx/media2/widget/SubtitleTrack;
    invoke-virtual {v9}, Landroidx/media2/widget/SubtitleTrack;->getFormat()Landroid/media/MediaFormat;

    move-result-object v10

    .line 234
    .local v10, "format":Landroid/media/MediaFormat;
    const-string v11, "language"

    invoke-virtual {v10, v11}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 235
    .local v11, "language":Ljava/lang/String;
    const-string v12, "is-forced-subtitle"

    .line 236
    const/4 v13, 0x0

    invoke-static {v10, v12, v13}, Landroidx/media2/widget/SubtitleController$MediaFormatUtil;->getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_1

    const/4 v12, 0x1

    goto :goto_2

    :cond_1
    const/4 v12, 0x0

    .line 237
    .local v12, "forced":Z
    :goto_2
    const-string v14, "is-autoselect"

    .line 238
    invoke-static {v10, v14, v6}, Landroidx/media2/widget/SubtitleController$MediaFormatUtil;->getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v14

    if-eqz v14, :cond_2

    const/4 v14, 0x1

    goto :goto_3

    :cond_2
    const/4 v14, 0x0

    .line 239
    .local v14, "autoselect":Z
    :goto_3
    const-string v15, "is-default"

    .line 240
    invoke-static {v10, v15, v13}, Landroidx/media2/widget/SubtitleController$MediaFormatUtil;->getInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v15

    if-eqz v15, :cond_3

    const/4 v15, 0x1

    goto :goto_4

    :cond_3
    const/4 v15, 0x0

    .line 242
    .local v15, "is_default":Z
    :goto_4
    if-eqz v5, :cond_7

    .line 243
    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    const-string v13, ""

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 244
    invoke-virtual {v5}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 245
    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_5

    :cond_4
    const/4 v6, 0x0

    goto :goto_6

    .line 244
    :cond_5
    goto :goto_5

    .line 243
    :cond_6
    goto :goto_5

    .line 242
    :cond_7
    nop

    .line 245
    :goto_5
    const/4 v6, 0x1

    .line 247
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

    .line 251
    .local v13, "score":I
    if-eqz v7, :cond_c

    if-nez v12, :cond_c

    .line 252
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 251
    :cond_c
    nop

    .line 256
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

    .line 258
    :goto_d
    if-le v13, v3, :cond_f

    .line 259
    move v3, v13

    .line 260
    move-object v2, v9

    goto :goto_e

    .line 258
    :cond_f
    goto :goto_e

    .line 256
    :cond_10
    nop

    .line 263
    .end local v6    # "languageMatches":Z
    .end local v9    # "track":Landroidx/media2/widget/SubtitleTrack;
    .end local v10    # "format":Landroid/media/MediaFormat;
    .end local v11    # "language":Ljava/lang/String;
    .end local v12    # "forced":Z
    .end local v13    # "score":I
    .end local v14    # "autoselect":Z
    .end local v15    # "is_default":Z
    :goto_e
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 264
    :cond_11
    monitor-exit v8

    .line 265
    return-object v2

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    return-void
.end method

.method public getSelectedTrack()Landroidx/media2/widget/SubtitleTrack;
    .locals 1

    .line 140
    iget-object v0, p0, Landroidx/media2/widget/SubtitleController;->mSelectedTrack:Landroidx/media2/widget/SubtitleTrack;

    return-object v0
.end method

.method public getTracks()[Landroidx/media2/widget/SubtitleTrack;
    .locals 3

    .line 129
    iget-object v0, p0, Landroidx/media2/widget/SubtitleController;->mTracksLock:Ljava/lang/Object;

    monitor-enter v0

    .line 130
    :try_start_0
    iget-object v1, p0, Landroidx/media2/widget/SubtitleController;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroidx/media2/widget/SubtitleTrack;

    .line 131
    .local v1, "tracks":[Landroidx/media2/widget/SubtitleTrack;
    iget-object v2, p0, Landroidx/media2/widget/SubtitleController;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 132
    monitor-exit v0

    return-object v1

    .line 133
    .end local v1    # "tracks":[Landroidx/media2/widget/SubtitleTrack;
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

    .line 454
    iget-object v0, p0, Landroidx/media2/widget/SubtitleController;->mRenderersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 456
    :try_start_0
    iget-object v1, p0, Landroidx/media2/widget/SubtitleController;->mRenderers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/widget/SubtitleController$Renderer;

    .line 457
    .local v2, "renderer":Landroidx/media2/widget/SubtitleController$Renderer;
    invoke-virtual {v2, p1}, Landroidx/media2/widget/SubtitleController$Renderer;->supports(Landroid/media/MediaFormat;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 458
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 457
    :cond_0
    nop

    .line 460
    .end local v2    # "renderer":Landroidx/media2/widget/SubtitleController$Renderer;
    goto :goto_0

    .line 461
    :cond_1
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 462
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

    .line 386
    iget-object v0, p0, Landroidx/media2/widget/SubtitleController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/media2/widget/SubtitleController;->processOnAnchor(Landroid/os/Message;)V

    .line 387
    return-void
.end method

.method public registerRenderer(Landroidx/media2/widget/SubtitleController$Renderer;)V
    .locals 2
    .param p1, "renderer"    # Landroidx/media2/widget/SubtitleController$Renderer;

    .line 437
    iget-object v0, p0, Landroidx/media2/widget/SubtitleController;->mRenderersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 439
    :try_start_0
    iget-object v1, p0, Landroidx/media2/widget/SubtitleController;->mRenderers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 441
    iget-object v1, p0, Landroidx/media2/widget/SubtitleController;->mRenderers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 439
    :cond_0
    nop

    .line 443
    :goto_0
    monitor-exit v0

    .line 444
    return-void

    .line 443
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reset()V
    .locals 2

    .line 324
    invoke-direct {p0}, Landroidx/media2/widget/SubtitleController;->checkAnchorLooper()V

    .line 325
    invoke-virtual {p0}, Landroidx/media2/widget/SubtitleController;->hide()V

    .line 326
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/media2/widget/SubtitleController;->selectTrack(Landroidx/media2/widget/SubtitleTrack;)Z

    .line 327
    iget-object v0, p0, Landroidx/media2/widget/SubtitleController;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 328
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/widget/SubtitleController;->mTrackIsExplicit:Z

    .line 329
    iput-boolean v0, p0, Landroidx/media2/widget/SubtitleController;->mVisibilityIsExplicit:Z

    .line 330
    iget-object v0, p0, Landroidx/media2/widget/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v1, p0, Landroidx/media2/widget/SubtitleController;->mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/CaptioningManager;->removeCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    .line 332
    return-void
.end method

.method public selectDefaultTrack()V
    .locals 2

    .line 285
    iget-object v0, p0, Landroidx/media2/widget/SubtitleController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/media2/widget/SubtitleController;->processOnAnchor(Landroid/os/Message;)V

    .line 286
    return-void
.end method

.method public selectTrack(Landroidx/media2/widget/SubtitleTrack;)Z
    .locals 2
    .param p1, "track"    # Landroidx/media2/widget/SubtitleTrack;

    .line 162
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/media2/widget/SubtitleController;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    const/4 v0, 0x0

    return v0

    .line 162
    :cond_0
    nop

    .line 166
    iget-object v0, p0, Landroidx/media2/widget/SubtitleController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/media2/widget/SubtitleController;->processOnAnchor(Landroid/os/Message;)V

    .line 167
    const/4 v0, 0x1

    return v0
.end method

.method public setAnchor(Landroidx/media2/widget/SubtitleController$Anchor;)V
    .locals 3
    .param p1, "anchor"    # Landroidx/media2/widget/SubtitleController$Anchor;

    .line 490
    iget-object v0, p0, Landroidx/media2/widget/SubtitleController;->mAnchor:Landroidx/media2/widget/SubtitleController$Anchor;

    if-ne v0, p1, :cond_0

    .line 491
    return-void

    .line 494
    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 495
    invoke-direct {p0}, Landroidx/media2/widget/SubtitleController;->checkAnchorLooper()V

    .line 496
    iget-object v0, p0, Landroidx/media2/widget/SubtitleController;->mAnchor:Landroidx/media2/widget/SubtitleController$Anchor;

    invoke-interface {v0, v1}, Landroidx/media2/widget/SubtitleController$Anchor;->setSubtitleWidget(Landroidx/media2/widget/SubtitleTrack$RenderingWidget;)V

    goto :goto_0

    .line 494
    :cond_1
    nop

    .line 498
    :goto_0
    iput-object p1, p0, Landroidx/media2/widget/SubtitleController;->mAnchor:Landroidx/media2/widget/SubtitleController$Anchor;

    .line 499
    iput-object v1, p0, Landroidx/media2/widget/SubtitleController;->mHandler:Landroid/os/Handler;

    .line 500
    iget-object v0, p0, Landroidx/media2/widget/SubtitleController;->mAnchor:Landroidx/media2/widget/SubtitleController$Anchor;

    if-eqz v0, :cond_2

    .line 501
    new-instance v1, Landroid/os/Handler;

    invoke-interface {v0}, Landroidx/media2/widget/SubtitleController$Anchor;->getSubtitleLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v2, p0, Landroidx/media2/widget/SubtitleController;->mCallback:Landroid/os/Handler$Callback;

    invoke-direct {v1, v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Landroidx/media2/widget/SubtitleController;->mHandler:Landroid/os/Handler;

    .line 502
    invoke-direct {p0}, Landroidx/media2/widget/SubtitleController;->checkAnchorLooper()V

    .line 503
    iget-object v0, p0, Landroidx/media2/widget/SubtitleController;->mAnchor:Landroidx/media2/widget/SubtitleController$Anchor;

    invoke-direct {p0}, Landroidx/media2/widget/SubtitleController;->getRenderingWidget()Landroidx/media2/widget/SubtitleTrack$RenderingWidget;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/media2/widget/SubtitleController$Anchor;->setSubtitleWidget(Landroidx/media2/widget/SubtitleTrack$RenderingWidget;)V

    goto :goto_1

    .line 500
    :cond_2
    nop

    .line 505
    :goto_1
    return-void
.end method

.method public show()V
    .locals 2

    .line 368
    iget-object v0, p0, Landroidx/media2/widget/SubtitleController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/media2/widget/SubtitleController;->processOnAnchor(Landroid/os/Message;)V

    .line 369
    return-void
.end method
