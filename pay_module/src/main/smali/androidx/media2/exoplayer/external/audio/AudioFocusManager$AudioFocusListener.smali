.class Landroidx/media2/exoplayer/external/audio/AudioFocusManager$AudioFocusListener;
.super Ljava/lang/Object;
.source "AudioFocusManager.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/audio/AudioFocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioFocusListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/exoplayer/external/audio/AudioFocusManager;


# direct methods
.method private constructor <init>(Landroidx/media2/exoplayer/external/audio/AudioFocusManager;)V
    .locals 0

    .line 394
    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager$AudioFocusListener;->this$0:Landroidx/media2/exoplayer/external/audio/AudioFocusManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media2/exoplayer/external/audio/AudioFocusManager;Landroidx/media2/exoplayer/external/audio/AudioFocusManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media2/exoplayer/external/audio/AudioFocusManager;
    .param p2, "x1"    # Landroidx/media2/exoplayer/external/audio/AudioFocusManager$1;

    .line 394
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager$AudioFocusListener;-><init>(Landroidx/media2/exoplayer/external/audio/AudioFocusManager;)V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 6
    .param p1, "focusChange"    # I

    .line 398
    const/4 v0, 0x3

    const/4 v1, -0x1

    const/16 v2, 0x26

    const/4 v3, 0x1

    if-eq p1, v3, :cond_1

    const/4 v4, 0x2

    packed-switch p1, :pswitch_data_0

    .line 416
    const-string v0, "AudioFocusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown focus change type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    return-void

    .line 400
    :pswitch_0
    iget-object v4, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager$AudioFocusListener;->this$0:Landroidx/media2/exoplayer/external/audio/AudioFocusManager;

    invoke-static {v4, v1}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->access$102(Landroidx/media2/exoplayer/external/audio/AudioFocusManager;I)I

    .line 401
    goto :goto_0

    .line 403
    :pswitch_1
    iget-object v5, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager$AudioFocusListener;->this$0:Landroidx/media2/exoplayer/external/audio/AudioFocusManager;

    invoke-static {v5, v4}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->access$102(Landroidx/media2/exoplayer/external/audio/AudioFocusManager;I)I

    .line 404
    goto :goto_0

    .line 406
    :pswitch_2
    iget-object v5, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager$AudioFocusListener;->this$0:Landroidx/media2/exoplayer/external/audio/AudioFocusManager;

    invoke-static {v5}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->access$200(Landroidx/media2/exoplayer/external/audio/AudioFocusManager;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 407
    iget-object v5, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager$AudioFocusListener;->this$0:Landroidx/media2/exoplayer/external/audio/AudioFocusManager;

    invoke-static {v5, v4}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->access$102(Landroidx/media2/exoplayer/external/audio/AudioFocusManager;I)I

    goto :goto_0

    .line 409
    :cond_0
    iget-object v4, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager$AudioFocusListener;->this$0:Landroidx/media2/exoplayer/external/audio/AudioFocusManager;

    invoke-static {v4, v0}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->access$102(Landroidx/media2/exoplayer/external/audio/AudioFocusManager;I)I

    .line 411
    goto :goto_0

    .line 413
    :cond_1
    iget-object v4, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager$AudioFocusListener;->this$0:Landroidx/media2/exoplayer/external/audio/AudioFocusManager;

    invoke-static {v4, v3}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->access$102(Landroidx/media2/exoplayer/external/audio/AudioFocusManager;I)I

    .line 414
    nop

    .line 422
    :goto_0
    iget-object v4, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager$AudioFocusListener;->this$0:Landroidx/media2/exoplayer/external/audio/AudioFocusManager;

    invoke-static {v4}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->access$100(Landroidx/media2/exoplayer/external/audio/AudioFocusManager;)I

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 440
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager$AudioFocusListener;->this$0:Landroidx/media2/exoplayer/external/audio/AudioFocusManager;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->access$100(Landroidx/media2/exoplayer/external/audio/AudioFocusManager;)I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown audio focus state: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :pswitch_3
    goto :goto_1

    .line 431
    :pswitch_4
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager$AudioFocusListener;->this$0:Landroidx/media2/exoplayer/external/audio/AudioFocusManager;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->access$300(Landroidx/media2/exoplayer/external/audio/AudioFocusManager;)Landroidx/media2/exoplayer/external/audio/AudioFocusManager$PlayerControl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager$PlayerControl;->executePlayerCommand(I)V

    .line 432
    goto :goto_1

    .line 437
    :pswitch_5
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager$AudioFocusListener;->this$0:Landroidx/media2/exoplayer/external/audio/AudioFocusManager;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->access$300(Landroidx/media2/exoplayer/external/audio/AudioFocusManager;)Landroidx/media2/exoplayer/external/audio/AudioFocusManager$PlayerControl;

    move-result-object v1

    invoke-interface {v1, v3}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager$PlayerControl;->executePlayerCommand(I)V

    .line 438
    goto :goto_1

    .line 425
    :pswitch_6
    goto :goto_1

    .line 427
    :pswitch_7
    iget-object v2, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager$AudioFocusListener;->this$0:Landroidx/media2/exoplayer/external/audio/AudioFocusManager;

    invoke-static {v2}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->access$300(Landroidx/media2/exoplayer/external/audio/AudioFocusManager;)Landroidx/media2/exoplayer/external/audio/AudioFocusManager$PlayerControl;

    move-result-object v2

    invoke-interface {v2, v1}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager$PlayerControl;->executePlayerCommand(I)V

    .line 428
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager$AudioFocusListener;->this$0:Landroidx/media2/exoplayer/external/audio/AudioFocusManager;

    invoke-static {v1, v3}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->access$400(Landroidx/media2/exoplayer/external/audio/AudioFocusManager;Z)V

    .line 429
    nop

    .line 444
    :goto_1
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager$AudioFocusListener;->this$0:Landroidx/media2/exoplayer/external/audio/AudioFocusManager;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->access$100(Landroidx/media2/exoplayer/external/audio/AudioFocusManager;)I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 445
    const v0, 0x3e4ccccd    # 0.2f

    goto :goto_2

    .line 446
    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_2
    nop

    .line 447
    .local v0, "volumeMultiplier":F
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager$AudioFocusListener;->this$0:Landroidx/media2/exoplayer/external/audio/AudioFocusManager;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->access$500(Landroidx/media2/exoplayer/external/audio/AudioFocusManager;)F

    move-result v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_3

    .line 448
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager$AudioFocusListener;->this$0:Landroidx/media2/exoplayer/external/audio/AudioFocusManager;

    invoke-static {v1, v0}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->access$502(Landroidx/media2/exoplayer/external/audio/AudioFocusManager;F)F

    .line 449
    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/AudioFocusManager$AudioFocusListener;->this$0:Landroidx/media2/exoplayer/external/audio/AudioFocusManager;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager;->access$300(Landroidx/media2/exoplayer/external/audio/AudioFocusManager;)Landroidx/media2/exoplayer/external/audio/AudioFocusManager$PlayerControl;

    move-result-object v1

    invoke-interface {v1, v0}, Landroidx/media2/exoplayer/external/audio/AudioFocusManager$PlayerControl;->setVolumeMultiplier(F)V

    goto :goto_3

    .line 447
    :cond_3
    nop

    .line 451
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
