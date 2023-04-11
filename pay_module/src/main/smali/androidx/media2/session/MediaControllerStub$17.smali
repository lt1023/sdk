.class Landroidx/media2/session/MediaControllerStub$17;
.super Ljava/lang/Object;
.source "MediaControllerStub.java"

# interfaces
.implements Landroidx/media2/session/MediaControllerStub$ControllerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/MediaControllerStub;->onAllowedCommandsChanged(ILandroidx/versionedparcelable/ParcelImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/session/MediaControllerStub;

.field final synthetic val$commands:Landroidx/versionedparcelable/ParcelImpl;


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaControllerStub;Landroidx/versionedparcelable/ParcelImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/session/MediaControllerStub;

    .line 373
    iput-object p1, p0, Landroidx/media2/session/MediaControllerStub$17;->this$0:Landroidx/media2/session/MediaControllerStub;

    iput-object p2, p0, Landroidx/media2/session/MediaControllerStub$17;->val$commands:Landroidx/versionedparcelable/ParcelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroidx/media2/session/MediaControllerImplBase;)V
    .locals 3
    .param p1, "controller"    # Landroidx/media2/session/MediaControllerImplBase;

    .line 376
    iget-object v0, p0, Landroidx/media2/session/MediaControllerStub$17;->val$commands:Landroidx/versionedparcelable/ParcelImpl;

    invoke-static {v0}, Landroidx/media2/common/MediaParcelUtils;->fromParcelable(Landroidx/versionedparcelable/ParcelImpl;)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v0

    check-cast v0, Landroidx/media2/session/SessionCommandGroup;

    .line 377
    .local v0, "commandGroup":Landroidx/media2/session/SessionCommandGroup;
    if-nez v0, :cond_0

    .line 378
    const-string v1, "MediaControllerStub"

    const-string v2, "onAllowedCommandsChanged(): Ignoring null commands"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    return-void

    .line 381
    :cond_0
    invoke-virtual {p1, v0}, Landroidx/media2/session/MediaControllerImplBase;->onAllowedCommandsChanged(Landroidx/media2/session/SessionCommandGroup;)V

    .line 382
    return-void
.end method
