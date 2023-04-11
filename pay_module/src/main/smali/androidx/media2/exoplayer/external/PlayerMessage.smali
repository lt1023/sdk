.class public final Landroidx/media2/exoplayer/external/PlayerMessage;
.super Ljava/lang/Object;
.source "PlayerMessage.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/PlayerMessage$Sender;,
        Landroidx/media2/exoplayer/external/PlayerMessage$Target;
    }
.end annotation


# instance fields
.field private deleteAfterDelivery:Z

.field private handler:Landroid/os/Handler;

.field private isCanceled:Z

.field private isDelivered:Z

.field private isProcessed:Z

.field private isSent:Z

.field private payload:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private positionMs:J

.field private final sender:Landroidx/media2/exoplayer/external/PlayerMessage$Sender;

.field private final target:Landroidx/media2/exoplayer/external/PlayerMessage$Target;

.field private final timeline:Landroidx/media2/exoplayer/external/Timeline;

.field private type:I

.field private windowIndex:I


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/PlayerMessage$Sender;Landroidx/media2/exoplayer/external/PlayerMessage$Target;Landroidx/media2/exoplayer/external/Timeline;ILandroid/os/Handler;)V
    .locals 2
    .param p1, "sender"    # Landroidx/media2/exoplayer/external/PlayerMessage$Sender;
    .param p2, "target"    # Landroidx/media2/exoplayer/external/PlayerMessage$Target;
    .param p3, "timeline"    # Landroidx/media2/exoplayer/external/Timeline;
    .param p4, "defaultWindowIndex"    # I
    .param p5, "defaultHandler"    # Landroid/os/Handler;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->sender:Landroidx/media2/exoplayer/external/PlayerMessage$Sender;

    .line 93
    iput-object p2, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->target:Landroidx/media2/exoplayer/external/PlayerMessage$Target;

    .line 94
    iput-object p3, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    .line 95
    iput-object p5, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->handler:Landroid/os/Handler;

    .line 96
    iput p4, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->windowIndex:I

    .line 97
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->positionMs:J

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->deleteAfterDelivery:Z

    .line 99
    return-void
.end method


# virtual methods
.method public declared-synchronized blockUntilDelivered()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 286
    :try_start_0
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->isSent:Z

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 287
    iget-object v0, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 288
    :goto_1
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->isProcessed:Z

    if-nez v0, :cond_1

    .line 289
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 291
    .end local p0    # "this":Landroidx/media2/exoplayer/external/PlayerMessage;
    :cond_1
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->isDelivered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    return-void
.end method

.method public declared-synchronized cancel()Landroidx/media2/exoplayer/external/PlayerMessage;
    .locals 1

    monitor-enter p0

    .line 260
    :try_start_0
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->isSent:Z

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->isCanceled:Z

    .line 262
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/PlayerMessage;->markAsProcessed(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    monitor-exit p0

    return-object p0

    .line 259
    .end local p0    # "this":Landroidx/media2/exoplayer/external/PlayerMessage;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDeleteAfterDelivery()Z
    .locals 1

    .line 232
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->deleteAfterDelivery:Z

    return v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 163
    iget-object v0, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getPayload()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 145
    iget-object v0, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->payload:Ljava/lang/Object;

    return-object v0
.end method

.method public getPositionMs()J
    .locals 2

    .line 171
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->positionMs:J

    return-wide v0
.end method

.method public getTarget()Landroidx/media2/exoplayer/external/PlayerMessage$Target;
    .locals 1

    .line 108
    iget-object v0, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->target:Landroidx/media2/exoplayer/external/PlayerMessage$Target;

    return-object v0
.end method

.method public getTimeline()Landroidx/media2/exoplayer/external/Timeline;
    .locals 1

    .line 103
    iget-object v0, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 126
    iget v0, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->type:I

    return v0
.end method

.method public getWindowIndex()I
    .locals 1

    .line 212
    iget v0, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->windowIndex:I

    return v0
.end method

.method public declared-synchronized isCanceled()Z
    .locals 1

    monitor-enter p0

    .line 268
    :try_start_0
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->isCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .end local p0    # "this":Landroidx/media2/exoplayer/external/PlayerMessage;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized markAsProcessed(Z)V
    .locals 1
    .param p1, "isDelivered"    # Z

    monitor-enter p0

    .line 303
    :try_start_0
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->isDelivered:Z

    or-int/2addr v0, p1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->isDelivered:Z

    .line 304
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->isProcessed:Z

    .line 305
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    monitor-exit p0

    return-void

    .line 302
    .end local p0    # "this":Landroidx/media2/exoplayer/external/PlayerMessage;
    .end local p1    # "isDelivered":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public send()Landroidx/media2/exoplayer/external/PlayerMessage;
    .locals 6

    .line 244
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->isSent:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 245
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->positionMs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 246
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->deleteAfterDelivery:Z

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    goto :goto_0

    .line 245
    :cond_0
    nop

    .line 248
    :goto_0
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->isSent:Z

    .line 249
    iget-object v0, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->sender:Landroidx/media2/exoplayer/external/PlayerMessage$Sender;

    invoke-interface {v0, p0}, Landroidx/media2/exoplayer/external/PlayerMessage$Sender;->sendMessage(Landroidx/media2/exoplayer/external/PlayerMessage;)V

    .line 250
    return-object p0
.end method

.method public setDeleteAfterDelivery(Z)Landroidx/media2/exoplayer/external/PlayerMessage;
    .locals 1
    .param p1, "deleteAfterDelivery"    # Z

    .line 225
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->isSent:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 226
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->deleteAfterDelivery:Z

    .line 227
    return-object p0
.end method

.method public setHandler(Landroid/os/Handler;)Landroidx/media2/exoplayer/external/PlayerMessage;
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .line 156
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->isSent:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 157
    iput-object p1, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->handler:Landroid/os/Handler;

    .line 158
    return-object p0
.end method

.method public setPayload(Ljava/lang/Object;)Landroidx/media2/exoplayer/external/PlayerMessage;
    .locals 1
    .param p1, "payload"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 137
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->isSent:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 138
    iput-object p1, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->payload:Ljava/lang/Object;

    .line 139
    return-object p0
.end method

.method public setPosition(IJ)Landroidx/media2/exoplayer/external/PlayerMessage;
    .locals 4
    .param p1, "windowIndex"    # I
    .param p2, "positionMs"    # J

    .line 200
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->isSent:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 201
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p2, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/Assertions;->checkArgument(Z)V

    .line 202
    if-ltz p1, :cond_2

    iget-object v0, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/Timeline;->getWindowCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 205
    :cond_1
    iput p1, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->windowIndex:I

    .line 206
    iput-wide p2, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->positionMs:J

    .line 207
    return-object p0

    .line 202
    :cond_2
    nop

    .line 203
    new-instance v0, Landroidx/media2/exoplayer/external/IllegalSeekPositionException;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->timeline:Landroidx/media2/exoplayer/external/Timeline;

    invoke-direct {v0, v1, p1, p2, p3}, Landroidx/media2/exoplayer/external/IllegalSeekPositionException;-><init>(Landroidx/media2/exoplayer/external/Timeline;IJ)V

    throw v0
.end method

.method public setPosition(J)Landroidx/media2/exoplayer/external/PlayerMessage;
    .locals 1
    .param p1, "positionMs"    # J

    .line 183
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->isSent:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 184
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->positionMs:J

    .line 185
    return-object p0
.end method

.method public setType(I)Landroidx/media2/exoplayer/external/PlayerMessage;
    .locals 1
    .param p1, "messageType"    # I

    .line 119
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->isSent:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/Assertions;->checkState(Z)V

    .line 120
    iput p1, p0, Landroidx/media2/exoplayer/external/PlayerMessage;->type:I

    .line 121
    return-object p0
.end method
