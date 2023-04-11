.class Landroidx/media2/widget/MediaControlView$30;
.super Ljava/lang/Object;
.source "MediaControlView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/MediaControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/widget/MediaControlView;


# direct methods
.method constructor <init>(Landroidx/media2/widget/MediaControlView;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/widget/MediaControlView;

    .line 1315
    iput-object p1, p0, Landroidx/media2/widget/MediaControlView$30;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1318
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$30;->this$0:Landroidx/media2/widget/MediaControlView;

    iget v0, v0, Landroidx/media2/widget/MediaControlView;->mSettingsMode:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 1320
    :pswitch_0
    if-nez p3, :cond_0

    .line 1321
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$30;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->mSubSettingsAdapter:Landroidx/media2/widget/MediaControlView$SubSettingsAdapter;

    iget-object v1, p0, Landroidx/media2/widget/MediaControlView$30;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v1, v1, Landroidx/media2/widget/MediaControlView;->mAudioTrackDescriptionList:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroidx/media2/widget/MediaControlView$SubSettingsAdapter;->setTexts(Ljava/util/List;)V

    .line 1322
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$30;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->mSubSettingsAdapter:Landroidx/media2/widget/MediaControlView$SubSettingsAdapter;

    iget-object v1, p0, Landroidx/media2/widget/MediaControlView$30;->this$0:Landroidx/media2/widget/MediaControlView;

    iget v1, v1, Landroidx/media2/widget/MediaControlView;->mSelectedAudioTrackIndex:I

    invoke-virtual {v0, v1}, Landroidx/media2/widget/MediaControlView$SubSettingsAdapter;->setCheckPosition(I)V

    .line 1323
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$30;->this$0:Landroidx/media2/widget/MediaControlView;

    const/4 v1, 0x0

    iput v1, v0, Landroidx/media2/widget/MediaControlView;->mSettingsMode:I

    goto :goto_0

    .line 1324
    :cond_0
    if-ne p3, v1, :cond_1

    .line 1325
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$30;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->mSubSettingsAdapter:Landroidx/media2/widget/MediaControlView$SubSettingsAdapter;

    iget-object v2, p0, Landroidx/media2/widget/MediaControlView$30;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v2, v2, Landroidx/media2/widget/MediaControlView;->mPlaybackSpeedTextList:Ljava/util/List;

    invoke-virtual {v0, v2}, Landroidx/media2/widget/MediaControlView$SubSettingsAdapter;->setTexts(Ljava/util/List;)V

    .line 1326
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$30;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->mSubSettingsAdapter:Landroidx/media2/widget/MediaControlView$SubSettingsAdapter;

    iget-object v2, p0, Landroidx/media2/widget/MediaControlView$30;->this$0:Landroidx/media2/widget/MediaControlView;

    iget v2, v2, Landroidx/media2/widget/MediaControlView;->mSelectedSpeedIndex:I

    invoke-virtual {v0, v2}, Landroidx/media2/widget/MediaControlView$SubSettingsAdapter;->setCheckPosition(I)V

    .line 1327
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$30;->this$0:Landroidx/media2/widget/MediaControlView;

    iput v1, v0, Landroidx/media2/widget/MediaControlView;->mSettingsMode:I

    goto :goto_0

    .line 1324
    :cond_1
    nop

    .line 1329
    :goto_0
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$30;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v1, v0, Landroidx/media2/widget/MediaControlView;->mSubSettingsAdapter:Landroidx/media2/widget/MediaControlView$SubSettingsAdapter;

    invoke-virtual {v0, v1}, Landroidx/media2/widget/MediaControlView;->displaySettingsWindow(Landroid/widget/BaseAdapter;)V

    .line 1330
    goto/16 :goto_4

    .line 1347
    :pswitch_1
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$30;->this$0:Landroidx/media2/widget/MediaControlView;

    iget v0, v0, Landroidx/media2/widget/MediaControlView;->mSelectedSubtitleTrackIndex:I

    add-int/2addr v0, v1

    if-eq p3, v0, :cond_3

    .line 1348
    if-lez p3, :cond_2

    .line 1349
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$30;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    iget-object v1, p0, Landroidx/media2/widget/MediaControlView$30;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v1, v1, Landroidx/media2/widget/MediaControlView;->mSubtitleTracks:Ljava/util/List;

    add-int/lit8 v2, p3, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/common/SessionPlayer$TrackInfo;

    invoke-virtual {v0, v1}, Landroidx/media2/widget/PlayerWrapper;->selectTrack(Landroidx/media2/common/SessionPlayer$TrackInfo;)V

    goto :goto_1

    .line 1351
    :cond_2
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$30;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    iget-object v1, p0, Landroidx/media2/widget/MediaControlView$30;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v1, v1, Landroidx/media2/widget/MediaControlView;->mSubtitleTracks:Ljava/util/List;

    iget-object v2, p0, Landroidx/media2/widget/MediaControlView$30;->this$0:Landroidx/media2/widget/MediaControlView;

    iget v2, v2, Landroidx/media2/widget/MediaControlView;->mSelectedSubtitleTrackIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/common/SessionPlayer$TrackInfo;

    invoke-virtual {v0, v1}, Landroidx/media2/widget/PlayerWrapper;->deselectTrack(Landroidx/media2/common/SessionPlayer$TrackInfo;)V

    goto :goto_1

    .line 1347
    :cond_3
    nop

    .line 1354
    :goto_1
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$30;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {v0}, Landroidx/media2/widget/MediaControlView;->dismissSettingsWindow()V

    goto :goto_4

    .line 1340
    :pswitch_2
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$30;->this$0:Landroidx/media2/widget/MediaControlView;

    iget v0, v0, Landroidx/media2/widget/MediaControlView;->mSelectedSpeedIndex:I

    if-eq p3, v0, :cond_4

    .line 1341
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$30;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->mPlaybackSpeedMultBy100List:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 1342
    .local v0, "speed":F
    iget-object v1, p0, Landroidx/media2/widget/MediaControlView$30;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v1, v1, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    invoke-virtual {v1, v0}, Landroidx/media2/widget/PlayerWrapper;->setPlaybackSpeed(F)V

    goto :goto_2

    .line 1340
    .end local v0    # "speed":F
    :cond_4
    nop

    .line 1344
    :goto_2
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$30;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {v0}, Landroidx/media2/widget/MediaControlView;->dismissSettingsWindow()V

    .line 1345
    goto :goto_4

    .line 1332
    :pswitch_3
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$30;->this$0:Landroidx/media2/widget/MediaControlView;

    iget v0, v0, Landroidx/media2/widget/MediaControlView;->mSelectedAudioTrackIndex:I

    if-eq p3, v0, :cond_6

    .line 1333
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$30;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->mAudioTracks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 1334
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$30;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->mPlayer:Landroidx/media2/widget/PlayerWrapper;

    iget-object v1, p0, Landroidx/media2/widget/MediaControlView$30;->this$0:Landroidx/media2/widget/MediaControlView;

    iget-object v1, v1, Landroidx/media2/widget/MediaControlView;->mAudioTracks:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/common/SessionPlayer$TrackInfo;

    invoke-virtual {v0, v1}, Landroidx/media2/widget/PlayerWrapper;->selectTrack(Landroidx/media2/common/SessionPlayer$TrackInfo;)V

    goto :goto_3

    .line 1333
    :cond_5
    goto :goto_3

    .line 1332
    :cond_6
    nop

    .line 1337
    :goto_3
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$30;->this$0:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {v0}, Landroidx/media2/widget/MediaControlView;->dismissSettingsWindow()V

    .line 1338
    nop

    .line 1357
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
