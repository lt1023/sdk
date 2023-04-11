.class Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;
.super Ljava/lang/Object;
.source "Cea708CaptionRenderer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CCHandler"
.end annotation


# static fields
.field private static final CAPTION_ALL_WINDOWS_BITMAP:I = 0xff

.field private static final CAPTION_CLEAR_INTERVAL_MS:J = 0xea60L

.field private static final CAPTION_WINDOWS_MAX:I = 0x8

.field private static final DEBUG:Z = false

.field private static final MSG_CAPTION_CLEAR:I = 0x2

.field private static final MSG_DELAY_CANCEL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CCHandler"

.field private static final TENTHS_OF_SECOND_IN_MILLIS:I = 0x64


# instance fields
.field private final mCCLayout:Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;

.field private final mCaptionWindowLayouts:[Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;

.field private mCurrentWindowLayout:Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;

.field private final mHandler:Landroid/os/Handler;

.field private mIsDelayed:Z

.field private final mPendingCaptionEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media2/player/subtitle/Cea708CCParser$CaptionEvent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget;


# direct methods
.method constructor <init>(Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget;Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;)V
    .locals 1
    .param p1, "this$1"    # Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget;
    .param p2, "ccLayout"    # Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;

    .line 486
    iput-object p1, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->this$1:Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mIsDelayed:Z

    .line 480
    const/16 v0, 0x8

    new-array v0, v0, [Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;

    iput-object v0, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mCaptionWindowLayouts:[Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;

    .line 482
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mPendingCaptionEvents:Ljava/util/ArrayList;

    .line 487
    iput-object p2, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mCCLayout:Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;

    .line 488
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mHandler:Landroid/os/Handler;

    .line 489
    return-void
.end method

.method private clearWindows(I)V
    .locals 2
    .param p1, "windowBitmap"    # I

    .line 593
    if-nez p1, :cond_0

    .line 594
    return-void

    .line 596
    :cond_0
    invoke-direct {p0, p1}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->getWindowsFromBitmap(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;

    .line 597
    .local v1, "windowLayout":Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;
    invoke-virtual {v1}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->clear()V

    .line 598
    .end local v1    # "windowLayout":Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;
    goto :goto_0

    .line 599
    :cond_1
    return-void
.end method

.method private defineWindow(Landroidx/media2/player/subtitle/Cea708CCParser$CaptionWindow;)V
    .locals 5
    .param p1, "window"    # Landroidx/media2/player/subtitle/Cea708CCParser$CaptionWindow;

    .line 663
    if-nez p1, :cond_0

    .line 664
    return-void

    .line 666
    :cond_0
    iget v0, p1, Landroidx/media2/player/subtitle/Cea708CCParser$CaptionWindow;->id:I

    .line 667
    .local v0, "windowId":I
    if-ltz v0, :cond_3

    iget-object v1, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mCaptionWindowLayouts:[Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;

    array-length v2, v1

    if-lt v0, v2, :cond_1

    goto :goto_1

    .line 670
    :cond_1
    aget-object v1, v1, v0

    .line 671
    .local v1, "windowLayout":Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;
    if-nez v1, :cond_2

    .line 672
    new-instance v2, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;

    iget-object v3, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->this$1:Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget;

    iget-object v4, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mCCLayout:Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;

    invoke-virtual {v4}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;-><init>(Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget;Landroid/content/Context;)V

    move-object v1, v2

    goto :goto_0

    .line 671
    :cond_2
    nop

    .line 674
    :goto_0
    iget-object v2, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mCCLayout:Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;

    invoke-virtual {v1, v2, p1}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->initWindow(Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;Landroidx/media2/player/subtitle/Cea708CCParser$CaptionWindow;)V

    .line 675
    iget-object v2, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mCaptionWindowLayouts:[Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;

    aput-object v1, v2, v0

    iput-object v1, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mCurrentWindowLayout:Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;

    .line 676
    return-void

    .line 667
    .end local v1    # "windowLayout":Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;
    :cond_3
    :goto_1
    nop

    .line 668
    return-void
.end method

.method private delay(I)V
    .locals 4
    .param p1, "tenthsOfSeconds"    # I

    .line 680
    if-ltz p1, :cond_1

    const/16 v0, 0xff

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 683
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mIsDelayed:Z

    .line 684
    iget-object v1, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    mul-int/lit8 v2, p1, 0x64

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 686
    return-void

    .line 680
    :cond_1
    :goto_0
    nop

    .line 681
    return-void
.end method

.method private delayCancel()V
    .locals 1

    .line 689
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mIsDelayed:Z

    .line 690
    invoke-direct {p0}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->processPendingBuffer()V

    .line 691
    return-void
.end method

.method private deleteWindows(I)V
    .locals 5
    .param p1, "windowBitmap"    # I

    .line 633
    if-nez p1, :cond_0

    .line 634
    return-void

    .line 636
    :cond_0
    invoke-direct {p0, p1}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->getWindowsFromBitmap(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;

    .line 637
    .local v1, "windowLayout":Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;
    invoke-virtual {v1}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->removeFromCaptionView()V

    .line 638
    iget-object v2, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mCaptionWindowLayouts:[Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;

    invoke-virtual {v1}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->getCaptionWindowId()I

    move-result v3

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 639
    .end local v1    # "windowLayout":Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;
    goto :goto_0

    .line 640
    :cond_1
    return-void
.end method

.method private displayWindows(I)V
    .locals 2
    .param p1, "windowBitmap"    # I

    .line 602
    if-nez p1, :cond_0

    .line 603
    return-void

    .line 605
    :cond_0
    invoke-direct {p0, p1}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->getWindowsFromBitmap(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;

    .line 606
    .local v1, "windowLayout":Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;
    invoke-virtual {v1}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->show()V

    .line 607
    .end local v1    # "windowLayout":Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;
    goto :goto_0

    .line 608
    :cond_1
    return-void
.end method

.method private getWindowsFromBitmap(I)Ljava/util/ArrayList;
    .locals 3
    .param p1, "windowBitmap"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;",
            ">;"
        }
    .end annotation

    .line 580
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 581
    .local v0, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_2

    .line 582
    const/4 v2, 0x1

    shl-int/2addr v2, v1

    and-int/2addr v2, p1

    if-eqz v2, :cond_1

    .line 583
    iget-object v2, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mCaptionWindowLayouts:[Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;

    aget-object v2, v2, v1

    .line 584
    .local v2, "windowLayout":Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;
    if-eqz v2, :cond_0

    .line 585
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 584
    :cond_0
    goto :goto_1

    .line 582
    .end local v2    # "windowLayout":Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;
    :cond_1
    nop

    .line 581
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 589
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method private hideWindows(I)V
    .locals 2
    .param p1, "windowBitmap"    # I

    .line 611
    if-nez p1, :cond_0

    .line 612
    return-void

    .line 614
    :cond_0
    invoke-direct {p0, p1}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->getWindowsFromBitmap(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;

    .line 615
    .local v1, "windowLayout":Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;
    invoke-virtual {v1}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->hide()V

    .line 616
    .end local v1    # "windowLayout":Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;
    goto :goto_0

    .line 617
    :cond_1
    return-void
.end method

.method private processPendingBuffer()V
    .locals 2

    .line 694
    iget-object v0, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mPendingCaptionEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/player/subtitle/Cea708CCParser$CaptionEvent;

    .line 695
    .local v1, "event":Landroidx/media2/player/subtitle/Cea708CCParser$CaptionEvent;
    invoke-virtual {p0, v1}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->processCaptionEvent(Landroidx/media2/player/subtitle/Cea708CCParser$CaptionEvent;)V

    .line 696
    .end local v1    # "event":Landroidx/media2/player/subtitle/Cea708CCParser$CaptionEvent;
    goto :goto_0

    .line 697
    :cond_0
    iget-object v0, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mPendingCaptionEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 698
    return-void
.end method

.method private sendBufferToCurrentWindow(Ljava/lang/String;)V
    .locals 4
    .param p1, "buffer"    # Ljava/lang/String;

    .line 708
    iget-object v0, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mCurrentWindowLayout:Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;

    if-eqz v0, :cond_0

    .line 709
    invoke-virtual {v0, p1}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->sendBuffer(Ljava/lang/String;)V

    .line 710
    iget-object v0, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 711
    iget-object v0, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 708
    :cond_0
    nop

    .line 714
    :goto_0
    return-void
.end method

.method private sendControlToCurrentWindow(C)V
    .locals 1
    .param p1, "control"    # C

    .line 702
    iget-object v0, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mCurrentWindowLayout:Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;

    if-eqz v0, :cond_0

    .line 703
    invoke-virtual {v0, p1}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->sendControl(C)V

    goto :goto_0

    .line 702
    :cond_0
    nop

    .line 705
    :goto_0
    return-void
.end method

.method private setCurrentWindowLayout(I)V
    .locals 2
    .param p1, "windowId"    # I

    .line 563
    if-ltz p1, :cond_2

    iget-object v0, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mCaptionWindowLayouts:[Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 566
    :cond_0
    aget-object v0, v0, p1

    .line 567
    .local v0, "windowLayout":Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;
    if-nez v0, :cond_1

    .line 568
    return-void

    .line 573
    :cond_1
    iput-object v0, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mCurrentWindowLayout:Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;

    .line 574
    return-void

    .line 563
    .end local v0    # "windowLayout":Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;
    :cond_2
    :goto_0
    nop

    .line 564
    return-void
.end method

.method private setPenAttr(Landroidx/media2/player/subtitle/Cea708CCParser$CaptionPenAttr;)V
    .locals 1
    .param p1, "attr"    # Landroidx/media2/player/subtitle/Cea708CCParser$CaptionPenAttr;

    .line 718
    iget-object v0, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mCurrentWindowLayout:Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;

    if-eqz v0, :cond_0

    .line 719
    invoke-virtual {v0, p1}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->setPenAttr(Landroidx/media2/player/subtitle/Cea708CCParser$CaptionPenAttr;)V

    goto :goto_0

    .line 718
    :cond_0
    nop

    .line 721
    :goto_0
    return-void
.end method

.method private setPenColor(Landroidx/media2/player/subtitle/Cea708CCParser$CaptionPenColor;)V
    .locals 1
    .param p1, "color"    # Landroidx/media2/player/subtitle/Cea708CCParser$CaptionPenColor;

    .line 724
    iget-object v0, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mCurrentWindowLayout:Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;

    if-eqz v0, :cond_0

    .line 725
    invoke-virtual {v0, p1}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->setPenColor(Landroidx/media2/player/subtitle/Cea708CCParser$CaptionPenColor;)V

    goto :goto_0

    .line 724
    :cond_0
    nop

    .line 727
    :goto_0
    return-void
.end method

.method private setPenLocation(Landroidx/media2/player/subtitle/Cea708CCParser$CaptionPenLocation;)V
    .locals 3
    .param p1, "location"    # Landroidx/media2/player/subtitle/Cea708CCParser$CaptionPenLocation;

    .line 730
    iget-object v0, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mCurrentWindowLayout:Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;

    if-eqz v0, :cond_0

    .line 731
    iget v1, p1, Landroidx/media2/player/subtitle/Cea708CCParser$CaptionPenLocation;->row:I

    iget v2, p1, Landroidx/media2/player/subtitle/Cea708CCParser$CaptionPenLocation;->column:I

    invoke-virtual {v0, v1, v2}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->setPenLocation(II)V

    goto :goto_0

    .line 730
    :cond_0
    nop

    .line 733
    :goto_0
    return-void
.end method

.method private setWindowAttr(Landroidx/media2/player/subtitle/Cea708CCParser$CaptionWindowAttr;)V
    .locals 1
    .param p1, "windowAttr"    # Landroidx/media2/player/subtitle/Cea708CCParser$CaptionWindowAttr;

    .line 657
    iget-object v0, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mCurrentWindowLayout:Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;

    if-eqz v0, :cond_0

    .line 658
    invoke-virtual {v0, p1}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->setWindowAttr(Landroidx/media2/player/subtitle/Cea708CCParser$CaptionWindowAttr;)V

    goto :goto_0

    .line 657
    :cond_0
    nop

    .line 660
    :goto_0
    return-void
.end method

.method private toggleWindows(I)V
    .locals 3
    .param p1, "windowBitmap"    # I

    .line 620
    if-nez p1, :cond_0

    .line 621
    return-void

    .line 623
    :cond_0
    invoke-direct {p0, p1}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->getWindowsFromBitmap(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;

    .line 624
    .local v1, "windowLayout":Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;
    invoke-virtual {v1}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->isShown()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 625
    invoke-virtual {v1}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->hide()V

    goto :goto_1

    .line 627
    :cond_1
    invoke-virtual {v1}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->show()V

    .line 629
    .end local v1    # "windowLayout":Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;
    :goto_1
    goto :goto_0

    .line 630
    :cond_2
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 493
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 501
    const/4 v0, 0x0

    return v0

    .line 498
    :pswitch_0
    const/16 v0, 0xff

    invoke-direct {p0, v0}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->clearWindows(I)V

    .line 499
    return v1

    .line 495
    :pswitch_1
    invoke-direct {p0}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->delayCancel()V

    .line 496
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public processCaptionEvent(Landroidx/media2/player/subtitle/Cea708CCParser$CaptionEvent;)V
    .locals 1
    .param p1, "event"    # Landroidx/media2/player/subtitle/Cea708CCParser$CaptionEvent;

    .line 505
    iget-boolean v0, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mIsDelayed:Z

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mPendingCaptionEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    return-void

    .line 509
    :cond_0
    iget v0, p1, Landroidx/media2/player/subtitle/Cea708CCParser$CaptionEvent;->type:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 556
    :pswitch_0
    iget-object v0, p1, Landroidx/media2/player/subtitle/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    check-cast v0, Landroidx/media2/player/subtitle/Cea708CCParser$CaptionWindow;

    invoke-direct {p0, v0}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->defineWindow(Landroidx/media2/player/subtitle/Cea708CCParser$CaptionWindow;)V

    goto/16 :goto_0

    .line 553
    :pswitch_1
    iget-object v0, p1, Landroidx/media2/player/subtitle/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    check-cast v0, Landroidx/media2/player/subtitle/Cea708CCParser$CaptionWindowAttr;

    invoke-direct {p0, v0}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->setWindowAttr(Landroidx/media2/player/subtitle/Cea708CCParser$CaptionWindowAttr;)V

    .line 554
    goto/16 :goto_0

    .line 550
    :pswitch_2
    iget-object v0, p1, Landroidx/media2/player/subtitle/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    check-cast v0, Landroidx/media2/player/subtitle/Cea708CCParser$CaptionPenLocation;

    invoke-direct {p0, v0}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->setPenLocation(Landroidx/media2/player/subtitle/Cea708CCParser$CaptionPenLocation;)V

    .line 551
    goto/16 :goto_0

    .line 547
    :pswitch_3
    iget-object v0, p1, Landroidx/media2/player/subtitle/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    check-cast v0, Landroidx/media2/player/subtitle/Cea708CCParser$CaptionPenColor;

    invoke-direct {p0, v0}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->setPenColor(Landroidx/media2/player/subtitle/Cea708CCParser$CaptionPenColor;)V

    .line 548
    goto/16 :goto_0

    .line 544
    :pswitch_4
    iget-object v0, p1, Landroidx/media2/player/subtitle/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    check-cast v0, Landroidx/media2/player/subtitle/Cea708CCParser$CaptionPenAttr;

    invoke-direct {p0, v0}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->setPenAttr(Landroidx/media2/player/subtitle/Cea708CCParser$CaptionPenAttr;)V

    .line 545
    goto/16 :goto_0

    .line 541
    :pswitch_5
    invoke-virtual {p0}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->reset()V

    .line 542
    goto/16 :goto_0

    .line 538
    :pswitch_6
    invoke-direct {p0}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->delayCancel()V

    .line 539
    goto :goto_0

    .line 535
    :pswitch_7
    iget-object v0, p1, Landroidx/media2/player/subtitle/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->delay(I)V

    .line 536
    goto :goto_0

    .line 532
    :pswitch_8
    iget-object v0, p1, Landroidx/media2/player/subtitle/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->deleteWindows(I)V

    .line 533
    goto :goto_0

    .line 529
    :pswitch_9
    iget-object v0, p1, Landroidx/media2/player/subtitle/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->toggleWindows(I)V

    .line 530
    goto :goto_0

    .line 526
    :pswitch_a
    iget-object v0, p1, Landroidx/media2/player/subtitle/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->hideWindows(I)V

    .line 527
    goto :goto_0

    .line 523
    :pswitch_b
    iget-object v0, p1, Landroidx/media2/player/subtitle/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->displayWindows(I)V

    .line 524
    goto :goto_0

    .line 520
    :pswitch_c
    iget-object v0, p1, Landroidx/media2/player/subtitle/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->clearWindows(I)V

    .line 521
    goto :goto_0

    .line 517
    :pswitch_d
    iget-object v0, p1, Landroidx/media2/player/subtitle/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->setCurrentWindowLayout(I)V

    .line 518
    goto :goto_0

    .line 514
    :pswitch_e
    iget-object v0, p1, Landroidx/media2/player/subtitle/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-direct {p0, v0}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->sendControlToCurrentWindow(C)V

    .line 515
    goto :goto_0

    .line 511
    :pswitch_f
    iget-object v0, p1, Landroidx/media2/player/subtitle/Cea708CCParser$CaptionEvent;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->sendBufferToCurrentWindow(Ljava/lang/String;)V

    .line 512
    nop

    .line 559
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public reset()V
    .locals 4

    .line 643
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mCurrentWindowLayout:Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;

    .line 644
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mIsDelayed:Z

    .line 645
    iget-object v1, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mPendingCaptionEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 646
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    .line 647
    iget-object v2, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mCaptionWindowLayouts:[Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;

    aget-object v3, v2, v1

    if-eqz v3, :cond_0

    .line 648
    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;->removeFromCaptionView()V

    goto :goto_1

    .line 647
    :cond_0
    nop

    .line 650
    :goto_1
    iget-object v2, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mCaptionWindowLayouts:[Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout;

    aput-object v0, v2, v1

    .line 646
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 652
    .end local v1    # "i":I
    :cond_1
    iget-object v0, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mCCLayout:Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCLayout;->setVisibility(I)V

    .line 653
    iget-object v0, p0, Landroidx/media2/player/subtitle/Cea708CaptionRenderer$Cea708CCWidget$CCHandler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 654
    return-void
.end method
