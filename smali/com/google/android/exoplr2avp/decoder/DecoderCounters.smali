.class public final Lcom/google/android/exoplr2avp/decoder/DecoderCounters;
.super Ljava/lang/Object;
.source "DecoderCounters.java"


# instance fields
.field public decoderInitCount:I

.field public decoderReleaseCount:I

.field public droppedBufferCount:I

.field public droppedInputBufferCount:I

.field public droppedToKeyframeCount:I

.field public maxConsecutiveDroppedBufferCount:I

.field public queuedInputBufferCount:I

.field public renderedOutputBufferCount:I

.field public skippedInputBufferCount:I

.field public skippedOutputBufferCount:I

.field public totalVideoFrameProcessingOffsetUs:J

.field public videoFrameProcessingOffsetCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addVideoFrameProcessingOffsets(JI)V
    .locals 2

    .line 156
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->totalVideoFrameProcessingOffsetUs:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->totalVideoFrameProcessingOffsetUs:J

    .line 157
    iget p1, p0, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->videoFrameProcessingOffsetCount:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->videoFrameProcessingOffsetCount:I

    return-void
.end method


# virtual methods
.method public addVideoFrameProcessingOffset(J)V
    .locals 1

    const/4 v0, 0x1

    .line 152
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->addVideoFrameProcessingOffsets(JI)V

    return-void
.end method

.method public declared-synchronized ensureUpdated()V
    .locals 0

    monitor-enter p0

    .line 120
    monitor-exit p0

    return-void
.end method

.method public merge(Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V
    .locals 2

    .line 128
    iget v0, p0, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->decoderInitCount:I

    iget v1, p1, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->decoderInitCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->decoderInitCount:I

    .line 129
    iget v0, p0, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->decoderReleaseCount:I

    iget v1, p1, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->decoderReleaseCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->decoderReleaseCount:I

    .line 130
    iget v0, p0, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->queuedInputBufferCount:I

    iget v1, p1, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->queuedInputBufferCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->queuedInputBufferCount:I

    .line 131
    iget v0, p0, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->skippedInputBufferCount:I

    iget v1, p1, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->skippedInputBufferCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->skippedInputBufferCount:I

    .line 132
    iget v0, p0, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->renderedOutputBufferCount:I

    iget v1, p1, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->renderedOutputBufferCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->renderedOutputBufferCount:I

    .line 133
    iget v0, p0, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->skippedOutputBufferCount:I

    iget v1, p1, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->skippedOutputBufferCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->skippedOutputBufferCount:I

    .line 134
    iget v0, p0, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->droppedBufferCount:I

    iget v1, p1, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->droppedBufferCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->droppedBufferCount:I

    .line 135
    iget v0, p0, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->droppedInputBufferCount:I

    iget v1, p1, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->droppedInputBufferCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->droppedInputBufferCount:I

    .line 136
    iget v0, p0, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->maxConsecutiveDroppedBufferCount:I

    iget v1, p1, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->maxConsecutiveDroppedBufferCount:I

    .line 137
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->maxConsecutiveDroppedBufferCount:I

    .line 138
    iget v0, p0, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->droppedToKeyframeCount:I

    iget v1, p1, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->droppedToKeyframeCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->droppedToKeyframeCount:I

    .line 139
    iget-wide v0, p1, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->totalVideoFrameProcessingOffsetUs:J

    iget p1, p1, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->videoFrameProcessingOffsetCount:I

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->addVideoFrameProcessingOffsets(JI)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    .line 162
    iget v1, p0, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->decoderInitCount:I

    .line 176
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->decoderReleaseCount:I

    .line 177
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->queuedInputBufferCount:I

    .line 178
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->skippedInputBufferCount:I

    .line 179
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->renderedOutputBufferCount:I

    .line 180
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->skippedOutputBufferCount:I

    .line 181
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->droppedBufferCount:I

    .line 182
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->droppedInputBufferCount:I

    .line 183
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->maxConsecutiveDroppedBufferCount:I

    .line 184
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->droppedToKeyframeCount:I

    .line 185
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->totalVideoFrameProcessingOffsetUs:J

    .line 186
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->videoFrameProcessingOffsetCount:I

    .line 187
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "DecoderCounters {\n decoderInits=%s,\n decoderReleases=%s\n queuedInputBuffers=%s\n skippedInputBuffers=%s\n renderedOutputBuffers=%s\n skippedOutputBuffers=%s\n droppedBuffers=%s\n droppedInputBuffers=%s\n maxConsecutiveDroppedBuffers=%s\n droppedToKeyframeEvents=%s\n totalVideoFrameProcessingOffsetUs=%s\n videoFrameProcessingOffsetCount=%s\n}"

    .line 162
    invoke-static {v1, v0}, Lcom/google/android/exoplr2avp/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
