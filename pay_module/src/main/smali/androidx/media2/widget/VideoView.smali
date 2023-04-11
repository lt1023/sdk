.class public Landroidx/media2/widget/VideoView;
.super Landroidx/media2/widget/SelectiveLayout;
.source "VideoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/widget/VideoView$OnViewTypeChangedListener;,
        Landroidx/media2/widget/VideoView$PlayerCallback;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "VideoView"

.field public static final VIEW_TYPE_SURFACEVIEW:I = 0x0

.field public static final VIEW_TYPE_TEXTUREVIEW:I = 0x1


# instance fields
.field mAudioTrackCount:I

.field mCurrentView:Landroidx/media2/widget/VideoViewInterface;

.field mMediaControlView:Landroidx/media2/widget/MediaControlView;

.field mMusicView:Landroidx/media2/widget/MusicView;

.field mPlayer:Landroidx/media2/widget/PlayerWrapper;

.field mSelectedSubtitleTrackInfo:Landroidx/media2/common/SessionPlayer$TrackInfo;

.field mSelectiveLayoutParams:Landroidx/media2/widget/SelectiveLayout$LayoutParams;

.field mSubtitleAnchorView:Landroidx/media2/widget/SubtitleAnchorView;

.field mSubtitleController:Landroidx/media2/widget/SubtitleController;

.field mSubtitleTracks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            "Landroidx/media2/widget/SubtitleTrack;",
            ">;"
        }
    .end annotation
.end field

.field private final mSurfaceListener:Landroidx/media2/widget/VideoViewInterface$SurfaceListener;

.field mSurfaceView:Landroidx/media2/widget/VideoSurfaceView;

.field mTargetView:Landroidx/media2/widget/VideoViewInterface;

.field mTextureView:Landroidx/media2/widget/VideoTextureView;

.field mVideoTrackCount:I

.field mViewTypeChangedListener:Landroidx/media2/widget/VideoView$OnViewTypeChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 141
    const-string v0, "VideoView"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroidx/media2/widget/VideoView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 216
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/media2/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 217
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

    .line 220
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 221
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .line 224
    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/widget/SelectiveLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 167
    new-instance v0, Landroidx/media2/widget/VideoView$1;

    invoke-direct {v0, p0}, Landroidx/media2/widget/VideoView$1;-><init>(Landroidx/media2/widget/VideoView;)V

    iput-object v0, p0, Landroidx/media2/widget/VideoView;->mSurfaceListener:Landroidx/media2/widget/VideoViewInterface$SurfaceListener;

    .line 225
    invoke-direct {p0, p1, p2}, Landroidx/media2/widget/VideoView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 226
    return-void
.end method

.method private getAlbumArt(Landroidx/media2/common/MediaMetadata;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "metadata"    # Landroidx/media2/common/MediaMetadata;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "defaultDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 638
    move-object v0, p2

    .line 639
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 641
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_0

    const-string v2, "android.media.metadata.ALBUM_ART"

    invoke-virtual {p1, v2}, Landroidx/media2/common/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 642
    const-string v2, "android.media.metadata.ALBUM_ART"

    invoke-virtual {p1, v2}, Landroidx/media2/common/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 641
    :cond_0
    nop

    .line 644
    :goto_0
    if-eqz v1, :cond_1

    .line 645
    invoke-static {v1}, Landroidx/palette/graphics/Palette;->from(Landroid/graphics/Bitmap;)Landroidx/palette/graphics/Palette$Builder;

    move-result-object v2

    .line 646
    .local v2, "builder":Landroidx/palette/graphics/Palette$Builder;
    new-instance v3, Landroidx/media2/widget/VideoView$4;

    invoke-direct {v3, p0}, Landroidx/media2/widget/VideoView$4;-><init>(Landroidx/media2/widget/VideoView;)V

    invoke-virtual {v2, v3}, Landroidx/palette/graphics/Palette$Builder;->generate(Landroidx/palette/graphics/Palette$PaletteAsyncListener;)Landroid/os/AsyncTask;

    .line 653
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroidx/media2/widget/VideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v0, v3

    .line 654
    .end local v2    # "builder":Landroidx/palette/graphics/Palette$Builder;
    goto :goto_1

    .line 655
    :cond_1
    iget-object v2, p0, Landroidx/media2/widget/VideoView;->mMusicView:Landroidx/media2/widget/MusicView;

    .line 656
    invoke-virtual {p0}, Landroidx/media2/widget/VideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroidx/media2/widget/R$color;->music_view_default_background:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 655
    invoke-virtual {v2, v3}, Landroidx/media2/widget/MusicView;->setBackgroundColor(I)V

    .line 658
    :goto_1
    return-object v0
.end method

.method private getString(Landroidx/media2/common/MediaMetadata;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "metadata"    # Landroidx/media2/common/MediaMetadata;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "stringKey"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .line 663
    if-nez p1, :cond_0

    move-object v0, p3

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroidx/media2/common/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 664
    .local v0, "value":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_1

    move-object v1, p3

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    return-object v1
.end method

.method private initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/widget/VideoView;->mSelectedSubtitleTrackInfo:Landroidx/media2/common/SessionPlayer$TrackInfo;

    .line 231
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroidx/media2/widget/VideoView;->setFocusable(Z)V

    .line 232
    invoke-virtual {p0, v1}, Landroidx/media2/widget/VideoView;->setFocusableInTouchMode(Z)V

    .line 233
    invoke-virtual {p0}, Landroidx/media2/widget/VideoView;->requestFocus()Z

    .line 235
    new-instance v2, Landroidx/media2/widget/VideoTextureView;

    invoke-direct {v2, p1}, Landroidx/media2/widget/VideoTextureView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroidx/media2/widget/VideoView;->mTextureView:Landroidx/media2/widget/VideoTextureView;

    .line 236
    new-instance v2, Landroidx/media2/widget/VideoSurfaceView;

    invoke-direct {v2, p1}, Landroidx/media2/widget/VideoSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroidx/media2/widget/VideoView;->mSurfaceView:Landroidx/media2/widget/VideoSurfaceView;

    .line 237
    iget-object v2, p0, Landroidx/media2/widget/VideoView;->mTextureView:Landroidx/media2/widget/VideoTextureView;

    iget-object v3, p0, Landroidx/media2/widget/VideoView;->mSurfaceListener:Landroidx/media2/widget/VideoViewInterface$SurfaceListener;

    invoke-virtual {v2, v3}, Landroidx/media2/widget/VideoTextureView;->setSurfaceListener(Landroidx/media2/widget/VideoViewInterface$SurfaceListener;)V

    .line 238
    iget-object v2, p0, Landroidx/media2/widget/VideoView;->mSurfaceView:Landroidx/media2/widget/VideoSurfaceView;

    iget-object v3, p0, Landroidx/media2/widget/VideoView;->mSurfaceListener:Landroidx/media2/widget/VideoViewInterface$SurfaceListener;

    invoke-virtual {v2, v3}, Landroidx/media2/widget/VideoSurfaceView;->setSurfaceListener(Landroidx/media2/widget/VideoViewInterface$SurfaceListener;)V

    .line 240
    iget-object v2, p0, Landroidx/media2/widget/VideoView;->mTextureView:Landroidx/media2/widget/VideoTextureView;

    invoke-virtual {p0, v2}, Landroidx/media2/widget/VideoView;->addView(Landroid/view/View;)V

    .line 241
    iget-object v2, p0, Landroidx/media2/widget/VideoView;->mSurfaceView:Landroidx/media2/widget/VideoSurfaceView;

    invoke-virtual {p0, v2}, Landroidx/media2/widget/VideoView;->addView(Landroid/view/View;)V

    .line 243
    new-instance v2, Landroidx/media2/widget/SelectiveLayout$LayoutParams;

    invoke-direct {v2}, Landroidx/media2/widget/SelectiveLayout$LayoutParams;-><init>()V

    iput-object v2, p0, Landroidx/media2/widget/VideoView;->mSelectiveLayoutParams:Landroidx/media2/widget/SelectiveLayout$LayoutParams;

    .line 244
    iget-object v2, p0, Landroidx/media2/widget/VideoView;->mSelectiveLayoutParams:Landroidx/media2/widget/SelectiveLayout$LayoutParams;

    iput-boolean v1, v2, Landroidx/media2/widget/SelectiveLayout$LayoutParams;->forceMatchParent:Z

    .line 246
    new-instance v2, Landroidx/media2/widget/SubtitleAnchorView;

    invoke-direct {v2, p1}, Landroidx/media2/widget/SubtitleAnchorView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroidx/media2/widget/VideoView;->mSubtitleAnchorView:Landroidx/media2/widget/SubtitleAnchorView;

    .line 247
    iget-object v2, p0, Landroidx/media2/widget/VideoView;->mSubtitleAnchorView:Landroidx/media2/widget/SubtitleAnchorView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/media2/widget/SubtitleAnchorView;->setBackgroundColor(I)V

    .line 248
    iget-object v2, p0, Landroidx/media2/widget/VideoView;->mSubtitleAnchorView:Landroidx/media2/widget/SubtitleAnchorView;

    iget-object v4, p0, Landroidx/media2/widget/VideoView;->mSelectiveLayoutParams:Landroidx/media2/widget/SelectiveLayout$LayoutParams;

    invoke-virtual {p0, v2, v4}, Landroidx/media2/widget/VideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    new-instance v2, Landroidx/media2/widget/VideoView$2;

    invoke-direct {v2, p0}, Landroidx/media2/widget/VideoView$2;-><init>(Landroidx/media2/widget/VideoView;)V

    .line 274
    .local v2, "listener":Landroidx/media2/widget/SubtitleController$Listener;
    new-instance v4, Landroidx/media2/widget/SubtitleController;

    invoke-direct {v4, p1, v0, v2}, Landroidx/media2/widget/SubtitleController;-><init>(Landroid/content/Context;Landroidx/media2/widget/MediaTimeProvider;Landroidx/media2/widget/SubtitleController$Listener;)V

    iput-object v4, p0, Landroidx/media2/widget/VideoView;->mSubtitleController:Landroidx/media2/widget/SubtitleController;

    .line 275
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->mSubtitleController:Landroidx/media2/widget/SubtitleController;

    new-instance v4, Landroidx/media2/widget/Cea608CaptionRenderer;

    invoke-direct {v4, p1}, Landroidx/media2/widget/Cea608CaptionRenderer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroidx/media2/widget/SubtitleController;->registerRenderer(Landroidx/media2/widget/SubtitleController$Renderer;)V

    .line 276
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->mSubtitleController:Landroidx/media2/widget/SubtitleController;

    new-instance v4, Landroidx/media2/widget/Cea708CaptionRenderer;

    invoke-direct {v4, p1}, Landroidx/media2/widget/Cea708CaptionRenderer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroidx/media2/widget/SubtitleController;->registerRenderer(Landroidx/media2/widget/SubtitleController$Renderer;)V

    .line 277
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->mSubtitleController:Landroidx/media2/widget/SubtitleController;

    iget-object v4, p0, Landroidx/media2/widget/VideoView;->mSubtitleAnchorView:Landroidx/media2/widget/SubtitleAnchorView;

    invoke-virtual {v0, v4}, Landroidx/media2/widget/SubtitleController;->setAnchor(Landroidx/media2/widget/SubtitleController$Anchor;)V

    .line 279
    new-instance v0, Landroidx/media2/widget/MusicView;

    invoke-direct {v0, p1}, Landroidx/media2/widget/MusicView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/media2/widget/VideoView;->mMusicView:Landroidx/media2/widget/MusicView;

    .line 280
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->mMusicView:Landroidx/media2/widget/MusicView;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroidx/media2/widget/MusicView;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->mMusicView:Landroidx/media2/widget/MusicView;

    iget-object v5, p0, Landroidx/media2/widget/VideoView;->mSelectiveLayoutParams:Landroidx/media2/widget/SelectiveLayout$LayoutParams;

    invoke-virtual {p0, v0, v5}, Landroidx/media2/widget/VideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    if-eqz p2, :cond_1

    const-string v0, "http://schemas.android.com/apk/res-auto"

    const-string v5, "enableControlView"

    invoke-interface {p2, v0, v5, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 286
    .local v0, "enableControlView":Z
    :goto_1
    if-eqz v0, :cond_2

    .line 287
    new-instance v5, Landroidx/media2/widget/MediaControlView;

    invoke-direct {v5, p1}, Landroidx/media2/widget/MediaControlView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Landroidx/media2/widget/VideoView;->mMediaControlView:Landroidx/media2/widget/MediaControlView;

    .line 288
    iget-object v5, p0, Landroidx/media2/widget/VideoView;->mMediaControlView:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {v5, v1}, Landroidx/media2/widget/MediaControlView;->setAttachedToVideoView(Z)V

    .line 289
    iget-object v5, p0, Landroidx/media2/widget/VideoView;->mMediaControlView:Landroidx/media2/widget/MediaControlView;

    iget-object v6, p0, Landroidx/media2/widget/VideoView;->mSelectiveLayoutParams:Landroidx/media2/widget/SelectiveLayout$LayoutParams;

    invoke-virtual {p0, v5, v6}, Landroidx/media2/widget/VideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 286
    :cond_2
    nop

    .line 293
    :goto_2
    if-nez p2, :cond_3

    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    const-string v5, "http://schemas.android.com/apk/res-auto"

    const-string/jumbo v6, "viewType"

    .line 294
    invoke-interface {p2, v5, v6, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    :goto_3
    nop

    .line 297
    .local v5, "viewType":I
    if-nez v5, :cond_5

    .line 298
    sget-boolean v1, Landroidx/media2/widget/VideoView;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 299
    const-string v1, "VideoView"

    const-string/jumbo v6, "viewType attribute is surfaceView."

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 298
    :cond_4
    nop

    .line 301
    :goto_4
    iget-object v1, p0, Landroidx/media2/widget/VideoView;->mTextureView:Landroidx/media2/widget/VideoTextureView;

    invoke-virtual {v1, v4}, Landroidx/media2/widget/VideoTextureView;->setVisibility(I)V

    .line 302
    iget-object v1, p0, Landroidx/media2/widget/VideoView;->mSurfaceView:Landroidx/media2/widget/VideoSurfaceView;

    invoke-virtual {v1, v3}, Landroidx/media2/widget/VideoSurfaceView;->setVisibility(I)V

    .line 303
    iget-object v1, p0, Landroidx/media2/widget/VideoView;->mSurfaceView:Landroidx/media2/widget/VideoSurfaceView;

    iput-object v1, p0, Landroidx/media2/widget/VideoView;->mCurrentView:Landroidx/media2/widget/VideoViewInterface;

    goto :goto_6

    .line 304
    :cond_5
    if-ne v5, v1, :cond_7

    .line 305
    sget-boolean v1, Landroidx/media2/widget/VideoView;->DEBUG:Z

    if-eqz v1, :cond_6

    .line 306
    const-string v1, "VideoView"

    const-string/jumbo v6, "viewType attribute is textureView."

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 305
    :cond_6
    nop

    .line 308
    :goto_5
    iget-object v1, p0, Landroidx/media2/widget/VideoView;->mTextureView:Landroidx/media2/widget/VideoTextureView;

    invoke-virtual {v1, v3}, Landroidx/media2/widget/VideoTextureView;->setVisibility(I)V

    .line 309
    iget-object v1, p0, Landroidx/media2/widget/VideoView;->mSurfaceView:Landroidx/media2/widget/VideoSurfaceView;

    invoke-virtual {v1, v4}, Landroidx/media2/widget/VideoSurfaceView;->setVisibility(I)V

    .line 310
    iget-object v1, p0, Landroidx/media2/widget/VideoView;->mTextureView:Landroidx/media2/widget/VideoTextureView;

    iput-object v1, p0, Landroidx/media2/widget/VideoView;->mCurrentView:Landroidx/media2/widget/VideoViewInterface;

    goto :goto_6

    .line 304
    :cond_7
    nop

    .line 312
    :goto_6
    iget-object v1, p0, Landroidx/media2/widget/VideoView;->mCurrentView:Landroidx/media2/widget/VideoViewInterface;

    iput-object v1, p0, Landroidx/media2/widget/VideoView;->mTargetView:Landroidx/media2/widget/VideoViewInterface;

    .line 313
    return-void
.end method


# virtual methods
.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 118
    invoke-super {p0, p1}, Landroidx/media2/widget/SelectiveLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 527
    const-string v0, "androidx.media2.widget.VideoView"

    return-object v0
.end method

.method public getMediaControlView()Landroidx/media2/widget/MediaControlView;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 424
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->mMediaControlView:Landroidx/media2/widget/MediaControlView;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    .line 474
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->mCurrentView:Landroidx/media2/widget/VideoViewInterface;

    invoke-interface {v0}, Landroidx/media2/widget/VideoViewInterface;->getViewType()I

    move-result v0

    return v0
.end method

.method hasActualVideo()Z
    .locals 5

    .line 540
    iget v0, p0, Landroidx/media2/widget/VideoView;->mVideoTrackCount:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    .line 541
    return v1

    .line 543
    :cond_0
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {v0}, Landroidx/media2/widget/PlayerWrapper;->getVideoSize()Landroidx/media2/common/VideoSize;

    move-result-object v0

    .line 544
    .local v0, "videoSize":Landroidx/media2/common/VideoSize;
    invoke-virtual {v0}, Landroidx/media2/common/VideoSize;->getHeight()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0}, Landroidx/media2/common/VideoSize;->getWidth()I

    move-result v2

    if-lez v2, :cond_1

    .line 545
    const-string v2, "VideoView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "video track count is zero, but it renders video. size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    invoke-virtual {v0}, Landroidx/media2/common/VideoSize;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroidx/media2/common/VideoSize;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 545
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    return v1

    .line 544
    :cond_1
    nop

    .line 549
    const/4 v1, 0x0

    return v1
.end method

.method isCurrentItemMusic()Z
    .locals 1

    .line 553
    invoke-virtual {p0}, Landroidx/media2/widget/VideoView;->hasActualVideo()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/media2/widget/VideoView;->mAudioTrackCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isMediaPrepared()Z
    .locals 2

    .line 534
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    if-eqz v0, :cond_2

    .line 535
    invoke-virtual {v0}, Landroidx/media2/widget/PlayerWrapper;->getPlayerState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroidx/media2/widget/VideoView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    .line 536
    invoke-virtual {v0}, Landroidx/media2/widget/PlayerWrapper;->getPlayerState()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    goto :goto_0

    .line 535
    :cond_1
    goto :goto_0

    .line 534
    :cond_2
    nop

    .line 536
    :goto_0
    const/4 v0, 0x0

    .line 534
    :goto_1
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 491
    invoke-super {p0}, Landroidx/media2/widget/SelectiveLayout;->onAttachedToWindow()V

    .line 492
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    if-eqz v0, :cond_0

    .line 493
    invoke-virtual {v0}, Landroidx/media2/widget/PlayerWrapper;->attachCallback()V

    goto :goto_0

    .line 492
    :cond_0
    nop

    .line 495
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 518
    invoke-super {p0}, Landroidx/media2/widget/SelectiveLayout;->onDetachedFromWindow()V

    .line 519
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    if-eqz v0, :cond_0

    .line 520
    invoke-virtual {v0}, Landroidx/media2/widget/PlayerWrapper;->detachCallback()V

    goto :goto_0

    .line 519
    :cond_0
    nop

    .line 522
    :goto_0
    return-void
.end method

.method public bridge synthetic onVisibilityAggregated(Z)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x18
    .end annotation

    .line 118
    invoke-super {p0, p1}, Landroidx/media2/widget/SelectiveLayout;->onVisibilityAggregated(Z)V

    return-void
.end method

.method onVisibilityAggregatedCompat(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .line 499
    invoke-super {p0, p1}, Landroidx/media2/widget/SelectiveLayout;->onVisibilityAggregatedCompat(Z)V

    .line 500
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    if-nez v0, :cond_0

    .line 501
    return-void

    .line 504
    :cond_0
    if-eqz p1, :cond_1

    .line 505
    iget-object v1, p0, Landroidx/media2/widget/VideoView;->mTargetView:Landroidx/media2/widget/VideoViewInterface;

    invoke-interface {v1, v0}, Landroidx/media2/widget/VideoViewInterface;->assignSurfaceToPlayerWrapper(Landroidx/media2/widget/PlayerWrapper;)Z

    goto :goto_0

    .line 507
    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/media2/widget/PlayerWrapper;->hasDisconnectedController()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 512
    :cond_2
    invoke-virtual {p0}, Landroidx/media2/widget/VideoView;->resetPlayerSurfaceWithNull()V

    .line 514
    :goto_0
    return-void

    .line 507
    :cond_3
    :goto_1
    nop

    .line 508
    const-string v0, "VideoView"

    const-string v1, "Surface is being destroyed, but player will not be informed as the associated media controller is disconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    return-void
.end method

.method resetPlayerSurfaceWithNull()V
    .locals 4

    .line 606
    :try_start_0
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media2/widget/PlayerWrapper;->setSurface(Landroid/view/Surface;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    const-wide/16 v1, 0x64

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/common/util/concurrent/ListenableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/common/BaseResult;

    .line 607
    invoke-interface {v0}, Landroidx/media2/common/BaseResult;->getResultCode()I

    move-result v0

    .line 608
    .local v0, "resultCode":I
    if-eqz v0, :cond_0

    .line 609
    const-string v1, "VideoView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calling setSurface(null) was not successful. ResultCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 608
    :cond_0
    nop

    .line 614
    .end local v0    # "resultCode":I
    :goto_0
    goto :goto_2

    .line 612
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    .line 613
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const-string v1, "VideoView"

    const-string v2, "calling setSurface(null) was not successful."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 615
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method resetPlayerSurfaceWithNullAsync()V
    .locals 3

    .line 619
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media2/widget/PlayerWrapper;->setSurface(Landroid/view/Surface;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 620
    .local v0, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+Landroidx/media2/common/BaseResult;>;"
    new-instance v1, Landroidx/media2/widget/VideoView$3;

    invoke-direct {v1, p0, v0}, Landroidx/media2/widget/VideoView$3;-><init>(Landroidx/media2/widget/VideoView;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 634
    invoke-virtual {p0}, Landroidx/media2/widget/VideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 620
    invoke-interface {v0, v1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 635
    return-void
.end method

.method public setMediaControlView(Landroidx/media2/widget/MediaControlView;J)V
    .locals 2
    .param p1, "mediaControlView"    # Landroidx/media2/widget/MediaControlView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "intervalMs"    # J

    .line 399
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->mMediaControlView:Landroidx/media2/widget/MediaControlView;

    if-eqz v0, :cond_0

    .line 400
    invoke-virtual {p0, v0}, Landroidx/media2/widget/VideoView;->removeView(Landroid/view/View;)V

    .line 401
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->mMediaControlView:Landroidx/media2/widget/MediaControlView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media2/widget/MediaControlView;->setAttachedToVideoView(Z)V

    goto :goto_0

    .line 399
    :cond_0
    nop

    .line 403
    :goto_0
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->mSelectiveLayoutParams:Landroidx/media2/widget/SelectiveLayout$LayoutParams;

    invoke-virtual {p0, p1, v0}, Landroidx/media2/widget/VideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 404
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/media2/widget/MediaControlView;->setAttachedToVideoView(Z)V

    .line 406
    iput-object p1, p0, Landroidx/media2/widget/VideoView;->mMediaControlView:Landroidx/media2/widget/MediaControlView;

    .line 407
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->mMediaControlView:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {v0, p2, p3}, Landroidx/media2/widget/MediaControlView;->setDelayedAnimationInterval(J)V

    .line 409
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    if-eqz v0, :cond_3

    .line 410
    iget-object v0, v0, Landroidx/media2/widget/PlayerWrapper;->mController:Landroidx/media2/session/MediaController;

    if-eqz v0, :cond_1

    .line 411
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->mMediaControlView:Landroidx/media2/widget/MediaControlView;

    iget-object v1, p0, Landroidx/media2/widget/VideoView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    iget-object v1, v1, Landroidx/media2/widget/PlayerWrapper;->mController:Landroidx/media2/session/MediaController;

    invoke-virtual {v0, v1}, Landroidx/media2/widget/MediaControlView;->setMediaControllerInternal(Landroidx/media2/session/MediaController;)V

    goto :goto_1

    .line 412
    :cond_1
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    iget-object v0, v0, Landroidx/media2/widget/PlayerWrapper;->mPlayer:Landroidx/media2/common/SessionPlayer;

    if-eqz v0, :cond_2

    .line 413
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->mMediaControlView:Landroidx/media2/widget/MediaControlView;

    iget-object v1, p0, Landroidx/media2/widget/VideoView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    iget-object v1, v1, Landroidx/media2/widget/PlayerWrapper;->mPlayer:Landroidx/media2/common/SessionPlayer;

    invoke-virtual {v0, v1}, Landroidx/media2/widget/MediaControlView;->setPlayerInternal(Landroidx/media2/common/SessionPlayer;)V

    goto :goto_1

    .line 412
    :cond_2
    goto :goto_1

    .line 409
    :cond_3
    nop

    .line 416
    :goto_1
    return-void
.end method

.method public setMediaController(Landroidx/media2/session/MediaController;)V
    .locals 3
    .param p1, "controller"    # Landroidx/media2/session/MediaController;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 328
    if-eqz p1, :cond_4

    .line 331
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {v0}, Landroidx/media2/widget/PlayerWrapper;->detachCallback()V

    goto :goto_0

    .line 331
    :cond_0
    nop

    .line 334
    :goto_0
    new-instance v0, Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {p0}, Landroidx/media2/widget/VideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroidx/media2/widget/VideoView$PlayerCallback;

    invoke-direct {v2, p0}, Landroidx/media2/widget/VideoView$PlayerCallback;-><init>(Landroidx/media2/widget/VideoView;)V

    invoke-direct {v0, p1, v1, v2}, Landroidx/media2/widget/PlayerWrapper;-><init>(Landroidx/media2/session/MediaController;Ljava/util/concurrent/Executor;Landroidx/media2/widget/PlayerWrapper$PlayerCallback;)V

    iput-object v0, p0, Landroidx/media2/widget/VideoView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    .line 336
    invoke-virtual {p0}, Landroidx/media2/widget/VideoView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {v0}, Landroidx/media2/widget/PlayerWrapper;->attachCallback()V

    goto :goto_1

    .line 336
    :cond_1
    nop

    .line 339
    :goto_1
    invoke-virtual {p0}, Landroidx/media2/widget/VideoView;->isAggregatedVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 340
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->mTargetView:Landroidx/media2/widget/VideoViewInterface;

    iget-object v1, p0, Landroidx/media2/widget/VideoView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    invoke-interface {v0, v1}, Landroidx/media2/widget/VideoViewInterface;->assignSurfaceToPlayerWrapper(Landroidx/media2/widget/PlayerWrapper;)Z

    goto :goto_2

    .line 342
    :cond_2
    invoke-virtual {p0}, Landroidx/media2/widget/VideoView;->resetPlayerSurfaceWithNullAsync()V

    .line 345
    :goto_2
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->mMediaControlView:Landroidx/media2/widget/MediaControlView;

    if-eqz v0, :cond_3

    .line 346
    invoke-virtual {v0, p1}, Landroidx/media2/widget/MediaControlView;->setMediaControllerInternal(Landroidx/media2/session/MediaController;)V

    goto :goto_3

    .line 345
    :cond_3
    nop

    .line 348
    :goto_3
    return-void

    .line 329
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "controller must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnViewTypeChangedListener(Landroidx/media2/widget/VideoView$OnViewTypeChangedListener;)V
    .locals 0
    .param p1, "listener"    # Landroidx/media2/widget/VideoView$OnViewTypeChangedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 486
    iput-object p1, p0, Landroidx/media2/widget/VideoView;->mViewTypeChangedListener:Landroidx/media2/widget/VideoView$OnViewTypeChangedListener;

    .line 487
    return-void
.end method

.method public setPlayer(Landroidx/media2/common/SessionPlayer;)V
    .locals 3
    .param p1, "player"    # Landroidx/media2/common/SessionPlayer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 364
    if-eqz p1, :cond_4

    .line 367
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {v0}, Landroidx/media2/widget/PlayerWrapper;->detachCallback()V

    goto :goto_0

    .line 367
    :cond_0
    nop

    .line 370
    :goto_0
    new-instance v0, Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {p0}, Landroidx/media2/widget/VideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroidx/media2/widget/VideoView$PlayerCallback;

    invoke-direct {v2, p0}, Landroidx/media2/widget/VideoView$PlayerCallback;-><init>(Landroidx/media2/widget/VideoView;)V

    invoke-direct {v0, p1, v1, v2}, Landroidx/media2/widget/PlayerWrapper;-><init>(Landroidx/media2/common/SessionPlayer;Ljava/util/concurrent/Executor;Landroidx/media2/widget/PlayerWrapper$PlayerCallback;)V

    iput-object v0, p0, Landroidx/media2/widget/VideoView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    .line 372
    invoke-virtual {p0}, Landroidx/media2/widget/VideoView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {v0}, Landroidx/media2/widget/PlayerWrapper;->attachCallback()V

    goto :goto_1

    .line 372
    :cond_1
    nop

    .line 375
    :goto_1
    invoke-virtual {p0}, Landroidx/media2/widget/VideoView;->isAggregatedVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 376
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->mTargetView:Landroidx/media2/widget/VideoViewInterface;

    iget-object v1, p0, Landroidx/media2/widget/VideoView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    invoke-interface {v0, v1}, Landroidx/media2/widget/VideoViewInterface;->assignSurfaceToPlayerWrapper(Landroidx/media2/widget/PlayerWrapper;)Z

    goto :goto_2

    .line 378
    :cond_2
    invoke-virtual {p0}, Landroidx/media2/widget/VideoView;->resetPlayerSurfaceWithNullAsync()V

    .line 381
    :goto_2
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->mMediaControlView:Landroidx/media2/widget/MediaControlView;

    if-eqz v0, :cond_3

    .line 382
    invoke-virtual {v0, p1}, Landroidx/media2/widget/MediaControlView;->setPlayerInternal(Landroidx/media2/common/SessionPlayer;)V

    goto :goto_3

    .line 381
    :cond_3
    nop

    .line 384
    :goto_3
    return-void

    .line 365
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "player must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setViewType(I)V
    .locals 3
    .param p1, "viewType"    # I

    .line 444
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->mTargetView:Landroidx/media2/widget/VideoViewInterface;

    invoke-interface {v0}, Landroidx/media2/widget/VideoViewInterface;->getViewType()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 445
    const-string v0, "VideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setViewType with the same type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") is ignored."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    return-void

    .line 449
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 450
    const-string v0, "VideoView"

    const-string v1, "switching to TextureView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->mTextureView:Landroidx/media2/widget/VideoTextureView;

    goto :goto_0

    .line 452
    :cond_1
    if-nez p1, :cond_3

    .line 453
    const-string v0, "VideoView"

    const-string v1, "switching to SurfaceView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->mSurfaceView:Landroidx/media2/widget/VideoSurfaceView;

    .line 459
    .local v0, "targetView":Landroidx/media2/widget/VideoViewInterface;
    :goto_0
    iput-object v0, p0, Landroidx/media2/widget/VideoView;->mTargetView:Landroidx/media2/widget/VideoViewInterface;

    .line 460
    invoke-virtual {p0}, Landroidx/media2/widget/VideoView;->isAggregatedVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 461
    iget-object v1, p0, Landroidx/media2/widget/VideoView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    invoke-interface {v0, v1}, Landroidx/media2/widget/VideoViewInterface;->assignSurfaceToPlayerWrapper(Landroidx/media2/widget/PlayerWrapper;)Z

    goto :goto_1

    .line 460
    :cond_2
    nop

    .line 463
    :goto_1
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 464
    invoke-virtual {p0}, Landroidx/media2/widget/VideoView;->requestLayout()V

    .line 465
    return-void

    .line 456
    .end local v0    # "targetView":Landroidx/media2/widget/VideoViewInterface;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown view type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic shouldDelayChildPressedState()Z
    .locals 1

    .line 118
    invoke-super {p0}, Landroidx/media2/widget/SelectiveLayout;->shouldDelayChildPressedState()Z

    move-result v0

    return v0
.end method

.method updateMusicView(Landroidx/media2/common/MediaItem;)V
    .locals 7
    .param p1, "item"    # Landroidx/media2/common/MediaItem;

    .line 578
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/media2/widget/VideoView;->isCurrentItemMusic()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 579
    .local v1, "shouldShowMusicView":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 580
    iget-object v2, p0, Landroidx/media2/widget/VideoView;->mMusicView:Landroidx/media2/widget/MusicView;

    invoke-virtual {v2, v0}, Landroidx/media2/widget/MusicView;->setVisibility(I)V

    .line 582
    invoke-virtual {p1}, Landroidx/media2/common/MediaItem;->getMetadata()Landroidx/media2/common/MediaMetadata;

    move-result-object v0

    .line 583
    .local v0, "metadata":Landroidx/media2/common/MediaMetadata;
    invoke-virtual {p0}, Landroidx/media2/widget/VideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 585
    .local v2, "resources":Landroid/content/res/Resources;
    sget v3, Landroidx/media2/widget/R$drawable;->ic_default_album_image:I

    .line 586
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 585
    invoke-direct {p0, v0, v3}, Landroidx/media2/widget/VideoView;->getAlbumArt(Landroidx/media2/common/MediaMetadata;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 587
    .local v3, "albumDrawable":Landroid/graphics/drawable/Drawable;
    const-string v4, "android.media.metadata.TITLE"

    sget v5, Landroidx/media2/widget/R$string;->mcv2_music_title_unknown_text:I

    .line 588
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 587
    invoke-direct {p0, v0, v4, v5}, Landroidx/media2/widget/VideoView;->getString(Landroidx/media2/common/MediaMetadata;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 589
    .local v4, "title":Ljava/lang/String;
    const-string v5, "android.media.metadata.ARTIST"

    sget v6, Landroidx/media2/widget/R$string;->mcv2_music_artist_unknown_text:I

    .line 590
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 589
    invoke-direct {p0, v0, v5, v6}, Landroidx/media2/widget/VideoView;->getString(Landroidx/media2/common/MediaMetadata;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 592
    .local v5, "artist":Ljava/lang/String;
    iget-object v6, p0, Landroidx/media2/widget/VideoView;->mMusicView:Landroidx/media2/widget/MusicView;

    invoke-virtual {v6, v3}, Landroidx/media2/widget/MusicView;->setAlbumDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 593
    iget-object v6, p0, Landroidx/media2/widget/VideoView;->mMusicView:Landroidx/media2/widget/MusicView;

    invoke-virtual {v6, v4}, Landroidx/media2/widget/MusicView;->setTitleText(Ljava/lang/String;)V

    .line 594
    iget-object v6, p0, Landroidx/media2/widget/VideoView;->mMusicView:Landroidx/media2/widget/MusicView;

    invoke-virtual {v6, v5}, Landroidx/media2/widget/MusicView;->setArtistText(Ljava/lang/String;)V

    .line 595
    .end local v0    # "metadata":Landroidx/media2/common/MediaMetadata;
    .end local v2    # "resources":Landroid/content/res/Resources;
    .end local v3    # "albumDrawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "title":Ljava/lang/String;
    .end local v5    # "artist":Ljava/lang/String;
    goto :goto_1

    .line 596
    :cond_1
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->mMusicView:Landroidx/media2/widget/MusicView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroidx/media2/widget/MusicView;->setVisibility(I)V

    .line 597
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->mMusicView:Landroidx/media2/widget/MusicView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/media2/widget/MusicView;->setAlbumDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 598
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->mMusicView:Landroidx/media2/widget/MusicView;

    invoke-virtual {v0, v2}, Landroidx/media2/widget/MusicView;->setTitleText(Ljava/lang/String;)V

    .line 599
    iget-object v0, p0, Landroidx/media2/widget/VideoView;->mMusicView:Landroidx/media2/widget/MusicView;

    invoke-virtual {v0, v2}, Landroidx/media2/widget/MusicView;->setArtistText(Ljava/lang/String;)V

    .line 601
    :goto_1
    return-void
.end method

.method updateTracks(Landroidx/media2/widget/PlayerWrapper;Ljava/util/List;)V
    .locals 6
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

    .line 557
    .local p2, "trackInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media2/common/SessionPlayer$TrackInfo;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/media2/widget/VideoView;->mSubtitleTracks:Ljava/util/Map;

    .line 558
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media2/widget/VideoView;->mVideoTrackCount:I

    .line 559
    iput v0, p0, Landroidx/media2/widget/VideoView;->mAudioTrackCount:I

    .line 560
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    if-ge v0, v1, :cond_4

    .line 561
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/common/SessionPlayer$TrackInfo;

    .line 562
    .local v1, "trackInfo":Landroidx/media2/common/SessionPlayer$TrackInfo;
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media2/common/SessionPlayer$TrackInfo;

    invoke-virtual {v3}, Landroidx/media2/common/SessionPlayer$TrackInfo;->getTrackType()I

    move-result v3

    .line 563
    .local v3, "trackType":I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 564
    iget v2, p0, Landroidx/media2/widget/VideoView;->mVideoTrackCount:I

    add-int/2addr v2, v4

    iput v2, p0, Landroidx/media2/widget/VideoView;->mVideoTrackCount:I

    goto :goto_1

    .line 565
    :cond_0
    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    .line 566
    iget v2, p0, Landroidx/media2/widget/VideoView;->mAudioTrackCount:I

    add-int/2addr v2, v4

    iput v2, p0, Landroidx/media2/widget/VideoView;->mAudioTrackCount:I

    goto :goto_1

    .line 567
    :cond_1
    if-ne v3, v2, :cond_3

    .line 568
    iget-object v2, p0, Landroidx/media2/widget/VideoView;->mSubtitleController:Landroidx/media2/widget/SubtitleController;

    invoke-virtual {v1}, Landroidx/media2/common/SessionPlayer$TrackInfo;->getFormat()Landroid/media/MediaFormat;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/media2/widget/SubtitleController;->addTrack(Landroid/media/MediaFormat;)Landroidx/media2/widget/SubtitleTrack;

    move-result-object v2

    .line 569
    .local v2, "track":Landroidx/media2/widget/SubtitleTrack;
    if-eqz v2, :cond_2

    .line 570
    iget-object v4, p0, Landroidx/media2/widget/VideoView;->mSubtitleTracks:Ljava/util/Map;

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 569
    :cond_2
    goto :goto_1

    .line 567
    .end local v2    # "track":Landroidx/media2/widget/SubtitleTrack;
    :cond_3
    nop

    .line 560
    .end local v1    # "trackInfo":Landroidx/media2/common/SessionPlayer$TrackInfo;
    .end local v3    # "trackType":I
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 574
    .end local v0    # "i":I
    :cond_4
    invoke-virtual {p1, v2}, Landroidx/media2/widget/PlayerWrapper;->getSelectedTrack(I)Landroidx/media2/common/SessionPlayer$TrackInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/widget/VideoView;->mSelectedSubtitleTrackInfo:Landroidx/media2/common/SessionPlayer$TrackInfo;

    .line 575
    return-void
.end method
