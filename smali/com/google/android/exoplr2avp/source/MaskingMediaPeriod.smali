.class public final Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;
.super Ljava/lang/Object;
.source "MaskingMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/source/MediaPeriod;
.implements Lcom/google/android/exoplr2avp/source/MediaPeriod$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod$PrepareListener;
    }
.end annotation


# instance fields
.field private final allocator:Lcom/google/android/exoplr2avp/upstream/Allocator;

.field private callback:Lcom/google/android/exoplr2avp/source/MediaPeriod$Callback;

.field public final id:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

.field private listener:Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod$PrepareListener;

.field private mediaPeriod:Lcom/google/android/exoplr2avp/source/MediaPeriod;

.field private mediaSource:Lcom/google/android/exoplr2avp/source/MediaSource;

.field private notifiedPrepareError:Z

.field private preparePositionOverrideUs:J

.field private final preparePositionUs:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplr2avp/upstream/Allocator;J)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;->id:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    .line 77
    iput-object p2, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;->allocator:Lcom/google/android/exoplr2avp/upstream/Allocator;

    .line 78
    iput-wide p3, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;->preparePositionUs:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 79
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;->preparePositionOverrideUs:J

    return-void
.end method

.method private getPreparePositionWithOverride(J)J
    .locals 5

    .line 250
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;->preparePositionOverrideUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    move-wide p1, v0

    :cond_0
    return-wide p1
.end method


# virtual methods
.method public continueLoading(J)Z
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplr2avp/source/MediaPeriod;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplr2avp/source/MediaPeriod;->continueLoading(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public createPeriod(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)V
    .locals 4

    .line 127
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;->preparePositionUs:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;->getPreparePositionWithOverride(J)J

    move-result-wide v0

    .line 128
    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;->mediaSource:Lcom/google/android/exoplr2avp/source/MediaSource;

    invoke-static {v2}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplr2avp/source/MediaSource;

    iget-object v3, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;->allocator:Lcom/google/android/exoplr2avp/upstream/Allocator;

    invoke-interface {v2, p1, v3, v0, v1}, Lcom/google/android/exoplr2avp/source/MediaSource;->createPeriod(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplr2avp/upstream/Allocator;J)Lcom/google/android/exoplr2avp/source/MediaPeriod;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplr2avp/source/MediaPeriod;

    .line 129
    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;->callback:Lcom/google/android/exoplr2avp/source/MediaPeriod$Callback;

    if-eqz v2, :cond_0

    .line 130
    invoke-interface {p1, p0, v0, v1}, Lcom/google/android/exoplr2avp/source/MediaPeriod;->prepare(Lcom/google/android/exoplr2avp/source/MediaPeriod$Callback;J)V

    :cond_0
    return-void
.end method

.method public discardBuffer(JZ)V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplr2avp/source/MediaPeriod;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/source/MediaPeriod;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplr2avp/source/MediaPeriod;->discardBuffer(JZ)V

    return-void
.end method

.method public getAdjustedSeekPositionUs(JLcom/google/android/exoplr2avp/SeekParameters;)J
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplr2avp/source/MediaPeriod;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/source/MediaPeriod;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplr2avp/source/MediaPeriod;->getAdjustedSeekPositionUs(JLcom/google/android/exoplr2avp/SeekParameters;)J

    move-result-wide p1

    return-wide p1
.end method

.method public getBufferedPositionUs()J
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplr2avp/source/MediaPeriod;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplr2avp/source/MediaPeriod;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/source/MediaPeriod;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPreparePositionOverrideUs()J
    .locals 2

    .line 110
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;->preparePositionOverrideUs:J

    return-wide v0
.end method

.method public getPreparePositionUs()J
    .locals 2

    .line 95
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;->preparePositionUs:J

    return-wide v0
.end method

.method public synthetic getStreamKeys(Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/source/MediaPeriod$-CC;->$default$getStreamKeys(Lcom/google/android/exoplr2avp/source/MediaPeriod;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getTrackGroups()Lcom/google/android/exoplr2avp/source/TrackGroupArray;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplr2avp/source/MediaPeriod;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/source/MediaPeriod;->getTrackGroups()Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    move-result-object v0

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplr2avp/source/MediaPeriod;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/source/MediaPeriod;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public maybeThrowPrepareError()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplr2avp/source/MediaPeriod;

    if-eqz v0, :cond_0

    .line 154
    invoke-interface {v0}, Lcom/google/android/exoplr2avp/source/MediaPeriod;->maybeThrowPrepareError()V

    goto :goto_0

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;->mediaSource:Lcom/google/android/exoplr2avp/source/MediaSource;

    if-eqz v0, :cond_1

    .line 156
    invoke-interface {v0}, Lcom/google/android/exoplr2avp/source/MediaSource;->maybeThrowSourceInfoRefreshError()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 159
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;->listener:Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod$PrepareListener;

    if-eqz v1, :cond_2

    .line 162
    iget-boolean v2, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;->notifiedPrepareError:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    .line 163
    iput-boolean v2, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;->notifiedPrepareError:Z

    .line 164
    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;->id:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    invoke-interface {v1, v2, v0}, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod$PrepareListener;->onPrepareError(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Ljava/io/IOException;)V

    :cond_1
    :goto_0
    return-void

    .line 160
    :cond_2
    throw v0
.end method

.method public onContinueLoadingRequested(Lcom/google/android/exoplr2avp/source/MediaPeriod;)V
    .locals 0

    .line 236
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;->callback:Lcom/google/android/exoplr2avp/source/MediaPeriod$Callback;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lcom/google/android/exoplr2avp/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplr2avp/source/SequenceableLoader;)V

    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Lcom/google/android/exoplr2avp/source/SequenceableLoader;)V
    .locals 0

    .line 38
    check-cast p1, Lcom/google/android/exoplr2avp/source/MediaPeriod;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;->onContinueLoadingRequested(Lcom/google/android/exoplr2avp/source/MediaPeriod;)V

    return-void
.end method

.method public onPrepared(Lcom/google/android/exoplr2avp/source/MediaPeriod;)V
    .locals 1

    .line 243
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;->callback:Lcom/google/android/exoplr2avp/source/MediaPeriod$Callback;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lcom/google/android/exoplr2avp/source/MediaPeriod$Callback;->onPrepared(Lcom/google/android/exoplr2avp/source/MediaPeriod;)V

    .line 244
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;->listener:Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod$PrepareListener;

    if-eqz p1, :cond_0

    .line 245
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;->id:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    invoke-interface {p1, v0}, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod$PrepareListener;->onPrepareComplete(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)V

    :cond_0
    return-void
.end method

.method public overridePreparePositionUs(J)V
    .locals 0

    .line 105
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;->preparePositionOverrideUs:J

    return-void
.end method

.method public prepare(Lcom/google/android/exoplr2avp/source/MediaPeriod$Callback;J)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;->callback:Lcom/google/android/exoplr2avp/source/MediaPeriod$Callback;

    .line 144
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplr2avp/source/MediaPeriod;

    if-eqz p1, :cond_0

    .line 145
    iget-wide p2, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;->preparePositionUs:J

    .line 146
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;->getPreparePositionWithOverride(J)J

    move-result-wide p2

    .line 145
    invoke-interface {p1, p0, p2, p3}, Lcom/google/android/exoplr2avp/source/MediaPeriod;->prepare(Lcom/google/android/exoplr2avp/source/MediaPeriod$Callback;J)V

    :cond_0
    return-void
.end method

.method public readDiscontinuity()J
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplr2avp/source/MediaPeriod;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v0

    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplr2avp/source/MediaPeriod;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/source/MediaPeriod;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplr2avp/source/MediaPeriod;->reevaluateBuffer(J)V

    return-void
.end method

.method public releasePeriod()V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplr2avp/source/MediaPeriod;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;->mediaSource:Lcom/google/android/exoplr2avp/source/MediaSource;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/source/MediaSource;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplr2avp/source/MediaPeriod;

    invoke-interface {v0, v1}, Lcom/google/android/exoplr2avp/source/MediaSource;->releasePeriod(Lcom/google/android/exoplr2avp/source/MediaPeriod;)V

    :cond_0
    return-void
.end method

.method public seekToUs(J)J
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplr2avp/source/MediaPeriod;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/source/MediaPeriod;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplr2avp/source/MediaPeriod;->seekToUs(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public selectTracks([Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;[Z[Lcom/google/android/exoplr2avp/source/SampleStream;[ZJ)J
    .locals 15

    move-object v0, p0

    .line 181
    iget-wide v1, v0, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;->preparePositionOverrideUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-wide v5, v0, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;->preparePositionUs:J

    cmp-long v7, p5, v5

    if-nez v7, :cond_0

    .line 183
    iput-wide v3, v0, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;->preparePositionOverrideUs:J

    move-wide v13, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v13, p5

    .line 185
    :goto_0
    iget-object v1, v0, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplr2avp/source/MediaPeriod;

    invoke-static {v1}, Lcom/google/android/exoplr2avp/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/google/android/exoplr2avp/source/MediaPeriod;

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    .line 186
    invoke-interface/range {v8 .. v14}, Lcom/google/android/exoplr2avp/source/MediaPeriod;->selectTracks([Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;[Z[Lcom/google/android/exoplr2avp/source/SampleStream;[ZJ)J

    move-result-wide v1

    return-wide v1
.end method

.method public setMediaSource(Lcom/google/android/exoplr2avp/source/MediaSource;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;->mediaSource:Lcom/google/android/exoplr2avp/source/MediaSource;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 116
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;->mediaSource:Lcom/google/android/exoplr2avp/source/MediaSource;

    return-void
.end method

.method public setPrepareListener(Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod$PrepareListener;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;->listener:Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod$PrepareListener;

    return-void
.end method
