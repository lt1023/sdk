.class Landroidx/media2/widget/VideoView$2;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroidx/media2/widget/SubtitleController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/widget/VideoView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/widget/VideoView;


# direct methods
.method constructor <init>(Landroidx/media2/widget/VideoView;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/widget/VideoView;

    .line 250
    iput-object p1, p0, Landroidx/media2/widget/VideoView$2;->this$0:Landroidx/media2/widget/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubtitleTrackSelected(Landroidx/media2/widget/SubtitleTrack;)V
    .locals 4
    .param p1, "track"    # Landroidx/media2/widget/SubtitleTrack;

    .line 254
    if-nez p1, :cond_0

    .line 255
    iget-object v0, p0, Landroidx/media2/widget/VideoView$2;->this$0:Landroidx/media2/widget/VideoView;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/media2/widget/VideoView;->mSelectedSubtitleTrackInfo:Landroidx/media2/common/SessionPlayer$TrackInfo;

    .line 256
    iget-object v0, v0, Landroidx/media2/widget/VideoView;->mSubtitleAnchorView:Landroidx/media2/widget/SubtitleAnchorView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/media2/widget/SubtitleAnchorView;->setVisibility(I)V

    .line 257
    return-void

    .line 261
    :cond_0
    const/4 v0, 0x0

    .line 262
    .local v0, "info":Landroidx/media2/common/SessionPlayer$TrackInfo;
    iget-object v1, p0, Landroidx/media2/widget/VideoView$2;->this$0:Landroidx/media2/widget/VideoView;

    iget-object v1, v1, Landroidx/media2/widget/VideoView;->mSubtitleTracks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 263
    .local v2, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/widget/SubtitleTrack;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_1

    .line 264
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroidx/media2/common/SessionPlayer$TrackInfo;

    .line 265
    goto :goto_1

    .line 263
    :cond_1
    nop

    .line 267
    .end local v2    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroidx/media2/common/SessionPlayer$TrackInfo;Landroidx/media2/widget/SubtitleTrack;>;"
    goto :goto_0

    .line 262
    :cond_2
    nop

    .line 268
    :goto_1
    if-eqz v0, :cond_3

    .line 269
    iget-object v1, p0, Landroidx/media2/widget/VideoView$2;->this$0:Landroidx/media2/widget/VideoView;

    iput-object v0, v1, Landroidx/media2/widget/VideoView;->mSelectedSubtitleTrackInfo:Landroidx/media2/common/SessionPlayer$TrackInfo;

    .line 270
    iget-object v1, v1, Landroidx/media2/widget/VideoView;->mSubtitleAnchorView:Landroidx/media2/widget/SubtitleAnchorView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/media2/widget/SubtitleAnchorView;->setVisibility(I)V

    goto :goto_2

    .line 268
    :cond_3
    nop

    .line 272
    :goto_2
    return-void
.end method
