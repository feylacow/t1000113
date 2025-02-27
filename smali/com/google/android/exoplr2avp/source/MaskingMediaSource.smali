.class public final Lcom/google/android/exoplr2avp/source/MaskingMediaSource;
.super Lcom/google/android/exoplr2avp/source/CompositeMediaSource;
.source "MaskingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/source/MaskingMediaSource$PlaceholderTimeline;,
        Lcom/google/android/exoplr2avp/source/MaskingMediaSource$MaskingTimeline;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplr2avp/source/CompositeMediaSource<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private hasRealTimeline:Z

.field private hasStartedPreparing:Z

.field private isPrepared:Z

.field private final mediaSource:Lcom/google/android/exoplr2avp/source/MediaSource;

.field private final period:Lcom/google/android/exoplr2avp/Timeline$Period;

.field private timeline:Lcom/google/android/exoplr2avp/source/MaskingMediaSource$MaskingTimeline;

.field private unpreparedMaskingMediaPeriod:Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;

.field private final useLazyPreparation:Z

.field private final window:Lcom/google/android/exoplr2avp/Timeline$Window;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/source/MediaSource;Z)V
    .locals 1

    .line 59
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/source/CompositeMediaSource;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->mediaSource:Lcom/google/android/exoplr2avp/source/MediaSource;

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 61
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/source/MediaSource;->isSingleWindow()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->useLazyPreparation:Z

    .line 62
    new-instance p2, Lcom/google/android/exoplr2avp/Timeline$Window;

    invoke-direct {p2}, Lcom/google/android/exoplr2avp/Timeline$Window;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    .line 63
    new-instance p2, Lcom/google/android/exoplr2avp/Timeline$Period;

    invoke-direct {p2}, Lcom/google/android/exoplr2avp/Timeline$Period;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->period:Lcom/google/android/exoplr2avp/Timeline$Period;

    .line 64
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/source/MediaSource;->getInitialTimeline()Lcom/google/android/exoplr2avp/Timeline;

    move-result-object p2

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    .line 67
    invoke-static {p2, p1, p1}, Lcom/google/android/exoplr2avp/source/MaskingMediaSource$MaskingTimeline;->createWithRealTimeline(Lcom/google/android/exoplr2avp/Timeline;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/exoplr2avp/source/MaskingMediaSource$MaskingTimeline;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->timeline:Lcom/google/android/exoplr2avp/source/MaskingMediaSource$MaskingTimeline;

    .line 69
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->hasRealTimeline:Z

    goto :goto_1

    .line 71
    :cond_1
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/source/MediaSource;->getMediaItem()Lcom/google/android/exoplr2avp/MediaItem;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplr2avp/source/MaskingMediaSource$MaskingTimeline;->createWithPlaceholderTimeline(Lcom/google/android/exoplr2avp/MediaItem;)Lcom/google/android/exoplr2avp/source/MaskingMediaSource$MaskingTimeline;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->timeline:Lcom/google/android/exoplr2avp/source/MaskingMediaSource$MaskingTimeline;

    :goto_1
    return-void
.end method

.method private getExternalPeriodUid(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->timeline:Lcom/google/android/exoplr2avp/source/MaskingMediaSource$MaskingTimeline;

    .line 222
    invoke-static {v0}, Lcom/google/android/exoplr2avp/source/MaskingMediaSource$MaskingTimeline;->access$000(Lcom/google/android/exoplr2avp/source/MaskingMediaSource$MaskingTimeline;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->timeline:Lcom/google/android/exoplr2avp/source/MaskingMediaSource$MaskingTimeline;

    .line 223
    invoke-static {v0}, Lcom/google/android/exoplr2avp/source/MaskingMediaSource$MaskingTimeline;->access$000(Lcom/google/android/exoplr2avp/source/MaskingMediaSource$MaskingTimeline;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    sget-object p1, Lcom/google/android/exoplr2avp/source/MaskingMediaSource$MaskingTimeline;->MASKING_EXTERNAL_PERIOD_UID:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method private getInternalPeriodUid(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->timeline:Lcom/google/android/exoplr2avp/source/MaskingMediaSource$MaskingTimeline;

    .line 215
    invoke-static {v0}, Lcom/google/android/exoplr2avp/source/MaskingMediaSource$MaskingTimeline;->access$000(Lcom/google/android/exoplr2avp/source/MaskingMediaSource$MaskingTimeline;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/exoplr2avp/source/MaskingMediaSource$MaskingTimeline;->MASKING_EXTERNAL_PERIOD_UID:Ljava/lang/Object;

    .line 216
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->timeline:Lcom/google/android/exoplr2avp/source/MaskingMediaSource$MaskingTimeline;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/source/MaskingMediaSource$MaskingTimeline;->access$000(Lcom/google/android/exoplr2avp/source/MaskingMediaSource$MaskingTimeline;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private setPreparePositionOverrideToUnpreparedMaskingPeriod(J)V
    .locals 6
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "unpreparedMaskingMediaPeriod"
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->unpreparedMaskingMediaPeriod:Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;

    .line 231
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->timeline:Lcom/google/android/exoplr2avp/source/MaskingMediaSource$MaskingTimeline;

    iget-object v2, v0, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;->id:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-object v2, v2, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplr2avp/source/MaskingMediaSource$MaskingTimeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    .line 239
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->timeline:Lcom/google/android/exoplr2avp/source/MaskingMediaSource$MaskingTimeline;

    iget-object v3, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->period:Lcom/google/android/exoplr2avp/Timeline$Period;

    invoke-virtual {v2, v1, v3}, Lcom/google/android/exoplr2avp/source/MaskingMediaSource$MaskingTimeline;->getPeriod(ILcom/google/android/exoplr2avp/Timeline$Period;)Lcom/google/android/exoplr2avp/Timeline$Period;

    move-result-object v1

    iget-wide v1, v1, Lcom/google/android/exoplr2avp/Timeline$Period;->durationUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    cmp-long v3, p1, v1

    if-ltz v3, :cond_1

    const-wide/16 p1, 0x0

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    .line 243
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 246
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;->overridePreparePositionUs(J)V

    return-void
.end method


# virtual methods
.method public createPeriod(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplr2avp/upstream/Allocator;J)Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;
    .locals 1

    .line 104
    new-instance v0, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;-><init>(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplr2avp/upstream/Allocator;J)V

    .line 105
    iget-object p2, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->mediaSource:Lcom/google/android/exoplr2avp/source/MediaSource;

    invoke-virtual {v0, p2}, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;->setMediaSource(Lcom/google/android/exoplr2avp/source/MediaSource;)V

    .line 106
    iget-boolean p2, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->isPrepared:Z

    if-eqz p2, :cond_0

    .line 107
    iget-object p2, p1, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->getInternalPeriodUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->copyWithPeriodUid(Ljava/lang/Object;)Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    move-result-object p1

    .line 108
    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;->createPeriod(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)V

    goto :goto_0

    .line 113
    :cond_0
    iput-object v0, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->unpreparedMaskingMediaPeriod:Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;

    .line 114
    iget-boolean p1, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->hasStartedPreparing:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 115
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->hasStartedPreparing:Z

    const/4 p1, 0x0

    .line 116
    iget-object p2, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->mediaSource:Lcom/google/android/exoplr2avp/source/MediaSource;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->prepareChildSource(Ljava/lang/Object;Lcom/google/android/exoplr2avp/source/MediaSource;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public bridge synthetic createPeriod(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplr2avp/upstream/Allocator;J)Lcom/google/android/exoplr2avp/source/MediaPeriod;
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->createPeriod(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplr2avp/upstream/Allocator;J)Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;

    move-result-object p1

    return-object p1
.end method

.method public getMediaItem()Lcom/google/android/exoplr2avp/MediaItem;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->mediaSource:Lcom/google/android/exoplr2avp/source/MediaSource;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/source/MediaSource;->getMediaItem()Lcom/google/android/exoplr2avp/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Object;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;
    .locals 0

    .line 38
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Void;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    move-result-object p1

    return-object p1
.end method

.method protected getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Void;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;
    .locals 0

    .line 211
    iget-object p1, p2, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->getExternalPeriodUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->copyWithPeriodUid(Ljava/lang/Object;)Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    move-result-object p1

    return-object p1
.end method

.method public getTimeline()Lcom/google/android/exoplr2avp/Timeline;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->timeline:Lcom/google/android/exoplr2avp/source/MaskingMediaSource$MaskingTimeline;

    return-object v0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onChildSourceInfoRefreshed(Ljava/lang/Object;Lcom/google/android/exoplr2avp/source/MediaSource;Lcom/google/android/exoplr2avp/Timeline;)V
    .locals 0

    .line 38
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->onChildSourceInfoRefreshed(Ljava/lang/Void;Lcom/google/android/exoplr2avp/source/MediaSource;Lcom/google/android/exoplr2avp/Timeline;)V

    return-void
.end method

.method protected onChildSourceInfoRefreshed(Ljava/lang/Void;Lcom/google/android/exoplr2avp/source/MediaSource;Lcom/google/android/exoplr2avp/Timeline;)V
    .locals 12

    .line 141
    iget-boolean p1, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->isPrepared:Z

    if-eqz p1, :cond_0

    .line 142
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->timeline:Lcom/google/android/exoplr2avp/source/MaskingMediaSource$MaskingTimeline;

    invoke-virtual {p1, p3}, Lcom/google/android/exoplr2avp/source/MaskingMediaSource$MaskingTimeline;->cloneWithUpdatedTimeline(Lcom/google/android/exoplr2avp/Timeline;)Lcom/google/android/exoplr2avp/source/MaskingMediaSource$MaskingTimeline;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->timeline:Lcom/google/android/exoplr2avp/source/MaskingMediaSource$MaskingTimeline;

    .line 143
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->unpreparedMaskingMediaPeriod:Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;

    if-eqz p1, :cond_5

    .line 146
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;->getPreparePositionOverrideUs()J

    move-result-wide p1

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->setPreparePositionOverrideToUnpreparedMaskingPeriod(J)V

    goto/16 :goto_3

    .line 148
    :cond_0
    invoke-virtual {p3}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 150
    iget-boolean p1, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->hasRealTimeline:Z

    if-eqz p1, :cond_1

    .line 151
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->timeline:Lcom/google/android/exoplr2avp/source/MaskingMediaSource$MaskingTimeline;

    invoke-virtual {p1, p3}, Lcom/google/android/exoplr2avp/source/MaskingMediaSource$MaskingTimeline;->cloneWithUpdatedTimeline(Lcom/google/android/exoplr2avp/Timeline;)Lcom/google/android/exoplr2avp/source/MaskingMediaSource$MaskingTimeline;

    move-result-object p1

    goto :goto_0

    .line 152
    :cond_1
    sget-object p1, Lcom/google/android/exoplr2avp/Timeline$Window;->SINGLE_WINDOW_UID:Ljava/lang/Object;

    sget-object p2, Lcom/google/android/exoplr2avp/source/MaskingMediaSource$MaskingTimeline;->MASKING_EXTERNAL_PERIOD_UID:Ljava/lang/Object;

    invoke-static {p3, p1, p2}, Lcom/google/android/exoplr2avp/source/MaskingMediaSource$MaskingTimeline;->createWithRealTimeline(Lcom/google/android/exoplr2avp/Timeline;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/exoplr2avp/source/MaskingMediaSource$MaskingTimeline;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->timeline:Lcom/google/android/exoplr2avp/source/MaskingMediaSource$MaskingTimeline;

    goto/16 :goto_3

    .line 169
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    const/4 p2, 0x0

    invoke-virtual {p3, p2, p1}, Lcom/google/android/exoplr2avp/Timeline;->getWindow(ILcom/google/android/exoplr2avp/Timeline$Window;)Lcom/google/android/exoplr2avp/Timeline$Window;

    .line 170
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/Timeline$Window;->getDefaultPositionUs()J

    move-result-wide v0

    .line 171
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/Timeline$Window;->uid:Ljava/lang/Object;

    .line 172
    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->unpreparedMaskingMediaPeriod:Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;

    if-eqz v2, :cond_3

    .line 173
    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;->getPreparePositionUs()J

    move-result-wide v2

    .line 174
    iget-object v4, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->timeline:Lcom/google/android/exoplr2avp/source/MaskingMediaSource$MaskingTimeline;

    iget-object v5, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->unpreparedMaskingMediaPeriod:Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;

    iget-object v5, v5, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;->id:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-object v5, v5, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->period:Lcom/google/android/exoplr2avp/Timeline$Period;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/exoplr2avp/source/MaskingMediaSource$MaskingTimeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplr2avp/Timeline$Period;)Lcom/google/android/exoplr2avp/Timeline$Period;

    .line 175
    iget-object v4, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->period:Lcom/google/android/exoplr2avp/Timeline$Period;

    invoke-virtual {v4}, Lcom/google/android/exoplr2avp/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v4

    add-long/2addr v4, v2

    .line 176
    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->timeline:Lcom/google/android/exoplr2avp/source/MaskingMediaSource$MaskingTimeline;

    iget-object v3, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    .line 177
    invoke-virtual {v2, p2, v3}, Lcom/google/android/exoplr2avp/source/MaskingMediaSource$MaskingTimeline;->getWindow(ILcom/google/android/exoplr2avp/Timeline$Window;)Lcom/google/android/exoplr2avp/Timeline$Window;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/Timeline$Window;->getDefaultPositionUs()J

    move-result-wide v2

    cmp-long p2, v4, v2

    if-eqz p2, :cond_3

    move-wide v10, v4

    goto :goto_1

    :cond_3
    move-wide v10, v0

    .line 182
    :goto_1
    iget-object v7, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    iget-object v8, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->period:Lcom/google/android/exoplr2avp/Timeline$Period;

    const/4 v9, 0x0

    move-object v6, p3

    .line 183
    invoke-virtual/range {v6 .. v11}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodPositionUs(Lcom/google/android/exoplr2avp/Timeline$Window;Lcom/google/android/exoplr2avp/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object p2

    .line 185
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 186
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 188
    iget-boolean p2, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->hasRealTimeline:Z

    if-eqz p2, :cond_4

    .line 189
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->timeline:Lcom/google/android/exoplr2avp/source/MaskingMediaSource$MaskingTimeline;

    invoke-virtual {p1, p3}, Lcom/google/android/exoplr2avp/source/MaskingMediaSource$MaskingTimeline;->cloneWithUpdatedTimeline(Lcom/google/android/exoplr2avp/Timeline;)Lcom/google/android/exoplr2avp/source/MaskingMediaSource$MaskingTimeline;

    move-result-object p1

    goto :goto_2

    .line 190
    :cond_4
    invoke-static {p3, p1, v0}, Lcom/google/android/exoplr2avp/source/MaskingMediaSource$MaskingTimeline;->createWithRealTimeline(Lcom/google/android/exoplr2avp/Timeline;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/exoplr2avp/source/MaskingMediaSource$MaskingTimeline;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->timeline:Lcom/google/android/exoplr2avp/source/MaskingMediaSource$MaskingTimeline;

    .line 191
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->unpreparedMaskingMediaPeriod:Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;

    if-eqz p1, :cond_5

    .line 193
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->setPreparePositionOverrideToUnpreparedMaskingPeriod(J)V

    .line 194
    iget-object p2, p1, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;->id:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;->id:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 195
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->getInternalPeriodUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->copyWithPeriodUid(Ljava/lang/Object;)Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    move-result-object p1

    goto :goto_4

    :cond_5
    :goto_3
    const/4 p1, 0x0

    :goto_4
    const/4 p2, 0x1

    .line 198
    iput-boolean p2, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->hasRealTimeline:Z

    .line 199
    iput-boolean p2, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->isPrepared:Z

    .line 200
    iget-object p2, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->timeline:Lcom/google/android/exoplr2avp/source/MaskingMediaSource$MaskingTimeline;

    invoke-virtual {p0, p2}, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->refreshSourceInfo(Lcom/google/android/exoplr2avp/Timeline;)V

    if-eqz p1, :cond_6

    .line 202
    iget-object p2, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->unpreparedMaskingMediaPeriod:Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;

    invoke-static {p2}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;

    .line 203
    invoke-virtual {p2, p1}, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;->createPeriod(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)V

    :cond_6
    return-void
.end method

.method public prepareSourceInternal(Lcom/google/android/exoplr2avp/upstream/TransferListener;)V
    .locals 1

    .line 82
    invoke-super {p0, p1}, Lcom/google/android/exoplr2avp/source/CompositeMediaSource;->prepareSourceInternal(Lcom/google/android/exoplr2avp/upstream/TransferListener;)V

    .line 83
    iget-boolean p1, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->useLazyPreparation:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 84
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->hasStartedPreparing:Z

    const/4 p1, 0x0

    .line 85
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->mediaSource:Lcom/google/android/exoplr2avp/source/MediaSource;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->prepareChildSource(Ljava/lang/Object;Lcom/google/android/exoplr2avp/source/MediaSource;)V

    :cond_0
    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplr2avp/source/MediaPeriod;)V
    .locals 1

    .line 124
    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;->releasePeriod()V

    .line 125
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->unpreparedMaskingMediaPeriod:Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 126
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->unpreparedMaskingMediaPeriod:Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;

    :cond_0
    return-void
.end method

.method public releaseSourceInternal()V
    .locals 1

    const/4 v0, 0x0

    .line 132
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->isPrepared:Z

    .line 133
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->hasStartedPreparing:Z

    .line 134
    invoke-super {p0}, Lcom/google/android/exoplr2avp/source/CompositeMediaSource;->releaseSourceInternal()V

    return-void
.end method
