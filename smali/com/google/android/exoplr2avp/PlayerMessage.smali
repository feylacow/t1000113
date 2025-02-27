.class public final Lcom/google/android/exoplr2avp/PlayerMessage;
.super Ljava/lang/Object;
.source "PlayerMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/PlayerMessage$Sender;,
        Lcom/google/android/exoplr2avp/PlayerMessage$Target;
    }
.end annotation


# instance fields
.field private final clock:Lcom/google/android/exoplr2avp/util/Clock;

.field private deleteAfterDelivery:Z

.field private isCanceled:Z

.field private isDelivered:Z

.field private isProcessed:Z

.field private isSent:Z

.field private looper:Landroid/os/Looper;

.field private mediaItemIndex:I

.field private payload:Ljava/lang/Object;

.field private positionMs:J

.field private final sender:Lcom/google/android/exoplr2avp/PlayerMessage$Sender;

.field private final target:Lcom/google/android/exoplr2avp/PlayerMessage$Target;

.field private final timeline:Lcom/google/android/exoplr2avp/Timeline;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/PlayerMessage$Sender;Lcom/google/android/exoplr2avp/PlayerMessage$Target;Lcom/google/android/exoplr2avp/Timeline;ILcom/google/android/exoplr2avp/util/Clock;Landroid/os/Looper;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/google/android/exoplr2avp/PlayerMessage;->sender:Lcom/google/android/exoplr2avp/PlayerMessage$Sender;

    .line 95
    iput-object p2, p0, Lcom/google/android/exoplr2avp/PlayerMessage;->target:Lcom/google/android/exoplr2avp/PlayerMessage$Target;

    .line 96
    iput-object p3, p0, Lcom/google/android/exoplr2avp/PlayerMessage;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    .line 97
    iput-object p6, p0, Lcom/google/android/exoplr2avp/PlayerMessage;->looper:Landroid/os/Looper;

    .line 98
    iput-object p5, p0, Lcom/google/android/exoplr2avp/PlayerMessage;->clock:Lcom/google/android/exoplr2avp/util/Clock;

    .line 99
    iput p4, p0, Lcom/google/android/exoplr2avp/PlayerMessage;->mediaItemIndex:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 100
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/PlayerMessage;->positionMs:J

    const/4 p1, 0x1

    .line 101
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/PlayerMessage;->deleteAfterDelivery:Z

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

    .line 315
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/PlayerMessage;->isSent:Z

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 316
    iget-object v0, p0, Lcom/google/android/exoplr2avp/PlayerMessage;->looper:Landroid/os/Looper;

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
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 317
    :goto_1
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/PlayerMessage;->isProcessed:Z

    if-nez v0, :cond_1

    .line 318
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 320
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/PlayerMessage;->isDelivered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blockUntilDelivered(J)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    monitor-enter p0

    .line 342
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/PlayerMessage;->isSent:Z

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 343
    iget-object v0, p0, Lcom/google/android/exoplr2avp/PlayerMessage;->looper:Landroid/os/Looper;

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
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 345
    iget-object v0, p0, Lcom/google/android/exoplr2avp/PlayerMessage;->clock:Lcom/google/android/exoplr2avp/util/Clock;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 347
    :goto_1
    iget-boolean v2, p0, Lcom/google/android/exoplr2avp/PlayerMessage;->isProcessed:Z

    if-nez v2, :cond_1

    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-lez v5, :cond_1

    .line 348
    iget-object v2, p0, Lcom/google/android/exoplr2avp/PlayerMessage;->clock:Lcom/google/android/exoplr2avp/util/Clock;

    invoke-interface {v2}, Lcom/google/android/exoplr2avp/util/Clock;->onThreadBlocked()V

    .line 349
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 350
    iget-object p1, p0, Lcom/google/android/exoplr2avp/PlayerMessage;->clock:Lcom/google/android/exoplr2avp/util/Clock;

    invoke-interface {p1}, Lcom/google/android/exoplr2avp/util/Clock;->elapsedRealtime()J

    move-result-wide p1

    sub-long p1, v0, p1

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    .line 355
    iget-boolean p1, p0, Lcom/google/android/exoplr2avp/PlayerMessage;->isDelivered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    .line 353
    :cond_2
    :try_start_1
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    const-string p2, "Message delivery timed out."

    invoke-direct {p1, p2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized cancel()Lcom/google/android/exoplr2avp/PlayerMessage;
    .locals 1

    monitor-enter p0

    .line 275
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/PlayerMessage;->isSent:Z

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    const/4 v0, 0x1

    .line 276
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/PlayerMessage;->isCanceled:Z

    const/4 v0, 0x0

    .line 277
    invoke-virtual {p0, v0}, Lcom/google/android/exoplr2avp/PlayerMessage;->markAsProcessed(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDeleteAfterDelivery()Z
    .locals 1

    .line 248
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/PlayerMessage;->deleteAfterDelivery:Z

    return v0
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/google/android/exoplr2avp/PlayerMessage;->looper:Landroid/os/Looper;

    return-object v0
.end method

.method public getMediaItemIndex()I
    .locals 1

    .line 228
    iget v0, p0, Lcom/google/android/exoplr2avp/PlayerMessage;->mediaItemIndex:I

    return v0
.end method

.method public getPayload()Ljava/lang/Object;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/google/android/exoplr2avp/PlayerMessage;->payload:Ljava/lang/Object;

    return-object v0
.end method

.method public getPositionMs()J
    .locals 2

    .line 184
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/PlayerMessage;->positionMs:J

    return-wide v0
.end method

.method public getTarget()Lcom/google/android/exoplr2avp/PlayerMessage$Target;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/google/android/exoplr2avp/PlayerMessage;->target:Lcom/google/android/exoplr2avp/PlayerMessage$Target;

    return-object v0
.end method

.method public getTimeline()Lcom/google/android/exoplr2avp/Timeline;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/google/android/exoplr2avp/PlayerMessage;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/google/android/exoplr2avp/PlayerMessage;->type:I

    return v0
.end method

.method public declared-synchronized isCanceled()Z
    .locals 1

    monitor-enter p0

    .line 283
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/PlayerMessage;->isCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized markAsProcessed(Z)V
    .locals 1

    monitor-enter p0

    .line 295
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/PlayerMessage;->isDelivered:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/PlayerMessage;->isDelivered:Z

    const/4 p1, 0x1

    .line 296
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/PlayerMessage;->isProcessed:Z

    .line 297
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public send()Lcom/google/android/exoplr2avp/PlayerMessage;
    .locals 6

    .line 259
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/PlayerMessage;->isSent:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 260
    iget-wide v2, p0, Lcom/google/android/exoplr2avp/PlayerMessage;->positionMs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 261
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/PlayerMessage;->deleteAfterDelivery:Z

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkArgument(Z)V

    .line 263
    :cond_0
    iput-boolean v1, p0, Lcom/google/android/exoplr2avp/PlayerMessage;->isSent:Z

    .line 264
    iget-object v0, p0, Lcom/google/android/exoplr2avp/PlayerMessage;->sender:Lcom/google/android/exoplr2avp/PlayerMessage$Sender;

    invoke-interface {v0, p0}, Lcom/google/android/exoplr2avp/PlayerMessage$Sender;->sendMessage(Lcom/google/android/exoplr2avp/PlayerMessage;)V

    return-object p0
.end method

.method public setDeleteAfterDelivery(Z)Lcom/google/android/exoplr2avp/PlayerMessage;
    .locals 1

    .line 241
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/PlayerMessage;->isSent:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 242
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/PlayerMessage;->deleteAfterDelivery:Z

    return-object p0
.end method

.method public setHandler(Landroid/os/Handler;)Lcom/google/android/exoplr2avp/PlayerMessage;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 156
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/PlayerMessage;->setLooper(Landroid/os/Looper;)Lcom/google/android/exoplr2avp/PlayerMessage;

    move-result-object p1

    return-object p1
.end method

.method public setLooper(Landroid/os/Looper;)Lcom/google/android/exoplr2avp/PlayerMessage;
    .locals 1

    .line 167
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/PlayerMessage;->isSent:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 168
    iput-object p1, p0, Lcom/google/android/exoplr2avp/PlayerMessage;->looper:Landroid/os/Looper;

    return-object p0
.end method

.method public setPayload(Ljava/lang/Object;)Lcom/google/android/exoplr2avp/PlayerMessage;
    .locals 1

    .line 140
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/PlayerMessage;->isSent:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 141
    iput-object p1, p0, Lcom/google/android/exoplr2avp/PlayerMessage;->payload:Ljava/lang/Object;

    return-object p0
.end method

.method public setPosition(IJ)Lcom/google/android/exoplr2avp/PlayerMessage;
    .locals 4

    .line 215
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/PlayerMessage;->isSent:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p2, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 216
    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkArgument(Z)V

    if-ltz p1, :cond_2

    .line 217
    iget-object v0, p0, Lcom/google/android/exoplr2avp/PlayerMessage;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    .line 218
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplr2avp/PlayerMessage;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/Timeline;->getWindowCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 221
    :cond_1
    iput p1, p0, Lcom/google/android/exoplr2avp/PlayerMessage;->mediaItemIndex:I

    .line 222
    iput-wide p2, p0, Lcom/google/android/exoplr2avp/PlayerMessage;->positionMs:J

    return-object p0

    .line 219
    :cond_2
    new-instance v0, Lcom/google/android/exoplr2avp/IllegalSeekPositionException;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/PlayerMessage;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/google/android/exoplr2avp/IllegalSeekPositionException;-><init>(Lcom/google/android/exoplr2avp/Timeline;IJ)V

    throw v0
.end method

.method public setPosition(J)Lcom/google/android/exoplr2avp/PlayerMessage;
    .locals 1

    .line 197
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/PlayerMessage;->isSent:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 198
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/PlayerMessage;->positionMs:J

    return-object p0
.end method

.method public setType(I)Lcom/google/android/exoplr2avp/PlayerMessage;
    .locals 1

    .line 122
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/PlayerMessage;->isSent:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 123
    iput p1, p0, Lcom/google/android/exoplr2avp/PlayerMessage;->type:I

    return-object p0
.end method
