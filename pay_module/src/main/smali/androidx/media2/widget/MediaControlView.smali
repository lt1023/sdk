.class public Landroidx/media2/widget/MediaControlView;
.super Landroidx/media2/widget/MediaViewGroup;
.source "MediaControlView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/widget/MediaControlView$PlayerCallback;,
        Landroidx/media2/widget/MediaControlView$SubSettingsAdapter;,
        Landroidx/media2/widget/MediaControlView$SettingsAdapter;,
        Landroidx/media2/widget/MediaControlView$OnFullScreenListener;
    }
.end annotation


# static fields
.field private static final AD_SKIP_WAIT_TIME_MS:J = 0x1388L

.field static final DEBUG:Z

.field private static final DEFAULT_DELAYED_ANIMATION_INTERVAL_MS:J = 0x7d0L

.field private static final DEFAULT_PROGRESS_UPDATE_TIME_MS:J = 0x3e8L

.field private static final DISABLE_DELAYED_ANIMATION:J = -0x1L

.field private static final FORWARD_TIME_MS:J = 0x7530L

.field private static final HIDE_TIME_MS:J = 0xfaL

.field private static final MAX_PROGRESS:I = 0x3e8

.field private static final MAX_SCALE_LEVEL:I = 0x2710

.field private static final PLAYBACK_SPEED_1x_INDEX:I = 0x3

.field private static final PLAY_BUTTON_PAUSE:I = 0x0

.field private static final PLAY_BUTTON_PLAY:I = 0x1

.field private static final PLAY_BUTTON_REPLAY:I = 0x2

.field private static final RESOURCE_EMPTY:Ljava/lang/String; = ""

.field private static final RESOURCE_NON_EXISTENT:I = -0x1

.field private static final REWIND_TIME_MS:J = 0x2710L

.field private static final SEEK_POSITION_NOT_SET:I = -0x1

.field private static final SETTINGS_MODE_AUDIO_TRACK:I = 0x0

.field private static final SETTINGS_MODE_MAIN:I = 0x3

.field private static final SETTINGS_MODE_PLAYBACK_SPEED:I = 0x1

.field private static final SETTINGS_MODE_SUBTITLE_TRACK:I = 0x2

.field private static final SHOW_TIME_MS:J = 0xfaL

.field private static final SIZE_TYPE_EMBEDDED:I = 0x0

.field private static final SIZE_TYPE_FULL:I = 0x1

.field private static final SIZE_TYPE_MINIMAL:I = 0x2

.field private static final SIZE_TYPE_UNDEFINED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "MediaControlView"

.field private static final UX_STATE_ALL_VISIBLE:I = 0x0

.field private static final UX_STATE_ANIMATING:I = 0x3

.field private static final UX_STATE_NONE_VISIBLE:I = 0x2

.field private static final UX_STATE_ONLY_PROGRESS_VISIBLE:I = 0x1


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAdExternalLink:Landroid/view/View;

.field private mAdRemainingView:Landroid/widget/TextView;

.field private mAdSkipView:Landroid/widget/TextView;

.field mAudioTrackDescriptionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mAudioTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ">;"
        }
    .end annotation
.end field

.field mBasicControls:Landroid/view/ViewGroup;

.field private mBottomBarBackground:Landroid/view/View;

.field private mBottomBarLeft:Landroid/view/ViewGroup;

.field mCenterView:Landroid/view/ViewGroup;

.field private mCenterViewBackground:Landroid/view/View;

.field mCurrentSeekPosition:J

.field mCurrentTime:Landroid/widget/TextView;

.field mCustomPlaybackSpeedIndex:I

.field mDelayedAnimationIntervalMs:J

.field mDragging:Z

.field mDuration:J

.field private mEmbeddedSettingsItemWidth:I

.field private mEmbeddedTransportControls:Landroid/view/View;

.field private mEndTime:Landroid/widget/TextView;

.field mExtraControls:Landroid/view/ViewGroup;

.field private final mFfwdListener:Landroid/view/View$OnClickListener;

.field private mFormatBuilder:Ljava/lang/StringBuilder;

.field private mFormatter:Ljava/util/Formatter;

.field mFullScreenButton:Landroid/widget/ImageButton;

.field private final mFullScreenListener:Landroid/view/View$OnClickListener;

.field private mFullSettingsItemWidth:I

.field private mFullTransportControls:Landroid/view/View;

.field private final mHideAllBars:Ljava/lang/Runnable;

.field mHideAllBarsAnimator:Landroid/animation/AnimatorSet;

.field mHideMainBars:Ljava/lang/Runnable;

.field mHideMainBarsAnimator:Landroid/animation/AnimatorSet;

.field final mHideProgressBar:Ljava/lang/Runnable;

.field mHideProgressBarAnimator:Landroid/animation/AnimatorSet;

.field mIsAdvertisement:Z

.field private mIsAttachedToVideoView:Z

.field mIsFullScreen:Z

.field mIsShowingReplayButton:Z

.field mMinimalFullScreenButton:Landroid/widget/ImageButton;

.field mMinimalFullScreenView:Landroid/view/ViewGroup;

.field private mMinimalTransportControls:Landroid/view/View;

.field mNeedToHideBars:Z

.field mNeedToShowBars:Z

.field private final mNextListener:Landroid/view/View$OnClickListener;

.field mNextSeekPosition:J

.field mOnFullScreenListener:Landroidx/media2/widget/MediaControlView$OnFullScreenListener;

.field mOverflowHideAnimator:Landroid/animation/ValueAnimator;

.field private final mOverflowHideListener:Landroid/view/View$OnClickListener;

.field mOverflowIsShowing:Z

.field mOverflowShowAnimator:Landroid/animation/ValueAnimator;

.field private final mOverflowShowListener:Landroid/view/View$OnClickListener;

.field private final mPlayPauseListener:Landroid/view/View$OnClickListener;

.field mPlaybackSpeedMultBy100List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mPlaybackSpeedTextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPlayer:Landroidx/media2/widget/PlayerWrapper;

.field private final mPrevListener:Landroid/view/View$OnClickListener;

.field mProgress:Landroid/widget/SeekBar;

.field private mProgressBar:Landroid/view/ViewGroup;

.field mResources:Landroid/content/res/Resources;

.field private final mRewListener:Landroid/view/View$OnClickListener;

.field mSeekAvailable:Z

.field private final mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field mSelectedAudioTrackIndex:I

.field mSelectedSpeedIndex:I

.field mSelectedSubtitleTrackIndex:I

.field mSettingsAdapter:Landroidx/media2/widget/MediaControlView$SettingsAdapter;

.field private final mSettingsButtonListener:Landroid/view/View$OnClickListener;

.field private mSettingsDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private mSettingsIconIdsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mSettingsItemHeight:I

.field private mSettingsListView:Landroid/widget/ListView;

.field private mSettingsMainTextsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSettingsMode:I

.field mSettingsSubTextsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingsWindow:Landroid/widget/PopupWindow;

.field private mSettingsWindowMargin:I

.field final mShowAllBars:Ljava/lang/Runnable;

.field mShowAllBarsAnimator:Landroid/animation/AnimatorSet;

.field mShowMainBarsAnimator:Landroid/animation/AnimatorSet;

.field mSizeType:I

.field mSubSettingsAdapter:Landroidx/media2/widget/MediaControlView$SubSettingsAdapter;

.field mSubtitleButton:Landroid/widget/ImageButton;

.field mSubtitleDescriptionsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubtitleListener:Landroid/view/View$OnClickListener;

.field mSubtitleTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeView:Landroid/view/ViewGroup;

.field private mTitleBar:Landroid/view/View;

.field private mTitleView:Landroid/widget/TextView;

.field private mTransportControlsMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final mUpdateProgress:Ljava/lang/Runnable;

.field mUxState:I

.field mVideoTrackCount:I

.field mWasPlaying:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 138
    const-string v0, "MediaControlView"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroidx/media2/widget/MediaControlView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 276
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/media2/widget/MediaControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 277
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 280
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/widget/MediaControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 281
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .line 285
    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/widget/MediaViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/widget/MediaControlView;->mIsAttachedToVideoView:Z

    .line 193
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media2/widget/MediaControlView;->mSizeType:I

    .line 209
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/media2/widget/MediaControlView;->mTransportControlsMap:Landroid/util/SparseArray;

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/widget/MediaControlView;->mAudioTracks:Ljava/util/List;

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/widget/MediaControlView;->mSubtitleTracks:Ljava/util/List;

    .line 919
    new-instance v0, Landroidx/media2/widget/MediaControlView$14;

    invoke-direct {v0, p0}, Landroidx/media2/widget/MediaControlView$14;-><init>(Landroidx/media2/widget/MediaControlView;)V

    iput-object v0, p0, Landroidx/media2/widget/MediaControlView;->mUpdateProgress:Ljava/lang/Runnable;

    .line 1041
    new-instance v0, Landroidx/media2/widget/MediaControlView$15;

    invoke-direct {v0, p0}, Landroidx/media2/widget/MediaControlView$15;-><init>(Landroidx/media2/widget/MediaControlView;)V

    iput-object v0, p0, Landroidx/media2/widget/MediaControlView;->mShowAllBars:Ljava/lang/Runnable;

    .line 1061
    new-instance v0, Landroidx/media2/widget/MediaControlView$16;

    invoke-direct {v0, p0}, Landroidx/media2/widget/MediaControlView$16;-><init>(Landroidx/media2/widget/MediaControlView;)V

    iput-object v0, p0, Landroidx/media2/widget/MediaControlView;->mHideAllBars:Ljava/lang/Runnable;

    .line 1071
    new-instance v0, Landroidx/media2/widget/MediaControlView$17;

    invoke-direct {v0, p0}, Landroidx/media2/widget/MediaControlView$17;-><init>(Landroidx/media2/widget/MediaControlView;)V

    iput-object v0, p0, Landroidx/media2/widget/MediaControlView;->mHideMainBars:Ljava/lang/Runnable;

    .line 1082
    new-instance v0, Landroidx/media2/widget/MediaControlView$18;

    invoke-direct {v0, p0}, Landroidx/media2/widget/MediaControlView$18;-><init>(Landroidx/media2/widget/MediaControlView;)V

    iput-object v0, p0, Landroidx/media2/widget/MediaControlView;->mHideProgressBar:Ljava/lang/Runnable;

    .line 1103
    new-instance v0, Landroidx/media2/widget/MediaControlView$19;

    invoke-direct {v0, p0}, Landroidx/media2/widget/MediaControlView$19;-><init>(Landroidx/media2/widget/MediaControlView;)V

    iput-object v0, p0, Landroidx/media2/widget/MediaControlView;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 1176
    new-instance v0, Landroidx/media2/widget/MediaControlView$20;

    invoke-direct {v0, p0}, Landroidx/media2/widget/MediaControlView$20;-><init>(Landroidx/media2/widget/MediaControlView;)V

    iput-object v0, p0, Landroidx/media2/widget/MediaControlView;->mPlayPauseListener:Landroid/view/View$OnClickListener;

    .line 1185
    new-instance v0, Landroidx/media2/widget/MediaControlView$21;

    invoke-direct {v0, p0}, Landroidx/media2/widget/MediaControlView$21;-><init>(Landroidx/media2/widget/MediaControlView;)V

    iput-object v0, p0, Landroidx/media2/widget/MediaControlView;->mRewListener:Landroid/view/View$OnClickListener;

    .line 1203
    new-instance v0, Landroidx/media2/widget/MediaControlView$22;

    invoke-direct {v0, p0}, Landroidx/media2/widget/MediaControlView$22;-><init>(Landroidx/media2/widget/MediaControlView;)V

    iput-object v0, p0, Landroidx/media2/widget/MediaControlView;->mFfwdListener:Landroid/view/View$OnClickListener;

    .line 1222
    new-instance v0, Landroidx/media2/widget/MediaControlView$23;

    invoke-direct {v0, p0}, Landroidx/media2/widget/MediaControlView$23;-><init>(Landroidx/media2/widget/MediaControlView;)V

    iput-object v0, p0, Landroidx/media2/widget/MediaControlView;->mNextListener:Landroid/view/View$OnClickListener;

    .line 1231
    new-instance v0, Landroidx/media2/widget/MediaControlView$24;

    invoke-direct {v0, p0}, Landroidx/media2/widget/MediaControlView$24;-><init>(Landroidx/media2/widget/MediaControlView;)V

    iput-object v0, p0, Landroidx/media2/widget/MediaControlView;->mPrevListener:Landroid/view/View$OnClickListener;

    .line 1240
    new-instance v0, Landroidx/media2/widget/MediaControlView$25;

    invoke-direct {v0, p0}, Landroidx/media2/widget/MediaControlView$25;-><init>(Landroidx/media2/widget/MediaControlView;)V

    iput-object v0, p0, Landroidx/media2/widget/MediaControlView;->mSubtitleListener:Landroid/view/View$OnClickListener;

    .line 1254
    new-instance v0, Landroidx/media2/widget/MediaControlView$26;

    invoke-direct {v0, p0}, Landroidx/media2/widget/MediaControlView$26;-><init>(Landroidx/media2/widget/MediaControlView;)V

    iput-object v0, p0, Landroidx/media2/widget/MediaControlView;->mFullScreenListener:Landroid/view/View$OnClickListener;

    .line 1279
    new-instance v0, Landroidx/media2/widget/MediaControlView$27;

    invoke-direct {v0, p0}, Landroidx/media2/widget/MediaControlView$27;-><init>(Landroidx/media2/widget/MediaControlView;)V

    iput-object v0, p0, Landroidx/media2/widget/MediaControlView;->mOverflowShowListener:Landroid/view/View$OnClickListener;

    .line 1290
    new-instance v0, Landroidx/media2/widget/MediaControlView$28;

    invoke-direct {v0, p0}, Landroidx/media2/widget/MediaControlView$28;-><init>(Landroidx/media2/widget/MediaControlView;)V

    iput-object v0, p0, Landroidx/media2/widget/MediaControlView;->mOverflowHideListener:Landroid/view/View$OnClickListener;

    .line 1301
    new-instance v0, Landroidx/media2/widget/MediaControlView$29;

    invoke-direct {v0, p0}, Landroidx/media2/widget/MediaControlView$29;-><init>(Landroidx/media2/widget/MediaControlView;)V

    iput-object v0, p0, Landroidx/media2/widget/MediaControlView;->mSettingsButtonListener:Landroid/view/View$OnClickListener;

    .line 1314
    new-instance v0, Landroidx/media2/widget/MediaControlView$30;

    invoke-direct {v0, p0}, Landroidx/media2/widget/MediaControlView$30;-><init>(Landroidx/media2/widget/MediaControlView;)V

    iput-object v0, p0, Landroidx/media2/widget/MediaControlView;->mSettingsItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1360
    new-instance v0, Landroidx/media2/widget/MediaControlView$31;

    invoke-direct {v0, p0}, Landroidx/media2/widget/MediaControlView$31;-><init>(Landroidx/media2/widget/MediaControlView;)V

    iput-object v0, p0, Landroidx/media2/widget/MediaControlView;->mSettingsDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 287
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/widget/MediaControlView;->mResources:Landroid/content/res/Resources;

    .line 288
    sget v0, Landroidx/media2/widget/R$layout;->media_controller:I

    invoke-static {p1, v0, p0}, Landroidx/media2/widget/MediaControlView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 289
    invoke-direct {p0}, Landroidx/media2/widget/MediaControlView;->initControllerView()V

    .line 290
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Landroidx/media2/widget/MediaControlView;->mDelayedAnimationIntervalMs:J

    .line 291
    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Landroidx/media2/widget/MediaControlView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 293
    return-void
.end method

.method private hasActualVideo()Z
    .locals 5

    .line 1877
    iget v0, p0, Landroidx/media2/widget/MediaControlView;->mVideoTrackCount:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    .line 1878
    return v1

    .line 1880
    :cond_0
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {v0}, Landroidx/media2/widget/PlayerWrapper;->getVideoSize()Landroidx/media2/common/VideoSize;

    move-result-object v0

    .line 1881
    .local v0, "videoSize":Landroidx/media2/common/VideoSize;
    invoke-virtual {v0}, Landroidx/media2/common/VideoSize;->getHeight()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0}, Landroidx/media2/common/VideoSize;->getWidth()I

    move-result v2

    if-lez v2, :cond_1

    .line 1882
    const-string v2, "MediaControlView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "video track count is zero, but it renders video. size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    return v1

    .line 1881
    :cond_1
    nop

    .line 1885
    const/4 v1, 0x0

    return v1
.end method

.method private hideMediaControlView()V
    .locals 2

    .line 1033
    invoke-virtual {p0}, Landroidx/media2/widget/MediaControlView;->shouldNotHideBars()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Landroidx/media2/widget/MediaControlView;->mUxState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1036
    :cond_0
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mHideMainBars:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/media2/widget/MediaControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1037
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mHideProgressBar:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/media2/widget/MediaControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1038
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mHideAllBars:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/media2/widget/MediaControlView;->post(Ljava/lang/Runnable;)Z

    .line 1039
    return-void

    .line 1033
    :cond_1
    :goto_0
    nop

    .line 1034
    return-void
.end method

.method static inflateLayout(Landroid/content/Context;I)Landroid/view/View;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .line 641
    const-string v0, "layout_inflater"

    .line 642
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 643
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private initControllerView()V
    .locals 16

    .line 648
    move-object/from16 v0, p0

    sget v1, Landroidx/media2/widget/R$id;->title_bar:I

    invoke-virtual {v0, v1}, Landroidx/media2/widget/MediaControlView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroidx/media2/widget/MediaControlView;->mTitleBar:Landroid/view/View;

    .line 649
    sget v1, Landroidx/media2/widget/R$id;->title_text:I

    invoke-virtual {v0, v1}, Landroidx/media2/widget/MediaControlView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Landroidx/media2/widget/MediaControlView;->mTitleView:Landroid/widget/TextView;

    .line 650
    sget v1, Landroidx/media2/widget/R$id;->ad_external_link:I

    invoke-virtual {v0, v1}, Landroidx/media2/widget/MediaControlView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroidx/media2/widget/MediaControlView;->mAdExternalLink:Landroid/view/View;

    .line 653
    sget v1, Landroidx/media2/widget/R$id;->center_view:I

    invoke-virtual {v0, v1}, Landroidx/media2/widget/MediaControlView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Landroidx/media2/widget/MediaControlView;->mCenterView:Landroid/view/ViewGroup;

    .line 654
    sget v1, Landroidx/media2/widget/R$id;->center_view_background:I

    invoke-virtual {v0, v1}, Landroidx/media2/widget/MediaControlView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroidx/media2/widget/MediaControlView;->mCenterViewBackground:Landroid/view/View;

    .line 655
    sget v1, Landroidx/media2/widget/R$id;->embedded_transport_controls:I

    invoke-direct {v0, v1}, Landroidx/media2/widget/MediaControlView;->initTransportControls(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroidx/media2/widget/MediaControlView;->mEmbeddedTransportControls:Landroid/view/View;

    .line 656
    sget v1, Landroidx/media2/widget/R$id;->minimal_transport_controls:I

    invoke-direct {v0, v1}, Landroidx/media2/widget/MediaControlView;->initTransportControls(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroidx/media2/widget/MediaControlView;->mMinimalTransportControls:Landroid/view/View;

    .line 659
    sget v1, Landroidx/media2/widget/R$id;->minimal_fullscreen_view:I

    invoke-virtual {v0, v1}, Landroidx/media2/widget/MediaControlView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Landroidx/media2/widget/MediaControlView;->mMinimalFullScreenView:Landroid/view/ViewGroup;

    .line 660
    sget v1, Landroidx/media2/widget/R$id;->minimal_fullscreen:I

    invoke-virtual {v0, v1}, Landroidx/media2/widget/MediaControlView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, v0, Landroidx/media2/widget/MediaControlView;->mMinimalFullScreenButton:Landroid/widget/ImageButton;

    .line 661
    iget-object v1, v0, Landroidx/media2/widget/MediaControlView;->mMinimalFullScreenButton:Landroid/widget/ImageButton;

    iget-object v2, v0, Landroidx/media2/widget/MediaControlView;->mFullScreenListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 664
    sget v1, Landroidx/media2/widget/R$id;->progress_bar:I

    invoke-virtual {v0, v1}, Landroidx/media2/widget/MediaControlView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Landroidx/media2/widget/MediaControlView;->mProgressBar:Landroid/view/ViewGroup;

    .line 665
    sget v1, Landroidx/media2/widget/R$id;->progress:I

    invoke-virtual {v0, v1}, Landroidx/media2/widget/MediaControlView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, v0, Landroidx/media2/widget/MediaControlView;->mProgress:Landroid/widget/SeekBar;

    .line 666
    iget-object v1, v0, Landroidx/media2/widget/MediaControlView;->mProgress:Landroid/widget/SeekBar;

    iget-object v2, v0, Landroidx/media2/widget/MediaControlView;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 667
    iget-object v1, v0, Landroidx/media2/widget/MediaControlView;->mProgress:Landroid/widget/SeekBar;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 668
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Landroidx/media2/widget/MediaControlView;->mCurrentSeekPosition:J

    .line 669
    iput-wide v1, v0, Landroidx/media2/widget/MediaControlView;->mNextSeekPosition:J

    .line 672
    sget v1, Landroidx/media2/widget/R$id;->bottom_bar_background:I

    invoke-virtual {v0, v1}, Landroidx/media2/widget/MediaControlView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroidx/media2/widget/MediaControlView;->mBottomBarBackground:Landroid/view/View;

    .line 675
    sget v1, Landroidx/media2/widget/R$id;->bottom_bar_left:I

    invoke-virtual {v0, v1}, Landroidx/media2/widget/MediaControlView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Landroidx/media2/widget/MediaControlView;->mBottomBarLeft:Landroid/view/ViewGroup;

    .line 676
    sget v1, Landroidx/media2/widget/R$id;->full_transport_controls:I

    invoke-direct {v0, v1}, Landroidx/media2/widget/MediaControlView;->initTransportControls(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroidx/media2/widget/MediaControlView;->mFullTransportControls:Landroid/view/View;

    .line 677
    sget v1, Landroidx/media2/widget/R$id;->time:I

    invoke-virtual {v0, v1}, Landroidx/media2/widget/MediaControlView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Landroidx/media2/widget/MediaControlView;->mTimeView:Landroid/view/ViewGroup;

    .line 678
    sget v1, Landroidx/media2/widget/R$id;->time_end:I

    invoke-virtual {v0, v1}, Landroidx/media2/widget/MediaControlView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Landroidx/media2/widget/MediaControlView;->mEndTime:Landroid/widget/TextView;

    .line 679
    sget v1, Landroidx/media2/widget/R$id;->time_current:I

    invoke-virtual {v0, v1}, Landroidx/media2/widget/MediaControlView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Landroidx/media2/widget/MediaControlView;->mCurrentTime:Landroid/widget/TextView;

    .line 680
    sget v1, Landroidx/media2/widget/R$id;->ad_skip_time:I

    invoke-virtual {v0, v1}, Landroidx/media2/widget/MediaControlView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Landroidx/media2/widget/MediaControlView;->mAdSkipView:Landroid/widget/TextView;

    .line 681
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, v0, Landroidx/media2/widget/MediaControlView;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 682
    new-instance v1, Ljava/util/Formatter;

    iget-object v2, v0, Landroidx/media2/widget/MediaControlView;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v1, v0, Landroidx/media2/widget/MediaControlView;->mFormatter:Ljava/util/Formatter;

    .line 685
    sget v1, Landroidx/media2/widget/R$id;->basic_controls:I

    invoke-virtual {v0, v1}, Landroidx/media2/widget/MediaControlView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Landroidx/media2/widget/MediaControlView;->mBasicControls:Landroid/view/ViewGroup;

    .line 686
    sget v1, Landroidx/media2/widget/R$id;->extra_controls:I

    invoke-virtual {v0, v1}, Landroidx/media2/widget/MediaControlView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Landroidx/media2/widget/MediaControlView;->mExtraControls:Landroid/view/ViewGroup;

    .line 687
    sget v1, Landroidx/media2/widget/R$id;->subtitle:I

    invoke-virtual {v0, v1}, Landroidx/media2/widget/MediaControlView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, v0, Landroidx/media2/widget/MediaControlView;->mSubtitleButton:Landroid/widget/ImageButton;

    .line 688
    iget-object v1, v0, Landroidx/media2/widget/MediaControlView;->mSubtitleButton:Landroid/widget/ImageButton;

    iget-object v2, v0, Landroidx/media2/widget/MediaControlView;->mSubtitleListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 689
    sget v1, Landroidx/media2/widget/R$id;->fullscreen:I

    invoke-virtual {v0, v1}, Landroidx/media2/widget/MediaControlView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, v0, Landroidx/media2/widget/MediaControlView;->mFullScreenButton:Landroid/widget/ImageButton;

    .line 690
    iget-object v1, v0, Landroidx/media2/widget/MediaControlView;->mFullScreenButton:Landroid/widget/ImageButton;

    iget-object v2, v0, Landroidx/media2/widget/MediaControlView;->mFullScreenListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 691
    sget v1, Landroidx/media2/widget/R$id;->overflow_show:I

    invoke-virtual {v0, v1}, Landroidx/media2/widget/MediaControlView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 692
    .local v1, "overflowShowButton":Landroid/widget/ImageButton;
    iget-object v2, v0, Landroidx/media2/widget/MediaControlView;->mOverflowShowListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 693
    sget v2, Landroidx/media2/widget/R$id;->overflow_hide:I

    invoke-virtual {v0, v2}, Landroidx/media2/widget/MediaControlView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 694
    .local v2, "overflowHideButton":Landroid/widget/ImageButton;
    iget-object v3, v0, Landroidx/media2/widget/MediaControlView;->mOverflowHideListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 695
    sget v3, Landroidx/media2/widget/R$id;->settings:I

    invoke-virtual {v0, v3}, Landroidx/media2/widget/MediaControlView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 696
    .local v3, "settingsButton":Landroid/widget/ImageButton;
    iget-object v4, v0, Landroidx/media2/widget/MediaControlView;->mSettingsButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 697
    sget v4, Landroidx/media2/widget/R$id;->ad_remaining:I

    invoke-virtual {v0, v4}, Landroidx/media2/widget/MediaControlView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Landroidx/media2/widget/MediaControlView;->mAdRemainingView:Landroid/widget/TextView;

    .line 700
    invoke-direct/range {p0 .. p0}, Landroidx/media2/widget/MediaControlView;->initializeSettingsLists()V

    .line 701
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/widget/MediaControlView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Landroidx/media2/widget/R$layout;->settings_list:I

    invoke-static {v4, v5}, Landroidx/media2/widget/MediaControlView;->inflateLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, v0, Landroidx/media2/widget/MediaControlView;->mSettingsListView:Landroid/widget/ListView;

    .line 702
    new-instance v4, Landroidx/media2/widget/MediaControlView$SettingsAdapter;

    iget-object v5, v0, Landroidx/media2/widget/MediaControlView;->mSettingsMainTextsList:Ljava/util/List;

    iget-object v6, v0, Landroidx/media2/widget/MediaControlView;->mSettingsSubTextsList:Ljava/util/List;

    iget-object v7, v0, Landroidx/media2/widget/MediaControlView;->mSettingsIconIdsList:Ljava/util/List;

    invoke-direct {v4, v0, v5, v6, v7}, Landroidx/media2/widget/MediaControlView$SettingsAdapter;-><init>(Landroidx/media2/widget/MediaControlView;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    iput-object v4, v0, Landroidx/media2/widget/MediaControlView;->mSettingsAdapter:Landroidx/media2/widget/MediaControlView$SettingsAdapter;

    .line 704
    new-instance v4, Landroidx/media2/widget/MediaControlView$SubSettingsAdapter;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v4, v0, v6, v5}, Landroidx/media2/widget/MediaControlView$SubSettingsAdapter;-><init>(Landroidx/media2/widget/MediaControlView;Ljava/util/List;I)V

    iput-object v4, v0, Landroidx/media2/widget/MediaControlView;->mSubSettingsAdapter:Landroidx/media2/widget/MediaControlView$SubSettingsAdapter;

    .line 705
    iget-object v4, v0, Landroidx/media2/widget/MediaControlView;->mSettingsListView:Landroid/widget/ListView;

    iget-object v6, v0, Landroidx/media2/widget/MediaControlView;->mSettingsAdapter:Landroidx/media2/widget/MediaControlView$SettingsAdapter;

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 706
    iget-object v4, v0, Landroidx/media2/widget/MediaControlView;->mSettingsListView:Landroid/widget/ListView;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 707
    iget-object v4, v0, Landroidx/media2/widget/MediaControlView;->mSettingsListView:Landroid/widget/ListView;

    iget-object v7, v0, Landroidx/media2/widget/MediaControlView;->mSettingsItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 710
    iget-object v4, v0, Landroidx/media2/widget/MediaControlView;->mTransportControlsMap:Landroid/util/SparseArray;

    iget-object v7, v0, Landroidx/media2/widget/MediaControlView;->mEmbeddedTransportControls:Landroid/view/View;

    invoke-virtual {v4, v5, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 711
    iget-object v4, v0, Landroidx/media2/widget/MediaControlView;->mTransportControlsMap:Landroid/util/SparseArray;

    iget-object v7, v0, Landroidx/media2/widget/MediaControlView;->mFullTransportControls:Landroid/view/View;

    invoke-virtual {v4, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 712
    iget-object v4, v0, Landroidx/media2/widget/MediaControlView;->mTransportControlsMap:Landroid/util/SparseArray;

    iget-object v7, v0, Landroidx/media2/widget/MediaControlView;->mMinimalTransportControls:Landroid/view/View;

    const/4 v8, 0x2

    invoke-virtual {v4, v8, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 714
    iget-object v4, v0, Landroidx/media2/widget/MediaControlView;->mResources:Landroid/content/res/Resources;

    sget v7, Landroidx/media2/widget/R$dimen;->mcv2_embedded_settings_width:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v0, Landroidx/media2/widget/MediaControlView;->mEmbeddedSettingsItemWidth:I

    .line 716
    iget-object v4, v0, Landroidx/media2/widget/MediaControlView;->mResources:Landroid/content/res/Resources;

    sget v7, Landroidx/media2/widget/R$dimen;->mcv2_full_settings_width:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v0, Landroidx/media2/widget/MediaControlView;->mFullSettingsItemWidth:I

    .line 717
    iget-object v4, v0, Landroidx/media2/widget/MediaControlView;->mResources:Landroid/content/res/Resources;

    sget v7, Landroidx/media2/widget/R$dimen;->mcv2_settings_height:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v0, Landroidx/media2/widget/MediaControlView;->mSettingsItemHeight:I

    .line 719
    iget-object v4, v0, Landroidx/media2/widget/MediaControlView;->mResources:Landroid/content/res/Resources;

    sget v7, Landroidx/media2/widget/R$dimen;->mcv2_settings_offset:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/lit8 v4, v4, -0x1

    iput v4, v0, Landroidx/media2/widget/MediaControlView;->mSettingsWindowMargin:I

    .line 721
    new-instance v4, Landroid/widget/PopupWindow;

    iget-object v7, v0, Landroidx/media2/widget/MediaControlView;->mSettingsListView:Landroid/widget/ListView;

    iget v9, v0, Landroidx/media2/widget/MediaControlView;->mEmbeddedSettingsItemWidth:I

    const/4 v10, -0x2

    invoke-direct {v4, v7, v9, v10, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v4, v0, Landroidx/media2/widget/MediaControlView;->mSettingsWindow:Landroid/widget/PopupWindow;

    .line 723
    iget-object v4, v0, Landroidx/media2/widget/MediaControlView;->mSettingsWindow:Landroid/widget/PopupWindow;

    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v4, v7}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 724
    iget-object v4, v0, Landroidx/media2/widget/MediaControlView;->mSettingsWindow:Landroid/widget/PopupWindow;

    iget-object v7, v0, Landroidx/media2/widget/MediaControlView;->mSettingsDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v4, v7}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 726
    iget-object v4, v0, Landroidx/media2/widget/MediaControlView;->mResources:Landroid/content/res/Resources;

    sget v7, Landroidx/media2/widget/R$dimen;->mcv2_title_bar_height:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 727
    .local v4, "titleBarHeight":F
    iget-object v7, v0, Landroidx/media2/widget/MediaControlView;->mResources:Landroid/content/res/Resources;

    sget v9, Landroidx/media2/widget/R$dimen;->mcv2_custom_progress_thumb_size:I

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    .line 728
    .local v7, "progressBarHeight":F
    iget-object v9, v0, Landroidx/media2/widget/MediaControlView;->mResources:Landroid/content/res/Resources;

    sget v10, Landroidx/media2/widget/R$dimen;->mcv2_bottom_bar_height:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    .line 730
    .local v9, "bottomBarHeight":F
    const/4 v10, 0x6

    new-array v10, v10, [Landroid/view/View;

    iget-object v11, v0, Landroidx/media2/widget/MediaControlView;->mBottomBarBackground:Landroid/view/View;

    aput-object v11, v10, v5

    iget-object v5, v0, Landroidx/media2/widget/MediaControlView;->mBottomBarLeft:Landroid/view/ViewGroup;

    aput-object v5, v10, v6

    iget-object v5, v0, Landroidx/media2/widget/MediaControlView;->mTimeView:Landroid/view/ViewGroup;

    aput-object v5, v10, v8

    iget-object v5, v0, Landroidx/media2/widget/MediaControlView;->mBasicControls:Landroid/view/ViewGroup;

    const/4 v6, 0x3

    aput-object v5, v10, v6

    iget-object v5, v0, Landroidx/media2/widget/MediaControlView;->mExtraControls:Landroid/view/ViewGroup;

    const/4 v6, 0x4

    aput-object v5, v10, v6

    iget-object v5, v0, Landroidx/media2/widget/MediaControlView;->mProgressBar:Landroid/view/ViewGroup;

    const/4 v6, 0x5

    aput-object v5, v10, v6

    move-object v5, v10

    .line 733
    .local v5, "bottomBarGroup":[Landroid/view/View;
    new-array v6, v8, [F

    fill-array-data v6, :array_0

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 734
    .local v6, "fadeOutAnimator":Landroid/animation/ValueAnimator;
    new-instance v10, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v10}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v6, v10}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 735
    new-instance v10, Landroidx/media2/widget/MediaControlView$1;

    invoke-direct {v10, v0}, Landroidx/media2/widget/MediaControlView$1;-><init>(Landroidx/media2/widget/MediaControlView;)V

    invoke-virtual {v6, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 746
    new-instance v10, Landroidx/media2/widget/MediaControlView$2;

    invoke-direct {v10, v0}, Landroidx/media2/widget/MediaControlView$2;-><init>(Landroidx/media2/widget/MediaControlView;)V

    invoke-virtual {v6, v10}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 754
    new-array v10, v8, [F

    fill-array-data v10, :array_1

    invoke-static {v10}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v10

    .line 755
    .local v10, "fadeInAnimator":Landroid/animation/ValueAnimator;
    new-instance v11, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v11}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v10, v11}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 756
    new-instance v11, Landroidx/media2/widget/MediaControlView$3;

    invoke-direct {v11, v0}, Landroidx/media2/widget/MediaControlView$3;-><init>(Landroidx/media2/widget/MediaControlView;)V

    invoke-virtual {v10, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 767
    new-instance v11, Landroidx/media2/widget/MediaControlView$4;

    invoke-direct {v11, v0}, Landroidx/media2/widget/MediaControlView$4;-><init>(Landroidx/media2/widget/MediaControlView;)V

    invoke-virtual {v10, v11}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 775
    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v11, v0, Landroidx/media2/widget/MediaControlView;->mHideMainBarsAnimator:Landroid/animation/AnimatorSet;

    .line 776
    iget-object v11, v0, Landroidx/media2/widget/MediaControlView;->mHideMainBarsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v11, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v11

    neg-float v12, v4

    iget-object v13, v0, Landroidx/media2/widget/MediaControlView;->mTitleBar:Landroid/view/View;

    .line 777
    const/4 v14, 0x0

    invoke-static {v14, v12, v13}, Landroidx/media2/widget/AnimatorUtil;->ofTranslationY(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v11

    .line 778
    invoke-static {v14, v9, v5}, Landroidx/media2/widget/AnimatorUtil;->ofTranslationYTogether(FF[Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 779
    iget-object v11, v0, Landroidx/media2/widget/MediaControlView;->mHideMainBarsAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v12, 0xfa

    invoke-virtual {v11, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 780
    iget-object v11, v0, Landroidx/media2/widget/MediaControlView;->mHideMainBarsAnimator:Landroid/animation/AnimatorSet;

    new-instance v15, Landroidx/media2/widget/MediaControlView$5;

    invoke-direct {v15, v0}, Landroidx/media2/widget/MediaControlView$5;-><init>(Landroidx/media2/widget/MediaControlView;)V

    invoke-virtual {v11, v15}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 796
    add-float v11, v9, v7

    invoke-static {v9, v11, v5}, Landroidx/media2/widget/AnimatorUtil;->ofTranslationYTogether(FF[Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v11

    iput-object v11, v0, Landroidx/media2/widget/MediaControlView;->mHideProgressBarAnimator:Landroid/animation/AnimatorSet;

    .line 798
    iget-object v11, v0, Landroidx/media2/widget/MediaControlView;->mHideProgressBarAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v11, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 799
    iget-object v11, v0, Landroidx/media2/widget/MediaControlView;->mHideProgressBarAnimator:Landroid/animation/AnimatorSet;

    new-instance v15, Landroidx/media2/widget/MediaControlView$6;

    invoke-direct {v15, v0}, Landroidx/media2/widget/MediaControlView$6;-><init>(Landroidx/media2/widget/MediaControlView;)V

    invoke-virtual {v11, v15}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 815
    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v11, v0, Landroidx/media2/widget/MediaControlView;->mHideAllBarsAnimator:Landroid/animation/AnimatorSet;

    .line 816
    iget-object v11, v0, Landroidx/media2/widget/MediaControlView;->mHideAllBarsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v11, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v11

    neg-float v15, v4

    iget-object v8, v0, Landroidx/media2/widget/MediaControlView;->mTitleBar:Landroid/view/View;

    .line 817
    invoke-static {v14, v15, v8}, Landroidx/media2/widget/AnimatorUtil;->ofTranslationY(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v11, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v8

    add-float v11, v9, v7

    .line 818
    invoke-static {v14, v11, v5}, Landroidx/media2/widget/AnimatorUtil;->ofTranslationYTogether(FF[Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 820
    iget-object v8, v0, Landroidx/media2/widget/MediaControlView;->mHideAllBarsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v8, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 821
    iget-object v8, v0, Landroidx/media2/widget/MediaControlView;->mHideAllBarsAnimator:Landroid/animation/AnimatorSet;

    new-instance v11, Landroidx/media2/widget/MediaControlView$7;

    invoke-direct {v11, v0}, Landroidx/media2/widget/MediaControlView$7;-><init>(Landroidx/media2/widget/MediaControlView;)V

    invoke-virtual {v8, v11}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 837
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v8, v0, Landroidx/media2/widget/MediaControlView;->mShowMainBarsAnimator:Landroid/animation/AnimatorSet;

    .line 838
    iget-object v8, v0, Landroidx/media2/widget/MediaControlView;->mShowMainBarsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v8, v10}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v8

    neg-float v11, v4

    iget-object v15, v0, Landroidx/media2/widget/MediaControlView;->mTitleBar:Landroid/view/View;

    .line 839
    invoke-static {v11, v14, v15}, Landroidx/media2/widget/AnimatorUtil;->ofTranslationY(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v8

    .line 840
    invoke-static {v9, v14, v5}, Landroidx/media2/widget/AnimatorUtil;->ofTranslationYTogether(FF[Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 841
    iget-object v8, v0, Landroidx/media2/widget/MediaControlView;->mShowMainBarsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v8, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 842
    iget-object v8, v0, Landroidx/media2/widget/MediaControlView;->mShowMainBarsAnimator:Landroid/animation/AnimatorSet;

    new-instance v11, Landroidx/media2/widget/MediaControlView$8;

    invoke-direct {v11, v0}, Landroidx/media2/widget/MediaControlView$8;-><init>(Landroidx/media2/widget/MediaControlView;)V

    invoke-virtual {v8, v11}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 854
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v8, v0, Landroidx/media2/widget/MediaControlView;->mShowAllBarsAnimator:Landroid/animation/AnimatorSet;

    .line 855
    iget-object v8, v0, Landroidx/media2/widget/MediaControlView;->mShowAllBarsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v8, v10}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v8

    neg-float v11, v4

    iget-object v15, v0, Landroidx/media2/widget/MediaControlView;->mTitleBar:Landroid/view/View;

    .line 856
    invoke-static {v11, v14, v15}, Landroidx/media2/widget/AnimatorUtil;->ofTranslationY(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v8

    add-float v11, v9, v7

    .line 857
    invoke-static {v11, v14, v5}, Landroidx/media2/widget/AnimatorUtil;->ofTranslationYTogether(FF[Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 859
    iget-object v8, v0, Landroidx/media2/widget/MediaControlView;->mShowAllBarsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v8, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 860
    iget-object v8, v0, Landroidx/media2/widget/MediaControlView;->mShowAllBarsAnimator:Landroid/animation/AnimatorSet;

    new-instance v11, Landroidx/media2/widget/MediaControlView$9;

    invoke-direct {v11, v0}, Landroidx/media2/widget/MediaControlView$9;-><init>(Landroidx/media2/widget/MediaControlView;)V

    invoke-virtual {v8, v11}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 872
    const/4 v8, 0x2

    new-array v11, v8, [F

    fill-array-data v11, :array_2

    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    iput-object v8, v0, Landroidx/media2/widget/MediaControlView;->mOverflowShowAnimator:Landroid/animation/ValueAnimator;

    .line 873
    iget-object v8, v0, Landroidx/media2/widget/MediaControlView;->mOverflowShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v8, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 874
    iget-object v8, v0, Landroidx/media2/widget/MediaControlView;->mOverflowShowAnimator:Landroid/animation/ValueAnimator;

    new-instance v11, Landroidx/media2/widget/MediaControlView$10;

    invoke-direct {v11, v0}, Landroidx/media2/widget/MediaControlView$10;-><init>(Landroidx/media2/widget/MediaControlView;)V

    invoke-virtual {v8, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 880
    iget-object v8, v0, Landroidx/media2/widget/MediaControlView;->mOverflowShowAnimator:Landroid/animation/ValueAnimator;

    new-instance v11, Landroidx/media2/widget/MediaControlView$11;

    invoke-direct {v11, v0}, Landroidx/media2/widget/MediaControlView$11;-><init>(Landroidx/media2/widget/MediaControlView;)V

    invoke-virtual {v8, v11}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 895
    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_3

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    iput-object v8, v0, Landroidx/media2/widget/MediaControlView;->mOverflowHideAnimator:Landroid/animation/ValueAnimator;

    .line 896
    iget-object v8, v0, Landroidx/media2/widget/MediaControlView;->mOverflowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v8, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 897
    iget-object v8, v0, Landroidx/media2/widget/MediaControlView;->mOverflowHideAnimator:Landroid/animation/ValueAnimator;

    new-instance v11, Landroidx/media2/widget/MediaControlView$12;

    invoke-direct {v11, v0}, Landroidx/media2/widget/MediaControlView$12;-><init>(Landroidx/media2/widget/MediaControlView;)V

    invoke-virtual {v8, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 903
    iget-object v8, v0, Landroidx/media2/widget/MediaControlView;->mOverflowHideAnimator:Landroid/animation/ValueAnimator;

    new-instance v11, Landroidx/media2/widget/MediaControlView$13;

    invoke-direct {v11, v0}, Landroidx/media2/widget/MediaControlView$13;-><init>(Landroidx/media2/widget/MediaControlView;)V

    invoke-virtual {v8, v11}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 917
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private initTransportControls(I)Landroid/view/View;
    .locals 7
    .param p1, "id"    # I

    .line 1472
    invoke-virtual {p0, p1}, Landroidx/media2/widget/MediaControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1473
    .local v0, "v":Landroid/view/View;
    sget v1, Landroidx/media2/widget/R$id;->pause:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 1474
    .local v1, "playPauseButton":Landroid/widget/ImageButton;
    if-eqz v1, :cond_0

    .line 1475
    iget-object v2, p0, Landroidx/media2/widget/MediaControlView;->mPlayPauseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1474
    :cond_0
    nop

    .line 1477
    :goto_0
    sget v2, Landroidx/media2/widget/R$id;->ffwd:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 1478
    .local v2, "ffwdButton":Landroid/widget/ImageButton;
    if-eqz v2, :cond_1

    .line 1479
    iget-object v3, p0, Landroidx/media2/widget/MediaControlView;->mFfwdListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 1478
    :cond_1
    nop

    .line 1481
    :goto_1
    sget v3, Landroidx/media2/widget/R$id;->rew:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 1482
    .local v3, "rewButton":Landroid/widget/ImageButton;
    if-eqz v3, :cond_2

    .line 1483
    iget-object v4, p0, Landroidx/media2/widget/MediaControlView;->mRewListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 1482
    :cond_2
    nop

    .line 1485
    :goto_2
    sget v4, Landroidx/media2/widget/R$id;->next:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    .line 1486
    .local v4, "nextButton":Landroid/widget/ImageButton;
    if-eqz v4, :cond_3

    .line 1487
    iget-object v5, p0, Landroidx/media2/widget/MediaControlView;->mNextListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 1486
    :cond_3
    nop

    .line 1489
    :goto_3
    sget v5, Landroidx/media2/widget/R$id;->prev:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    .line 1490
    .local v5, "prevButton":Landroid/widget/ImageButton;
    if-eqz v5, :cond_4

    .line 1491
    iget-object v6, p0, Landroidx/media2/widget/MediaControlView;->mPrevListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    .line 1490
    :cond_4
    nop

    .line 1493
    :goto_4
    return-object v0
.end method

.method private initializeSettingsLists()V
    .locals 5

    .line 1497
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/widget/MediaControlView;->mSettingsMainTextsList:Ljava/util/List;

    .line 1498
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mSettingsMainTextsList:Ljava/util/List;

    iget-object v1, p0, Landroidx/media2/widget/MediaControlView;->mResources:Landroid/content/res/Resources;

    sget v2, Landroidx/media2/widget/R$string;->MediaControlView_audio_track_text:I

    .line 1499
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1498
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1500
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mSettingsMainTextsList:Ljava/util/List;

    iget-object v1, p0, Landroidx/media2/widget/MediaControlView;->mResources:Landroid/content/res/Resources;

    sget v2, Landroidx/media2/widget/R$string;->MediaControlView_playback_speed_text:I

    .line 1501
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1500
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1503
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/widget/MediaControlView;->mSettingsSubTextsList:Ljava/util/List;

    .line 1504
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mSettingsSubTextsList:Ljava/util/List;

    iget-object v1, p0, Landroidx/media2/widget/MediaControlView;->mResources:Landroid/content/res/Resources;

    sget v2, Landroidx/media2/widget/R$string;->MediaControlView_audio_track_none_text:I

    .line 1505
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1504
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1506
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mResources:Landroid/content/res/Resources;

    sget v1, Landroidx/media2/widget/R$string;->MediaControlView_playback_speed_normal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1507
    .local v0, "normalSpeed":Ljava/lang/String;
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView;->mSettingsSubTextsList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1508
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView;->mSettingsSubTextsList:Ljava/util/List;

    const-string v2, ""

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1510
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/media2/widget/MediaControlView;->mSettingsIconIdsList:Ljava/util/List;

    .line 1511
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView;->mSettingsIconIdsList:Ljava/util/List;

    sget v2, Landroidx/media2/widget/R$drawable;->ic_audiotrack:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1512
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView;->mSettingsIconIdsList:Ljava/util/List;

    sget v2, Landroidx/media2/widget/R$drawable;->ic_speed:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1514
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/media2/widget/MediaControlView;->mAudioTrackDescriptionList:Ljava/util/List;

    .line 1515
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView;->mAudioTrackDescriptionList:Ljava/util/List;

    iget-object v2, p0, Landroidx/media2/widget/MediaControlView;->mResources:Landroid/content/res/Resources;

    sget v3, Landroidx/media2/widget/R$string;->MediaControlView_audio_track_none_text:I

    .line 1516
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1515
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1518
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/media2/widget/MediaControlView;->mResources:Landroid/content/res/Resources;

    sget v3, Landroidx/media2/widget/R$array;->MediaControlView_playback_speeds:I

    .line 1519
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 1518
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Landroidx/media2/widget/MediaControlView;->mPlaybackSpeedTextList:Ljava/util/List;

    .line 1521
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView;->mPlaybackSpeedTextList:Ljava/util/List;

    const/4 v2, 0x3

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1522
    iput v2, p0, Landroidx/media2/widget/MediaControlView;->mSelectedSpeedIndex:I

    .line 1524
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/media2/widget/MediaControlView;->mPlaybackSpeedMultBy100List:Ljava/util/List;

    .line 1525
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView;->mResources:Landroid/content/res/Resources;

    sget v2, Landroidx/media2/widget/R$array;->speed_multiplied_by_100:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 1526
    .local v1, "speeds":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 1527
    iget-object v3, p0, Landroidx/media2/widget/MediaControlView;->mPlaybackSpeedMultBy100List:Ljava/util/List;

    aget v4, v1, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1526
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1529
    .end local v2    # "i":I
    :cond_0
    const/4 v2, -0x1

    iput v2, p0, Landroidx/media2/widget/MediaControlView;->mCustomPlaybackSpeedIndex:I

    .line 1530
    return-void
.end method

.method private isCurrentItemMusic()Z
    .locals 1

    .line 1889
    invoke-direct {p0}, Landroidx/media2/widget/MediaControlView;->hasActualVideo()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mAudioTracks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private layoutChild(Landroid/view/View;II)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I

    .line 595
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 596
    return-void
.end method

.method private showMediaControlView()V
    .locals 2

    .line 1024
    iget v0, p0, Landroidx/media2/widget/MediaControlView;->mUxState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1025
    return-void

    .line 1027
    :cond_0
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mHideMainBars:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/media2/widget/MediaControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1028
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mHideProgressBar:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/media2/widget/MediaControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1029
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mShowAllBars:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/media2/widget/MediaControlView;->post(Ljava/lang/Runnable;)Z

    .line 1030
    return-void
.end method

.method private updateLayoutForSizeChange(I)V
    .locals 2
    .param p1, "sizeType"    # I

    .line 1454
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1462
    :pswitch_0
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mProgress:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0

    .line 1458
    :pswitch_1
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mProgress:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 1459
    nop

    .line 1468
    :goto_0
    iget-boolean v0, p0, Landroidx/media2/widget/MediaControlView;->mIsShowingReplayButton:Z

    invoke-virtual {p0, v0}, Landroidx/media2/widget/MediaControlView;->updateReplayButton(Z)V

    .line 1469
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method animateOverflow(F)V
    .locals 7
    .param p1, "animatedValue"    # F

    .line 1598
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mExtraControls:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    .line 1599
    .local v0, "extraControlWidth":I
    int-to-float v1, v0

    mul-float v1, v1, p1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, -0x1

    .line 1600
    .local v1, "extraControlTranslationX":I
    iget-object v2, p0, Landroidx/media2/widget/MediaControlView;->mExtraControls:Landroid/view/ViewGroup;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 1602
    iget-object v2, p0, Landroidx/media2/widget/MediaControlView;->mTimeView:Landroid/view/ViewGroup;

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v4, v3, p1

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1603
    iget-object v2, p0, Landroidx/media2/widget/MediaControlView;->mBasicControls:Landroid/view/ViewGroup;

    sub-float v4, v3, p1

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1605
    sget v2, Landroidx/media2/widget/R$id;->pause:I

    invoke-virtual {p0, v2}, Landroidx/media2/widget/MediaControlView;->findFullSizedControlButton(I)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getLeft()I

    move-result v2

    .line 1606
    .local v2, "transportControlLeftWidth":I
    int-to-float v4, v2

    mul-float v4, v4, p1

    float-to-int v4, v4

    mul-int/lit8 v4, v4, -0x1

    .line 1607
    .local v4, "transportControlTranslationX":I
    iget-object v5, p0, Landroidx/media2/widget/MediaControlView;->mFullTransportControls:Landroid/view/View;

    int-to-float v6, v4

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 1608
    sget v5, Landroidx/media2/widget/R$id;->ffwd:I

    invoke-virtual {p0, v5}, Landroidx/media2/widget/MediaControlView;->findFullSizedControlButton(I)Landroid/widget/ImageButton;

    move-result-object v5

    sub-float/2addr v3, p1

    invoke-virtual {v5, v3}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 1609
    return-void
.end method

.method dismissSettingsWindow()V
    .locals 1

    .line 1593
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/widget/MediaControlView;->mNeedToHideBars:Z

    .line 1594
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mSettingsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1595
    return-void
.end method

.method displaySettingsWindow(Landroid/widget/BaseAdapter;)V
    .locals 8
    .param p1, "adapter"    # Landroid/widget/BaseAdapter;

    .line 1568
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mSettingsListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1571
    iget v0, p0, Landroidx/media2/widget/MediaControlView;->mSizeType:I

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/media2/widget/MediaControlView;->mEmbeddedSettingsItemWidth:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/media2/widget/MediaControlView;->mFullSettingsItemWidth:I

    .line 1573
    .local v0, "itemWidth":I
    :goto_0
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView;->mSettingsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1576
    invoke-virtual {p0}, Landroidx/media2/widget/MediaControlView;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Landroidx/media2/widget/MediaControlView;->mSettingsWindowMargin:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 1577
    .local v1, "maxHeight":I
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v2

    iget v3, p0, Landroidx/media2/widget/MediaControlView;->mSettingsItemHeight:I

    mul-int v2, v2, v3

    .line 1578
    .local v2, "totalHeight":I
    if-ge v2, v1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 1579
    .local v3, "height":I
    :goto_1
    iget-object v4, p0, Landroidx/media2/widget/MediaControlView;->mSettingsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1582
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroidx/media2/widget/MediaControlView;->mNeedToHideBars:Z

    .line 1583
    iget-object v4, p0, Landroidx/media2/widget/MediaControlView;->mSettingsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1585
    if-lez v3, :cond_2

    .line 1586
    iget-object v4, p0, Landroidx/media2/widget/MediaControlView;->mSettingsWindow:Landroid/widget/PopupWindow;

    iget v5, p0, Landroidx/media2/widget/MediaControlView;->mSettingsWindowMargin:I

    sub-int v6, v5, v3

    const/16 v7, 0x55

    invoke-virtual {v4, p0, v5, v6, v7}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 1588
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroidx/media2/widget/MediaControlView;->mNeedToHideBars:Z

    goto :goto_2

    .line 1585
    :cond_2
    nop

    .line 1590
    :goto_2
    return-void
.end method

.method ensurePlayerIsNotNull()V
    .locals 2

    .line 1794
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    if-eqz v0, :cond_0

    .line 1797
    return-void

    .line 1795
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mPlayer must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method findControlButton(II)Landroid/widget/ImageButton;
    .locals 2
    .param p1, "sizeType"    # I
    .param p2, "id"    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1534
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mTransportControlsMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1535
    .local v0, "transportControl":Landroid/view/View;
    if-nez v0, :cond_0

    .line 1536
    const/4 v1, 0x0

    return-object v1

    .line 1538
    :cond_0
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    return-object v1
.end method

.method findFullSizedControlButton(I)Landroid/widget/ImageButton;
    .locals 3
    .param p1, "id"    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1543
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroidx/media2/widget/MediaControlView;->findControlButton(II)Landroid/widget/ImageButton;

    move-result-object v0

    .line 1544
    .local v0, "button":Landroid/widget/ImageButton;
    if-eqz v0, :cond_0

    .line 1547
    return-object v0

    .line 1545
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Couldn\'t find a view that has the given id"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 410
    const-string v0, "androidx.media2.widget.MediaControlView"

    return-object v0
.end method

.method getLatestSeekPosition()J
    .locals 5

    .line 1718
    invoke-virtual {p0}, Landroidx/media2/widget/MediaControlView;->ensurePlayerIsNotNull()V

    .line 1720
    iget-wide v0, p0, Landroidx/media2/widget/MediaControlView;->mNextSeekPosition:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1721
    return-wide v0

    .line 1722
    :cond_0
    iget-wide v0, p0, Landroidx/media2/widget/MediaControlView;->mCurrentSeekPosition:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 1723
    return-wide v0

    .line 1725
    :cond_1
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {v0}, Landroidx/media2/widget/PlayerWrapper;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method isCurrentMediaItemFromNetwork()Z
    .locals 3

    .line 1554
    invoke-virtual {p0}, Landroidx/media2/widget/MediaControlView;->ensurePlayerIsNotNull()V

    .line 1556
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {v0}, Landroidx/media2/widget/PlayerWrapper;->getCurrentMediaItem()Landroidx/media2/common/MediaItem;

    move-result-object v0

    .line 1558
    .local v0, "currentMediaItem":Landroidx/media2/common/MediaItem;
    instance-of v1, v0, Landroidx/media2/common/UriMediaItem;

    if-nez v1, :cond_0

    .line 1559
    const/4 v1, 0x0

    return v1

    .line 1562
    :cond_0
    move-object v1, v0

    check-cast v1, Landroidx/media2/common/UriMediaItem;

    invoke-virtual {v1}, Landroidx/media2/common/UriMediaItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 1563
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {v1}, Landroidx/media2/widget/UriUtil;->isFromNetwork(Landroid/net/Uri;)Z

    move-result v2

    return v2
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 616
    invoke-super {p0}, Landroidx/media2/widget/MediaViewGroup;->onAttachedToWindow()V

    .line 618
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    if-eqz v0, :cond_0

    .line 619
    invoke-virtual {v0}, Landroidx/media2/widget/PlayerWrapper;->attachCallback()V

    goto :goto_0

    .line 618
    :cond_0
    nop

    .line 621
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 625
    invoke-super {p0}, Landroidx/media2/widget/MediaViewGroup;->onDetachedFromWindow()V

    .line 627
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    if-eqz v0, :cond_0

    .line 628
    invoke-virtual {v0}, Landroidx/media2/widget/PlayerWrapper;->detachCallback()V

    goto :goto_0

    .line 627
    :cond_0
    nop

    .line 630
    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 16
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 503
    move-object/from16 v0, p0

    sub-int v1, p4, p2

    invoke-virtual/range {p0 .. p0}, Landroidx/media2/widget/MediaControlView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Landroidx/media2/widget/MediaControlView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 504
    .local v1, "width":I
    sub-int v2, p5, p3

    invoke-virtual/range {p0 .. p0}, Landroidx/media2/widget/MediaControlView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Landroidx/media2/widget/MediaControlView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 506
    .local v2, "height":I
    iget-object v3, v0, Landroidx/media2/widget/MediaControlView;->mBottomBarLeft:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    iget-object v4, v0, Landroidx/media2/widget/MediaControlView;->mTimeView:Landroid/view/ViewGroup;

    .line 507
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, v0, Landroidx/media2/widget/MediaControlView;->mBasicControls:Landroid/view/ViewGroup;

    .line 508
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 509
    .local v3, "fullWidth":I
    iget-object v4, v0, Landroidx/media2/widget/MediaControlView;->mTitleBar:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget-object v5, v0, Landroidx/media2/widget/MediaControlView;->mProgressBar:Landroid/view/ViewGroup;

    .line 510
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, v0, Landroidx/media2/widget/MediaControlView;->mBottomBarBackground:Landroid/view/View;

    .line 511
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 513
    .local v4, "fullHeight":I
    iget-object v5, v0, Landroidx/media2/widget/MediaControlView;->mTimeView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    iget-object v6, v0, Landroidx/media2/widget/MediaControlView;->mBasicControls:Landroid/view/ViewGroup;

    .line 514
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v5, v6

    .line 515
    .local v5, "embeddedWidth":I
    iget-object v6, v0, Landroidx/media2/widget/MediaControlView;->mTitleBar:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget-object v7, v0, Landroidx/media2/widget/MediaControlView;->mEmbeddedTransportControls:Landroid/view/View;

    .line 516
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, v0, Landroidx/media2/widget/MediaControlView;->mProgressBar:Landroid/view/ViewGroup;

    .line 517
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, v0, Landroidx/media2/widget/MediaControlView;->mBottomBarBackground:Landroid/view/View;

    .line 518
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    .line 521
    .local v6, "embeddedHeight":I
    iget-boolean v7, v0, Landroidx/media2/widget/MediaControlView;->mIsAdvertisement:Z

    if-nez v7, :cond_2

    if-gt v3, v1, :cond_0

    if-gt v4, v2, :cond_0

    goto :goto_0

    .line 523
    :cond_0
    if-gt v5, v1, :cond_1

    if-gt v6, v2, :cond_1

    .line 524
    const/4 v7, 0x0

    goto :goto_1

    .line 523
    :cond_1
    nop

    .line 526
    const/4 v7, 0x2

    goto :goto_1

    .line 521
    :cond_2
    :goto_0
    nop

    .line 522
    const/4 v7, 0x1

    .line 529
    .local v7, "sizeType":I
    :goto_1
    iget v8, v0, Landroidx/media2/widget/MediaControlView;->mSizeType:I

    if-eq v8, v7, :cond_3

    .line 530
    iput v7, v0, Landroidx/media2/widget/MediaControlView;->mSizeType:I

    .line 531
    invoke-direct {v0, v7}, Landroidx/media2/widget/MediaControlView;->updateLayoutForSizeChange(I)V

    goto :goto_2

    .line 529
    :cond_3
    nop

    .line 534
    :goto_2
    iget-object v8, v0, Landroidx/media2/widget/MediaControlView;->mTitleBar:Landroid/view/View;

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x4

    if-eq v7, v9, :cond_4

    const/4 v12, 0x0

    goto :goto_3

    :cond_4
    const/4 v12, 0x4

    :goto_3
    invoke-virtual {v8, v12}, Landroid/view/View;->setVisibility(I)V

    .line 536
    iget-object v8, v0, Landroidx/media2/widget/MediaControlView;->mCenterViewBackground:Landroid/view/View;

    const/4 v12, 0x1

    if-eq v7, v12, :cond_5

    const/4 v13, 0x0

    goto :goto_4

    :cond_5
    const/4 v13, 0x4

    :goto_4
    invoke-virtual {v8, v13}, Landroid/view/View;->setVisibility(I)V

    .line 538
    iget-object v8, v0, Landroidx/media2/widget/MediaControlView;->mEmbeddedTransportControls:Landroid/view/View;

    if-nez v7, :cond_6

    const/4 v13, 0x0

    goto :goto_5

    :cond_6
    const/4 v13, 0x4

    :goto_5
    invoke-virtual {v8, v13}, Landroid/view/View;->setVisibility(I)V

    .line 540
    iget-object v8, v0, Landroidx/media2/widget/MediaControlView;->mMinimalTransportControls:Landroid/view/View;

    if-ne v7, v9, :cond_7

    const/4 v13, 0x0

    goto :goto_6

    :cond_7
    const/4 v13, 0x4

    :goto_6
    invoke-virtual {v8, v13}, Landroid/view/View;->setVisibility(I)V

    .line 542
    iget-object v8, v0, Landroidx/media2/widget/MediaControlView;->mBottomBarBackground:Landroid/view/View;

    if-eq v7, v9, :cond_8

    const/4 v13, 0x0

    goto :goto_7

    :cond_8
    const/4 v13, 0x4

    :goto_7
    invoke-virtual {v8, v13}, Landroid/view/View;->setVisibility(I)V

    .line 544
    iget-object v8, v0, Landroidx/media2/widget/MediaControlView;->mBottomBarLeft:Landroid/view/ViewGroup;

    if-ne v7, v12, :cond_9

    const/4 v13, 0x0

    goto :goto_8

    :cond_9
    const/4 v13, 0x4

    :goto_8
    invoke-virtual {v8, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 546
    iget-object v8, v0, Landroidx/media2/widget/MediaControlView;->mTimeView:Landroid/view/ViewGroup;

    if-eq v7, v9, :cond_a

    const/4 v13, 0x0

    goto :goto_9

    :cond_a
    const/4 v13, 0x4

    :goto_9
    invoke-virtual {v8, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 548
    iget-object v8, v0, Landroidx/media2/widget/MediaControlView;->mBasicControls:Landroid/view/ViewGroup;

    if-eq v7, v9, :cond_b

    const/4 v13, 0x0

    goto :goto_a

    :cond_b
    const/4 v13, 0x4

    :goto_a
    invoke-virtual {v8, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 550
    iget-object v8, v0, Landroidx/media2/widget/MediaControlView;->mMinimalFullScreenButton:Landroid/widget/ImageButton;

    if-ne v7, v9, :cond_c

    goto :goto_b

    :cond_c
    const/4 v10, 0x4

    :goto_b
    invoke-virtual {v8, v10}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 553
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/widget/MediaControlView;->getPaddingLeft()I

    move-result v8

    .line 554
    .local v8, "childLeft":I
    add-int v10, v8, v1

    .line 555
    .local v10, "childRight":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/widget/MediaControlView;->getPaddingTop()I

    move-result v11

    .line 556
    .local v11, "childTop":I
    add-int v13, v11, v2

    .line 558
    .local v13, "childBottom":I
    iget-object v14, v0, Landroidx/media2/widget/MediaControlView;->mTitleBar:Landroid/view/View;

    invoke-direct {v0, v14, v8, v11}, Landroidx/media2/widget/MediaControlView;->layoutChild(Landroid/view/View;II)V

    .line 561
    iget-object v14, v0, Landroidx/media2/widget/MediaControlView;->mCenterView:Landroid/view/ViewGroup;

    invoke-direct {v0, v14, v8, v11}, Landroidx/media2/widget/MediaControlView;->layoutChild(Landroid/view/View;II)V

    .line 564
    iget-object v14, v0, Landroidx/media2/widget/MediaControlView;->mBottomBarBackground:Landroid/view/View;

    .line 566
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    sub-int v15, v13, v15

    .line 564
    invoke-direct {v0, v14, v8, v15}, Landroidx/media2/widget/MediaControlView;->layoutChild(Landroid/view/View;II)V

    .line 567
    iget-object v14, v0, Landroidx/media2/widget/MediaControlView;->mBottomBarLeft:Landroid/view/ViewGroup;

    .line 569
    invoke-virtual {v14}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v15

    sub-int v15, v13, v15

    .line 567
    invoke-direct {v0, v14, v8, v15}, Landroidx/media2/widget/MediaControlView;->layoutChild(Landroid/view/View;II)V

    .line 570
    iget-object v14, v0, Landroidx/media2/widget/MediaControlView;->mTimeView:Landroid/view/ViewGroup;

    if-ne v7, v12, :cond_d

    iget-object v12, v0, Landroidx/media2/widget/MediaControlView;->mBasicControls:Landroid/view/ViewGroup;

    .line 572
    invoke-virtual {v12}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v12

    sub-int v12, v10, v12

    iget-object v15, v0, Landroidx/media2/widget/MediaControlView;->mTimeView:Landroid/view/ViewGroup;

    .line 573
    invoke-virtual {v15}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v15

    sub-int/2addr v12, v15

    goto :goto_c

    :cond_d
    move v12, v8

    :goto_c
    iget-object v15, v0, Landroidx/media2/widget/MediaControlView;->mTimeView:Landroid/view/ViewGroup;

    .line 575
    invoke-virtual {v15}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v15

    sub-int v15, v13, v15

    .line 570
    invoke-direct {v0, v14, v12, v15}, Landroidx/media2/widget/MediaControlView;->layoutChild(Landroid/view/View;II)V

    .line 576
    iget-object v12, v0, Landroidx/media2/widget/MediaControlView;->mBasicControls:Landroid/view/ViewGroup;

    .line 577
    invoke-virtual {v12}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v14

    sub-int v14, v10, v14

    iget-object v15, v0, Landroidx/media2/widget/MediaControlView;->mBasicControls:Landroid/view/ViewGroup;

    .line 578
    invoke-virtual {v15}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v15

    sub-int v15, v13, v15

    .line 576
    invoke-direct {v0, v12, v14, v15}, Landroidx/media2/widget/MediaControlView;->layoutChild(Landroid/view/View;II)V

    .line 579
    iget-object v12, v0, Landroidx/media2/widget/MediaControlView;->mExtraControls:Landroid/view/ViewGroup;

    .line 581
    invoke-virtual {v12}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v14

    sub-int v14, v13, v14

    .line 579
    invoke-direct {v0, v12, v10, v14}, Landroidx/media2/widget/MediaControlView;->layoutChild(Landroid/view/View;II)V

    .line 582
    iget-object v12, v0, Landroidx/media2/widget/MediaControlView;->mProgressBar:Landroid/view/ViewGroup;

    if-ne v7, v9, :cond_e

    .line 585
    invoke-virtual {v12}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v9

    sub-int v9, v13, v9

    goto :goto_d

    :cond_e
    nop

    .line 586
    invoke-virtual {v12}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v9

    sub-int v9, v13, v9

    iget-object v14, v0, Landroidx/media2/widget/MediaControlView;->mResources:Landroid/content/res/Resources;

    sget v15, Landroidx/media2/widget/R$dimen;->mcv2_custom_progress_margin_bottom:I

    .line 587
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    sub-int/2addr v9, v14

    .line 582
    :goto_d
    invoke-direct {v0, v12, v8, v9}, Landroidx/media2/widget/MediaControlView;->layoutChild(Landroid/view/View;II)V

    .line 589
    iget-object v9, v0, Landroidx/media2/widget/MediaControlView;->mMinimalFullScreenView:Landroid/view/ViewGroup;

    .line 591
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v12

    sub-int v12, v13, v12

    .line 589
    invoke-direct {v0, v9, v8, v12}, Landroidx/media2/widget/MediaControlView;->layoutChild(Landroid/view/View;II)V

    .line 592
    return-void
.end method

.method protected onMeasure(II)V
    .locals 17
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 449
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Landroidx/media2/widget/MediaControlView;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v3, v1}, Landroidx/media2/widget/MediaControlView;->resolveSize(II)I

    move-result v3

    .line 450
    .local v3, "width":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/widget/MediaControlView;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v4, v2}, Landroidx/media2/widget/MediaControlView;->resolveSize(II)I

    move-result v4

    .line 452
    .local v4, "height":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/widget/MediaControlView;->getPaddingLeft()I

    move-result v5

    sub-int v5, v3, v5

    invoke-virtual/range {p0 .. p0}, Landroidx/media2/widget/MediaControlView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    .line 453
    .local v5, "childWidth":I
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/widget/MediaControlView;->getPaddingTop()I

    move-result v6

    sub-int v6, v4, v6

    invoke-virtual/range {p0 .. p0}, Landroidx/media2/widget/MediaControlView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    .line 454
    .local v6, "childHeight":I
    const/4 v7, 0x0

    .line 456
    .local v7, "childState":I
    if-gez v5, :cond_0

    .line 457
    const/4 v5, 0x0

    .line 458
    const/high16 v8, 0x1000000

    or-int/2addr v7, v8

    goto :goto_0

    .line 456
    :cond_0
    nop

    .line 460
    :goto_0
    if-gez v6, :cond_1

    .line 461
    const/4 v6, 0x0

    .line 462
    or-int/lit16 v7, v7, 0x100

    goto :goto_1

    .line 460
    :cond_1
    nop

    .line 465
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroidx/media2/widget/MediaControlView;->getChildCount()I

    move-result v8

    .line 466
    .local v8, "count":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    if-ge v9, v8, :cond_7

    .line 467
    invoke-virtual {v0, v9}, Landroidx/media2/widget/MediaControlView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 468
    .local v10, "child":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_2

    .line 469
    goto :goto_5

    .line 471
    :cond_2
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .line 474
    .local v11, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v12, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v14, -0x2

    const/4 v15, -0x1

    const/high16 v13, 0x40000000    # 2.0f

    if-ne v12, v15, :cond_3

    .line 475
    invoke-static {v5, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    goto :goto_3

    .line 476
    :cond_3
    iget v12, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v12, v14, :cond_4

    .line 477
    const/4 v12, 0x0

    invoke-static {v5, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    move/from16 v12, v16

    goto :goto_3

    .line 479
    :cond_4
    iget v12, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 483
    .local v12, "childWidthSpec":I
    :goto_3
    iget v14, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v14, v15, :cond_5

    .line 484
    invoke-static {v6, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    goto :goto_4

    .line 485
    :cond_5
    iget v14, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v15, -0x2

    if-ne v14, v15, :cond_6

    .line 486
    const/4 v13, 0x0

    invoke-static {v6, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    goto :goto_4

    .line 488
    :cond_6
    iget v14, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v14, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 491
    .local v13, "childHeightSpec":I
    :goto_4
    invoke-virtual {v10, v12, v13}, Landroid/view/View;->measure(II)V

    .line 492
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredState()I

    move-result v14

    or-int/2addr v7, v14

    .line 466
    .end local v10    # "child":Landroid/view/View;
    .end local v11    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v12    # "childWidthSpec":I
    .end local v13    # "childHeightSpec":I
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 495
    .end local v9    # "i":I
    :cond_7
    nop

    .line 496
    invoke-static {v3, v1, v7}, Landroidx/media2/widget/MediaControlView;->resolveSizeAndState(III)I

    move-result v9

    shl-int/lit8 v10, v7, 0x10

    .line 497
    invoke-static {v4, v2, v10}, Landroidx/media2/widget/MediaControlView;->resolveSizeAndState(III)I

    move-result v10

    .line 495
    invoke-virtual {v0, v9, v10}, Landroidx/media2/widget/MediaControlView;->setMeasuredDimension(II)V

    .line 499
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 415
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    if-nez v0, :cond_0

    .line 416
    invoke-super {p0, p1}, Landroidx/media2/widget/MediaViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 418
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 419
    invoke-direct {p0}, Landroidx/media2/widget/MediaControlView;->isCurrentItemMusic()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroidx/media2/widget/MediaControlView;->mSizeType:I

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    .line 420
    :cond_2
    :goto_0
    iget v0, p0, Landroidx/media2/widget/MediaControlView;->mUxState:I

    if-nez v0, :cond_3

    .line 421
    invoke-direct {p0}, Landroidx/media2/widget/MediaControlView;->hideMediaControlView()V

    goto :goto_1

    .line 423
    :cond_3
    invoke-direct {p0}, Landroidx/media2/widget/MediaControlView;->showMediaControlView()V

    goto :goto_1

    .line 418
    :cond_4
    nop

    .line 427
    :goto_1
    return v1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 432
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    if-nez v0, :cond_0

    .line 433
    invoke-super {p0, p1}, Landroidx/media2/widget/MediaViewGroup;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 435
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 436
    invoke-direct {p0}, Landroidx/media2/widget/MediaControlView;->isCurrentItemMusic()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroidx/media2/widget/MediaControlView;->mSizeType:I

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    .line 437
    :cond_2
    :goto_0
    iget v0, p0, Landroidx/media2/widget/MediaControlView;->mUxState:I

    if-nez v0, :cond_3

    .line 438
    invoke-direct {p0}, Landroidx/media2/widget/MediaControlView;->hideMediaControlView()V

    goto :goto_1

    .line 440
    :cond_3
    invoke-direct {p0}, Landroidx/media2/widget/MediaControlView;->showMediaControlView()V

    goto :goto_1

    .line 435
    :cond_4
    nop

    .line 444
    :goto_1
    return v1
.end method

.method public bridge synthetic onVisibilityAggregated(Z)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x18
    .end annotation

    .line 136
    invoke-super {p0, p1}, Landroidx/media2/widget/MediaViewGroup;->onVisibilityAggregated(Z)V

    return-void
.end method

.method onVisibilityAggregatedCompat(Z)V
    .locals 1
    .param p1, "isVisible"    # Z

    .line 600
    invoke-super {p0, p1}, Landroidx/media2/widget/MediaViewGroup;->onVisibilityAggregatedCompat(Z)V

    .line 601
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    if-nez v0, :cond_0

    return-void

    .line 602
    :cond_0
    if-eqz p1, :cond_1

    .line 603
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mUpdateProgress:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/media2/widget/MediaControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 604
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mUpdateProgress:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/media2/widget/MediaControlView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 606
    :cond_1
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mUpdateProgress:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/media2/widget/MediaControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 608
    :goto_0
    return-void
.end method

.method postDelayedRunnable(Ljava/lang/Runnable;J)V
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "interval"    # J

    .line 1788
    const-wide/16 v0, -0x1

    cmp-long v2, p2, v0

    if-eqz v2, :cond_0

    .line 1789
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media2/widget/MediaControlView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1788
    :cond_0
    nop

    .line 1791
    :goto_0
    return-void
.end method

.method removeCustomSpeedFromList()V
    .locals 2

    .line 1729
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mPlaybackSpeedMultBy100List:Ljava/util/List;

    iget v1, p0, Landroidx/media2/widget/MediaControlView;->mCustomPlaybackSpeedIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1730
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mPlaybackSpeedTextList:Ljava/util/List;

    iget v1, p0, Landroidx/media2/widget/MediaControlView;->mCustomPlaybackSpeedIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1731
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media2/widget/MediaControlView;->mCustomPlaybackSpeedIndex:I

    .line 1732
    return-void
.end method

.method public requestPlayButtonFocus()V
    .locals 2

    .line 390
    iget v0, p0, Landroidx/media2/widget/MediaControlView;->mSizeType:I

    sget v1, Landroidx/media2/widget/R$id;->pause:I

    invoke-virtual {p0, v0, v1}, Landroidx/media2/widget/MediaControlView;->findControlButton(II)Landroid/widget/ImageButton;

    move-result-object v0

    .line 391
    .local v0, "button":Landroid/widget/ImageButton;
    if-eqz v0, :cond_0

    .line 392
    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    goto :goto_0

    .line 391
    :cond_0
    nop

    .line 394
    :goto_0
    return-void
.end method

.method resetHideCallbacks()V
    .locals 3

    .line 1612
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mHideMainBars:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/media2/widget/MediaControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1613
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mHideProgressBar:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/media2/widget/MediaControlView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1614
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mHideMainBars:Ljava/lang/Runnable;

    iget-wide v1, p0, Landroidx/media2/widget/MediaControlView;->mDelayedAnimationIntervalMs:J

    invoke-virtual {p0, v0, v1, v2}, Landroidx/media2/widget/MediaControlView;->postDelayedRunnable(Ljava/lang/Runnable;J)V

    .line 1615
    return-void
.end method

.method seekTo(JZ)V
    .locals 6
    .param p1, "newPosition"    # J
    .param p3, "shouldSeekNow"    # Z

    .line 1697
    invoke-virtual {p0}, Landroidx/media2/widget/MediaControlView;->ensurePlayerIsNotNull()V

    .line 1699
    iget-wide v0, p0, Landroidx/media2/widget/MediaControlView;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x3e8

    mul-long v2, v2, p1

    div-long/2addr v2, v0

    long-to-int v0, v2

    .line 1701
    .local v0, "positionOnProgressBar":I
    :goto_0
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView;->mProgress:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1702
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2}, Landroidx/media2/widget/MediaControlView;->stringForTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1704
    iget-wide v1, p0, Landroidx/media2/widget/MediaControlView;->mCurrentSeekPosition:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    .line 1706
    iput-wide p1, p0, Landroidx/media2/widget/MediaControlView;->mCurrentSeekPosition:J

    .line 1708
    if-eqz p3, :cond_1

    .line 1709
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    iget-wide v2, p0, Landroidx/media2/widget/MediaControlView;->mCurrentSeekPosition:J

    invoke-virtual {v1, v2, v3}, Landroidx/media2/widget/PlayerWrapper;->seekTo(J)V

    goto :goto_1

    .line 1708
    :cond_1
    goto :goto_1

    .line 1713
    :cond_2
    iput-wide p1, p0, Landroidx/media2/widget/MediaControlView;->mNextSeekPosition:J

    .line 1715
    :goto_1
    return-void
.end method

.method setAttachedToVideoView(Z)V
    .locals 0
    .param p1, "attached"    # Z

    .line 633
    iput-boolean p1, p0, Landroidx/media2/widget/MediaControlView;->mIsAttachedToVideoView:Z

    .line 634
    return-void
.end method

.method setDelayedAnimationInterval(J)V
    .locals 0
    .param p1, "interval"    # J

    .line 611
    iput-wide p1, p0, Landroidx/media2/widget/MediaControlView;->mDelayedAnimationIntervalMs:J

    .line 612
    return-void
.end method

.method public setMediaController(Landroidx/media2/session/MediaController;)V
    .locals 2
    .param p1, "controller"    # Landroidx/media2/session/MediaController;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 312
    if-eqz p1, :cond_1

    .line 315
    iget-boolean v0, p0, Landroidx/media2/widget/MediaControlView;->mIsAttachedToVideoView:Z

    if-nez v0, :cond_0

    .line 318
    invoke-virtual {p0, p1}, Landroidx/media2/widget/MediaControlView;->setMediaControllerInternal(Landroidx/media2/session/MediaController;)V

    .line 319
    return-void

    .line 316
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "It\'s attached to VideoView. Use VideoView\'s method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "controller must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setMediaControllerInternal(Landroidx/media2/session/MediaController;)V
    .locals 3
    .param p1, "controller"    # Landroidx/media2/session/MediaController;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 322
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {v0}, Landroidx/media2/widget/PlayerWrapper;->detachCallback()V

    goto :goto_0

    .line 322
    :cond_0
    nop

    .line 325
    :goto_0
    new-instance v0, Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {p0}, Landroidx/media2/widget/MediaControlView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroidx/media2/widget/MediaControlView$PlayerCallback;

    invoke-direct {v2, p0}, Landroidx/media2/widget/MediaControlView$PlayerCallback;-><init>(Landroidx/media2/widget/MediaControlView;)V

    invoke-direct {v0, p1, v1, v2}, Landroidx/media2/widget/PlayerWrapper;-><init>(Landroidx/media2/session/MediaController;Ljava/util/concurrent/Executor;Landroidx/media2/widget/PlayerWrapper$PlayerCallback;)V

    iput-object v0, p0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    .line 327
    invoke-virtual {p0}, Landroidx/media2/widget/MediaControlView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {v0}, Landroidx/media2/widget/PlayerWrapper;->attachCallback()V

    goto :goto_1

    .line 327
    :cond_1
    nop

    .line 330
    :goto_1
    return-void
.end method

.method public setOnFullScreenListener(Landroidx/media2/widget/MediaControlView$OnFullScreenListener;)V
    .locals 2
    .param p1, "listener"    # Landroidx/media2/widget/MediaControlView$OnFullScreenListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 377
    if-nez p1, :cond_0

    .line 378
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/widget/MediaControlView;->mOnFullScreenListener:Landroidx/media2/widget/MediaControlView$OnFullScreenListener;

    .line 379
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mFullScreenButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 381
    :cond_0
    iput-object p1, p0, Landroidx/media2/widget/MediaControlView;->mOnFullScreenListener:Landroidx/media2/widget/MediaControlView$OnFullScreenListener;

    .line 382
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mFullScreenButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 384
    :goto_0
    return-void
.end method

.method public setPlayer(Landroidx/media2/common/SessionPlayer;)V
    .locals 2
    .param p1, "player"    # Landroidx/media2/common/SessionPlayer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 349
    if-eqz p1, :cond_1

    .line 352
    iget-boolean v0, p0, Landroidx/media2/widget/MediaControlView;->mIsAttachedToVideoView:Z

    if-nez v0, :cond_0

    .line 355
    invoke-virtual {p0, p1}, Landroidx/media2/widget/MediaControlView;->setPlayerInternal(Landroidx/media2/common/SessionPlayer;)V

    .line 356
    return-void

    .line 353
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "It\'s attached to VideoView. Use VideoView\'s method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "player must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setPlayerInternal(Landroidx/media2/common/SessionPlayer;)V
    .locals 3
    .param p1, "player"    # Landroidx/media2/common/SessionPlayer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 359
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {v0}, Landroidx/media2/widget/PlayerWrapper;->detachCallback()V

    goto :goto_0

    .line 359
    :cond_0
    nop

    .line 362
    :goto_0
    new-instance v0, Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {p0}, Landroidx/media2/widget/MediaControlView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroidx/media2/widget/MediaControlView$PlayerCallback;

    invoke-direct {v2, p0}, Landroidx/media2/widget/MediaControlView$PlayerCallback;-><init>(Landroidx/media2/widget/MediaControlView;)V

    invoke-direct {v0, p1, v1, v2}, Landroidx/media2/widget/PlayerWrapper;-><init>(Landroidx/media2/common/SessionPlayer;Ljava/util/concurrent/Executor;Landroidx/media2/widget/PlayerWrapper$PlayerCallback;)V

    iput-object v0, p0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    .line 364
    invoke-virtual {p0}, Landroidx/media2/widget/MediaControlView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 365
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {v0}, Landroidx/media2/widget/PlayerWrapper;->attachCallback()V

    goto :goto_1

    .line 364
    :cond_1
    nop

    .line 367
    :goto_1
    return-void
.end method

.method setProgress()J
    .locals 14

    .line 947
    invoke-virtual {p0}, Landroidx/media2/widget/MediaControlView;->ensurePlayerIsNotNull()V

    .line 949
    const/4 v0, 0x0

    .line 950
    .local v0, "positionOnProgressBar":I
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {v1}, Landroidx/media2/widget/PlayerWrapper;->getCurrentPosition()J

    move-result-wide v1

    .line 951
    .local v1, "currentPosition":J
    iget-wide v3, p0, Landroidx/media2/widget/MediaControlView;->mDuration:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 952
    iget-wide v1, p0, Landroidx/media2/widget/MediaControlView;->mDuration:J

    goto :goto_0

    .line 951
    :cond_0
    nop

    .line 954
    :goto_0
    iget-wide v3, p0, Landroidx/media2/widget/MediaControlView;->mDuration:J

    const-wide/16 v5, 0x3e8

    const-wide/16 v7, 0x0

    cmp-long v9, v3, v7

    if-lez v9, :cond_1

    .line 955
    mul-long v9, v1, v5

    div-long/2addr v9, v3

    long-to-int v0, v9

    goto :goto_1

    .line 954
    :cond_1
    nop

    .line 957
    :goto_1
    iget-object v3, p0, Landroidx/media2/widget/MediaControlView;->mProgress:Landroid/widget/SeekBar;

    if-eqz v3, :cond_3

    iget-wide v9, p0, Landroidx/media2/widget/MediaControlView;->mDuration:J

    cmp-long v4, v1, v9

    if-eqz v4, :cond_3

    .line 958
    invoke-virtual {v3, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 961
    iget-object v3, p0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {v3}, Landroidx/media2/widget/PlayerWrapper;->getBufferPercentage()J

    move-result-wide v3

    cmp-long v9, v3, v7

    if-gez v9, :cond_2

    .line 962
    iget-object v3, p0, Landroidx/media2/widget/MediaControlView;->mProgress:Landroid/widget/SeekBar;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    goto :goto_2

    .line 964
    :cond_2
    iget-object v3, p0, Landroidx/media2/widget/MediaControlView;->mProgress:Landroid/widget/SeekBar;

    iget-object v4, p0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {v4}, Landroidx/media2/widget/PlayerWrapper;->getBufferPercentage()J

    move-result-wide v9

    long-to-int v4, v9

    mul-int/lit8 v4, v4, 0xa

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    goto :goto_2

    .line 957
    :cond_3
    nop

    .line 968
    :goto_2
    iget-object v3, p0, Landroidx/media2/widget/MediaControlView;->mEndTime:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    .line 969
    iget-wide v9, p0, Landroidx/media2/widget/MediaControlView;->mDuration:J

    invoke-virtual {p0, v9, v10}, Landroidx/media2/widget/MediaControlView;->stringForTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 968
    :cond_4
    nop

    .line 971
    :goto_3
    iget-object v3, p0, Landroidx/media2/widget/MediaControlView;->mCurrentTime:Landroid/widget/TextView;

    if-eqz v3, :cond_5

    .line 972
    invoke-virtual {p0, v1, v2}, Landroidx/media2/widget/MediaControlView;->stringForTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 971
    :cond_5
    nop

    .line 975
    :goto_4
    iget-boolean v3, p0, Landroidx/media2/widget/MediaControlView;->mIsAdvertisement:Z

    if-eqz v3, :cond_c

    .line 978
    iget-object v3, p0, Landroidx/media2/widget/MediaControlView;->mAdSkipView:Landroid/widget/TextView;

    const/4 v4, 0x0

    const/4 v9, 0x1

    if-eqz v3, :cond_9

    .line 979
    const/16 v10, 0x8

    const-wide/16 v11, 0x1388

    cmp-long v13, v1, v11

    if-gtz v13, :cond_7

    .line 980
    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-ne v3, v10, :cond_6

    .line 981
    iget-object v3, p0, Landroidx/media2/widget/MediaControlView;->mAdSkipView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 980
    :cond_6
    nop

    .line 983
    :goto_5
    iget-object v3, p0, Landroidx/media2/widget/MediaControlView;->mResources:Landroid/content/res/Resources;

    sget v10, Landroidx/media2/widget/R$string;->MediaControlView_ad_skip_wait_time:I

    new-array v13, v9, [Ljava/lang/Object;

    sub-long/2addr v11, v1

    div-long/2addr v11, v5

    const-wide/16 v5, 0x1

    add-long/2addr v11, v5

    .line 985
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v13, v4

    .line 983
    invoke-virtual {v3, v10, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 986
    .local v3, "skipTimeText":Ljava/lang/String;
    iget-object v5, p0, Landroidx/media2/widget/MediaControlView;->mAdSkipView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 987
    .end local v3    # "skipTimeText":Ljava/lang/String;
    goto :goto_6

    .line 988
    :cond_7
    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_8

    .line 989
    iget-object v3, p0, Landroidx/media2/widget/MediaControlView;->mAdSkipView:Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 990
    sget v3, Landroidx/media2/widget/R$id;->next:I

    invoke-virtual {p0, v3}, Landroidx/media2/widget/MediaControlView;->findFullSizedControlButton(I)Landroid/widget/ImageButton;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 991
    sget v3, Landroidx/media2/widget/R$id;->next:I

    invoke-virtual {p0, v3}, Landroidx/media2/widget/MediaControlView;->findFullSizedControlButton(I)Landroid/widget/ImageButton;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageButton;->clearColorFilter()V

    goto :goto_6

    .line 988
    :cond_8
    goto :goto_6

    .line 978
    :cond_9
    nop

    .line 996
    :goto_6
    iget-object v3, p0, Landroidx/media2/widget/MediaControlView;->mAdRemainingView:Landroid/widget/TextView;

    if-eqz v3, :cond_b

    .line 997
    iget-wide v5, p0, Landroidx/media2/widget/MediaControlView;->mDuration:J

    sub-long v10, v5, v1

    cmp-long v3, v10, v7

    if-gez v3, :cond_a

    goto :goto_7

    :cond_a
    sub-long v7, v5, v1

    :goto_7
    move-wide v5, v7

    .line 999
    .local v5, "remainingTime":J
    iget-object v3, p0, Landroidx/media2/widget/MediaControlView;->mResources:Landroid/content/res/Resources;

    sget v7, Landroidx/media2/widget/R$string;->MediaControlView_ad_remaining_time:I

    new-array v8, v9, [Ljava/lang/Object;

    .line 1001
    invoke-virtual {p0, v5, v6}, Landroidx/media2/widget/MediaControlView;->stringForTime(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    .line 999
    invoke-virtual {v3, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1002
    .local v3, "remainingTimeText":Ljava/lang/String;
    iget-object v4, p0, Landroidx/media2/widget/MediaControlView;->mAdRemainingView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 996
    .end local v3    # "remainingTimeText":Ljava/lang/String;
    .end local v5    # "remainingTime":J
    :cond_b
    goto :goto_8

    .line 975
    :cond_c
    nop

    .line 1005
    :goto_8
    return-wide v1
.end method

.method shouldNotHideBars()Z
    .locals 3

    .line 1690
    invoke-direct {p0}, Landroidx/media2/widget/MediaControlView;->isCurrentItemMusic()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/media2/widget/MediaControlView;->mSizeType:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 1691
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    .line 1692
    invoke-virtual {v0}, Landroidx/media2/widget/PlayerWrapper;->getPlayerState()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    .line 1693
    invoke-virtual {v0}, Landroidx/media2/widget/PlayerWrapper;->getPlayerState()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 1692
    :cond_3
    goto :goto_1

    .line 1691
    :cond_4
    nop

    .line 1693
    :goto_1
    nop

    .line 1690
    :goto_2
    return v1
.end method

.method stringForTime(J)Ljava/lang/String;
    .locals 16
    .param p1, "timeMs"    # J

    .line 932
    move-object/from16 v0, p0

    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    .line 934
    .local v1, "totalSeconds":J
    const-wide/16 v3, 0x3c

    rem-long v5, v1, v3

    .line 935
    .local v5, "seconds":J
    div-long v7, v1, v3

    rem-long/2addr v7, v3

    .line 936
    .local v7, "minutes":J
    const-wide/16 v3, 0xe10

    div-long v3, v1, v3

    .line 938
    .local v3, "hours":J
    iget-object v9, v0, Landroidx/media2/widget/MediaControlView;->mFormatBuilder:Ljava/lang/StringBuilder;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 939
    const/4 v9, 0x1

    const/4 v11, 0x2

    const-wide/16 v12, 0x0

    cmp-long v14, v3, v12

    if-lez v14, :cond_0

    .line 940
    iget-object v12, v0, Landroidx/media2/widget/MediaControlView;->mFormatter:Ljava/util/Formatter;

    const-string v13, "%d:%02d:%02d"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v14, v10

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v14, v9

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v14, v11

    invoke-virtual {v12, v13, v14}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 942
    :cond_0
    iget-object v12, v0, Landroidx/media2/widget/MediaControlView;->mFormatter:Ljava/util/Formatter;

    const-string v13, "%02d:%02d"

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v11, v10

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v11, v9

    invoke-virtual {v12, v13, v11}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method togglePausePlayState()V
    .locals 3

    .line 1009
    invoke-virtual {p0}, Landroidx/media2/widget/MediaControlView;->ensurePlayerIsNotNull()V

    .line 1011
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {v0}, Landroidx/media2/widget/PlayerWrapper;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1012
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {v0}, Landroidx/media2/widget/PlayerWrapper;->pause()V

    .line 1013
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/media2/widget/MediaControlView;->updatePlayButton(I)V

    goto :goto_1

    .line 1015
    :cond_0
    iget-boolean v0, p0, Landroidx/media2/widget/MediaControlView;->mIsShowingReplayButton:Z

    if-eqz v0, :cond_1

    .line 1016
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/media2/widget/PlayerWrapper;->seekTo(J)V

    goto :goto_0

    .line 1015
    :cond_1
    nop

    .line 1018
    :goto_0
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {v0}, Landroidx/media2/widget/PlayerWrapper;->play()V

    .line 1019
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/media2/widget/MediaControlView;->updatePlayButton(I)V

    .line 1021
    :goto_1
    return-void
.end method

.method updateAllowedCommands()V
    .locals 15

    .line 1618
    invoke-virtual {p0}, Landroidx/media2/widget/MediaControlView;->ensurePlayerIsNotNull()V

    .line 1620
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {v0}, Landroidx/media2/widget/PlayerWrapper;->canPause()Z

    move-result v0

    .line 1621
    .local v0, "canPause":Z
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {v1}, Landroidx/media2/widget/PlayerWrapper;->canSeekBackward()Z

    move-result v1

    .line 1622
    .local v1, "canRew":Z
    iget-object v2, p0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {v2}, Landroidx/media2/widget/PlayerWrapper;->canSeekForward()Z

    move-result v2

    .line 1623
    .local v2, "canFfwd":Z
    iget-object v3, p0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {v3}, Landroidx/media2/widget/PlayerWrapper;->canSkipToPrevious()Z

    move-result v3

    .line 1624
    .local v3, "canPrev":Z
    iget-object v4, p0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {v4}, Landroidx/media2/widget/PlayerWrapper;->canSkipToNext()Z

    move-result v4

    .line 1626
    .local v4, "canNext":Z
    iget-object v5, p0, Landroidx/media2/widget/MediaControlView;->mTransportControlsMap:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 1627
    .local v5, "n":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const/4 v7, 0x0

    const/16 v8, 0x8

    if-ge v6, v5, :cond_a

    .line 1628
    iget-object v9, p0, Landroidx/media2/widget/MediaControlView;->mTransportControlsMap:Landroid/util/SparseArray;

    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 1630
    .local v9, "sizeType":I
    sget v10, Landroidx/media2/widget/R$id;->pause:I

    invoke-virtual {p0, v9, v10}, Landroidx/media2/widget/MediaControlView;->findControlButton(II)Landroid/widget/ImageButton;

    move-result-object v10

    .line 1631
    .local v10, "playPauseButton":Landroid/view/View;
    if-eqz v10, :cond_1

    .line 1632
    if-eqz v0, :cond_0

    const/4 v11, 0x0

    goto :goto_1

    :cond_0
    const/16 v11, 0x8

    :goto_1
    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 1631
    :cond_1
    nop

    .line 1634
    :goto_2
    sget v11, Landroidx/media2/widget/R$id;->rew:I

    invoke-virtual {p0, v9, v11}, Landroidx/media2/widget/MediaControlView;->findControlButton(II)Landroid/widget/ImageButton;

    move-result-object v11

    .line 1635
    .local v11, "rewButton":Landroid/view/View;
    if-eqz v11, :cond_3

    .line 1636
    if-eqz v1, :cond_2

    const/4 v12, 0x0

    goto :goto_3

    :cond_2
    const/16 v12, 0x8

    :goto_3
    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 1635
    :cond_3
    nop

    .line 1638
    :goto_4
    sget v12, Landroidx/media2/widget/R$id;->ffwd:I

    invoke-virtual {p0, v9, v12}, Landroidx/media2/widget/MediaControlView;->findControlButton(II)Landroid/widget/ImageButton;

    move-result-object v12

    .line 1639
    .local v12, "ffwdButton":Landroid/view/View;
    if-eqz v12, :cond_5

    .line 1640
    if-eqz v2, :cond_4

    const/4 v13, 0x0

    goto :goto_5

    :cond_4
    const/16 v13, 0x8

    :goto_5
    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 1639
    :cond_5
    nop

    .line 1642
    :goto_6
    sget v13, Landroidx/media2/widget/R$id;->prev:I

    invoke-virtual {p0, v9, v13}, Landroidx/media2/widget/MediaControlView;->findControlButton(II)Landroid/widget/ImageButton;

    move-result-object v13

    .line 1643
    .local v13, "prevButton":Landroid/view/View;
    if-eqz v13, :cond_7

    .line 1644
    if-eqz v3, :cond_6

    const/4 v14, 0x0

    goto :goto_7

    :cond_6
    const/16 v14, 0x8

    :goto_7
    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    .line 1643
    :cond_7
    nop

    .line 1646
    :goto_8
    sget v14, Landroidx/media2/widget/R$id;->next:I

    invoke-virtual {p0, v9, v14}, Landroidx/media2/widget/MediaControlView;->findControlButton(II)Landroid/widget/ImageButton;

    move-result-object v14

    .line 1647
    .local v14, "nextButton":Landroid/view/View;
    if-eqz v14, :cond_9

    .line 1648
    if-eqz v4, :cond_8

    goto :goto_9

    :cond_8
    const/16 v7, 0x8

    :goto_9
    invoke-virtual {v14, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a

    .line 1647
    :cond_9
    nop

    .line 1627
    .end local v9    # "sizeType":I
    .end local v10    # "playPauseButton":Landroid/view/View;
    .end local v11    # "rewButton":Landroid/view/View;
    .end local v12    # "ffwdButton":Landroid/view/View;
    .end local v13    # "prevButton":Landroid/view/View;
    .end local v14    # "nextButton":Landroid/view/View;
    :goto_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1651
    .end local v6    # "i":I
    :cond_a
    iget-object v6, p0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {v6}, Landroidx/media2/widget/PlayerWrapper;->canSeekTo()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1652
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroidx/media2/widget/MediaControlView;->mSeekAvailable:Z

    .line 1653
    iget-object v9, p0, Landroidx/media2/widget/MediaControlView;->mProgress:Landroid/widget/SeekBar;

    invoke-virtual {v9, v6}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_b

    .line 1651
    :cond_b
    nop

    .line 1655
    :goto_b
    iget-object v6, p0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {v6}, Landroidx/media2/widget/PlayerWrapper;->canSelectDeselectTrack()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1656
    iget-object v6, p0, Landroidx/media2/widget/MediaControlView;->mSubtitleButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_c

    .line 1658
    :cond_c
    iget-object v6, p0, Landroidx/media2/widget/MediaControlView;->mSubtitleButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1660
    :goto_c
    return-void
.end method

.method updateLayoutForAd()V
    .locals 4

    .line 1414
    invoke-virtual {p0}, Landroidx/media2/widget/MediaControlView;->ensurePlayerIsNotNull()V

    .line 1416
    iget-boolean v0, p0, Landroidx/media2/widget/MediaControlView;->mIsAdvertisement:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 1417
    sget v0, Landroidx/media2/widget/R$id;->rew:I

    invoke-virtual {p0, v0}, Landroidx/media2/widget/MediaControlView;->findFullSizedControlButton(I)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1418
    sget v0, Landroidx/media2/widget/R$id;->ffwd:I

    invoke-virtual {p0, v0}, Landroidx/media2/widget/MediaControlView;->findFullSizedControlButton(I)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1419
    sget v0, Landroidx/media2/widget/R$id;->prev:I

    invoke-virtual {p0, v0}, Landroidx/media2/widget/MediaControlView;->findFullSizedControlButton(I)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1421
    sget v0, Landroidx/media2/widget/R$id;->next:I

    invoke-virtual {p0, v0}, Landroidx/media2/widget/MediaControlView;->findFullSizedControlButton(I)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1422
    sget v0, Landroidx/media2/widget/R$id;->next:I

    invoke-virtual {p0, v0}, Landroidx/media2/widget/MediaControlView;->findFullSizedControlButton(I)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1423
    sget v0, Landroidx/media2/widget/R$id;->next:I

    invoke-virtual {p0, v0}, Landroidx/media2/widget/MediaControlView;->findFullSizedControlButton(I)Landroid/widget/ImageButton;

    move-result-object v0

    sget v3, Landroidx/media2/widget/R$color;->gray:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 1425
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mTimeView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1426
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mAdSkipView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1427
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mAdRemainingView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1428
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mAdExternalLink:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1430
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mProgress:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto/16 :goto_4

    .line 1432
    :cond_0
    sget v0, Landroidx/media2/widget/R$id;->rew:I

    invoke-virtual {p0, v0}, Landroidx/media2/widget/MediaControlView;->findFullSizedControlButton(I)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v3, p0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    .line 1433
    invoke-virtual {v3}, Landroidx/media2/widget/PlayerWrapper;->canSeekBackward()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/16 v3, 0x8

    .line 1432
    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1434
    sget v0, Landroidx/media2/widget/R$id;->ffwd:I

    invoke-virtual {p0, v0}, Landroidx/media2/widget/MediaControlView;->findFullSizedControlButton(I)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v3, p0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    .line 1435
    invoke-virtual {v3}, Landroidx/media2/widget/PlayerWrapper;->canSeekForward()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    const/16 v3, 0x8

    .line 1434
    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1436
    sget v0, Landroidx/media2/widget/R$id;->prev:I

    invoke-virtual {p0, v0}, Landroidx/media2/widget/MediaControlView;->findFullSizedControlButton(I)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v3, p0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    .line 1437
    invoke-virtual {v3}, Landroidx/media2/widget/PlayerWrapper;->canSkipToPrevious()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    const/16 v3, 0x8

    .line 1436
    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1439
    sget v0, Landroidx/media2/widget/R$id;->next:I

    invoke-virtual {p0, v0}, Landroidx/media2/widget/MediaControlView;->findFullSizedControlButton(I)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v3, p0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    .line 1440
    invoke-virtual {v3}, Landroidx/media2/widget/PlayerWrapper;->canSkipToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    goto :goto_3

    :cond_4
    const/16 v3, 0x8

    .line 1439
    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1441
    sget v0, Landroidx/media2/widget/R$id;->next:I

    invoke-virtual {p0, v0}, Landroidx/media2/widget/MediaControlView;->findFullSizedControlButton(I)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1442
    sget v0, Landroidx/media2/widget/R$id;->next:I

    invoke-virtual {p0, v0}, Landroidx/media2/widget/MediaControlView;->findFullSizedControlButton(I)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->clearColorFilter()V

    .line 1444
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mTimeView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1445
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mAdSkipView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1446
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mAdRemainingView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1447
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mAdExternalLink:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1449
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mProgress:Landroid/widget/SeekBar;

    iget-boolean v1, p0, Landroidx/media2/widget/MediaControlView;->mSeekAvailable:Z

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 1451
    :goto_4
    return-void
.end method

.method updatePlayButton(I)V
    .locals 4
    .param p1, "type"    # I

    .line 1765
    iget v0, p0, Landroidx/media2/widget/MediaControlView;->mSizeType:I

    sget v1, Landroidx/media2/widget/R$id;->pause:I

    invoke-virtual {p0, v0, v1}, Landroidx/media2/widget/MediaControlView;->findControlButton(II)Landroid/widget/ImageButton;

    move-result-object v0

    .line 1766
    .local v0, "playButton":Landroid/widget/ImageButton;
    if-nez v0, :cond_0

    .line 1767
    return-void

    .line 1771
    :cond_0
    if-nez p1, :cond_1

    .line 1772
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView;->mResources:Landroid/content/res/Resources;

    sget v2, Landroidx/media2/widget/R$drawable;->ic_pause_circle_filled:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1773
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Landroidx/media2/widget/MediaControlView;->mResources:Landroid/content/res/Resources;

    sget v3, Landroidx/media2/widget/R$string;->mcv2_pause_button_desc:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1774
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 1775
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView;->mResources:Landroid/content/res/Resources;

    sget v2, Landroidx/media2/widget/R$drawable;->ic_play_circle_filled:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1776
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Landroidx/media2/widget/MediaControlView;->mResources:Landroid/content/res/Resources;

    sget v3, Landroidx/media2/widget/R$string;->mcv2_play_button_desc:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1777
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 1778
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView;->mResources:Landroid/content/res/Resources;

    sget v2, Landroidx/media2/widget/R$drawable;->ic_replay_circle_filled:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1779
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Landroidx/media2/widget/MediaControlView;->mResources:Landroid/content/res/Resources;

    sget v3, Landroidx/media2/widget/R$string;->mcv2_replay_button_desc:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1783
    .local v2, "description":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1784
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1785
    return-void

    .line 1781
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "description":Ljava/lang/String;
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method updatePrevNextButtons(II)V
    .locals 10
    .param p1, "prevIndex"    # I
    .param p2, "nextIndex"    # I

    .line 1663
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mTransportControlsMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1664
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 1665
    iget-object v2, p0, Landroidx/media2/widget/MediaControlView;->mTransportControlsMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1666
    .local v2, "sizeType":I
    sget v3, Landroidx/media2/widget/R$id;->prev:I

    invoke-virtual {p0, v2, v3}, Landroidx/media2/widget/MediaControlView;->findControlButton(II)Landroid/widget/ImageButton;

    move-result-object v3

    .line 1667
    .local v3, "prevButton":Landroid/view/View;
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-eqz v3, :cond_1

    .line 1668
    if-le p1, v7, :cond_0

    .line 1669
    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1670
    invoke-virtual {v3, v8}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    .line 1672
    :cond_0
    invoke-virtual {v3, v6}, Landroid/view/View;->setAlpha(F)V

    .line 1673
    invoke-virtual {v3, v5}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    .line 1667
    :cond_1
    nop

    .line 1676
    :goto_1
    sget v9, Landroidx/media2/widget/R$id;->next:I

    invoke-virtual {p0, v2, v9}, Landroidx/media2/widget/MediaControlView;->findControlButton(II)Landroid/widget/ImageButton;

    move-result-object v9

    .line 1677
    .local v9, "nextButton":Landroid/view/View;
    if-eqz v9, :cond_3

    .line 1678
    if-le p2, v7, :cond_2

    .line 1679
    invoke-virtual {v9, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1680
    invoke-virtual {v9, v8}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_2

    .line 1682
    :cond_2
    invoke-virtual {v9, v6}, Landroid/view/View;->setAlpha(F)V

    .line 1683
    invoke-virtual {v9, v5}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_2

    .line 1677
    :cond_3
    nop

    .line 1664
    .end local v2    # "sizeType":I
    .end local v3    # "prevButton":Landroid/view/View;
    .end local v9    # "nextButton":Landroid/view/View;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1687
    .end local v1    # "i":I
    :cond_4
    return-void
.end method

.method updateReplayButton(Z)V
    .locals 4
    .param p1, "toBeShown"    # Z

    .line 1742
    iget v0, p0, Landroidx/media2/widget/MediaControlView;->mSizeType:I

    sget v1, Landroidx/media2/widget/R$id;->ffwd:I

    invoke-virtual {p0, v0, v1}, Landroidx/media2/widget/MediaControlView;->findControlButton(II)Landroid/widget/ImageButton;

    move-result-object v0

    .line 1743
    .local v0, "ffwdButton":Landroid/widget/ImageButton;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 1744
    iput-boolean v1, p0, Landroidx/media2/widget/MediaControlView;->mIsShowingReplayButton:Z

    .line 1745
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroidx/media2/widget/MediaControlView;->updatePlayButton(I)V

    .line 1746
    if-eqz v0, :cond_0

    .line 1747
    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 1748
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_1

    .line 1746
    :cond_0
    goto :goto_1

    .line 1751
    :cond_1
    iput-boolean v2, p0, Landroidx/media2/widget/MediaControlView;->mIsShowingReplayButton:Z

    .line 1752
    iget-object v3, p0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroidx/media2/widget/PlayerWrapper;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1753
    invoke-virtual {p0, v2}, Landroidx/media2/widget/MediaControlView;->updatePlayButton(I)V

    goto :goto_0

    .line 1752
    :cond_2
    nop

    .line 1755
    invoke-virtual {p0, v1}, Landroidx/media2/widget/MediaControlView;->updatePlayButton(I)V

    .line 1757
    :goto_0
    if-eqz v0, :cond_3

    .line 1758
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 1759
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_1

    .line 1757
    :cond_3
    nop

    .line 1762
    :goto_1
    return-void
.end method

.method updateSelectedSpeed(ILjava/lang/String;)V
    .locals 2
    .param p1, "selectedSpeedIndex"    # I
    .param p2, "selectedSpeedText"    # Ljava/lang/String;

    .line 1735
    iput p1, p0, Landroidx/media2/widget/MediaControlView;->mSelectedSpeedIndex:I

    .line 1736
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mSettingsSubTextsList:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1737
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mSubSettingsAdapter:Landroidx/media2/widget/MediaControlView$SubSettingsAdapter;

    iget-object v1, p0, Landroidx/media2/widget/MediaControlView;->mPlaybackSpeedTextList:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroidx/media2/widget/MediaControlView$SubSettingsAdapter;->setTexts(Ljava/util/List;)V

    .line 1738
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mSubSettingsAdapter:Landroidx/media2/widget/MediaControlView$SubSettingsAdapter;

    iget v1, p0, Landroidx/media2/widget/MediaControlView;->mSelectedSpeedIndex:I

    invoke-virtual {v0, v1}, Landroidx/media2/widget/MediaControlView$SubSettingsAdapter;->setCheckPosition(I)V

    .line 1739
    return-void
.end method

.method updateTimeViews(Landroidx/media2/common/MediaItem;)V
    .locals 5
    .param p1, "item"    # Landroidx/media2/common/MediaItem;

    .line 1371
    if-nez p1, :cond_0

    .line 1372
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mProgress:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1373
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mCurrentTime:Landroid/widget/TextView;

    iget-object v1, p0, Landroidx/media2/widget/MediaControlView;->mResources:Landroid/content/res/Resources;

    sget v2, Landroidx/media2/widget/R$string;->MediaControlView_time_placeholder:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1374
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mEndTime:Landroid/widget/TextView;

    iget-object v1, p0, Landroidx/media2/widget/MediaControlView;->mResources:Landroid/content/res/Resources;

    sget v2, Landroidx/media2/widget/R$string;->MediaControlView_time_placeholder:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1375
    return-void

    .line 1378
    :cond_0
    invoke-virtual {p0}, Landroidx/media2/widget/MediaControlView;->ensurePlayerIsNotNull()V

    .line 1380
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {v0}, Landroidx/media2/widget/PlayerWrapper;->getDurationMs()J

    move-result-wide v0

    .line 1381
    .local v0, "duration":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 1382
    iput-wide v0, p0, Landroidx/media2/widget/MediaControlView;->mDuration:J

    .line 1383
    invoke-virtual {p0}, Landroidx/media2/widget/MediaControlView;->setProgress()J

    goto :goto_0

    .line 1381
    :cond_1
    nop

    .line 1385
    :goto_0
    return-void
.end method

.method updateTitleView(Landroidx/media2/common/MediaItem;)V
    .locals 5
    .param p1, "item"    # Landroidx/media2/common/MediaItem;

    .line 1388
    if-nez p1, :cond_0

    .line 1389
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mTitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1390
    return-void

    .line 1393
    :cond_0
    invoke-direct {p0}, Landroidx/media2/widget/MediaControlView;->isCurrentItemMusic()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1394
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {v0}, Landroidx/media2/widget/PlayerWrapper;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1395
    .local v0, "title":Ljava/lang/CharSequence;
    if-nez v0, :cond_1

    .line 1396
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView;->mResources:Landroid/content/res/Resources;

    sget v2, Landroidx/media2/widget/R$string;->mcv2_non_music_title_unknown_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1395
    :cond_1
    nop

    .line 1398
    :goto_0
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView;->mTitleView:Landroid/widget/TextView;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1399
    .end local v0    # "title":Ljava/lang/CharSequence;
    goto :goto_3

    .line 1400
    :cond_2
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {v0}, Landroidx/media2/widget/PlayerWrapper;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1401
    .restart local v0    # "title":Ljava/lang/CharSequence;
    if-nez v0, :cond_3

    .line 1402
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView;->mResources:Landroid/content/res/Resources;

    sget v2, Landroidx/media2/widget/R$string;->mcv2_music_title_unknown_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1401
    :cond_3
    nop

    .line 1404
    :goto_1
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {v1}, Landroidx/media2/widget/PlayerWrapper;->getArtistText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1405
    .local v1, "artist":Ljava/lang/CharSequence;
    if-nez v1, :cond_4

    .line 1406
    iget-object v2, p0, Landroidx/media2/widget/MediaControlView;->mResources:Landroid/content/res/Resources;

    sget v3, Landroidx/media2/widget/R$string;->mcv2_music_artist_unknown_text:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 1405
    :cond_4
    nop

    .line 1409
    :goto_2
    iget-object v2, p0, Landroidx/media2/widget/MediaControlView;->mTitleView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1411
    .end local v0    # "title":Ljava/lang/CharSequence;
    .end local v1    # "artist":Ljava/lang/CharSequence;
    :goto_3
    return-void
.end method

.method updateTracks(Landroidx/media2/widget/PlayerWrapper;Ljava/util/List;)V
    .locals 11
    .param p1, "player"    # Landroidx/media2/widget/PlayerWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/widget/PlayerWrapper;",
            "Ljava/util/List<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ">;)V"
        }
    .end annotation

    .line 1801
    .local p2, "trackInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/SessionPlayer$TrackInfo;>;"
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/widget/MediaControlView;->mVideoTrackCount:I

    .line 1802
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/media2/widget/MediaControlView;->mAudioTracks:Ljava/util/List;

    .line 1803
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/media2/widget/MediaControlView;->mSubtitleTracks:Ljava/util/List;

    .line 1804
    iput v0, p0, Landroidx/media2/widget/MediaControlView;->mSelectedAudioTrackIndex:I

    .line 1806
    const/4 v1, -0x1

    iput v1, p0, Landroidx/media2/widget/MediaControlView;->mSelectedSubtitleTrackIndex:I

    .line 1807
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroidx/media2/widget/PlayerWrapper;->getSelectedTrack(I)Landroidx/media2/common/SessionPlayer$TrackInfo;

    move-result-object v2

    .line 1808
    .local v2, "audioTrack":Landroidx/media2/common/SessionPlayer$TrackInfo;
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Landroidx/media2/widget/PlayerWrapper;->getSelectedTrack(I)Landroidx/media2/common/SessionPlayer$TrackInfo;

    move-result-object v4

    .line 1809
    .local v4, "subtitleTrack":Landroidx/media2/common/SessionPlayer$TrackInfo;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ge v5, v6, :cond_5

    .line 1810
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media2/common/SessionPlayer$TrackInfo;

    invoke-virtual {v6}, Landroidx/media2/common/SessionPlayer$TrackInfo;->getTrackType()I

    move-result v6

    .line 1811
    .local v6, "trackType":I
    if-ne v6, v7, :cond_0

    .line 1812
    iget v8, p0, Landroidx/media2/widget/MediaControlView;->mVideoTrackCount:I

    add-int/2addr v8, v7

    iput v8, p0, Landroidx/media2/widget/MediaControlView;->mVideoTrackCount:I

    goto :goto_3

    .line 1813
    :cond_0
    if-ne v6, v1, :cond_2

    .line 1814
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media2/common/SessionPlayer$TrackInfo;

    invoke-virtual {v7, v2}, Landroidx/media2/common/SessionPlayer$TrackInfo;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1815
    iget-object v7, p0, Landroidx/media2/widget/MediaControlView;->mAudioTracks:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    iput v7, p0, Landroidx/media2/widget/MediaControlView;->mSelectedAudioTrackIndex:I

    goto :goto_1

    .line 1814
    :cond_1
    nop

    .line 1817
    :goto_1
    iget-object v7, p0, Landroidx/media2/widget/MediaControlView;->mAudioTracks:Ljava/util/List;

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1818
    :cond_2
    if-ne v6, v3, :cond_4

    .line 1819
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media2/common/SessionPlayer$TrackInfo;

    invoke-virtual {v7, v4}, Landroidx/media2/common/SessionPlayer$TrackInfo;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1820
    iget-object v7, p0, Landroidx/media2/widget/MediaControlView;->mSubtitleTracks:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    iput v7, p0, Landroidx/media2/widget/MediaControlView;->mSelectedSubtitleTrackIndex:I

    goto :goto_2

    .line 1819
    :cond_3
    nop

    .line 1822
    :goto_2
    iget-object v7, p0, Landroidx/media2/widget/MediaControlView;->mSubtitleTracks:Ljava/util/List;

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1818
    :cond_4
    nop

    .line 1809
    .end local v6    # "trackType":I
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1827
    .end local v5    # "i":I
    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroidx/media2/widget/MediaControlView;->mAudioTrackDescriptionList:Ljava/util/List;

    .line 1828
    iget-object v3, p0, Landroidx/media2/widget/MediaControlView;->mAudioTracks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1829
    iget-object v3, p0, Landroidx/media2/widget/MediaControlView;->mAudioTrackDescriptionList:Ljava/util/List;

    iget-object v5, p0, Landroidx/media2/widget/MediaControlView;->mResources:Landroid/content/res/Resources;

    sget v6, Landroidx/media2/widget/R$string;->MediaControlView_audio_track_none_text:I

    .line 1830
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1829
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1832
    :cond_6
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    iget-object v5, p0, Landroidx/media2/widget/MediaControlView;->mAudioTracks:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_7

    .line 1833
    iget-object v5, p0, Landroidx/media2/widget/MediaControlView;->mAudioTrackDescriptionList:Ljava/util/List;

    iget-object v6, p0, Landroidx/media2/widget/MediaControlView;->mResources:Landroid/content/res/Resources;

    sget v8, Landroidx/media2/widget/R$string;->MediaControlView_audio_track_number_text:I

    new-array v9, v7, [Ljava/lang/Object;

    add-int/lit8 v10, v3, 0x1

    .line 1834
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v0

    .line 1833
    invoke-virtual {v6, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1832
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1839
    .end local v3    # "i":I
    :cond_7
    :goto_5
    iget-object v3, p0, Landroidx/media2/widget/MediaControlView;->mSettingsSubTextsList:Ljava/util/List;

    iget-object v5, p0, Landroidx/media2/widget/MediaControlView;->mAudioTrackDescriptionList:Ljava/util/List;

    iget v6, p0, Landroidx/media2/widget/MediaControlView;->mSelectedAudioTrackIndex:I

    .line 1840
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 1839
    invoke-interface {v3, v0, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1843
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroidx/media2/widget/MediaControlView;->mSubtitleDescriptionsList:Ljava/util/List;

    .line 1844
    iget-object v3, p0, Landroidx/media2/widget/MediaControlView;->mSubtitleTracks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1847
    invoke-direct {p0}, Landroidx/media2/widget/MediaControlView;->isCurrentItemMusic()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1848
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mSubtitleButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_8

    .line 1850
    :cond_8
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView;->mSubtitleButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1851
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView;->mSubtitleButton:Landroid/widget/ImageButton;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 1852
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView;->mSubtitleButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_8

    .line 1855
    :cond_9
    iget-object v3, p0, Landroidx/media2/widget/MediaControlView;->mSubtitleDescriptionsList:Ljava/util/List;

    iget-object v5, p0, Landroidx/media2/widget/MediaControlView;->mResources:Landroid/content/res/Resources;

    sget v6, Landroidx/media2/widget/R$string;->MediaControlView_subtitle_off_text:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1857
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_6
    iget-object v5, p0, Landroidx/media2/widget/MediaControlView;->mSubtitleTracks:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_b

    .line 1858
    iget-object v5, p0, Landroidx/media2/widget/MediaControlView;->mSubtitleTracks:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media2/common/SessionPlayer$TrackInfo;

    invoke-virtual {v5}, Landroidx/media2/common/SessionPlayer$TrackInfo;->getLanguage()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v5

    .line 1860
    .local v5, "lang":Ljava/lang/String;
    const-string/jumbo v6, "und"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1861
    iget-object v6, p0, Landroidx/media2/widget/MediaControlView;->mResources:Landroid/content/res/Resources;

    sget v8, Landroidx/media2/widget/R$string;->MediaControlView_subtitle_track_number_text:I

    new-array v9, v7, [Ljava/lang/Object;

    add-int/lit8 v10, v3, 0x1

    .line 1862
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v0

    .line 1861
    invoke-virtual {v6, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    .line 1864
    :cond_a
    iget-object v6, p0, Landroidx/media2/widget/MediaControlView;->mResources:Landroid/content/res/Resources;

    sget v8, Landroidx/media2/widget/R$string;->MediaControlView_subtitle_track_number_and_lang_text:I

    new-array v9, v1, [Ljava/lang/Object;

    add-int/lit8 v10, v3, 0x1

    .line 1866
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v0

    aput-object v5, v9, v7

    .line 1864
    invoke-virtual {v6, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1868
    .local v6, "trackDescription":Ljava/lang/String;
    :goto_7
    iget-object v8, p0, Landroidx/media2/widget/MediaControlView;->mSubtitleDescriptionsList:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1857
    .end local v5    # "lang":Ljava/lang/String;
    .end local v6    # "trackDescription":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1870
    .end local v3    # "i":I
    :cond_b
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView;->mSubtitleButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1871
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mSubtitleButton:Landroid/widget/ImageButton;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 1872
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView;->mSubtitleButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1874
    :goto_8
    return-void
.end method
