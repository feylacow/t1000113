.class final Lcom/google/android/exoplr2avp/audio/ChannelMappingAudioProcessor;
.super Lcom/google/android/exoplr2avp/audio/BaseAudioProcessor;
.source "ChannelMappingAudioProcessor.java"


# instance fields
.field private outputChannels:[I

.field private pendingOutputChannels:[I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/audio/BaseAudioProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigure(Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;)Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/audio/AudioProcessor$UnhandledAudioFormatException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/ChannelMappingAudioProcessor;->pendingOutputChannels:[I

    if-nez v0, :cond_0

    .line 51
    sget-object p1, Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;->NOT_SET:Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;

    return-object p1

    .line 54
    :cond_0
    iget v1, p1, Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;->encoding:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 58
    iget v1, p1, Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;->channelCount:I

    array-length v3, v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x0

    .line 59
    :goto_1
    array-length v6, v0

    if-ge v3, v6, :cond_4

    .line 60
    aget v6, v0, v3

    .line 61
    iget v7, p1, Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;->channelCount:I

    if-ge v6, v7, :cond_3

    if-eq v6, v3, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    or-int/2addr v1, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 62
    :cond_3
    new-instance v0, Lcom/google/android/exoplr2avp/audio/AudioProcessor$UnhandledAudioFormatException;

    invoke-direct {v0, p1}, Lcom/google/android/exoplr2avp/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;)V

    throw v0

    :cond_4
    if-eqz v1, :cond_5

    .line 67
    new-instance v1, Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;

    iget p1, p1, Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;->sampleRate:I

    array-length v0, v0

    invoke-direct {v1, p1, v0, v2}, Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;-><init>(III)V

    goto :goto_3

    .line 68
    :cond_5
    sget-object v1, Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;->NOT_SET:Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;

    :goto_3
    return-object v1

    .line 55
    :cond_6
    new-instance v0, Lcom/google/android/exoplr2avp/audio/AudioProcessor$UnhandledAudioFormatException;

    invoke-direct {v0, p1}, Lcom/google/android/exoplr2avp/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;)V

    throw v0
.end method

.method protected onFlush()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/ChannelMappingAudioProcessor;->pendingOutputChannels:[I

    iput-object v0, p0, Lcom/google/android/exoplr2avp/audio/ChannelMappingAudioProcessor;->outputChannels:[I

    return-void
.end method

.method protected onReset()V
    .locals 1

    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lcom/google/android/exoplr2avp/audio/ChannelMappingAudioProcessor;->outputChannels:[I

    .line 97
    iput-object v0, p0, Lcom/google/android/exoplr2avp/audio/ChannelMappingAudioProcessor;->pendingOutputChannels:[I

    return-void
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .locals 7

    .line 73
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/ChannelMappingAudioProcessor;->outputChannels:[I

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 74
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 75
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    sub-int v3, v2, v1

    .line 76
    iget-object v4, p0, Lcom/google/android/exoplr2avp/audio/ChannelMappingAudioProcessor;->inputAudioFormat:Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;

    iget v4, v4, Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;->bytesPerFrame:I

    div-int/2addr v3, v4

    .line 77
    iget-object v4, p0, Lcom/google/android/exoplr2avp/audio/ChannelMappingAudioProcessor;->outputAudioFormat:Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;

    iget v4, v4, Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;->bytesPerFrame:I

    mul-int v3, v3, v4

    .line 78
    invoke-virtual {p0, v3}, Lcom/google/android/exoplr2avp/audio/ChannelMappingAudioProcessor;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    :goto_0
    if-ge v1, v2, :cond_1

    .line 80
    array-length v4, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_0

    aget v6, v0, v5

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v1

    .line 81
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v6

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 83
    :cond_0
    iget-object v4, p0, Lcom/google/android/exoplr2avp/audio/ChannelMappingAudioProcessor;->inputAudioFormat:Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;

    iget v4, v4, Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;->bytesPerFrame:I

    add-int/2addr v1, v4

    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 86
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method

.method public setChannelMap([I)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/google/android/exoplr2avp/audio/ChannelMappingAudioProcessor;->pendingOutputChannels:[I

    return-void
.end method
