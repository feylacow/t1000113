.class final Lcom/google/android/exoplr2avp/audio/TrimmingAudioProcessor;
.super Lcom/google/android/exoplr2avp/audio/BaseAudioProcessor;
.source "TrimmingAudioProcessor.java"


# static fields
.field private static final OUTPUT_ENCODING:I = 0x2


# instance fields
.field private endBuffer:[B

.field private endBufferSize:I

.field private pendingTrimStartBytes:I

.field private reconfigurationPending:Z

.field private trimEndFrames:I

.field private trimStartFrames:I

.field private trimmedFrameCount:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/audio/BaseAudioProcessor;-><init>()V

    .line 41
    sget-object v0, Lcom/google/android/exoplr2avp/util/Util;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/android/exoplr2avp/audio/TrimmingAudioProcessor;->endBuffer:[B

    return-void
.end method


# virtual methods
.method public getOutput()Ljava/nio/ByteBuffer;
    .locals 4

    .line 133
    invoke-super {p0}, Lcom/google/android/exoplr2avp/audio/BaseAudioProcessor;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplr2avp/audio/TrimmingAudioProcessor;->endBufferSize:I

    if-lez v0, :cond_0

    .line 137
    invoke-virtual {p0, v0}, Lcom/google/android/exoplr2avp/audio/TrimmingAudioProcessor;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplr2avp/audio/TrimmingAudioProcessor;->endBuffer:[B

    iget v2, p0, Lcom/google/android/exoplr2avp/audio/TrimmingAudioProcessor;->endBufferSize:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 138
    iput v3, p0, Lcom/google/android/exoplr2avp/audio/TrimmingAudioProcessor;->endBufferSize:I

    .line 140
    :cond_0
    invoke-super {p0}, Lcom/google/android/exoplr2avp/audio/BaseAudioProcessor;->getOutput()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getTrimmedFrameCount()J
    .locals 2

    .line 69
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/audio/TrimmingAudioProcessor;->trimmedFrameCount:J

    return-wide v0
.end method

.method public isEnded()Z
    .locals 1

    .line 145
    invoke-super {p0}, Lcom/google/android/exoplr2avp/audio/BaseAudioProcessor;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplr2avp/audio/TrimmingAudioProcessor;->endBufferSize:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onConfigure(Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;)Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/audio/AudioProcessor$UnhandledAudioFormatException;
        }
    .end annotation

    .line 75
    iget v0, p1, Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;->encoding:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/audio/TrimmingAudioProcessor;->reconfigurationPending:Z

    .line 79
    iget v0, p0, Lcom/google/android/exoplr2avp/audio/TrimmingAudioProcessor;->trimStartFrames:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplr2avp/audio/TrimmingAudioProcessor;->trimEndFrames:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;->NOT_SET:Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;

    :cond_1
    :goto_0
    return-object p1

    .line 76
    :cond_2
    new-instance v0, Lcom/google/android/exoplr2avp/audio/AudioProcessor$UnhandledAudioFormatException;

    invoke-direct {v0, p1}, Lcom/google/android/exoplr2avp/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;)V

    throw v0
.end method

.method protected onFlush()V
    .locals 3

    .line 161
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/audio/TrimmingAudioProcessor;->reconfigurationPending:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 163
    iput-boolean v1, p0, Lcom/google/android/exoplr2avp/audio/TrimmingAudioProcessor;->reconfigurationPending:Z

    .line 164
    iget v0, p0, Lcom/google/android/exoplr2avp/audio/TrimmingAudioProcessor;->trimEndFrames:I

    iget-object v2, p0, Lcom/google/android/exoplr2avp/audio/TrimmingAudioProcessor;->inputAudioFormat:Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;

    iget v2, v2, Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;->bytesPerFrame:I

    mul-int v0, v0, v2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplr2avp/audio/TrimmingAudioProcessor;->endBuffer:[B

    .line 165
    iget v0, p0, Lcom/google/android/exoplr2avp/audio/TrimmingAudioProcessor;->trimStartFrames:I

    iget-object v2, p0, Lcom/google/android/exoplr2avp/audio/TrimmingAudioProcessor;->inputAudioFormat:Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;

    iget v2, v2, Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;->bytesPerFrame:I

    mul-int v0, v0, v2

    iput v0, p0, Lcom/google/android/exoplr2avp/audio/TrimmingAudioProcessor;->pendingTrimStartBytes:I

    .line 176
    :cond_0
    iput v1, p0, Lcom/google/android/exoplr2avp/audio/TrimmingAudioProcessor;->endBufferSize:I

    return-void
.end method

.method protected onQueueEndOfStream()V
    .locals 5

    .line 150
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/audio/TrimmingAudioProcessor;->reconfigurationPending:Z

    if-eqz v0, :cond_1

    .line 152
    iget v0, p0, Lcom/google/android/exoplr2avp/audio/TrimmingAudioProcessor;->endBufferSize:I

    if-lez v0, :cond_0

    .line 153
    iget-wide v1, p0, Lcom/google/android/exoplr2avp/audio/TrimmingAudioProcessor;->trimmedFrameCount:J

    iget-object v3, p0, Lcom/google/android/exoplr2avp/audio/TrimmingAudioProcessor;->inputAudioFormat:Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;

    iget v3, v3, Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;->bytesPerFrame:I

    div-int/2addr v0, v3

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/exoplr2avp/audio/TrimmingAudioProcessor;->trimmedFrameCount:J

    :cond_0
    const/4 v0, 0x0

    .line 155
    iput v0, p0, Lcom/google/android/exoplr2avp/audio/TrimmingAudioProcessor;->endBufferSize:I

    :cond_1
    return-void
.end method

.method protected onReset()V
    .locals 1

    .line 181
    sget-object v0, Lcom/google/android/exoplr2avp/util/Util;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/android/exoplr2avp/audio/TrimmingAudioProcessor;->endBuffer:[B

    return-void
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .locals 8

    .line 84
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 85
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    sub-int v2, v1, v0

    if-nez v2, :cond_0

    return-void

    .line 93
    :cond_0
    iget v3, p0, Lcom/google/android/exoplr2avp/audio/TrimmingAudioProcessor;->pendingTrimStartBytes:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 94
    iget-wide v4, p0, Lcom/google/android/exoplr2avp/audio/TrimmingAudioProcessor;->trimmedFrameCount:J

    iget-object v6, p0, Lcom/google/android/exoplr2avp/audio/TrimmingAudioProcessor;->inputAudioFormat:Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;

    iget v6, v6, Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;->bytesPerFrame:I

    div-int v6, v3, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/exoplr2avp/audio/TrimmingAudioProcessor;->trimmedFrameCount:J

    .line 95
    iget v4, p0, Lcom/google/android/exoplr2avp/audio/TrimmingAudioProcessor;->pendingTrimStartBytes:I

    sub-int/2addr v4, v3

    iput v4, p0, Lcom/google/android/exoplr2avp/audio/TrimmingAudioProcessor;->pendingTrimStartBytes:I

    add-int/2addr v0, v3

    .line 96
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 97
    iget v0, p0, Lcom/google/android/exoplr2avp/audio/TrimmingAudioProcessor;->pendingTrimStartBytes:I

    if-lez v0, :cond_1

    return-void

    :cond_1
    sub-int/2addr v2, v3

    .line 107
    iget v0, p0, Lcom/google/android/exoplr2avp/audio/TrimmingAudioProcessor;->endBufferSize:I

    add-int/2addr v0, v2

    iget-object v3, p0, Lcom/google/android/exoplr2avp/audio/TrimmingAudioProcessor;->endBuffer:[B

    array-length v3, v3

    sub-int/2addr v0, v3

    .line 108
    invoke-virtual {p0, v0}, Lcom/google/android/exoplr2avp/audio/TrimmingAudioProcessor;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 111
    iget v4, p0, Lcom/google/android/exoplr2avp/audio/TrimmingAudioProcessor;->endBufferSize:I

    const/4 v5, 0x0

    invoke-static {v0, v5, v4}, Lcom/google/android/exoplr2avp/util/Util;->constrainValue(III)I

    move-result v4

    .line 112
    iget-object v6, p0, Lcom/google/android/exoplr2avp/audio/TrimmingAudioProcessor;->endBuffer:[B

    invoke-virtual {v3, v6, v5, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v0, v4

    .line 116
    invoke-static {v0, v5, v2}, Lcom/google/android/exoplr2avp/util/Util;->constrainValue(III)I

    move-result v0

    .line 117
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v6, v0

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 118
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 119
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    sub-int/2addr v2, v0

    .line 123
    iget v0, p0, Lcom/google/android/exoplr2avp/audio/TrimmingAudioProcessor;->endBufferSize:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/google/android/exoplr2avp/audio/TrimmingAudioProcessor;->endBufferSize:I

    .line 124
    iget-object v1, p0, Lcom/google/android/exoplr2avp/audio/TrimmingAudioProcessor;->endBuffer:[B

    invoke-static {v1, v4, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/TrimmingAudioProcessor;->endBuffer:[B

    iget v1, p0, Lcom/google/android/exoplr2avp/audio/TrimmingAudioProcessor;->endBufferSize:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 126
    iget p1, p0, Lcom/google/android/exoplr2avp/audio/TrimmingAudioProcessor;->endBufferSize:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/google/android/exoplr2avp/audio/TrimmingAudioProcessor;->endBufferSize:I

    .line 128
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method

.method public resetTrimmedFrameCount()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 61
    iput-wide v0, p0, Lcom/google/android/exoplr2avp/audio/TrimmingAudioProcessor;->trimmedFrameCount:J

    return-void
.end method

.method public setTrimFrameCount(II)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/google/android/exoplr2avp/audio/TrimmingAudioProcessor;->trimStartFrames:I

    .line 56
    iput p2, p0, Lcom/google/android/exoplr2avp/audio/TrimmingAudioProcessor;->trimEndFrames:I

    return-void
.end method
