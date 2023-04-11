.class Landroidx/media2/widget/SubtitleController$1;
.super Ljava/lang/Object;
.source "SubtitleController.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/SubtitleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/widget/SubtitleController;


# direct methods
.method constructor <init>(Landroidx/media2/widget/SubtitleController;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/widget/SubtitleController;

    .line 57
    iput-object p1, p0, Landroidx/media2/widget/SubtitleController$1;->this$0:Landroidx/media2/widget/SubtitleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 60
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 74
    const/4 v0, 0x0

    return v0

    .line 71
    :pswitch_0
    iget-object v0, p0, Landroidx/media2/widget/SubtitleController$1;->this$0:Landroidx/media2/widget/SubtitleController;

    invoke-virtual {v0}, Landroidx/media2/widget/SubtitleController;->doSelectDefaultTrack()V

    .line 72
    return v1

    .line 68
    :pswitch_1
    iget-object v0, p0, Landroidx/media2/widget/SubtitleController$1;->this$0:Landroidx/media2/widget/SubtitleController;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroidx/media2/widget/SubtitleTrack;

    invoke-virtual {v0, v2}, Landroidx/media2/widget/SubtitleController;->doSelectTrack(Landroidx/media2/widget/SubtitleTrack;)V

    .line 69
    return v1

    .line 65
    :pswitch_2
    iget-object v0, p0, Landroidx/media2/widget/SubtitleController$1;->this$0:Landroidx/media2/widget/SubtitleController;

    invoke-virtual {v0}, Landroidx/media2/widget/SubtitleController;->doHide()V

    .line 66
    return v1

    .line 62
    :pswitch_3
    iget-object v0, p0, Landroidx/media2/widget/SubtitleController$1;->this$0:Landroidx/media2/widget/SubtitleController;

    invoke-virtual {v0}, Landroidx/media2/widget/SubtitleController;->doShow()V

    .line 63
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
