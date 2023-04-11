.class Landroidx/media2/session/MediaSessionStub$1;
.super Ljava/lang/Object;
.source "MediaSessionStub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/session/MediaSessionStub;->dispatchSessionTaskInternal(Landroidx/media2/session/IMediaController;ILandroidx/media2/session/SessionCommand;ILandroidx/media2/session/MediaSessionStub$SessionTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media2/session/MediaSessionStub;

.field final synthetic val$commandCode:I

.field final synthetic val$controller:Landroidx/media2/session/MediaSession$ControllerInfo;

.field final synthetic val$seq:I

.field final synthetic val$sessionCommand:Landroidx/media2/session/SessionCommand;

.field final synthetic val$task:Landroidx/media2/session/MediaSessionStub$SessionTask;


# direct methods
.method constructor <init>(Landroidx/media2/session/MediaSessionStub;Landroidx/media2/session/MediaSession$ControllerInfo;Landroidx/media2/session/SessionCommand;IILandroidx/media2/session/MediaSessionStub$SessionTask;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media2/session/MediaSessionStub;

    .line 179
    iput-object p1, p0, Landroidx/media2/session/MediaSessionStub$1;->this$0:Landroidx/media2/session/MediaSessionStub;

    iput-object p2, p0, Landroidx/media2/session/MediaSessionStub$1;->val$controller:Landroidx/media2/session/MediaSession$ControllerInfo;

    iput-object p3, p0, Landroidx/media2/session/MediaSessionStub$1;->val$sessionCommand:Landroidx/media2/session/SessionCommand;

    iput p4, p0, Landroidx/media2/session/MediaSessionStub$1;->val$commandCode:I

    iput p5, p0, Landroidx/media2/session/MediaSessionStub$1;->val$seq:I

    iput-object p6, p0, Landroidx/media2/session/MediaSessionStub$1;->val$task:Landroidx/media2/session/MediaSessionStub$SessionTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 182
    iget-object v0, p0, Landroidx/media2/session/MediaSessionStub$1;->this$0:Landroidx/media2/session/MediaSessionStub;

    iget-object v0, v0, Landroidx/media2/session/MediaSessionStub;->mConnectedControllersManager:Landroidx/media2/session/ConnectedControllersManager;

    iget-object v1, p0, Landroidx/media2/session/MediaSessionStub$1;->val$controller:Landroidx/media2/session/MediaSession$ControllerInfo;

    invoke-virtual {v0, v1}, Landroidx/media2/session/ConnectedControllersManager;->isConnected(Landroidx/media2/session/MediaSession$ControllerInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Landroidx/media2/session/MediaSessionStub$1;->val$sessionCommand:Landroidx/media2/session/SessionCommand;

    if-eqz v0, :cond_3

    .line 187
    iget-object v0, p0, Landroidx/media2/session/MediaSessionStub$1;->this$0:Landroidx/media2/session/MediaSessionStub;

    iget-object v0, v0, Landroidx/media2/session/MediaSessionStub;->mConnectedControllersManager:Landroidx/media2/session/ConnectedControllersManager;

    iget-object v1, p0, Landroidx/media2/session/MediaSessionStub$1;->val$controller:Landroidx/media2/session/MediaSession$ControllerInfo;

    iget-object v2, p0, Landroidx/media2/session/MediaSessionStub$1;->val$sessionCommand:Landroidx/media2/session/SessionCommand;

    invoke-virtual {v0, v1, v2}, Landroidx/media2/session/ConnectedControllersManager;->isAllowedCommand(Landroidx/media2/session/MediaSession$ControllerInfo;Landroidx/media2/session/SessionCommand;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 189
    sget-boolean v0, Landroidx/media2/session/MediaSessionStub;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 190
    const-string v0, "MediaSessionStub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Command ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/media2/session/MediaSessionStub$1;->val$sessionCommand:Landroidx/media2/session/SessionCommand;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/media2/session/MediaSessionStub$1;->val$controller:Landroidx/media2/session/MediaSession$ControllerInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " isn\'t allowed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 189
    :cond_1
    nop

    .line 193
    :goto_0
    return-void

    .line 195
    :cond_2
    sget-object v0, Landroidx/media2/session/MediaSessionStub;->sCommandsForOnCommandRequest:Landroid/util/SparseArray;

    iget-object v1, p0, Landroidx/media2/session/MediaSessionStub$1;->val$sessionCommand:Landroidx/media2/session/SessionCommand;

    .line 196
    invoke-virtual {v1}, Landroidx/media2/session/SessionCommand;->getCommandCode()I

    move-result v1

    .line 195
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/session/SessionCommand;

    goto :goto_2

    .line 198
    :cond_3
    iget-object v0, p0, Landroidx/media2/session/MediaSessionStub$1;->this$0:Landroidx/media2/session/MediaSessionStub;

    iget-object v0, v0, Landroidx/media2/session/MediaSessionStub;->mConnectedControllersManager:Landroidx/media2/session/ConnectedControllersManager;

    iget-object v1, p0, Landroidx/media2/session/MediaSessionStub$1;->val$controller:Landroidx/media2/session/MediaSession$ControllerInfo;

    iget v2, p0, Landroidx/media2/session/MediaSessionStub$1;->val$commandCode:I

    invoke-virtual {v0, v1, v2}, Landroidx/media2/session/ConnectedControllersManager;->isAllowedCommand(Landroidx/media2/session/MediaSession$ControllerInfo;I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 200
    sget-boolean v0, Landroidx/media2/session/MediaSessionStub;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 201
    const-string v0, "MediaSessionStub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Command ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/media2/session/MediaSessionStub$1;->val$commandCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/media2/session/MediaSessionStub$1;->val$controller:Landroidx/media2/session/MediaSession$ControllerInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " isn\'t allowed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 200
    :cond_4
    nop

    .line 204
    :goto_1
    return-void

    .line 206
    :cond_5
    sget-object v0, Landroidx/media2/session/MediaSessionStub;->sCommandsForOnCommandRequest:Landroid/util/SparseArray;

    iget v1, p0, Landroidx/media2/session/MediaSessionStub$1;->val$commandCode:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/session/SessionCommand;

    .line 210
    .local v0, "commandForOnCommandRequest":Landroidx/media2/session/SessionCommand;
    :goto_2
    if-eqz v0, :cond_8

    .line 211
    :try_start_0
    iget-object v1, p0, Landroidx/media2/session/MediaSessionStub$1;->this$0:Landroidx/media2/session/MediaSessionStub;

    iget-object v1, v1, Landroidx/media2/session/MediaSessionStub;->mSessionImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    invoke-interface {v1}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->getCallback()Landroidx/media2/session/MediaSession$SessionCallback;

    move-result-object v1

    iget-object v2, p0, Landroidx/media2/session/MediaSessionStub$1;->this$0:Landroidx/media2/session/MediaSessionStub;

    iget-object v2, v2, Landroidx/media2/session/MediaSessionStub;->mSessionImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    .line 212
    invoke-interface {v2}, Landroidx/media2/session/MediaSession$MediaSessionImpl;->getInstance()Landroidx/media2/session/MediaSession;

    move-result-object v2

    iget-object v3, p0, Landroidx/media2/session/MediaSessionStub$1;->val$controller:Landroidx/media2/session/MediaSession$ControllerInfo;

    .line 211
    invoke-virtual {v1, v2, v3, v0}, Landroidx/media2/session/MediaSession$SessionCallback;->onCommandRequest(Landroidx/media2/session/MediaSession;Landroidx/media2/session/MediaSession$ControllerInfo;Landroidx/media2/session/SessionCommand;)I

    move-result v1

    .line 214
    .local v1, "resultCode":I
    if-eqz v1, :cond_7

    .line 216
    sget-boolean v2, Landroidx/media2/session/MediaSessionStub;->DEBUG:Z

    if-eqz v2, :cond_6

    .line 217
    const-string v2, "MediaSessionStub"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Command ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ") from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroidx/media2/session/MediaSessionStub$1;->val$controller:Landroidx/media2/session/MediaSession$ControllerInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " was rejected by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroidx/media2/session/MediaSessionStub$1;->this$0:Landroidx/media2/session/MediaSessionStub;

    iget-object v4, v4, Landroidx/media2/session/MediaSessionStub;->mSessionImpl:Landroidx/media2/session/MediaSession$MediaSessionImpl;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 216
    :cond_6
    nop

    .line 221
    :goto_3
    iget-object v2, p0, Landroidx/media2/session/MediaSessionStub$1;->val$controller:Landroidx/media2/session/MediaSession$ControllerInfo;

    iget v3, p0, Landroidx/media2/session/MediaSessionStub$1;->val$seq:I

    invoke-static {v2, v3, v1}, Landroidx/media2/session/MediaSessionStub;->sendSessionResult(Landroidx/media2/session/MediaSession$ControllerInfo;II)V

    .line 222
    return-void

    .line 214
    :cond_7
    goto :goto_4

    .line 210
    .end local v1    # "resultCode":I
    :cond_8
    nop

    .line 225
    :goto_4
    iget-object v1, p0, Landroidx/media2/session/MediaSessionStub$1;->val$task:Landroidx/media2/session/MediaSessionStub$SessionTask;

    instance-of v1, v1, Landroidx/media2/session/MediaSessionStub$SessionPlayerTask;

    if-eqz v1, :cond_a

    .line 226
    iget-object v1, p0, Landroidx/media2/session/MediaSessionStub$1;->val$task:Landroidx/media2/session/MediaSessionStub$SessionTask;

    check-cast v1, Landroidx/media2/session/MediaSessionStub$SessionPlayerTask;

    iget-object v2, p0, Landroidx/media2/session/MediaSessionStub$1;->val$controller:Landroidx/media2/session/MediaSession$ControllerInfo;

    .line 227
    invoke-interface {v1, v2}, Landroidx/media2/session/MediaSessionStub$SessionPlayerTask;->run(Landroidx/media2/session/MediaSession$ControllerInfo;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 228
    .local v1, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    if-eqz v1, :cond_9

    .line 232
    new-instance v2, Landroidx/media2/session/MediaSessionStub$1$1;

    invoke-direct {v2, p0, v1}, Landroidx/media2/session/MediaSessionStub$1$1;-><init>(Landroidx/media2/session/MediaSessionStub$1;Lcom/google/common/util/concurrent/ListenableFuture;)V

    sget-object v3, Landroidx/media2/session/MediaUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v2, v3}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 247
    .end local v1    # "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    goto/16 :goto_7

    .line 229
    .restart local v1    # "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    :cond_9
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SessionPlayer has returned null, commandCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroidx/media2/session/MediaSessionStub$1;->val$commandCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "commandForOnCommandRequest":Landroidx/media2/session/SessionCommand;
    throw v2

    .line 247
    .end local v1    # "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Landroidx/media2/common/SessionPlayer$PlayerResult;>;"
    .restart local v0    # "commandForOnCommandRequest":Landroidx/media2/session/SessionCommand;
    :cond_a
    iget-object v1, p0, Landroidx/media2/session/MediaSessionStub$1;->val$task:Landroidx/media2/session/MediaSessionStub$SessionTask;

    instance-of v1, v1, Landroidx/media2/session/MediaSessionStub$SessionCallbackTask;

    if-eqz v1, :cond_f

    .line 248
    iget-object v1, p0, Landroidx/media2/session/MediaSessionStub$1;->val$task:Landroidx/media2/session/MediaSessionStub$SessionTask;

    check-cast v1, Landroidx/media2/session/MediaSessionStub$SessionCallbackTask;

    iget-object v2, p0, Landroidx/media2/session/MediaSessionStub$1;->val$controller:Landroidx/media2/session/MediaSession$ControllerInfo;

    invoke-interface {v1, v2}, Landroidx/media2/session/MediaSessionStub$SessionCallbackTask;->run(Landroidx/media2/session/MediaSession$ControllerInfo;)Ljava/lang/Object;

    move-result-object v1

    .line 249
    .local v1, "result":Ljava/lang/Object;
    if-eqz v1, :cond_e

    .line 252
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_b

    .line 253
    iget-object v2, p0, Landroidx/media2/session/MediaSessionStub$1;->val$controller:Landroidx/media2/session/MediaSession$ControllerInfo;

    iget v3, p0, Landroidx/media2/session/MediaSessionStub$1;->val$seq:I

    move-object v4, v1

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroidx/media2/session/MediaSessionStub;->sendSessionResult(Landroidx/media2/session/MediaSession$ControllerInfo;II)V

    goto :goto_5

    .line 254
    :cond_b
    instance-of v2, v1, Landroidx/media2/session/SessionResult;

    if-eqz v2, :cond_c

    .line 255
    iget-object v2, p0, Landroidx/media2/session/MediaSessionStub$1;->val$controller:Landroidx/media2/session/MediaSession$ControllerInfo;

    iget v3, p0, Landroidx/media2/session/MediaSessionStub$1;->val$seq:I

    move-object v4, v1

    check-cast v4, Landroidx/media2/session/SessionResult;

    invoke-static {v2, v3, v4}, Landroidx/media2/session/MediaSessionStub;->sendSessionResult(Landroidx/media2/session/MediaSession$ControllerInfo;ILandroidx/media2/session/SessionResult;)V

    goto :goto_5

    .line 256
    :cond_c
    sget-boolean v2, Landroidx/media2/session/MediaSessionStub;->DEBUG:Z

    if-nez v2, :cond_d

    .line 260
    .end local v1    # "result":Ljava/lang/Object;
    :goto_5
    goto/16 :goto_7

    .line 257
    .restart local v1    # "result":Ljava/lang/Object;
    :cond_d
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected return type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ". Fix bug"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "commandForOnCommandRequest":Landroidx/media2/session/SessionCommand;
    throw v2

    .line 250
    .restart local v0    # "commandForOnCommandRequest":Landroidx/media2/session/SessionCommand;
    :cond_e
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SessionCallback has returned null, commandCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroidx/media2/session/MediaSessionStub$1;->val$commandCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "commandForOnCommandRequest":Landroidx/media2/session/SessionCommand;
    throw v2

    .line 260
    .end local v1    # "result":Ljava/lang/Object;
    .restart local v0    # "commandForOnCommandRequest":Landroidx/media2/session/SessionCommand;
    :cond_f
    iget-object v1, p0, Landroidx/media2/session/MediaSessionStub$1;->val$task:Landroidx/media2/session/MediaSessionStub$SessionTask;

    instance-of v1, v1, Landroidx/media2/session/MediaSessionStub$LibrarySessionCallbackTask;

    if-eqz v1, :cond_14

    .line 261
    iget-object v1, p0, Landroidx/media2/session/MediaSessionStub$1;->val$task:Landroidx/media2/session/MediaSessionStub$SessionTask;

    check-cast v1, Landroidx/media2/session/MediaSessionStub$LibrarySessionCallbackTask;

    iget-object v2, p0, Landroidx/media2/session/MediaSessionStub$1;->val$controller:Landroidx/media2/session/MediaSession$ControllerInfo;

    invoke-interface {v1, v2}, Landroidx/media2/session/MediaSessionStub$LibrarySessionCallbackTask;->run(Landroidx/media2/session/MediaSession$ControllerInfo;)Ljava/lang/Object;

    move-result-object v1

    .line 263
    .restart local v1    # "result":Ljava/lang/Object;
    if-eqz v1, :cond_13

    .line 266
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_10

    .line 267
    iget-object v2, p0, Landroidx/media2/session/MediaSessionStub$1;->val$controller:Landroidx/media2/session/MediaSession$ControllerInfo;

    iget v3, p0, Landroidx/media2/session/MediaSessionStub$1;->val$seq:I

    move-object v4, v1

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroidx/media2/session/MediaSessionStub;->sendLibraryResult(Landroidx/media2/session/MediaSession$ControllerInfo;II)V

    goto :goto_6

    .line 268
    :cond_10
    instance-of v2, v1, Landroidx/media2/session/LibraryResult;

    if-eqz v2, :cond_11

    .line 269
    iget-object v2, p0, Landroidx/media2/session/MediaSessionStub$1;->val$controller:Landroidx/media2/session/MediaSession$ControllerInfo;

    iget v3, p0, Landroidx/media2/session/MediaSessionStub$1;->val$seq:I

    move-object v4, v1

    check-cast v4, Landroidx/media2/session/LibraryResult;

    invoke-static {v2, v3, v4}, Landroidx/media2/session/MediaSessionStub;->sendLibraryResult(Landroidx/media2/session/MediaSession$ControllerInfo;ILandroidx/media2/session/LibraryResult;)V

    goto :goto_6

    .line 270
    :cond_11
    sget-boolean v2, Landroidx/media2/session/MediaSessionStub;->DEBUG:Z

    if-nez v2, :cond_12

    goto :goto_6

    .line 271
    :cond_12
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected return type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ". Fix bug"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "commandForOnCommandRequest":Landroidx/media2/session/SessionCommand;
    throw v2

    .line 264
    .restart local v0    # "commandForOnCommandRequest":Landroidx/media2/session/SessionCommand;
    :cond_13
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LibrarySessionCallback has returned null, commandCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroidx/media2/session/MediaSessionStub$1;->val$commandCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "commandForOnCommandRequest":Landroidx/media2/session/SessionCommand;
    throw v2

    .line 274
    .end local v1    # "result":Ljava/lang/Object;
    .restart local v0    # "commandForOnCommandRequest":Landroidx/media2/session/SessionCommand;
    :cond_14
    sget-boolean v1, Landroidx/media2/session/MediaSessionStub;->DEBUG:Z

    if-nez v1, :cond_15

    :goto_6
    goto :goto_7

    .line 275
    :cond_15
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/media2/session/MediaSessionStub$1;->val$task:Landroidx/media2/session/MediaSessionStub$SessionTask;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ". Fix bug"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "commandForOnCommandRequest":Landroidx/media2/session/SessionCommand;
    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    .restart local v0    # "commandForOnCommandRequest":Landroidx/media2/session/SessionCommand;
    :catch_0
    move-exception v1

    .line 289
    .local v1, "e":Ljava/lang/Exception;
    throw v1

    .line 277
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 283
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "MediaSessionStub"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroidx/media2/session/MediaSessionStub$1;->val$controller:Landroidx/media2/session/MediaSession$ControllerInfo;

    invoke-virtual {v4}, Landroidx/media2/session/MediaSession$ControllerInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 302
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_7
    nop

    .line 303
    return-void
.end method
