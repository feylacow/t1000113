.class final Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;
.super Ljava/lang/Object;
.source "RtpExtractor.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/extractor/Extractor;


# instance fields
.field private firstPacketRead:Z

.field private volatile firstSequenceNumber:I

.field private volatile firstTimestamp:J

.field private isSeekPending:Z

.field private final lock:Ljava/lang/Object;

.field private nextRtpTimestamp:J

.field private output:Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;

.field private final payloadReader:Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpPayloadReader;

.field private playbackStartTimeUs:J

.field private final reorderingQueue:Lcom/google/android/exoplr2avp/source/rtsp/RtpPacketReorderingQueue;

.field private final rtpPacketDataBuffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

.field private final rtpPacketScratchBuffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

.field private final trackId:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/source/rtsp/RtpPayloadFormat;I)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p2, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;->trackId:I

    .line 63
    new-instance p2, Lcom/google/android/exoplr2avp/source/rtsp/reader/DefaultRtpPayloadReaderFactory;

    invoke-direct {p2}, Lcom/google/android/exoplr2avp/source/rtsp/reader/DefaultRtpPayloadReaderFactory;-><init>()V

    .line 64
    invoke-virtual {p2, p1}, Lcom/google/android/exoplr2avp/source/rtsp/reader/DefaultRtpPayloadReaderFactory;->createPayloadReader(Lcom/google/android/exoplr2avp/source/rtsp/RtpPayloadFormat;)Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpPayloadReader;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpPayloadReader;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;->payloadReader:Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpPayloadReader;

    .line 65
    new-instance p1, Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    const p2, 0xffe3

    invoke-direct {p1, p2}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;->rtpPacketScratchBuffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    .line 66
    new-instance p1, Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-direct {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;->rtpPacketDataBuffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    .line 67
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;->lock:Ljava/lang/Object;

    .line 68
    new-instance p1, Lcom/google/android/exoplr2avp/source/rtsp/RtpPacketReorderingQueue;

    invoke-direct {p1}, Lcom/google/android/exoplr2avp/source/rtsp/RtpPacketReorderingQueue;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;->reorderingQueue:Lcom/google/android/exoplr2avp/source/rtsp/RtpPacketReorderingQueue;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 69
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;->firstTimestamp:J

    const/4 v0, -0x1

    .line 70
    iput v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;->firstSequenceNumber:I

    .line 71
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;->nextRtpTimestamp:J

    .line 72
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;->playbackStartTimeUs:J

    return-void
.end method

.method private static getCutoffTimeMs(J)J
    .locals 2

    const-wide/16 v0, 0x1e

    sub-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public hasReadFirstRtpPacket()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;->firstPacketRead:Z

    return v0
.end method

.method public init(Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;)V
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;->payloadReader:Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpPayloadReader;

    iget v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;->trackId:I

    invoke-interface {v0, p1, v1}, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpPayloadReader;->createTracks(Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;I)V

    .line 116
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;->endTracks()V

    .line 118
    new-instance v0, Lcom/google/android/exoplr2avp/extractor/SeekMap$Unseekable;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplr2avp/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {p1, v0}, Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplr2avp/extractor/SeekMap;)V

    .line 119
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;->output:Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;

    return-void
.end method

.method public preSeek()V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 103
    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;->isSeekPending:Z

    .line 104
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public read(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;Lcom/google/android/exoplr2avp/extractor/PositionHolder;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    iget-object p2, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;->output:Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;

    invoke-static {p2}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object p2, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;->rtpPacketScratchBuffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object p2

    const/4 v0, 0x0

    const v1, 0xffe3

    invoke-interface {p1, p2, v0, v1}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    :cond_0
    if-nez p1, :cond_1

    return v0

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;->rtpPacketScratchBuffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->setPosition(I)V

    .line 135
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;->rtpPacketScratchBuffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->setLimit(I)V

    .line 136
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;->rtpPacketScratchBuffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/source/rtsp/RtpPacket;->parse(Lcom/google/android/exoplr2avp/util/ParsableByteArray;)Lcom/google/android/exoplr2avp/source/rtsp/RtpPacket;

    move-result-object p1

    if-nez p1, :cond_2

    return v0

    .line 141
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 142
    invoke-static {v1, v2}, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;->getCutoffTimeMs(J)J

    move-result-wide v3

    .line 143
    iget-object v5, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;->reorderingQueue:Lcom/google/android/exoplr2avp/source/rtsp/RtpPacketReorderingQueue;

    invoke-virtual {v5, p1, v1, v2}, Lcom/google/android/exoplr2avp/source/rtsp/RtpPacketReorderingQueue;->offer(Lcom/google/android/exoplr2avp/source/rtsp/RtpPacket;J)Z

    .line 144
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;->reorderingQueue:Lcom/google/android/exoplr2avp/source/rtsp/RtpPacketReorderingQueue;

    invoke-virtual {p1, v3, v4}, Lcom/google/android/exoplr2avp/source/rtsp/RtpPacketReorderingQueue;->poll(J)Lcom/google/android/exoplr2avp/source/rtsp/RtpPacket;

    move-result-object p1

    if-nez p1, :cond_3

    return v0

    .line 151
    :cond_3
    iget-boolean v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;->firstPacketRead:Z

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v1, :cond_6

    .line 154
    iget-wide v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;->firstTimestamp:J

    cmp-long v7, v1, v5

    if-nez v7, :cond_4

    .line 155
    iget-wide v1, p1, Lcom/google/android/exoplr2avp/source/rtsp/RtpPacket;->timestamp:J

    iput-wide v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;->firstTimestamp:J

    .line 157
    :cond_4
    iget v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;->firstSequenceNumber:I

    if-ne v1, p2, :cond_5

    .line 158
    iget p2, p1, Lcom/google/android/exoplr2avp/source/rtsp/RtpPacket;->sequenceNumber:I

    iput p2, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;->firstSequenceNumber:I

    .line 160
    :cond_5
    iget-object p2, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;->payloadReader:Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpPayloadReader;

    iget-wide v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;->firstTimestamp:J

    iget v7, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;->firstSequenceNumber:I

    invoke-interface {p2, v1, v2, v7}, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpPayloadReader;->onReceivingFirstPacket(JI)V

    const/4 p2, 0x1

    .line 161
    iput-boolean p2, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;->firstPacketRead:Z

    .line 164
    :cond_6
    iget-object p2, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;->lock:Ljava/lang/Object;

    monitor-enter p2

    .line 166
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;->isSeekPending:Z

    if-eqz v1, :cond_7

    .line 167
    iget-wide v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;->nextRtpTimestamp:J

    cmp-long p1, v1, v5

    if-eqz p1, :cond_8

    iget-wide v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;->playbackStartTimeUs:J

    cmp-long p1, v1, v5

    if-eqz p1, :cond_8

    .line 168
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;->reorderingQueue:Lcom/google/android/exoplr2avp/source/rtsp/RtpPacketReorderingQueue;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/source/rtsp/RtpPacketReorderingQueue;->reset()V

    .line 169
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;->payloadReader:Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpPayloadReader;

    iget-wide v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;->nextRtpTimestamp:J

    iget-wide v3, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;->playbackStartTimeUs:J

    invoke-interface {p1, v1, v2, v3, v4}, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpPayloadReader;->seek(JJ)V

    .line 170
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;->isSeekPending:Z

    .line 171
    iput-wide v5, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;->nextRtpTimestamp:J

    .line 172
    iput-wide v5, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;->playbackStartTimeUs:J

    goto :goto_0

    .line 177
    :cond_7
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;->rtpPacketDataBuffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    iget-object v2, p1, Lcom/google/android/exoplr2avp/source/rtsp/RtpPacket;->payloadData:[B

    invoke-virtual {v1, v2}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->reset([B)V

    .line 178
    iget-object v5, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;->payloadReader:Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpPayloadReader;

    iget-object v6, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;->rtpPacketDataBuffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    iget-wide v7, p1, Lcom/google/android/exoplr2avp/source/rtsp/RtpPacket;->timestamp:J

    iget v9, p1, Lcom/google/android/exoplr2avp/source/rtsp/RtpPacket;->sequenceNumber:I

    iget-boolean v10, p1, Lcom/google/android/exoplr2avp/source/rtsp/RtpPacket;->marker:Z

    invoke-interface/range {v5 .. v10}, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpPayloadReader;->consume(Lcom/google/android/exoplr2avp/util/ParsableByteArray;JIZ)V

    .line 180
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;->reorderingQueue:Lcom/google/android/exoplr2avp/source/rtsp/RtpPacketReorderingQueue;

    invoke-virtual {p1, v3, v4}, Lcom/google/android/exoplr2avp/source/rtsp/RtpPacketReorderingQueue;->poll(J)Lcom/google/android/exoplr2avp/source/rtsp/RtpPacket;

    move-result-object p1

    if-nez p1, :cond_7

    .line 183
    :cond_8
    :goto_0
    monitor-exit p2

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 190
    :try_start_0
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;->nextRtpTimestamp:J

    .line 191
    iput-wide p3, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;->playbackStartTimeUs:J

    .line 192
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setFirstSequenceNumber(I)V
    .locals 0

    .line 82
    iput p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;->firstSequenceNumber:I

    return-void
.end method

.method public setFirstTimestamp(J)V
    .locals 0

    .line 77
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtpExtractor;->firstTimestamp:J

    return-void
.end method

.method public sniff(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)Z
    .locals 1

    .line 109
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "RTP packets are transmitted in a packet stream do not support sniffing."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
