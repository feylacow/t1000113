.class abstract Lcom/google/android/exoplr2avp/text/cea/CeaDecoder;
.super Ljava/lang/Object;
.source "CeaDecoder.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/text/SubtitleDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/text/cea/CeaDecoder$CeaOutputBuffer;,
        Lcom/google/android/exoplr2avp/text/cea/CeaDecoder$CeaInputBuffer;
    }
.end annotation


# static fields
.field private static final NUM_INPUT_BUFFERS:I = 0xa

.field private static final NUM_OUTPUT_BUFFERS:I = 0x2


# instance fields
.field private final availableInputBuffers:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/exoplr2avp/text/cea/CeaDecoder$CeaInputBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final availableOutputBuffers:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/exoplr2avp/text/SubtitleOutputBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private dequeuedInputBuffer:Lcom/google/android/exoplr2avp/text/cea/CeaDecoder$CeaInputBuffer;

.field private playbackPositionUs:J

.field private queuedInputBufferCount:J

.field private final queuedInputBuffers:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lcom/google/android/exoplr2avp/text/cea/CeaDecoder$CeaInputBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder;->availableInputBuffers:Ljava/util/ArrayDeque;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 49
    iget-object v2, p0, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder;->availableInputBuffers:Ljava/util/ArrayDeque;

    new-instance v3, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder$CeaInputBuffer;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder$CeaInputBuffer;-><init>(Lcom/google/android/exoplr2avp/text/cea/CeaDecoder$1;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    :cond_0
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder;->availableOutputBuffers:Ljava/util/ArrayDeque;

    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 53
    iget-object v1, p0, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder;->availableOutputBuffers:Ljava/util/ArrayDeque;

    new-instance v2, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder$CeaOutputBuffer;

    new-instance v3, Lcom/google/android/exoplr2avp/text/cea/-$$Lambda$bsBBzwKMQG_of2RqXlVRHnxtbq4;

    invoke-direct {v3, p0}, Lcom/google/android/exoplr2avp/text/cea/-$$Lambda$bsBBzwKMQG_of2RqXlVRHnxtbq4;-><init>(Lcom/google/android/exoplr2avp/text/cea/CeaDecoder;)V

    invoke-direct {v2, v3}, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder$CeaOutputBuffer;-><init>(Lcom/google/android/exoplr2avp/decoder/DecoderOutputBuffer$Owner;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 55
    :cond_1
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder;->queuedInputBuffers:Ljava/util/PriorityQueue;

    return-void
.end method

.method private releaseInputBuffer(Lcom/google/android/exoplr2avp/text/cea/CeaDecoder$CeaInputBuffer;)V
    .locals 1

    .line 128
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder$CeaInputBuffer;->clear()V

    .line 129
    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder;->availableInputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected abstract createSubtitle()Lcom/google/android/exoplr2avp/text/Subtitle;
.end method

.method protected abstract decode(Lcom/google/android/exoplr2avp/text/SubtitleInputBuffer;)V
.end method

.method public dequeueInputBuffer()Lcom/google/android/exoplr2avp/text/SubtitleInputBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/text/SubtitleDecoderException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder;->dequeuedInputBuffer:Lcom/google/android/exoplr2avp/text/cea/CeaDecoder$CeaInputBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 70
    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder;->availableInputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder;->availableInputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder$CeaInputBuffer;

    iput-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder;->dequeuedInputBuffer:Lcom/google/android/exoplr2avp/text/cea/CeaDecoder$CeaInputBuffer;

    return-object v0
.end method

.method public bridge synthetic dequeueInputBuffer()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/decoder/DecoderException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder;->dequeueInputBuffer()Lcom/google/android/exoplr2avp/text/SubtitleInputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public dequeueOutputBuffer()Lcom/google/android/exoplr2avp/text/SubtitleOutputBuffer;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/text/SubtitleDecoderException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder;->availableOutputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 99
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder;->queuedInputBuffers:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder;->queuedInputBuffers:Ljava/util/PriorityQueue;

    .line 100
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder$CeaInputBuffer;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder$CeaInputBuffer;

    iget-wide v2, v0, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder$CeaInputBuffer;->timeUs:J

    iget-wide v4, p0, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder;->playbackPositionUs:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_3

    .line 101
    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder;->queuedInputBuffers:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder$CeaInputBuffer;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder$CeaInputBuffer;

    .line 103
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder$CeaInputBuffer;->isEndOfStream()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 105
    iget-object v1, p0, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder;->availableOutputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/text/SubtitleOutputBuffer;

    invoke-static {v1}, Lcom/google/android/exoplr2avp/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/text/SubtitleOutputBuffer;

    const/4 v2, 0x4

    .line 106
    invoke-virtual {v1, v2}, Lcom/google/android/exoplr2avp/text/SubtitleOutputBuffer;->addFlag(I)V

    .line 107
    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder;->releaseInputBuffer(Lcom/google/android/exoplr2avp/text/cea/CeaDecoder$CeaInputBuffer;)V

    return-object v1

    .line 111
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder;->decode(Lcom/google/android/exoplr2avp/text/SubtitleInputBuffer;)V

    .line 113
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder;->isNewSubtitleDataAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 114
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder;->createSubtitle()Lcom/google/android/exoplr2avp/text/Subtitle;

    move-result-object v6

    .line 116
    iget-object v1, p0, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder;->availableOutputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/text/SubtitleOutputBuffer;

    invoke-static {v1}, Lcom/google/android/exoplr2avp/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/text/SubtitleOutputBuffer;

    .line 117
    iget-wide v4, v0, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder$CeaInputBuffer;->timeUs:J

    const-wide v7, 0x7fffffffffffffffL

    move-object v3, v1

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplr2avp/text/SubtitleOutputBuffer;->setContent(JLcom/google/android/exoplr2avp/text/Subtitle;J)V

    .line 118
    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder;->releaseInputBuffer(Lcom/google/android/exoplr2avp/text/cea/CeaDecoder$CeaInputBuffer;)V

    return-object v1

    .line 122
    :cond_2
    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder;->releaseInputBuffer(Lcom/google/android/exoplr2avp/text/cea/CeaDecoder$CeaInputBuffer;)V

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public bridge synthetic dequeueOutputBuffer()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/decoder/DecoderException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder;->dequeueOutputBuffer()Lcom/google/android/exoplr2avp/text/SubtitleOutputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public flush()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 139
    iput-wide v0, p0, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder;->queuedInputBufferCount:J

    .line 140
    iput-wide v0, p0, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder;->playbackPositionUs:J

    .line 141
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder;->queuedInputBuffers:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder;->queuedInputBuffers:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder$CeaInputBuffer;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder$CeaInputBuffer;

    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder;->releaseInputBuffer(Lcom/google/android/exoplr2avp/text/cea/CeaDecoder$CeaInputBuffer;)V

    goto :goto_0

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder;->dequeuedInputBuffer:Lcom/google/android/exoplr2avp/text/cea/CeaDecoder$CeaInputBuffer;

    if-eqz v0, :cond_1

    .line 145
    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder;->releaseInputBuffer(Lcom/google/android/exoplr2avp/text/cea/CeaDecoder$CeaInputBuffer;)V

    const/4 v0, 0x0

    .line 146
    iput-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder;->dequeuedInputBuffer:Lcom/google/android/exoplr2avp/text/cea/CeaDecoder$CeaInputBuffer;

    :cond_1
    return-void
.end method

.method protected final getAvailableOutputBuffer()Lcom/google/android/exoplr2avp/text/SubtitleOutputBuffer;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder;->availableOutputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/text/SubtitleOutputBuffer;

    return-object v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method protected final getPositionUs()J
    .locals 2

    .line 173
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder;->playbackPositionUs:J

    return-wide v0
.end method

.method protected abstract isNewSubtitleDataAvailable()Z
.end method

.method public queueInputBuffer(Lcom/google/android/exoplr2avp/text/SubtitleInputBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/text/SubtitleDecoderException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder;->dequeuedInputBuffer:Lcom/google/android/exoplr2avp/text/cea/CeaDecoder$CeaInputBuffer;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkArgument(Z)V

    .line 80
    check-cast p1, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder$CeaInputBuffer;

    .line 81
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder$CeaInputBuffer;->isDecodeOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder;->releaseInputBuffer(Lcom/google/android/exoplr2avp/text/cea/CeaDecoder$CeaInputBuffer;)V

    goto :goto_1

    .line 85
    :cond_1
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder;->queuedInputBufferCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder;->queuedInputBufferCount:J

    invoke-static {p1, v0, v1}, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder$CeaInputBuffer;->access$102(Lcom/google/android/exoplr2avp/text/cea/CeaDecoder$CeaInputBuffer;J)J

    .line 86
    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder;->queuedInputBuffers:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    :goto_1
    const/4 p1, 0x0

    .line 88
    iput-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder;->dequeuedInputBuffer:Lcom/google/android/exoplr2avp/text/cea/CeaDecoder$CeaInputBuffer;

    return-void
.end method

.method public bridge synthetic queueInputBuffer(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/decoder/DecoderException;
        }
    .end annotation

    .line 32
    check-cast p1, Lcom/google/android/exoplr2avp/text/SubtitleInputBuffer;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder;->queueInputBuffer(Lcom/google/android/exoplr2avp/text/SubtitleInputBuffer;)V

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method protected releaseOutputBuffer(Lcom/google/android/exoplr2avp/text/SubtitleOutputBuffer;)V
    .locals 1

    .line 133
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/text/SubtitleOutputBuffer;->clear()V

    .line 134
    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder;->availableOutputBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setPositionUs(J)V
    .locals 0

    .line 63
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder;->playbackPositionUs:J

    return-void
.end method
