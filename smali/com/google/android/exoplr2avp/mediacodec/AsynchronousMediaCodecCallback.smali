.class final Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;
.super Landroid/media/MediaCodec$Callback;
.source "AsynchronousMediaCodecCallback.java"


# instance fields
.field private final availableInputBuffers:Lcom/google/android/exoplr2avp/mediacodec/IntArrayQueue;

.field private final availableOutputBuffers:Lcom/google/android/exoplr2avp/mediacodec/IntArrayQueue;

.field private final bufferInfos:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/media/MediaCodec$BufferInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final callbackThread:Landroid/os/HandlerThread;

.field private currentFormat:Landroid/media/MediaFormat;

.field private final formats:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/media/MediaFormat;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private internalException:Ljava/lang/IllegalStateException;

.field private final lock:Ljava/lang/Object;

.field private mediaCodecException:Landroid/media/MediaCodec$CodecException;

.field private pendingFlushCount:J

.field private pendingOutputFormat:Landroid/media/MediaFormat;

.field private shutDown:Z


# direct methods
.method constructor <init>(Landroid/os/HandlerThread;)V
    .locals 1

    .line 81
    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    .line 83
    iput-object p1, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->callbackThread:Landroid/os/HandlerThread;

    .line 84
    new-instance p1, Lcom/google/android/exoplr2avp/mediacodec/IntArrayQueue;

    invoke-direct {p1}, Lcom/google/android/exoplr2avp/mediacodec/IntArrayQueue;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->availableInputBuffers:Lcom/google/android/exoplr2avp/mediacodec/IntArrayQueue;

    .line 85
    new-instance p1, Lcom/google/android/exoplr2avp/mediacodec/IntArrayQueue;

    invoke-direct {p1}, Lcom/google/android/exoplr2avp/mediacodec/IntArrayQueue;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->availableOutputBuffers:Lcom/google/android/exoplr2avp/mediacodec/IntArrayQueue;

    .line 86
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->bufferInfos:Ljava/util/ArrayDeque;

    .line 87
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->formats:Ljava/util/ArrayDeque;

    return-void
.end method

.method private addOutputFormat(Landroid/media/MediaFormat;)V
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->availableOutputBuffers:Lcom/google/android/exoplr2avp/mediacodec/IntArrayQueue;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/mediacodec/IntArrayQueue;->add(I)V

    .line 281
    iget-object v0, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->formats:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private flushInternal()V
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->formats:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->formats:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFormat;

    iput-object v0, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->pendingOutputFormat:Landroid/media/MediaFormat;

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->availableInputBuffers:Lcom/google/android/exoplr2avp/mediacodec/IntArrayQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/mediacodec/IntArrayQueue;->clear()V

    .line 267
    iget-object v0, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->availableOutputBuffers:Lcom/google/android/exoplr2avp/mediacodec/IntArrayQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/mediacodec/IntArrayQueue;->clear()V

    .line 268
    iget-object v0, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->bufferInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 269
    iget-object v0, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->formats:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x0

    .line 270
    iput-object v0, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->mediaCodecException:Landroid/media/MediaCodec$CodecException;

    return-void
.end method

.method private isFlushingOrShutdown()Z
    .locals 5

    .line 275
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->pendingFlushCount:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->shutDown:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static synthetic lambda$Zc4jHrpOmcUdQZjE77zskZnOwdo(Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->onFlushCompleted()V

    return-void
.end method

.method private maybeThrowException()V
    .locals 0

    .line 286
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->maybeThrowInternalException()V

    .line 287
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->maybeThrowMediaCodecException()V

    return-void
.end method

.method private maybeThrowInternalException()V
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->internalException:Ljava/lang/IllegalStateException;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 294
    iput-object v1, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->internalException:Ljava/lang/IllegalStateException;

    .line 295
    throw v0
.end method

.method private maybeThrowMediaCodecException()V
    .locals 2

    .line 301
    iget-object v0, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->mediaCodecException:Landroid/media/MediaCodec$CodecException;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 303
    iput-object v1, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->mediaCodecException:Landroid/media/MediaCodec$CodecException;

    .line 304
    throw v0
.end method

.method private onFlushCompleted()V
    .locals 6

    .line 239
    iget-object v0, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 240
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->shutDown:Z

    if-eqz v1, :cond_0

    .line 241
    monitor-exit v0

    return-void

    .line 244
    :cond_0
    iget-wide v1, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->pendingFlushCount:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->pendingFlushCount:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 247
    monitor-exit v0

    return-void

    :cond_1
    cmp-long v5, v1, v3

    if-gez v5, :cond_2

    .line 250
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-direct {p0, v1}, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->setInternalException(Ljava/lang/IllegalStateException;)V

    .line 251
    monitor-exit v0

    return-void

    .line 253
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->flushInternal()V

    .line 254
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setInternalException(Ljava/lang/IllegalStateException;)V
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 310
    :try_start_0
    iput-object p1, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->internalException:Ljava/lang/IllegalStateException;

    .line 311
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public dequeueInputBufferIndex()I
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->isFlushingOrShutdown()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 130
    monitor-exit v0

    return v2

    .line 132
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->maybeThrowException()V

    .line 133
    iget-object v1, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->availableInputBuffers:Lcom/google/android/exoplr2avp/mediacodec/IntArrayQueue;

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/mediacodec/IntArrayQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 135
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->availableInputBuffers:Lcom/google/android/exoplr2avp/mediacodec/IntArrayQueue;

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/mediacodec/IntArrayQueue;->remove()I

    move-result v2

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    .line 137
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dequeueOutputBufferIndex(Landroid/media/MediaCodec$BufferInfo;)I
    .locals 9

    .line 147
    iget-object v0, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 148
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->isFlushingOrShutdown()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 149
    monitor-exit v0

    return v2

    .line 151
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->maybeThrowException()V

    .line 152
    iget-object v1, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->availableOutputBuffers:Lcom/google/android/exoplr2avp/mediacodec/IntArrayQueue;

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/mediacodec/IntArrayQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    monitor-exit v0

    return v2

    .line 155
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->availableOutputBuffers:Lcom/google/android/exoplr2avp/mediacodec/IntArrayQueue;

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/mediacodec/IntArrayQueue;->remove()I

    move-result v1

    if-ltz v1, :cond_2

    .line 157
    iget-object v2, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->currentFormat:Landroid/media/MediaFormat;

    invoke-static {v2}, Lcom/google/android/exoplr2avp/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v2, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->bufferInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaCodec$BufferInfo;

    .line 159
    iget v4, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v5, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v6, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v8, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    goto :goto_0

    :cond_2
    const/4 p1, -0x2

    if-ne v1, p1, :cond_3

    .line 165
    iget-object p1, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->formats:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaFormat;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->currentFormat:Landroid/media/MediaFormat;

    .line 167
    :cond_3
    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    .line 170
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public flush()V
    .locals 5

    .line 196
    iget-object v0, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 197
    :try_start_0
    iget-wide v1, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->pendingFlushCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->pendingFlushCount:J

    .line 198
    iget-object v1, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->handler:Landroid/os/Handler;

    invoke-static {v1}, Lcom/google/android/exoplr2avp/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    new-instance v2, Lcom/google/android/exoplr2avp/mediacodec/-$$Lambda$AsynchronousMediaCodecCallback$Zc4jHrpOmcUdQZjE77zskZnOwdo;

    invoke-direct {v2, p0}, Lcom/google/android/exoplr2avp/mediacodec/-$$Lambda$AsynchronousMediaCodecCallback$Zc4jHrpOmcUdQZjE77zskZnOwdo;-><init>(Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 199
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getOutputFormat()Landroid/media/MediaFormat;
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 184
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->currentFormat:Landroid/media/MediaFormat;

    if-eqz v1, :cond_0

    .line 187
    monitor-exit v0

    return-object v1

    .line 185
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :catchall_0
    move-exception v1

    .line 188
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public initialize(Landroid/media/MediaCodec;)V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 101
    iget-object v0, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->callbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 102
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->callbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 103
    invoke-virtual {p1, p0, v0}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    .line 106
    iput-object v0, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->handler:Landroid/os/Handler;

    return-void
.end method

.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 0

    .line 225
    iget-object p1, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    monitor-enter p1

    .line 226
    :try_start_0
    iput-object p2, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->mediaCodecException:Landroid/media/MediaCodec$CodecException;

    .line 227
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 1

    .line 206
    iget-object p1, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    monitor-enter p1

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->availableInputBuffers:Lcom/google/android/exoplr2avp/mediacodec/IntArrayQueue;

    invoke-virtual {v0, p2}, Lcom/google/android/exoplr2avp/mediacodec/IntArrayQueue;->add(I)V

    .line 208
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    .line 213
    iget-object p1, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    monitor-enter p1

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->pendingOutputFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_0

    .line 215
    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->addOutputFormat(Landroid/media/MediaFormat;)V

    const/4 v0, 0x0

    .line 216
    iput-object v0, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->pendingOutputFormat:Landroid/media/MediaFormat;

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->availableOutputBuffers:Lcom/google/android/exoplr2avp/mediacodec/IntArrayQueue;

    invoke-virtual {v0, p2}, Lcom/google/android/exoplr2avp/mediacodec/IntArrayQueue;->add(I)V

    .line 219
    iget-object p2, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->bufferInfos:Ljava/util/ArrayDeque;

    invoke-virtual {p2, p3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 220
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 0

    .line 232
    iget-object p1, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    monitor-enter p1

    .line 233
    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->addOutputFormat(Landroid/media/MediaFormat;)V

    const/4 p2, 0x0

    .line 234
    iput-object p2, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->pendingOutputFormat:Landroid/media/MediaFormat;

    .line 235
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public shutdown()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 117
    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->shutDown:Z

    .line 118
    iget-object v1, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->callbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 119
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecCallback;->flushInternal()V

    .line 120
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
