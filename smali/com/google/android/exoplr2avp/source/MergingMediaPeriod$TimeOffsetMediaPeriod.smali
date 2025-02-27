.class final Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$TimeOffsetMediaPeriod;
.super Ljava/lang/Object;
.source "MergingMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/source/MediaPeriod;
.implements Lcom/google/android/exoplr2avp/source/MediaPeriod$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/source/MergingMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TimeOffsetMediaPeriod"
.end annotation


# instance fields
.field private callback:Lcom/google/android/exoplr2avp/source/MediaPeriod$Callback;

.field private final mediaPeriod:Lcom/google/android/exoplr2avp/source/MediaPeriod;

.field private final timeOffsetUs:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/source/MediaPeriod;J)V
    .locals 0

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->mediaPeriod:Lcom/google/android/exoplr2avp/source/MediaPeriod;

    .line 317
    iput-wide p2, p0, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->timeOffsetUs:J

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$TimeOffsetMediaPeriod;)Lcom/google/android/exoplr2avp/source/MediaPeriod;
    .locals 0

    .line 308
    iget-object p0, p0, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->mediaPeriod:Lcom/google/android/exoplr2avp/source/MediaPeriod;

    return-object p0
.end method


# virtual methods
.method public continueLoading(J)Z
    .locals 3

    .line 414
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->mediaPeriod:Lcom/google/android/exoplr2avp/source/MediaPeriod;

    iget-wide v1, p0, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->timeOffsetUs:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplr2avp/source/MediaPeriod;->continueLoading(J)Z

    move-result p1

    return p1
.end method

.method public discardBuffer(JZ)V
    .locals 3

    .line 374
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->mediaPeriod:Lcom/google/android/exoplr2avp/source/MediaPeriod;

    iget-wide v1, p0, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->timeOffsetUs:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplr2avp/source/MediaPeriod;->discardBuffer(JZ)V

    return-void
.end method

.method public getAdjustedSeekPositionUs(JLcom/google/android/exoplr2avp/SeekParameters;)J
    .locals 3

    .line 392
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->mediaPeriod:Lcom/google/android/exoplr2avp/source/MediaPeriod;

    iget-wide v1, p0, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->timeOffsetUs:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplr2avp/source/MediaPeriod;->getAdjustedSeekPositionUs(JLcom/google/android/exoplr2avp/SeekParameters;)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->timeOffsetUs:J

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public getBufferedPositionUs()J
    .locals 5

    .line 398
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->mediaPeriod:Lcom/google/android/exoplr2avp/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    .line 401
    :cond_0
    iget-wide v2, p0, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->timeOffsetUs:J

    add-long/2addr v2, v0

    :goto_0
    return-wide v2
.end method

.method public getNextLoadPositionUs()J
    .locals 5

    .line 406
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->mediaPeriod:Lcom/google/android/exoplr2avp/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/source/MediaPeriod;->getNextLoadPositionUs()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    .line 409
    :cond_0
    iget-wide v2, p0, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->timeOffsetUs:J

    add-long/2addr v2, v0

    :goto_0
    return-wide v2
.end method

.method public getStreamKeys(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/offline/StreamKey;",
            ">;"
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->mediaPeriod:Lcom/google/android/exoplr2avp/source/MediaPeriod;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/source/MediaPeriod;->getStreamKeys(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getTrackGroups()Lcom/google/android/exoplr2avp/source/TrackGroupArray;
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->mediaPeriod:Lcom/google/android/exoplr2avp/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/source/MediaPeriod;->getTrackGroups()Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    move-result-object v0

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->mediaPeriod:Lcom/google/android/exoplr2avp/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/source/MediaPeriod;->isLoading()Z

    move-result v0

    return v0
.end method

.method public maybeThrowPrepareError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 328
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->mediaPeriod:Lcom/google/android/exoplr2avp/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/source/MediaPeriod;->maybeThrowPrepareError()V

    return-void
.end method

.method public onContinueLoadingRequested(Lcom/google/android/exoplr2avp/source/MediaPeriod;)V
    .locals 0

    .line 434
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->callback:Lcom/google/android/exoplr2avp/source/MediaPeriod$Callback;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lcom/google/android/exoplr2avp/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplr2avp/source/SequenceableLoader;)V

    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Lcom/google/android/exoplr2avp/source/SequenceableLoader;)V
    .locals 0

    .line 308
    check-cast p1, Lcom/google/android/exoplr2avp/source/MediaPeriod;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->onContinueLoadingRequested(Lcom/google/android/exoplr2avp/source/MediaPeriod;)V

    return-void
.end method

.method public onPrepared(Lcom/google/android/exoplr2avp/source/MediaPeriod;)V
    .locals 0

    .line 429
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->callback:Lcom/google/android/exoplr2avp/source/MediaPeriod$Callback;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lcom/google/android/exoplr2avp/source/MediaPeriod$Callback;->onPrepared(Lcom/google/android/exoplr2avp/source/MediaPeriod;)V

    return-void
.end method

.method public prepare(Lcom/google/android/exoplr2avp/source/MediaPeriod$Callback;J)V
    .locals 2

    .line 322
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->callback:Lcom/google/android/exoplr2avp/source/MediaPeriod$Callback;

    .line 323
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->mediaPeriod:Lcom/google/android/exoplr2avp/source/MediaPeriod;

    iget-wide v0, p0, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->timeOffsetUs:J

    sub-long/2addr p2, v0

    invoke-interface {p1, p0, p2, p3}, Lcom/google/android/exoplr2avp/source/MediaPeriod;->prepare(Lcom/google/android/exoplr2avp/source/MediaPeriod$Callback;J)V

    return-void
.end method

.method public readDiscontinuity()J
    .locals 5

    .line 379
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->mediaPeriod:Lcom/google/android/exoplr2avp/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    .line 382
    :cond_0
    iget-wide v2, p0, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->timeOffsetUs:J

    add-long/2addr v2, v0

    :goto_0
    return-wide v2
.end method

.method public reevaluateBuffer(J)V
    .locals 3

    .line 424
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->mediaPeriod:Lcom/google/android/exoplr2avp/source/MediaPeriod;

    iget-wide v1, p0, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->timeOffsetUs:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplr2avp/source/MediaPeriod;->reevaluateBuffer(J)V

    return-void
.end method

.method public seekToUs(J)J
    .locals 3

    .line 387
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->mediaPeriod:Lcom/google/android/exoplr2avp/source/MediaPeriod;

    iget-wide v1, p0, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->timeOffsetUs:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplr2avp/source/MediaPeriod;->seekToUs(J)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->timeOffsetUs:J

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public selectTracks([Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;[Z[Lcom/google/android/exoplr2avp/source/SampleStream;[ZJ)J
    .locals 12

    move-object v0, p0

    move-object v1, p3

    .line 348
    array-length v2, v1

    new-array v2, v2, [Lcom/google/android/exoplr2avp/source/SampleStream;

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 349
    :goto_0
    array-length v4, v1

    const/4 v11, 0x0

    if-ge v3, v4, :cond_1

    .line 350
    aget-object v4, v1, v3

    check-cast v4, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$TimeOffsetSampleStream;

    if-eqz v4, :cond_0

    .line 351
    invoke-virtual {v4}, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$TimeOffsetSampleStream;->getChildStream()Lcom/google/android/exoplr2avp/source/SampleStream;

    move-result-object v11

    :cond_0
    aput-object v11, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 353
    :cond_1
    iget-object v3, v0, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->mediaPeriod:Lcom/google/android/exoplr2avp/source/MediaPeriod;

    iget-wide v4, v0, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->timeOffsetUs:J

    sub-long v8, p5, v4

    move-object v4, p1

    move-object v5, p2

    move-object v6, v2

    move-object/from16 v7, p4

    .line 354
    invoke-interface/range {v3 .. v9}, Lcom/google/android/exoplr2avp/source/MediaPeriod;->selectTracks([Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;[Z[Lcom/google/android/exoplr2avp/source/SampleStream;[ZJ)J

    move-result-wide v3

    .line 360
    :goto_1
    array-length v5, v1

    if-ge v10, v5, :cond_5

    .line 361
    aget-object v5, v2, v10

    if-nez v5, :cond_2

    .line 363
    aput-object v11, v1, v10

    goto :goto_2

    .line 364
    :cond_2
    aget-object v6, v1, v10

    if-eqz v6, :cond_3

    aget-object v6, v1, v10

    check-cast v6, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$TimeOffsetSampleStream;

    .line 365
    invoke-virtual {v6}, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$TimeOffsetSampleStream;->getChildStream()Lcom/google/android/exoplr2avp/source/SampleStream;

    move-result-object v6

    if-eq v6, v5, :cond_4

    .line 366
    :cond_3
    new-instance v6, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$TimeOffsetSampleStream;

    iget-wide v7, v0, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->timeOffsetUs:J

    invoke-direct {v6, v5, v7, v8}, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$TimeOffsetSampleStream;-><init>(Lcom/google/android/exoplr2avp/source/SampleStream;J)V

    aput-object v6, v1, v10

    :cond_4
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 369
    :cond_5
    iget-wide v1, v0, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->timeOffsetUs:J

    add-long/2addr v3, v1

    return-wide v3
.end method
