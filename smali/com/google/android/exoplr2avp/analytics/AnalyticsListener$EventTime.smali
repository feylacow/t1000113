.class public final Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;
.super Ljava/lang/Object;
.source "AnalyticsListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventTime"
.end annotation


# instance fields
.field public final currentMediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

.field public final currentPlaybackPositionMs:J

.field public final currentTimeline:Lcom/google/android/exoplr2avp/Timeline;

.field public final currentWindowIndex:I

.field public final eventPlaybackPositionMs:J

.field public final mediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

.field public final realtimeMs:J

.field public final timeline:Lcom/google/android/exoplr2avp/Timeline;

.field public final totalBufferedDurationMs:J

.field public final windowIndex:I


# direct methods
.method public constructor <init>(JLcom/google/android/exoplr2avp/Timeline;ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;JLcom/google/android/exoplr2avp/Timeline;ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;JJ)V
    .locals 0

    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 464
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    .line 465
    iput-object p3, p0, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    .line 466
    iput p4, p0, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->windowIndex:I

    .line 467
    iput-object p5, p0, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    .line 468
    iput-wide p6, p0, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->eventPlaybackPositionMs:J

    .line 469
    iput-object p8, p0, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->currentTimeline:Lcom/google/android/exoplr2avp/Timeline;

    .line 470
    iput p9, p0, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->currentWindowIndex:I

    .line 471
    iput-object p10, p0, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->currentMediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    .line 472
    iput-wide p11, p0, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->currentPlaybackPositionMs:J

    .line 473
    iput-wide p13, p0, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->totalBufferedDurationMs:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 481
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 484
    :cond_1
    check-cast p1, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    .line 485
    iget-wide v2, p0, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    iget-wide v4, p1, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget v2, p0, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->windowIndex:I

    iget v3, p1, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->windowIndex:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->eventPlaybackPositionMs:J

    iget-wide v4, p1, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->eventPlaybackPositionMs:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget v2, p0, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->currentWindowIndex:I

    iget v3, p1, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->currentWindowIndex:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->currentPlaybackPositionMs:J

    iget-wide v4, p1, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->currentPlaybackPositionMs:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->totalBufferedDurationMs:J

    iget-wide v4, p1, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->totalBufferedDurationMs:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    iget-object v3, p1, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    .line 491
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-object v3, p1, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    .line 492
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->currentTimeline:Lcom/google/android/exoplr2avp/Timeline;

    iget-object v3, p1, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->currentTimeline:Lcom/google/android/exoplr2avp/Timeline;

    .line 493
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->currentMediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->currentMediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    .line 494
    invoke-static {v2, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    .line 499
    iget-wide v1, p0, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    .line 500
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->windowIndex:I

    .line 502
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->eventPlaybackPositionMs:J

    .line 504
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->currentTimeline:Lcom/google/android/exoplr2avp/Timeline;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->currentWindowIndex:I

    .line 506
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->currentMediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->currentPlaybackPositionMs:J

    .line 508
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->totalBufferedDurationMs:J

    .line 509
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 499
    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
