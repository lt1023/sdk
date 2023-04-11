.class Landroidx/media2/session/MediaLibrarySessionImplBase$2;
.super Ljava/lang/Object;
.source "MediaLibrarySessionImplBase.java"

# interfaces
.implements Landroidx/media2/session/MediaSessionImplBase$RemoteControllerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/MediaLibrarySessionImplBase;->notifyChildrenChanged(Landroidx/media2/session/MediaSession$ControllerInfo;Ljava/lang/String;ILandroidx/media2/session/MediaLibraryService$LibraryParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/session/MediaLibrarySessionImplBase;

.field final synthetic val$controller:Landroidx/media2/session/MediaSession$ControllerInfo;

.field final synthetic val$itemCount:I

.field final synthetic val$params:Landroidx/media2/session/MediaLibraryService$LibraryParams;

.field final synthetic val$parentId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaLibrarySessionImplBase;Ljava/lang/String;Landroidx/media2/session/MediaSession$ControllerInfo;ILandroidx/media2/session/MediaLibraryService$LibraryParams;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/session/MediaLibrarySessionImplBase;

    .line 117
    iput-object p1, p0, Landroidx/media2/session/MediaLibrarySessionImplBase$2;->this$0:Landroidx/media2/session/MediaLibrarySessionImplBase;

    iput-object p2, p0, Landroidx/media2/session/MediaLibrarySessionImplBase$2;->val$parentId:Ljava/lang/String;

    iput-object p3, p0, Landroidx/media2/session/MediaLibrarySessionImplBase$2;->val$controller:Landroidx/media2/session/MediaSession$ControllerInfo;

    iput p4, p0, Landroidx/media2/session/MediaLibrarySessionImplBase$2;->val$itemCount:I

    iput-object p5, p0, Landroidx/media2/session/MediaLibrarySessionImplBase$2;->val$params:Landroidx/media2/session/MediaLibraryService$LibraryParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroidx/media2/session/MediaSession$ControllerCb;I)V
    .locals 3
    .param p1, "callback"    # Landroidx/media2/session/MediaSession$ControllerCb;
    .param p2, "seq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Landroidx/media2/session/MediaLibrarySessionImplBase$2;->this$0:Landroidx/media2/session/MediaLibrarySessionImplBase;

    iget-object v1, p0, Landroidx/media2/session/MediaLibrarySessionImplBase$2;->val$parentId:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroidx/media2/session/MediaLibrarySessionImplBase;->isSubscribed(Landroidx/media2/session/MediaSession$ControllerCb;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    sget-boolean v0, Landroidx/media2/session/MediaSessionImplBase;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 122
    const-string v0, "MSImplBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping notifyChildrenChanged() to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/media2/session/MediaLibrarySessionImplBase$2;->val$controller:Landroidx/media2/session/MediaSession$ControllerInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " because it hasn\'t subscribed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Landroidx/media2/session/MediaLibrarySessionImplBase$2;->this$0:Landroidx/media2/session/MediaLibrarySessionImplBase;

    invoke-virtual {v0}, Landroidx/media2/session/MediaLibrarySessionImplBase;->dumpSubscription()V

    goto :goto_0

    .line 121
    :cond_0
    nop

    .line 126
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-object v0, p0, Landroidx/media2/session/MediaLibrarySessionImplBase$2;->val$parentId:Ljava/lang/String;

    iget v1, p0, Landroidx/media2/session/MediaLibrarySessionImplBase$2;->val$itemCount:I

    iget-object v2, p0, Landroidx/media2/session/MediaLibrarySessionImplBase$2;->val$params:Landroidx/media2/session/MediaLibraryService$LibraryParams;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroidx/media2/session/MediaSession$ControllerCb;->onChildrenChanged(ILjava/lang/String;ILandroidx/media2/session/MediaLibraryService$LibraryParams;)V

    .line 129
    return-void
.end method
