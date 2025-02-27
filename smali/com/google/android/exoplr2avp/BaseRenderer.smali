.class public abstract Lcom/google/android/exoplr2avp/BaseRenderer;
.super Ljava/lang/Object;
.source "BaseRenderer.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/Renderer;
.implements Lcom/google/android/exoplr2avp/RendererCapabilities;


# instance fields
.field private configuration:Lcom/google/android/exoplr2avp/RendererConfiguration;

.field private final formatHolder:Lcom/google/android/exoplr2avp/FormatHolder;

.field private index:I

.field private lastResetPositionUs:J

.field private playerId:Lcom/google/android/exoplr2avp/analytics/PlayerId;

.field private readingPositionUs:J

.field private state:I

.field private stream:Lcom/google/android/exoplr2avp/source/SampleStream;

.field private streamFormats:[Lcom/google/android/exoplr2avp/Format;

.field private streamIsFinal:Z

.field private streamOffsetUs:J

.field private throwRendererExceptionIsExecuting:Z

.field private final trackType:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Lcom/google/android/exoplr2avp/BaseRenderer;->trackType:I

    .line 57
    new-instance p1, Lcom/google/android/exoplr2avp/FormatHolder;

    invoke-direct {p1}, Lcom/google/android/exoplr2avp/FormatHolder;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/BaseRenderer;->formatHolder:Lcom/google/android/exoplr2avp/FormatHolder;

    const-wide/high16 v0, -0x8000000000000000L

    .line 58
    iput-wide v0, p0, Lcom/google/android/exoplr2avp/BaseRenderer;->readingPositionUs:J

    return-void
.end method

.method private resetPosition(JZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 165
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/BaseRenderer;->streamIsFinal:Z

    .line 166
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/BaseRenderer;->lastResetPositionUs:J

    .line 167
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/BaseRenderer;->readingPositionUs:J

    .line 168
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/BaseRenderer;->onPositionReset(JZ)V

    return-void
.end method


# virtual methods
.method protected final createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplr2avp/Format;I)Lcom/google/android/exoplr2avp/ExoPlaybackException;
    .locals 1

    const/4 v0, 0x0

    .line 369
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/android/exoplr2avp/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplr2avp/Format;ZI)Lcom/google/android/exoplr2avp/ExoPlaybackException;

    move-result-object p1

    return-object p1
.end method

.method protected final createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplr2avp/Format;ZI)Lcom/google/android/exoplr2avp/ExoPlaybackException;
    .locals 9

    if-eqz p2, :cond_0

    .line 389
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/BaseRenderer;->throwRendererExceptionIsExecuting:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 391
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/BaseRenderer;->throwRendererExceptionIsExecuting:Z

    const/4 v0, 0x0

    .line 393
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/android/exoplr2avp/BaseRenderer;->supportsFormat(Lcom/google/android/exoplr2avp/Format;)I

    move-result v1

    invoke-static {v1}, Lcom/google/android/exoplr2avp/RendererCapabilities$-CC;->getFormatSupport(I)I

    move-result v1
    :try_end_0
    .catch Lcom/google/android/exoplr2avp/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/BaseRenderer;->throwRendererExceptionIsExecuting:Z

    move v6, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/BaseRenderer;->throwRendererExceptionIsExecuting:Z

    .line 398
    throw p1

    .line 397
    :catch_0
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/BaseRenderer;->throwRendererExceptionIsExecuting:Z

    :cond_0
    const/4 v1, 0x4

    const/4 v6, 0x4

    .line 401
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BaseRenderer;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BaseRenderer;->getIndex()I

    move-result v4

    move-object v2, p1

    move-object v5, p2

    move v7, p3

    move v8, p4

    .line 400
    invoke-static/range {v2 .. v8}, Lcom/google/android/exoplr2avp/ExoPlaybackException;->createForRenderer(Ljava/lang/Throwable;Ljava/lang/String;ILcom/google/android/exoplr2avp/Format;IZI)Lcom/google/android/exoplr2avp/ExoPlaybackException;

    move-result-object p1

    return-object p1
.end method

.method public final disable()V
    .locals 3

    .line 180
    iget v0, p0, Lcom/google/android/exoplr2avp/BaseRenderer;->state:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 181
    iget-object v0, p0, Lcom/google/android/exoplr2avp/BaseRenderer;->formatHolder:Lcom/google/android/exoplr2avp/FormatHolder;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/FormatHolder;->clear()V

    .line 182
    iput v2, p0, Lcom/google/android/exoplr2avp/BaseRenderer;->state:I

    const/4 v0, 0x0

    .line 183
    iput-object v0, p0, Lcom/google/android/exoplr2avp/BaseRenderer;->stream:Lcom/google/android/exoplr2avp/source/SampleStream;

    .line 184
    iput-object v0, p0, Lcom/google/android/exoplr2avp/BaseRenderer;->streamFormats:[Lcom/google/android/exoplr2avp/Format;

    .line 185
    iput-boolean v2, p0, Lcom/google/android/exoplr2avp/BaseRenderer;->streamIsFinal:Z

    .line 186
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BaseRenderer;->onDisabled()V

    return-void
.end method

.method public final enable(Lcom/google/android/exoplr2avp/RendererConfiguration;[Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/source/SampleStream;JZZJJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    move-object v7, p0

    move v8, p6

    .line 99
    iget v0, v7, Lcom/google/android/exoplr2avp/BaseRenderer;->state:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    move-object v0, p1

    .line 100
    iput-object v0, v7, Lcom/google/android/exoplr2avp/BaseRenderer;->configuration:Lcom/google/android/exoplr2avp/RendererConfiguration;

    .line 101
    iput v1, v7, Lcom/google/android/exoplr2avp/BaseRenderer;->state:I

    move/from16 v0, p7

    .line 102
    invoke-virtual {p0, p6, v0}, Lcom/google/android/exoplr2avp/BaseRenderer;->onEnabled(ZZ)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-wide/from16 v3, p8

    move-wide/from16 v5, p10

    .line 103
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplr2avp/BaseRenderer;->replaceStream([Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/source/SampleStream;JJ)V

    move-wide v0, p4

    .line 104
    invoke-direct {p0, p4, p5, p6}, Lcom/google/android/exoplr2avp/BaseRenderer;->resetPosition(JZ)V

    return-void
.end method

.method public final getCapabilities()Lcom/google/android/exoplr2avp/RendererCapabilities;
    .locals 0

    return-object p0
.end method

.method protected final getConfiguration()Lcom/google/android/exoplr2avp/RendererConfiguration;
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/google/android/exoplr2avp/BaseRenderer;->configuration:Lcom/google/android/exoplr2avp/RendererConfiguration;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/RendererConfiguration;

    return-object v0
.end method

.method protected final getFormatHolder()Lcom/google/android/exoplr2avp/FormatHolder;
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/google/android/exoplr2avp/BaseRenderer;->formatHolder:Lcom/google/android/exoplr2avp/FormatHolder;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/FormatHolder;->clear()V

    .line 315
    iget-object v0, p0, Lcom/google/android/exoplr2avp/BaseRenderer;->formatHolder:Lcom/google/android/exoplr2avp/FormatHolder;

    return-object v0
.end method

.method protected final getIndex()I
    .locals 1

    .line 344
    iget v0, p0, Lcom/google/android/exoplr2avp/BaseRenderer;->index:I

    return v0
.end method

.method protected final getLastResetPositionUs()J
    .locals 2

    .line 309
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/BaseRenderer;->lastResetPositionUs:J

    return-wide v0
.end method

.method public getMediaClock()Lcom/google/android/exoplr2avp/util/MediaClock;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getPlayerId()Lcom/google/android/exoplr2avp/analytics/PlayerId;
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/google/android/exoplr2avp/BaseRenderer;->playerId:Lcom/google/android/exoplr2avp/analytics/PlayerId;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/analytics/PlayerId;

    return-object v0
.end method

.method public final getReadingPositionUs()J
    .locals 2

    .line 141
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/BaseRenderer;->readingPositionUs:J

    return-wide v0
.end method

.method public final getState()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/google/android/exoplr2avp/BaseRenderer;->state:I

    return v0
.end method

.method public final getStream()Lcom/google/android/exoplr2avp/source/SampleStream;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/google/android/exoplr2avp/BaseRenderer;->stream:Lcom/google/android/exoplr2avp/source/SampleStream;

    return-object v0
.end method

.method protected final getStreamFormats()[Lcom/google/android/exoplr2avp/Format;
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/google/android/exoplr2avp/BaseRenderer;->streamFormats:[Lcom/google/android/exoplr2avp/Format;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplr2avp/Format;

    return-object v0
.end method

.method public final getTrackType()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/google/android/exoplr2avp/BaseRenderer;->trackType:I

    return v0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method public final hasReadStreamToEnd()Z
    .locals 5

    .line 136
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/BaseRenderer;->readingPositionUs:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final init(ILcom/google/android/exoplr2avp/analytics/PlayerId;)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/google/android/exoplr2avp/BaseRenderer;->index:I

    .line 74
    iput-object p2, p0, Lcom/google/android/exoplr2avp/BaseRenderer;->playerId:Lcom/google/android/exoplr2avp/analytics/PlayerId;

    return-void
.end method

.method public final isCurrentStreamFinal()Z
    .locals 1

    .line 151
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/BaseRenderer;->streamIsFinal:Z

    return v0
.end method

.method protected final isSourceReady()Z
    .locals 1

    .line 468
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BaseRenderer;->hasReadStreamToEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/BaseRenderer;->streamIsFinal:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/BaseRenderer;->stream:Lcom/google/android/exoplr2avp/source/SampleStream;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/source/SampleStream;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/source/SampleStream;->isReady()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public final maybeThrowStreamError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/google/android/exoplr2avp/BaseRenderer;->stream:Lcom/google/android/exoplr2avp/source/SampleStream;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/source/SampleStream;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/source/SampleStream;->maybeThrowError()V

    return-void
.end method

.method protected onDisabled()V
    .locals 0

    return-void
.end method

.method protected onEnabled(ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method protected onPositionReset(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method protected onReset()V
    .locals 0

    return-void
.end method

.method protected onStarted()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method protected onStopped()V
    .locals 0

    return-void
.end method

.method protected onStreamChanged([Lcom/google/android/exoplr2avp/Format;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method protected final readSource(Lcom/google/android/exoplr2avp/FormatHolder;Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;I)I
    .locals 5

    .line 425
    iget-object v0, p0, Lcom/google/android/exoplr2avp/BaseRenderer;->stream:Lcom/google/android/exoplr2avp/source/SampleStream;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/source/SampleStream;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplr2avp/source/SampleStream;->readData(Lcom/google/android/exoplr2avp/FormatHolder;Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;I)I

    move-result p3

    const/4 v0, -0x4

    if-ne p3, v0, :cond_2

    .line 427
    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/high16 p1, -0x8000000000000000L

    .line 428
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/BaseRenderer;->readingPositionUs:J

    .line 429
    iget-boolean p1, p0, Lcom/google/android/exoplr2avp/BaseRenderer;->streamIsFinal:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x3

    :goto_0
    return v0

    .line 431
    :cond_1
    iget-wide v0, p2, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->timeUs:J

    iget-wide v2, p0, Lcom/google/android/exoplr2avp/BaseRenderer;->streamOffsetUs:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->timeUs:J

    .line 432
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/BaseRenderer;->readingPositionUs:J

    iget-wide p1, p2, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->timeUs:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplr2avp/BaseRenderer;->readingPositionUs:J

    goto :goto_1

    :cond_2
    const/4 p2, -0x5

    if-ne p3, p2, :cond_3

    .line 434
    iget-object p2, p1, Lcom/google/android/exoplr2avp/FormatHolder;->format:Lcom/google/android/exoplr2avp/Format;

    invoke-static {p2}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplr2avp/Format;

    .line 435
    iget-wide v0, p2, Lcom/google/android/exoplr2avp/Format;->subsampleOffsetUs:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    .line 438
    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/Format;->buildUpon()Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object v0

    iget-wide v1, p2, Lcom/google/android/exoplr2avp/Format;->subsampleOffsetUs:J

    iget-wide v3, p0, Lcom/google/android/exoplr2avp/BaseRenderer;->streamOffsetUs:J

    add-long/2addr v1, v3

    .line 439
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplr2avp/Format$Builder;->setSubsampleOffsetUs(J)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object p2

    .line 440
    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/Format$Builder;->build()Lcom/google/android/exoplr2avp/Format;

    move-result-object p2

    .line 441
    iput-object p2, p1, Lcom/google/android/exoplr2avp/FormatHolder;->format:Lcom/google/android/exoplr2avp/Format;

    :cond_3
    :goto_1
    return p3
.end method

.method public final replaceStream([Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/source/SampleStream;JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 118
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/BaseRenderer;->streamIsFinal:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 119
    iput-object p2, p0, Lcom/google/android/exoplr2avp/BaseRenderer;->stream:Lcom/google/android/exoplr2avp/source/SampleStream;

    .line 120
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/BaseRenderer;->readingPositionUs:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    .line 121
    iput-wide p3, p0, Lcom/google/android/exoplr2avp/BaseRenderer;->readingPositionUs:J

    .line 123
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplr2avp/BaseRenderer;->streamFormats:[Lcom/google/android/exoplr2avp/Format;

    .line 124
    iput-wide p5, p0, Lcom/google/android/exoplr2avp/BaseRenderer;->streamOffsetUs:J

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    .line 125
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplr2avp/BaseRenderer;->onStreamChanged([Lcom/google/android/exoplr2avp/Format;JJ)V

    return-void
.end method

.method public final reset()V
    .locals 1

    .line 191
    iget v0, p0, Lcom/google/android/exoplr2avp/BaseRenderer;->state:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 192
    iget-object v0, p0, Lcom/google/android/exoplr2avp/BaseRenderer;->formatHolder:Lcom/google/android/exoplr2avp/FormatHolder;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/FormatHolder;->clear()V

    .line 193
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BaseRenderer;->onReset()V

    return-void
.end method

.method public final resetPosition(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 161
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplr2avp/BaseRenderer;->resetPosition(JZ)V

    return-void
.end method

.method public final setCurrentStreamFinal()V
    .locals 1

    const/4 v0, 0x1

    .line 146
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/BaseRenderer;->streamIsFinal:Z

    return-void
.end method

.method public synthetic setPlaybackSpeed(FF)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/Renderer$-CC;->$default$setPlaybackSpeed(Lcom/google/android/exoplr2avp/Renderer;FF)V

    return-void
.end method

.method protected skipSource(J)I
    .locals 3

    .line 458
    iget-object v0, p0, Lcom/google/android/exoplr2avp/BaseRenderer;->stream:Lcom/google/android/exoplr2avp/source/SampleStream;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/source/SampleStream;

    iget-wide v1, p0, Lcom/google/android/exoplr2avp/BaseRenderer;->streamOffsetUs:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplr2avp/source/SampleStream;->skipData(J)I

    move-result p1

    return p1
.end method

.method public final start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 109
    iget v0, p0, Lcom/google/android/exoplr2avp/BaseRenderer;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    const/4 v0, 0x2

    .line 110
    iput v0, p0, Lcom/google/android/exoplr2avp/BaseRenderer;->state:I

    .line 111
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BaseRenderer;->onStarted()V

    return-void
.end method

.method public final stop()V
    .locals 3

    .line 173
    iget v0, p0, Lcom/google/android/exoplr2avp/BaseRenderer;->state:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 174
    iput v1, p0, Lcom/google/android/exoplr2avp/BaseRenderer;->state:I

    .line 175
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BaseRenderer;->onStopped()V

    return-void
.end method

.method public supportsMixedMimeTypeAdaptation()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method
