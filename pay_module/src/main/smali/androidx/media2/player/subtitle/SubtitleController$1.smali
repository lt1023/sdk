.class Landroidx/media2/player/subtitle/SubtitleController$1;
.super Ljava/lang/Object;
.source "SubtitleController.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/subtitle/SubtitleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/player/subtitle/SubtitleController;


# direct methods
.method constructor <init>(Landroidx/media2/player/subtitle/SubtitleController;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/player/subtitle/SubtitleController;

    .line 61
    iput-object p1, p0, Landroidx/media2/player/subtitle/SubtitleController$1;->this$0:Landroidx/media2/player/subtitle/SubtitleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 64
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 78
    const/4 v0, 0x0

    return v0

    .line 75
    :pswitch_0
    iget-object v0, p0, Landroidx/media2/player/subtitle/SubtitleController$1;->this$0:Landroidx/media2/player/subtitle/SubtitleController;

    invoke-virtual {v0}, Landroidx/media2/player/subtitle/SubtitleController;->doSelectDefaultTrack()V

    .line 76
    return v1

    .line 72
    :pswitch_1
    iget-object v0, p0, Landroidx/media2/player/subtitle/SubtitleController$1;->this$0:Landroidx/media2/player/subtitle/SubtitleController;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroidx/media2/player/subtitle/SubtitleTrack;

    invoke-virtual {v0, v2}, Landroidx/media2/player/subtitle/SubtitleController;->doSelectTrack(Landroidx/media2/player/subtitle/SubtitleTrack;)V

    .line 73
    return v1

    .line 69
    :pswitch_2
    iget-object v0, p0, Landroidx/media2/player/subtitle/SubtitleController$1;->this$0:Landroidx/media2/player/subtitle/SubtitleController;

    invoke-virtual {v0}, Landroidx/media2/player/subtitle/SubtitleController;->doHide()V

    .line 70
    return v1

    .line 66
    :pswitch_3
    iget-object v0, p0, Landroidx/media2/player/subtitle/SubtitleController$1;->this$0:Landroidx/media2/player/subtitle/SubtitleController;

    invoke-virtual {v0}, Landroidx/media2/player/subtitle/SubtitleController;->doShow()V

    .line 67
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
