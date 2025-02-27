.class public final Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;
.super Ljava/lang/Object;
.source "MediaMetricsListener.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;
.implements Lcom/google/android/exoplr2avp/analytics/PlaybackSessionManager$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$PendingFormatUpdate;,
        Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;
    }
.end annotation


# instance fields
.field private activeSessionId:Ljava/lang/String;

.field private audioUnderruns:I

.field private final bandwidthBytes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final bandwidthTimeMs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private currentAudioFormat:Lcom/google/android/exoplr2avp/Format;

.field private currentNetworkType:I

.field private currentPlaybackState:I

.field private currentTextFormat:Lcom/google/android/exoplr2avp/Format;

.field private currentVideoFormat:Lcom/google/android/exoplr2avp/Format;

.field private discontinuityReason:I

.field private droppedFrames:I

.field private hasFatalError:Z

.field private ioErrorType:I

.field private isSeeking:Z

.field private metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

.field private pendingAudioFormat:Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$PendingFormatUpdate;

.field private pendingPlayerError:Lcom/google/android/exoplr2avp/PlaybackException;

.field private pendingTextFormat:Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$PendingFormatUpdate;

.field private pendingVideoFormat:Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$PendingFormatUpdate;

.field private final period:Lcom/google/android/exoplr2avp/Timeline$Period;

.field private final playbackSession:Landroid/media/metrics/PlaybackSession;

.field private playedFrames:I

.field private reportedEventsForCurrentSession:Z

.field private final sessionManager:Lcom/google/android/exoplr2avp/analytics/PlaybackSessionManager;

.field private final startTimeMs:J

.field private final window:Lcom/google/android/exoplr2avp/Timeline$Window;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/media/metrics/PlaybackSession;)V
    .locals 0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 144
    iput-object p1, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->context:Landroid/content/Context;

    .line 145
    iput-object p2, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->playbackSession:Landroid/media/metrics/PlaybackSession;

    .line 146
    new-instance p1, Lcom/google/android/exoplr2avp/Timeline$Window;

    invoke-direct {p1}, Lcom/google/android/exoplr2avp/Timeline$Window;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    .line 147
    new-instance p1, Lcom/google/android/exoplr2avp/Timeline$Period;

    invoke-direct {p1}, Lcom/google/android/exoplr2avp/Timeline$Period;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->period:Lcom/google/android/exoplr2avp/Timeline$Period;

    .line 148
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->bandwidthBytes:Ljava/util/HashMap;

    .line 149
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->bandwidthTimeMs:Ljava/util/HashMap;

    .line 150
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->startTimeMs:J

    const/4 p1, 0x0

    .line 151
    iput p1, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->currentPlaybackState:I

    .line 152
    iput p1, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->currentNetworkType:I

    .line 153
    new-instance p1, Lcom/google/android/exoplr2avp/analytics/DefaultPlaybackSessionManager;

    invoke-direct {p1}, Lcom/google/android/exoplr2avp/analytics/DefaultPlaybackSessionManager;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->sessionManager:Lcom/google/android/exoplr2avp/analytics/PlaybackSessionManager;

    .line 154
    invoke-interface {p1, p0}, Lcom/google/android/exoplr2avp/analytics/PlaybackSessionManager;->setListener(Lcom/google/android/exoplr2avp/analytics/PlaybackSessionManager$Listener;)V

    return-void
.end method

.method private canReportPendingFormatUpdate(Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$PendingFormatUpdate;)Z
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "#1"
        }
        result = true
    .end annotation

    if-eqz p1, :cond_0

    .line 408
    iget-object p1, p1, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$PendingFormatUpdate;->sessionId:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->sessionManager:Lcom/google/android/exoplr2avp/analytics/PlaybackSessionManager;

    .line 409
    invoke-interface {v0}, Lcom/google/android/exoplr2avp/analytics/PlaybackSessionManager;->getActiveSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static create(Landroid/content/Context;)Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;
    .locals 2

    const-string v0, "media_metrics"

    .line 102
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/metrics/MediaMetricsManager;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 105
    :cond_0
    new-instance v1, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;

    invoke-virtual {v0}, Landroid/media/metrics/MediaMetricsManager;->createPlaybackSession()Landroid/media/metrics/PlaybackSession;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;-><init>(Landroid/content/Context;Landroid/media/metrics/PlaybackSession;)V

    move-object p0, v1

    :goto_0
    return-object p0
.end method

.method private finishCurrentSession()V
    .locals 7

    .line 599
    iget-object v0, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->reportedEventsForCurrentSession:Z

    if-eqz v2, :cond_3

    .line 600
    iget v2, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->audioUnderruns:I

    invoke-virtual {v0, v2}, Landroid/media/metrics/PlaybackMetrics$Builder;->setAudioUnderrunCount(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 601
    iget-object v0, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    iget v2, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->droppedFrames:I

    invoke-virtual {v0, v2}, Landroid/media/metrics/PlaybackMetrics$Builder;->setVideoFramesDropped(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 602
    iget-object v0, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    iget v2, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->playedFrames:I

    invoke-virtual {v0, v2}, Landroid/media/metrics/PlaybackMetrics$Builder;->setVideoFramesPlayed(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 603
    iget-object v0, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->bandwidthTimeMs:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->activeSessionId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 604
    iget-object v2, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    const-wide/16 v3, 0x0

    if-nez v0, :cond_0

    move-wide v5, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :goto_0
    invoke-virtual {v2, v5, v6}, Landroid/media/metrics/PlaybackMetrics$Builder;->setNetworkTransferDurationMillis(J)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 606
    iget-object v0, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->bandwidthBytes:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->activeSessionId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 607
    iget-object v2, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-nez v0, :cond_1

    move-wide v5, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :goto_1
    invoke-virtual {v2, v5, v6}, Landroid/media/metrics/PlaybackMetrics$Builder;->setNetworkBytesRead(J)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 609
    iget-object v2, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-eqz v0, :cond_2

    .line 610
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 609
    :goto_2
    invoke-virtual {v2, v0}, Landroid/media/metrics/PlaybackMetrics$Builder;->setStreamSource(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 613
    iget-object v0, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->playbackSession:Landroid/media/metrics/PlaybackSession;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    invoke-virtual {v2}, Landroid/media/metrics/PlaybackMetrics$Builder;->build()Landroid/media/metrics/PlaybackMetrics;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/metrics/PlaybackSession;->reportPlaybackMetrics(Landroid/media/metrics/PlaybackMetrics;)V

    :cond_3
    const/4 v0, 0x0

    .line 615
    iput-object v0, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 616
    iput-object v0, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->activeSessionId:Ljava/lang/String;

    .line 617
    iput v1, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->audioUnderruns:I

    .line 618
    iput v1, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->droppedFrames:I

    .line 619
    iput v1, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->playedFrames:I

    .line 620
    iput-object v0, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->currentVideoFormat:Lcom/google/android/exoplr2avp/Format;

    .line 621
    iput-object v0, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->currentAudioFormat:Lcom/google/android/exoplr2avp/Format;

    .line 622
    iput-object v0, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->currentTextFormat:Lcom/google/android/exoplr2avp/Format;

    .line 623
    iput-boolean v1, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->reportedEventsForCurrentSession:Z

    return-void
.end method

.method private static getDrmErrorCode(I)I
    .locals 0

    .line 855
    invoke-static {p0}, Lcom/google/android/exoplr2avp/util/Util;->getErrorCodeForMediaDrmErrorCode(I)I

    move-result p0

    packed-switch p0, :pswitch_data_0

    const/16 p0, 0x1b

    return p0

    :pswitch_0
    const/16 p0, 0x1a

    return p0

    :pswitch_1
    const/16 p0, 0x19

    return p0

    :pswitch_2
    const/16 p0, 0x1c

    return p0

    :pswitch_3
    const/16 p0, 0x18

    return p0

    :pswitch_data_0
    .packed-switch 0x1772
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getDrmInitData(Lcom/google/common/collect/ImmutableList;)Lcom/google/android/exoplr2avp/drm/DrmInitData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplr2avp/Tracks$Group;",
            ">;)",
            "Lcom/google/android/exoplr2avp/drm/DrmInitData;"
        }
    .end annotation

    .line 822
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/Tracks$Group;

    const/4 v1, 0x0

    .line 823
    :goto_0
    iget v2, v0, Lcom/google/android/exoplr2avp/Tracks$Group;->length:I

    if-ge v1, v2, :cond_0

    .line 824
    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/Tracks$Group;->isTrackSelected(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 825
    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/Tracks$Group;->getTrackFormat(I)Lcom/google/android/exoplr2avp/Format;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/exoplr2avp/Format;->drmInitData:Lcom/google/android/exoplr2avp/drm/DrmInitData;

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getDrmType(Lcom/google/android/exoplr2avp/drm/DrmInitData;)I
    .locals 3

    const/4 v0, 0x0

    .line 836
    :goto_0
    iget v1, p0, Lcom/google/android/exoplr2avp/drm/DrmInitData;->schemeDataCount:I

    if-ge v0, v1, :cond_3

    .line 837
    invoke-virtual {p0, v0}, Lcom/google/android/exoplr2avp/drm/DrmInitData;->get(I)Lcom/google/android/exoplr2avp/drm/DrmInitData$SchemeData;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplr2avp/drm/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    .line 838
    sget-object v2, Lcom/google/android/exoplr2avp/C;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x3

    return p0

    .line 843
    :cond_0
    sget-object v2, Lcom/google/android/exoplr2avp/C;->PLAYREADY_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x2

    return p0

    .line 846
    :cond_1
    sget-object v2, Lcom/google/android/exoplr2avp/C;->CLEARKEY_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x6

    return p0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private static getErrorInfo(Lcom/google/android/exoplr2avp/PlaybackException;Landroid/content/Context;Z)Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;
    .locals 9

    .line 694
    iget v0, p0, Lcom/google/android/exoplr2avp/PlaybackException;->errorCode:I

    const/4 v1, 0x0

    const/16 v2, 0x3e9

    if-ne v0, v2, :cond_0

    .line 695
    new-instance p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;

    const/16 p1, 0x14

    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object p0

    .line 701
    :cond_0
    instance-of v0, p0, Lcom/google/android/exoplr2avp/ExoPlaybackException;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 702
    move-object v0, p0

    check-cast v0, Lcom/google/android/exoplr2avp/ExoPlaybackException;

    .line 703
    iget v3, v0, Lcom/google/android/exoplr2avp/ExoPlaybackException;->type:I

    if-ne v3, v2, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 705
    :goto_0
    iget v0, v0, Lcom/google/android/exoplr2avp/ExoPlaybackException;->rendererFormatSupport:I

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 707
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/PlaybackException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    .line 708
    instance-of v5, v4, Ljava/io/IOException;

    const/4 v6, 0x3

    const/16 v7, 0x12

    const/16 v8, 0x17

    if-eqz v5, :cond_17

    .line 709
    instance-of v0, v4, Lcom/google/android/exoplr2avp/upstream/HttpDataSource$InvalidResponseCodeException;

    if-eqz v0, :cond_3

    .line 710
    check-cast v4, Lcom/google/android/exoplr2avp/upstream/HttpDataSource$InvalidResponseCodeException;

    iget p0, v4, Lcom/google/android/exoplr2avp/upstream/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    .line 711
    new-instance p1, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;

    const/4 p2, 0x5

    invoke-direct {p1, p2, p0}, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object p1

    .line 713
    :cond_3
    instance-of v0, v4, Lcom/google/android/exoplr2avp/upstream/HttpDataSource$InvalidContentTypeException;

    if-nez v0, :cond_15

    instance-of v0, v4, Lcom/google/android/exoplr2avp/ParserException;

    if-eqz v0, :cond_4

    goto/16 :goto_3

    .line 720
    :cond_4
    instance-of p2, v4, Lcom/google/android/exoplr2avp/upstream/HttpDataSource$HttpDataSourceException;

    if-nez p2, :cond_10

    instance-of v0, v4, Lcom/google/android/exoplr2avp/upstream/UdpDataSource$UdpDataSourceException;

    if-eqz v0, :cond_5

    goto/16 :goto_2

    .line 742
    :cond_5
    iget p0, p0, Lcom/google/android/exoplr2avp/PlaybackException;->errorCode:I

    const/16 p1, 0x3ea

    const/16 p2, 0x15

    if-ne p0, p1, :cond_6

    .line 743
    new-instance p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;

    invoke-direct {p0, p2, v1}, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object p0

    .line 745
    :cond_6
    instance-of p0, v4, Lcom/google/android/exoplr2avp/drm/DrmSession$DrmSessionException;

    if-eqz p0, :cond_d

    .line 747
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    .line 748
    sget p1, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    if-lt p1, p2, :cond_7

    instance-of p1, p0, Landroid/media/MediaDrm$MediaDrmStateException;

    if-eqz p1, :cond_7

    .line 749
    check-cast p0, Landroid/media/MediaDrm$MediaDrmStateException;

    invoke-virtual {p0}, Landroid/media/MediaDrm$MediaDrmStateException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object p0

    .line 750
    invoke-static {p0}, Lcom/google/android/exoplr2avp/util/Util;->getErrorCodeFromPlatformDiagnosticsInfo(Ljava/lang/String;)I

    move-result p0

    .line 751
    invoke-static {p0}, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->getDrmErrorCode(I)I

    move-result p1

    .line 752
    new-instance p2, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;

    invoke-direct {p2, p1, p0}, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object p2

    .line 753
    :cond_7
    sget p1, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    if-lt p1, v8, :cond_8

    instance-of p1, p0, Landroid/media/MediaDrmResetException;

    if-eqz p1, :cond_8

    .line 754
    new-instance p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;

    const/16 p1, 0x1b

    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object p0

    .line 755
    :cond_8
    sget p1, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    if-lt p1, v7, :cond_9

    instance-of p1, p0, Landroid/media/NotProvisionedException;

    if-eqz p1, :cond_9

    .line 756
    new-instance p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;

    const/16 p1, 0x18

    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object p0

    .line 758
    :cond_9
    sget p1, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    if-lt p1, v7, :cond_a

    instance-of p1, p0, Landroid/media/DeniedByServerException;

    if-eqz p1, :cond_a

    .line 759
    new-instance p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;

    const/16 p1, 0x1d

    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object p0

    .line 760
    :cond_a
    instance-of p1, p0, Lcom/google/android/exoplr2avp/drm/UnsupportedDrmException;

    if-eqz p1, :cond_b

    .line 761
    new-instance p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;

    invoke-direct {p0, v8, v1}, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object p0

    .line 763
    :cond_b
    instance-of p0, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$MissingSchemeDataException;

    if-eqz p0, :cond_c

    .line 764
    new-instance p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;

    const/16 p1, 0x1c

    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object p0

    .line 766
    :cond_c
    new-instance p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;

    const/16 p1, 0x1e

    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object p0

    .line 768
    :cond_d
    instance-of p0, v4, Lcom/google/android/exoplr2avp/upstream/FileDataSource$FileDataSourceException;

    if-eqz p0, :cond_f

    .line 769
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p0, p0, Ljava/io/FileNotFoundException;

    if-eqz p0, :cond_f

    .line 770
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 771
    sget p1, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    if-lt p1, p2, :cond_e

    instance-of p1, p0, Landroid/system/ErrnoException;

    if-eqz p1, :cond_e

    check-cast p0, Landroid/system/ErrnoException;

    iget p0, p0, Landroid/system/ErrnoException;->errno:I

    sget p1, Landroid/system/OsConstants;->EACCES:I

    if-ne p0, p1, :cond_e

    .line 774
    new-instance p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;

    const/16 p1, 0x20

    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object p0

    .line 776
    :cond_e
    new-instance p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;

    const/16 p1, 0x1f

    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object p0

    .line 779
    :cond_f
    new-instance p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;

    const/16 p1, 0x9

    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object p0

    .line 722
    :cond_10
    :goto_2
    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/NetworkTypeObserver;->getInstance(Landroid/content/Context;)Lcom/google/android/exoplr2avp/util/NetworkTypeObserver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/util/NetworkTypeObserver;->getNetworkType()I

    move-result p0

    if-ne p0, v2, :cond_11

    .line 723
    new-instance p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;

    invoke-direct {p0, v6, v1}, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object p0

    .line 726
    :cond_11
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 727
    instance-of p1, p0, Ljava/net/UnknownHostException;

    if-eqz p1, :cond_12

    .line 728
    new-instance p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;

    const/4 p1, 0x6

    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object p0

    .line 729
    :cond_12
    instance-of p0, p0, Ljava/net/SocketTimeoutException;

    if-eqz p0, :cond_13

    .line 730
    new-instance p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;

    const/4 p1, 0x7

    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object p0

    :cond_13
    if-eqz p2, :cond_14

    .line 732
    check-cast v4, Lcom/google/android/exoplr2avp/upstream/HttpDataSource$HttpDataSourceException;

    iget p0, v4, Lcom/google/android/exoplr2avp/upstream/HttpDataSource$HttpDataSourceException;->type:I

    if-ne p0, v2, :cond_14

    .line 735
    new-instance p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;

    const/4 p1, 0x4

    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object p0

    .line 738
    :cond_14
    new-instance p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;

    const/16 p1, 0x8

    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object p0

    .line 715
    :cond_15
    :goto_3
    new-instance p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;

    if-eqz p2, :cond_16

    const/16 p1, 0xa

    goto :goto_4

    :cond_16
    const/16 p1, 0xb

    .line 718
    :goto_4
    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object p0

    :cond_17
    if-eqz v3, :cond_19

    if-eqz v0, :cond_18

    if-ne v0, v2, :cond_19

    .line 784
    :cond_18
    new-instance p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;

    const/16 p1, 0x23

    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object p0

    :cond_19
    if-eqz v3, :cond_1a

    if-ne v0, v6, :cond_1a

    .line 788
    new-instance p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;

    const/16 p1, 0xf

    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object p0

    :cond_1a
    if-eqz v3, :cond_1b

    const/4 p0, 0x2

    if-ne v0, p0, :cond_1b

    .line 792
    new-instance p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;

    invoke-direct {p0, v8, v1}, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object p0

    .line 793
    :cond_1b
    instance-of p0, v4, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    if-eqz p0, :cond_1c

    .line 795
    check-cast v4, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    iget-object p0, v4, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecRenderer$DecoderInitializationException;->diagnosticInfo:Ljava/lang/String;

    .line 797
    invoke-static {p0}, Lcom/google/android/exoplr2avp/util/Util;->getErrorCodeFromPlatformDiagnosticsInfo(Ljava/lang/String;)I

    move-result p0

    .line 798
    new-instance p1, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;

    const/16 p2, 0xd

    invoke-direct {p1, p2, p0}, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object p1

    .line 799
    :cond_1c
    instance-of p0, v4, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecDecoderException;

    const/16 p1, 0xe

    if-eqz p0, :cond_1d

    .line 800
    check-cast v4, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecDecoderException;

    iget-object p0, v4, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecDecoderException;->diagnosticInfo:Ljava/lang/String;

    .line 801
    invoke-static {p0}, Lcom/google/android/exoplr2avp/util/Util;->getErrorCodeFromPlatformDiagnosticsInfo(Ljava/lang/String;)I

    move-result p0

    .line 802
    new-instance p2, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;

    invoke-direct {p2, p1, p0}, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object p2

    .line 803
    :cond_1d
    instance-of p0, v4, Ljava/lang/OutOfMemoryError;

    if-eqz p0, :cond_1e

    .line 804
    new-instance p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;

    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object p0

    .line 805
    :cond_1e
    instance-of p0, v4, Lcom/google/android/exoplr2avp/audio/AudioSink$InitializationException;

    if-eqz p0, :cond_1f

    .line 806
    check-cast v4, Lcom/google/android/exoplr2avp/audio/AudioSink$InitializationException;

    iget p0, v4, Lcom/google/android/exoplr2avp/audio/AudioSink$InitializationException;->audioTrackState:I

    .line 807
    new-instance p1, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;

    const/16 p2, 0x11

    invoke-direct {p1, p2, p0}, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object p1

    .line 808
    :cond_1f
    instance-of p0, v4, Lcom/google/android/exoplr2avp/audio/AudioSink$WriteException;

    if-eqz p0, :cond_20

    .line 809
    check-cast v4, Lcom/google/android/exoplr2avp/audio/AudioSink$WriteException;

    iget p0, v4, Lcom/google/android/exoplr2avp/audio/AudioSink$WriteException;->errorCode:I

    .line 810
    new-instance p1, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;

    invoke-direct {p1, v7, p0}, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object p1

    .line 811
    :cond_20
    sget p0, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 p1, 0x10

    if-lt p0, p1, :cond_21

    instance-of p0, v4, Landroid/media/MediaCodec$CryptoException;

    if-eqz p0, :cond_21

    .line 812
    check-cast v4, Landroid/media/MediaCodec$CryptoException;

    invoke-virtual {v4}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result p0

    .line 813
    invoke-static {p0}, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->getDrmErrorCode(I)I

    move-result p1

    .line 814
    new-instance p2, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;

    invoke-direct {p2, p1, p0}, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object p2

    .line 816
    :cond_21
    new-instance p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;

    const/16 p1, 0x16

    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    return-object p0
.end method

.method private static getLanguageAndRegion(Ljava/lang/String;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "-"

    .line 642
    invoke-static {p0, v0}, Lcom/google/android/exoplr2avp/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 643
    aget-object v0, p0, v0

    array-length v1, p0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    aget-object p0, p0, v1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static getNetworkType(Landroid/content/Context;)I
    .locals 0

    .line 647
    invoke-static {p0}, Lcom/google/android/exoplr2avp/util/NetworkTypeObserver;->getInstance(Landroid/content/Context;)Lcom/google/android/exoplr2avp/util/NetworkTypeObserver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/util/NetworkTypeObserver;->getNetworkType()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_1
    const/4 p0, 0x7

    return p0

    :pswitch_2
    const/16 p0, 0x8

    return p0

    :pswitch_3
    const/4 p0, 0x3

    return p0

    :pswitch_4
    const/4 p0, 0x6

    return p0

    :pswitch_5
    const/4 p0, 0x5

    return p0

    :pswitch_6
    const/4 p0, 0x4

    return p0

    :pswitch_7
    const/4 p0, 0x2

    return p0

    :pswitch_8
    const/16 p0, 0x9

    return p0

    :pswitch_9
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static getStreamType(Lcom/google/android/exoplr2avp/MediaItem;)I
    .locals 2

    .line 672
    iget-object v0, p0, Lcom/google/android/exoplr2avp/MediaItem;->localConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 676
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/MediaItem;->localConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    iget-object p0, p0, Lcom/google/android/exoplr2avp/MediaItem;->localConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    iget-object p0, p0, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->mimeType:Ljava/lang/String;

    .line 677
    invoke-static {v0, p0}, Lcom/google/android/exoplr2avp/util/Util;->inferContentTypeForUriAndMimeType(Landroid/net/Uri;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x4

    return p0

    :cond_2
    const/4 p0, 0x5

    return p0

    :cond_3
    const/4 p0, 0x3

    return p0
.end method

.method private static getTrackChangeReason(I)I
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v2, 0x3

    if-eq p0, v0, :cond_1

    if-eq p0, v2, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x4

    return p0

    :cond_1
    return v2

    :cond_2
    return v0
.end method

.method private maybeAddSessions(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$Events;)V
    .locals 4

    const/4 v0, 0x0

    .line 319
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$Events;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 320
    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$Events;->get(I)I

    move-result v1

    .line 321
    invoke-virtual {p1, v1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$Events;->getEventTime(I)Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object v2

    if-nez v1, :cond_0

    .line 323
    iget-object v1, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->sessionManager:Lcom/google/android/exoplr2avp/analytics/PlaybackSessionManager;

    invoke-interface {v1, v2}, Lcom/google/android/exoplr2avp/analytics/PlaybackSessionManager;->updateSessionsWithTimelineChange(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V

    goto :goto_1

    :cond_0
    const/16 v3, 0xb

    if-ne v1, v3, :cond_1

    .line 325
    iget-object v1, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->sessionManager:Lcom/google/android/exoplr2avp/analytics/PlaybackSessionManager;

    iget v3, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->discontinuityReason:I

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplr2avp/analytics/PlaybackSessionManager;->updateSessionsWithDiscontinuity(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V

    goto :goto_1

    .line 327
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->sessionManager:Lcom/google/android/exoplr2avp/analytics/PlaybackSessionManager;

    invoke-interface {v1, v2}, Lcom/google/android/exoplr2avp/analytics/PlaybackSessionManager;->updateSessions(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private maybeReportNetworkChange(J)V
    .locals 4

    .line 413
    iget-object v0, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->getNetworkType(Landroid/content/Context;)I

    move-result v0

    .line 414
    iget v1, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->currentNetworkType:I

    if-eq v0, v1, :cond_0

    .line 415
    iput v0, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->currentNetworkType:I

    .line 416
    iget-object v1, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->playbackSession:Landroid/media/metrics/PlaybackSession;

    new-instance v2, Landroid/media/metrics/NetworkEvent$Builder;

    invoke-direct {v2}, Landroid/media/metrics/NetworkEvent$Builder;-><init>()V

    .line 418
    invoke-virtual {v2, v0}, Landroid/media/metrics/NetworkEvent$Builder;->setNetworkType(I)Landroid/media/metrics/NetworkEvent$Builder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->startTimeMs:J

    sub-long/2addr p1, v2

    .line 419
    invoke-virtual {v0, p1, p2}, Landroid/media/metrics/NetworkEvent$Builder;->setTimeSinceCreatedMillis(J)Landroid/media/metrics/NetworkEvent$Builder;

    move-result-object p1

    .line 420
    invoke-virtual {p1}, Landroid/media/metrics/NetworkEvent$Builder;->build()Landroid/media/metrics/NetworkEvent;

    move-result-object p1

    .line 416
    invoke-virtual {v1, p1}, Landroid/media/metrics/PlaybackSession;->reportNetworkEvent(Landroid/media/metrics/NetworkEvent;)V

    :cond_0
    return-void
.end method

.method private maybeReportPlaybackError(J)V
    .locals 7

    .line 351
    iget-object v0, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->pendingPlayerError:Lcom/google/android/exoplr2avp/PlaybackException;

    if-nez v0, :cond_0

    return-void

    .line 355
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->context:Landroid/content/Context;

    iget v2, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->ioErrorType:I

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 356
    :goto_0
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->getErrorInfo(Lcom/google/android/exoplr2avp/PlaybackException;Landroid/content/Context;Z)Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;

    move-result-object v1

    .line 358
    iget-object v2, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->playbackSession:Landroid/media/metrics/PlaybackSession;

    new-instance v3, Landroid/media/metrics/PlaybackErrorEvent$Builder;

    invoke-direct {v3}, Landroid/media/metrics/PlaybackErrorEvent$Builder;-><init>()V

    iget-wide v5, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->startTimeMs:J

    sub-long/2addr p1, v5

    .line 360
    invoke-virtual {v3, p1, p2}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->setTimeSinceCreatedMillis(J)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object p1

    iget p2, v1, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;->errorCode:I

    .line 361
    invoke-virtual {p1, p2}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->setErrorCode(I)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object p1

    iget p2, v1, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$ErrorInfo;->subErrorCode:I

    .line 362
    invoke-virtual {p1, p2}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->setSubErrorCode(I)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object p1

    .line 363
    invoke-virtual {p1, v0}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->setException(Ljava/lang/Exception;)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object p1

    .line 364
    invoke-virtual {p1}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->build()Landroid/media/metrics/PlaybackErrorEvent;

    move-result-object p1

    .line 358
    invoke-virtual {v2, p1}, Landroid/media/metrics/PlaybackSession;->reportPlaybackErrorEvent(Landroid/media/metrics/PlaybackErrorEvent;)V

    .line 365
    iput-boolean v4, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->reportedEventsForCurrentSession:Z

    const/4 p1, 0x0

    .line 366
    iput-object p1, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->pendingPlayerError:Lcom/google/android/exoplr2avp/PlaybackException;

    return-void
.end method

.method private maybeReportPlaybackStateChange(Lcom/google/android/exoplr2avp/Player;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$Events;J)V
    .locals 3

    .line 425
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/Player;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 426
    iput-boolean v1, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->isSeeking:Z

    .line 428
    :cond_0
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/Player;->getPlayerError()Lcom/google/android/exoplr2avp/PlaybackException;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 429
    iput-boolean v1, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->hasFatalError:Z

    goto :goto_0

    :cond_1
    const/16 v0, 0xa

    .line 430
    invoke-virtual {p2, v0}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$Events;->contains(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 431
    iput-boolean v2, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->hasFatalError:Z

    .line 433
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->resolveNewPlaybackState(Lcom/google/android/exoplr2avp/Player;)I

    move-result p1

    .line 434
    iget p2, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->currentPlaybackState:I

    if-eq p2, p1, :cond_3

    .line 435
    iput p1, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->currentPlaybackState:I

    .line 436
    iput-boolean v2, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->reportedEventsForCurrentSession:Z

    .line 437
    iget-object p1, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->playbackSession:Landroid/media/metrics/PlaybackSession;

    new-instance p2, Landroid/media/metrics/PlaybackStateEvent$Builder;

    invoke-direct {p2}, Landroid/media/metrics/PlaybackStateEvent$Builder;-><init>()V

    iget v0, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->currentPlaybackState:I

    .line 439
    invoke-virtual {p2, v0}, Landroid/media/metrics/PlaybackStateEvent$Builder;->setState(I)Landroid/media/metrics/PlaybackStateEvent$Builder;

    move-result-object p2

    iget-wide v0, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->startTimeMs:J

    sub-long/2addr p3, v0

    .line 440
    invoke-virtual {p2, p3, p4}, Landroid/media/metrics/PlaybackStateEvent$Builder;->setTimeSinceCreatedMillis(J)Landroid/media/metrics/PlaybackStateEvent$Builder;

    move-result-object p2

    .line 441
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackStateEvent$Builder;->build()Landroid/media/metrics/PlaybackStateEvent;

    move-result-object p2

    .line 437
    invoke-virtual {p1, p2}, Landroid/media/metrics/PlaybackSession;->reportPlaybackStateEvent(Landroid/media/metrics/PlaybackStateEvent;)V

    :cond_3
    return-void
.end method

.method private maybeReportTrackChanges(Lcom/google/android/exoplr2avp/Player;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$Events;J)V
    .locals 3

    const/4 v0, 0x2

    .line 370
    invoke-virtual {p2, v0}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$Events;->contains(I)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    .line 371
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/Player;->getCurrentTracks()Lcom/google/android/exoplr2avp/Tracks;

    move-result-object p1

    .line 372
    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/Tracks;->isTypeSelected(I)Z

    move-result p2

    const/4 v0, 0x1

    .line 373
    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/Tracks;->isTypeSelected(I)Z

    move-result v0

    const/4 v2, 0x3

    .line 374
    invoke-virtual {p1, v2}, Lcom/google/android/exoplr2avp/Tracks;->isTypeSelected(I)Z

    move-result p1

    if-nez p2, :cond_0

    if-nez v0, :cond_0

    if-eqz p1, :cond_3

    :cond_0
    const/4 v2, 0x0

    if-nez p2, :cond_1

    .line 378
    invoke-direct {p0, p3, p4, v1, v2}, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->maybeUpdateVideoFormat(JLcom/google/android/exoplr2avp/Format;I)V

    :cond_1
    if-nez v0, :cond_2

    .line 381
    invoke-direct {p0, p3, p4, v1, v2}, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->maybeUpdateAudioFormat(JLcom/google/android/exoplr2avp/Format;I)V

    :cond_2
    if-nez p1, :cond_3

    .line 384
    invoke-direct {p0, p3, p4, v1, v2}, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->maybeUpdateTextFormat(JLcom/google/android/exoplr2avp/Format;I)V

    .line 388
    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->pendingVideoFormat:Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$PendingFormatUpdate;

    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->canReportPendingFormatUpdate(Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$PendingFormatUpdate;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->pendingVideoFormat:Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$PendingFormatUpdate;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$PendingFormatUpdate;->format:Lcom/google/android/exoplr2avp/Format;

    iget p1, p1, Lcom/google/android/exoplr2avp/Format;->height:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_4

    .line 390
    iget-object p1, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->pendingVideoFormat:Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$PendingFormatUpdate;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$PendingFormatUpdate;->format:Lcom/google/android/exoplr2avp/Format;

    iget-object p2, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->pendingVideoFormat:Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$PendingFormatUpdate;

    iget p2, p2, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$PendingFormatUpdate;->selectionReason:I

    invoke-direct {p0, p3, p4, p1, p2}, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->maybeUpdateVideoFormat(JLcom/google/android/exoplr2avp/Format;I)V

    .line 392
    iput-object v1, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->pendingVideoFormat:Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$PendingFormatUpdate;

    .line 394
    :cond_4
    iget-object p1, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->pendingAudioFormat:Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$PendingFormatUpdate;

    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->canReportPendingFormatUpdate(Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$PendingFormatUpdate;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 395
    iget-object p1, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->pendingAudioFormat:Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$PendingFormatUpdate;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$PendingFormatUpdate;->format:Lcom/google/android/exoplr2avp/Format;

    iget-object p2, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->pendingAudioFormat:Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$PendingFormatUpdate;

    iget p2, p2, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$PendingFormatUpdate;->selectionReason:I

    invoke-direct {p0, p3, p4, p1, p2}, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->maybeUpdateAudioFormat(JLcom/google/android/exoplr2avp/Format;I)V

    .line 397
    iput-object v1, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->pendingAudioFormat:Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$PendingFormatUpdate;

    .line 399
    :cond_5
    iget-object p1, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->pendingTextFormat:Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$PendingFormatUpdate;

    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->canReportPendingFormatUpdate(Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$PendingFormatUpdate;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 400
    iget-object p1, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->pendingTextFormat:Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$PendingFormatUpdate;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$PendingFormatUpdate;->format:Lcom/google/android/exoplr2avp/Format;

    iget-object p2, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->pendingTextFormat:Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$PendingFormatUpdate;

    iget p2, p2, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$PendingFormatUpdate;->selectionReason:I

    invoke-direct {p0, p3, p4, p1, p2}, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->maybeUpdateTextFormat(JLcom/google/android/exoplr2avp/Format;I)V

    .line 402
    iput-object v1, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->pendingTextFormat:Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$PendingFormatUpdate;

    :cond_6
    return-void
.end method

.method private maybeUpdateAudioFormat(JLcom/google/android/exoplr2avp/Format;I)V
    .locals 6

    .line 496
    iget-object v0, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->currentAudioFormat:Lcom/google/android/exoplr2avp/Format;

    invoke-static {v0, p3}, Lcom/google/android/exoplr2avp/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->currentAudioFormat:Lcom/google/android/exoplr2avp/Format;

    if-nez v0, :cond_1

    if-nez p4, :cond_1

    const/4 p4, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    move v5, p4

    .line 502
    :goto_0
    iput-object p3, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->currentAudioFormat:Lcom/google/android/exoplr2avp/Format;

    const/4 v1, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    .line 503
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->reportTrackChangeEvent(IJLcom/google/android/exoplr2avp/Format;I)V

    return-void
.end method

.method private maybeUpdateMetricsBuilderValues(Lcom/google/android/exoplr2avp/Player;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$Events;)V
    .locals 2

    const/4 v0, 0x0

    .line 333
    invoke-virtual {p2, v0}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$Events;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    invoke-virtual {p2, v0}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$Events;->getEventTime(I)Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 335
    iget-object v1, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-eqz v1, :cond_0

    .line 336
    iget-object v1, v0, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->maybeUpdateTimelineMetadata(Lcom/google/android/exoplr2avp/Timeline;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)V

    :cond_0
    const/4 v0, 0x2

    .line 339
    invoke-virtual {p2, v0}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$Events;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-eqz v0, :cond_1

    .line 340
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/Player;->getCurrentTracks()Lcom/google/android/exoplr2avp/Tracks;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/Tracks;->getGroups()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->getDrmInitData(Lcom/google/common/collect/ImmutableList;)Lcom/google/android/exoplr2avp/drm/DrmInitData;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 342
    iget-object v0, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/metrics/PlaybackMetrics$Builder;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->getDrmType(Lcom/google/android/exoplr2avp/drm/DrmInitData;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/media/metrics/PlaybackMetrics$Builder;->setDrmType(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    :cond_1
    const/16 p1, 0x3f3

    .line 345
    invoke-virtual {p2, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$Events;->contains(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 346
    iget p1, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->audioUnderruns:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->audioUnderruns:I

    :cond_2
    return-void
.end method

.method private maybeUpdateTextFormat(JLcom/google/android/exoplr2avp/Format;I)V
    .locals 6

    .line 509
    iget-object v0, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->currentTextFormat:Lcom/google/android/exoplr2avp/Format;

    invoke-static {v0, p3}, Lcom/google/android/exoplr2avp/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->currentTextFormat:Lcom/google/android/exoplr2avp/Format;

    if-nez v0, :cond_1

    if-nez p4, :cond_1

    const/4 p4, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    move v5, p4

    .line 515
    :goto_0
    iput-object p3, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->currentTextFormat:Lcom/google/android/exoplr2avp/Format;

    const/4 v1, 0x2

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    .line 516
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->reportTrackChangeEvent(IJLcom/google/android/exoplr2avp/Format;I)V

    return-void
.end method

.method private maybeUpdateTimelineMetadata(Lcom/google/android/exoplr2avp/Timeline;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)V
    .locals 4
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "metricsBuilder"
        }
    .end annotation

    .line 576
    iget-object v0, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-nez p2, :cond_0

    return-void

    .line 580
    :cond_0
    iget-object p2, p2, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplr2avp/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    return-void

    .line 584
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->period:Lcom/google/android/exoplr2avp/Timeline$Period;

    invoke-virtual {p1, p2, v1}, Lcom/google/android/exoplr2avp/Timeline;->getPeriod(ILcom/google/android/exoplr2avp/Timeline$Period;)Lcom/google/android/exoplr2avp/Timeline$Period;

    .line 585
    iget-object p2, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->period:Lcom/google/android/exoplr2avp/Timeline$Period;

    iget p2, p2, Lcom/google/android/exoplr2avp/Timeline$Period;->windowIndex:I

    iget-object v1, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    invoke-virtual {p1, p2, v1}, Lcom/google/android/exoplr2avp/Timeline;->getWindow(ILcom/google/android/exoplr2avp/Timeline$Window;)Lcom/google/android/exoplr2avp/Timeline$Window;

    .line 586
    iget-object p1, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/Timeline$Window;->mediaItem:Lcom/google/android/exoplr2avp/MediaItem;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->getStreamType(Lcom/google/android/exoplr2avp/MediaItem;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/media/metrics/PlaybackMetrics$Builder;->setStreamType(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 587
    iget-object p1, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    iget-wide p1, p1, Lcom/google/android/exoplr2avp/Timeline$Window;->durationUs:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, p1, v1

    if-eqz v3, :cond_2

    iget-object p1, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    iget-boolean p1, p1, Lcom/google/android/exoplr2avp/Timeline$Window;->isPlaceholder:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    iget-boolean p1, p1, Lcom/google/android/exoplr2avp/Timeline$Window;->isDynamic:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    .line 590
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/Timeline$Window;->isLive()Z

    move-result p1

    if-nez p1, :cond_2

    .line 591
    iget-object p1, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/Timeline$Window;->getDurationMs()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Landroid/media/metrics/PlaybackMetrics$Builder;->setMediaDurationMillis(J)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 594
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/Timeline$Window;->isLive()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    .line 593
    :goto_0
    invoke-virtual {v0, p1}, Landroid/media/metrics/PlaybackMetrics$Builder;->setPlaybackType(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 595
    iput-boolean p2, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->reportedEventsForCurrentSession:Z

    return-void
.end method

.method private maybeUpdateVideoFormat(JLcom/google/android/exoplr2avp/Format;I)V
    .locals 6

    .line 483
    iget-object v0, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->currentVideoFormat:Lcom/google/android/exoplr2avp/Format;

    invoke-static {v0, p3}, Lcom/google/android/exoplr2avp/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->currentVideoFormat:Lcom/google/android/exoplr2avp/Format;

    if-nez v0, :cond_1

    if-nez p4, :cond_1

    const/4 p4, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    move v5, p4

    .line 489
    :goto_0
    iput-object p3, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->currentVideoFormat:Lcom/google/android/exoplr2avp/Format;

    const/4 v1, 0x1

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    .line 490
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->reportTrackChangeEvent(IJLcom/google/android/exoplr2avp/Format;I)V

    return-void
.end method

.method private reportTrackChangeEvent(IJLcom/google/android/exoplr2avp/Format;I)V
    .locals 3

    .line 525
    new-instance v0, Landroid/media/metrics/TrackChangeEvent$Builder;

    invoke-direct {v0, p1}, Landroid/media/metrics/TrackChangeEvent$Builder;-><init>(I)V

    iget-wide v1, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->startTimeMs:J

    sub-long/2addr p2, v1

    .line 526
    invoke-virtual {v0, p2, p3}, Landroid/media/metrics/TrackChangeEvent$Builder;->setTimeSinceCreatedMillis(J)Landroid/media/metrics/TrackChangeEvent$Builder;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p4, :cond_9

    .line 528
    invoke-virtual {p1, p2}, Landroid/media/metrics/TrackChangeEvent$Builder;->setTrackState(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 529
    invoke-static {p5}, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->getTrackChangeReason(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/media/metrics/TrackChangeEvent$Builder;->setTrackChangeReason(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 530
    iget-object p3, p4, Lcom/google/android/exoplr2avp/Format;->containerMimeType:Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 532
    iget-object p3, p4, Lcom/google/android/exoplr2avp/Format;->containerMimeType:Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/media/metrics/TrackChangeEvent$Builder;->setContainerMimeType(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 534
    :cond_0
    iget-object p3, p4, Lcom/google/android/exoplr2avp/Format;->sampleMimeType:Ljava/lang/String;

    if-eqz p3, :cond_1

    .line 535
    iget-object p3, p4, Lcom/google/android/exoplr2avp/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/media/metrics/TrackChangeEvent$Builder;->setSampleMimeType(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 537
    :cond_1
    iget-object p3, p4, Lcom/google/android/exoplr2avp/Format;->codecs:Ljava/lang/String;

    if-eqz p3, :cond_2

    .line 538
    iget-object p3, p4, Lcom/google/android/exoplr2avp/Format;->codecs:Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/media/metrics/TrackChangeEvent$Builder;->setCodecName(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 540
    :cond_2
    iget p3, p4, Lcom/google/android/exoplr2avp/Format;->bitrate:I

    const/4 p5, -0x1

    if-eq p3, p5, :cond_3

    .line 541
    iget p3, p4, Lcom/google/android/exoplr2avp/Format;->bitrate:I

    invoke-virtual {p1, p3}, Landroid/media/metrics/TrackChangeEvent$Builder;->setBitrate(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 543
    :cond_3
    iget p3, p4, Lcom/google/android/exoplr2avp/Format;->width:I

    if-eq p3, p5, :cond_4

    .line 544
    iget p3, p4, Lcom/google/android/exoplr2avp/Format;->width:I

    invoke-virtual {p1, p3}, Landroid/media/metrics/TrackChangeEvent$Builder;->setWidth(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 546
    :cond_4
    iget p3, p4, Lcom/google/android/exoplr2avp/Format;->height:I

    if-eq p3, p5, :cond_5

    .line 547
    iget p3, p4, Lcom/google/android/exoplr2avp/Format;->height:I

    invoke-virtual {p1, p3}, Landroid/media/metrics/TrackChangeEvent$Builder;->setHeight(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 549
    :cond_5
    iget p3, p4, Lcom/google/android/exoplr2avp/Format;->channelCount:I

    if-eq p3, p5, :cond_6

    .line 550
    iget p3, p4, Lcom/google/android/exoplr2avp/Format;->channelCount:I

    invoke-virtual {p1, p3}, Landroid/media/metrics/TrackChangeEvent$Builder;->setChannelCount(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 552
    :cond_6
    iget p3, p4, Lcom/google/android/exoplr2avp/Format;->sampleRate:I

    if-eq p3, p5, :cond_7

    .line 553
    iget p3, p4, Lcom/google/android/exoplr2avp/Format;->sampleRate:I

    invoke-virtual {p1, p3}, Landroid/media/metrics/TrackChangeEvent$Builder;->setAudioSampleRate(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 555
    :cond_7
    iget-object p3, p4, Lcom/google/android/exoplr2avp/Format;->language:Ljava/lang/String;

    if-eqz p3, :cond_8

    .line 556
    iget-object p3, p4, Lcom/google/android/exoplr2avp/Format;->language:Ljava/lang/String;

    .line 557
    invoke-static {p3}, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->getLanguageAndRegion(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p3

    .line 558
    iget-object p5, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p5, Ljava/lang/String;

    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setLanguage(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 559
    iget-object p5, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz p5, :cond_8

    .line 560
    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/media/metrics/TrackChangeEvent$Builder;->setLanguageRegion(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 563
    :cond_8
    iget p3, p4, Lcom/google/android/exoplr2avp/Format;->frameRate:F

    const/high16 p5, -0x40800000    # -1.0f

    cmpl-float p3, p3, p5

    if-eqz p3, :cond_a

    .line 564
    iget p3, p4, Lcom/google/android/exoplr2avp/Format;->frameRate:F

    invoke-virtual {p1, p3}, Landroid/media/metrics/TrackChangeEvent$Builder;->setVideoFrameRate(F)Landroid/media/metrics/TrackChangeEvent$Builder;

    goto :goto_0

    :cond_9
    const/4 p3, 0x0

    .line 567
    invoke-virtual {p1, p3}, Landroid/media/metrics/TrackChangeEvent$Builder;->setTrackState(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 569
    :cond_a
    :goto_0
    iput-boolean p2, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->reportedEventsForCurrentSession:Z

    .line 570
    iget-object p2, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->playbackSession:Landroid/media/metrics/PlaybackSession;

    invoke-virtual {p1}, Landroid/media/metrics/TrackChangeEvent$Builder;->build()Landroid/media/metrics/TrackChangeEvent;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/media/metrics/PlaybackSession;->reportTrackChangeEvent(Landroid/media/metrics/TrackChangeEvent;)V

    return-void
.end method

.method private resolveNewPlaybackState(Lcom/google/android/exoplr2avp/Player;)I
    .locals 3

    .line 446
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/Player;->getPlaybackState()I

    move-result v0

    .line 447
    iget-boolean v1, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->isSeeking:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x5

    return p1

    .line 450
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->hasFatalError:Z

    if-eqz v1, :cond_1

    const/16 p1, 0xd

    return p1

    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const/16 p1, 0xb

    return p1

    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_7

    .line 455
    iget v0, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->currentPlaybackState:I

    if-eqz v0, :cond_6

    if-ne v0, v2, :cond_3

    goto :goto_1

    .line 459
    :cond_3
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/Player;->getPlayWhenReady()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 p1, 0x7

    return p1

    .line 462
    :cond_4
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/Player;->getPlaybackSuppressionReason()I

    move-result p1

    if-eqz p1, :cond_5

    const/16 p1, 0xa

    goto :goto_0

    :cond_5
    const/4 p1, 0x6

    :goto_0
    return p1

    :cond_6
    :goto_1
    return v2

    :cond_7
    const/4 v2, 0x3

    if-ne v0, v2, :cond_a

    .line 466
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/Player;->getPlayWhenReady()Z

    move-result v0

    if-nez v0, :cond_8

    return v1

    .line 469
    :cond_8
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/Player;->getPlaybackSuppressionReason()I

    move-result p1

    if-eqz p1, :cond_9

    const/16 v2, 0x9

    :cond_9
    return v2

    :cond_a
    const/4 p1, 0x1

    if-ne v0, p1, :cond_b

    .line 472
    iget p1, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->currentPlaybackState:I

    if-eqz p1, :cond_b

    const/16 p1, 0xc

    return p1

    .line 478
    :cond_b
    iget p1, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->currentPlaybackState:I

    return p1
.end method


# virtual methods
.method public getLogSessionId()Landroid/media/metrics/LogSessionId;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->playbackSession:Landroid/media/metrics/PlaybackSession;

    invoke-virtual {v0}, Landroid/media/metrics/PlaybackSession;->getSessionId()Landroid/media/metrics/LogSessionId;

    move-result-object v0

    return-object v0
.end method

.method public onAdPlaybackStarted(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public synthetic onAudioAttributesChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/audio/AudioAttributes;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onAudioAttributesChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/audio/AudioAttributes;)V

    return-void
.end method

.method public synthetic onAudioCodecError(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onAudioCodecError(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    return-void
.end method

.method public synthetic onAudioDecoderInitialized(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onAudioDecoderInitialized(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V

    return-void
.end method

.method public synthetic onAudioDecoderInitialized(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onAudioDecoderInitialized(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V

    return-void
.end method

.method public synthetic onAudioDecoderReleased(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onAudioDecoderReleased(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onAudioDisabled(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onAudioDisabled(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V

    return-void
.end method

.method public synthetic onAudioEnabled(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onAudioEnabled(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V

    return-void
.end method

.method public synthetic onAudioInputFormatChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Format;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onAudioInputFormatChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Format;)V

    return-void
.end method

.method public synthetic onAudioInputFormatChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onAudioInputFormatChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;)V

    return-void
.end method

.method public synthetic onAudioPositionAdvancing(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onAudioPositionAdvancing(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;J)V

    return-void
.end method

.method public synthetic onAudioSessionIdChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onAudioSessionIdChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public synthetic onAudioSinkError(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onAudioSinkError(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    return-void
.end method

.method public synthetic onAudioUnderrun(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;IJJ)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onAudioUnderrun(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;IJJ)V

    return-void
.end method

.method public synthetic onAvailableCommandsChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Player$Commands;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onAvailableCommandsChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Player$Commands;)V

    return-void
.end method

.method public onBandwidthEstimate(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;IJJ)V
    .locals 5

    .line 223
    iget-object p5, p1, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    if-eqz p5, :cond_2

    .line 224
    iget-object p5, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->sessionManager:Lcom/google/android/exoplr2avp/analytics/PlaybackSessionManager;

    iget-object p6, p1, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    .line 226
    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    .line 225
    invoke-interface {p5, p6, p1}, Lcom/google/android/exoplr2avp/analytics/PlaybackSessionManager;->getSessionForMediaPeriodId(Lcom/google/android/exoplr2avp/Timeline;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Ljava/lang/String;

    move-result-object p1

    .line 227
    iget-object p5, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->bandwidthBytes:Ljava/util/HashMap;

    invoke-virtual {p5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Long;

    .line 228
    iget-object p6, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->bandwidthTimeMs:Ljava/util/HashMap;

    invoke-virtual {p6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Long;

    .line 229
    iget-object v0, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->bandwidthBytes:Ljava/util/HashMap;

    const-wide/16 v1, 0x0

    if-nez p5, :cond_0

    move-wide v3, v1

    goto :goto_0

    .line 230
    :cond_0
    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :goto_0
    add-long/2addr v3, p3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    .line 229
    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object p3, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->bandwidthTimeMs:Ljava/util/HashMap;

    if-nez p6, :cond_1

    goto :goto_1

    .line 232
    :cond_1
    invoke-virtual {p6}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_1
    int-to-long p4, p2

    add-long/2addr v1, p4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 231
    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public synthetic onCues(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/text/CueGroup;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onCues(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/text/CueGroup;)V

    return-void
.end method

.method public synthetic onCues(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onCues(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/util/List;)V

    return-void
.end method

.method public synthetic onDecoderDisabled(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/decoder/DecoderCounters;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onDecoderDisabled(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/decoder/DecoderCounters;)V

    return-void
.end method

.method public synthetic onDecoderEnabled(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/decoder/DecoderCounters;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onDecoderEnabled(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/decoder/DecoderCounters;)V

    return-void
.end method

.method public synthetic onDecoderInitialized(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILjava/lang/String;J)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onDecoderInitialized(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILjava/lang/String;J)V

    return-void
.end method

.method public synthetic onDecoderInputFormatChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/Format;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onDecoderInputFormatChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/Format;)V

    return-void
.end method

.method public synthetic onDeviceInfoChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/DeviceInfo;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onDeviceInfoChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/DeviceInfo;)V

    return-void
.end method

.method public synthetic onDeviceVolumeChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;IZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onDeviceVolumeChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;IZ)V

    return-void
.end method

.method public onDownstreamFormatChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V
    .locals 5

    .line 238
    iget-object v0, p1, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    if-nez v0, :cond_0

    return-void

    .line 243
    :cond_0
    new-instance v0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$PendingFormatUpdate;

    iget-object v1, p2, Lcom/google/android/exoplr2avp/source/MediaLoadData;->trackFormat:Lcom/google/android/exoplr2avp/Format;

    .line 245
    invoke-static {v1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/Format;

    iget v2, p2, Lcom/google/android/exoplr2avp/source/MediaLoadData;->trackSelectionReason:I

    iget-object v3, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->sessionManager:Lcom/google/android/exoplr2avp/analytics/PlaybackSessionManager;

    iget-object v4, p1, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    .line 248
    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    .line 247
    invoke-interface {v3, v4, p1}, Lcom/google/android/exoplr2avp/analytics/PlaybackSessionManager;->getSessionForMediaPeriodId(Lcom/google/android/exoplr2avp/Timeline;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$PendingFormatUpdate;-><init>(Lcom/google/android/exoplr2avp/Format;ILjava/lang/String;)V

    .line 249
    iget p1, p2, Lcom/google/android/exoplr2avp/source/MediaLoadData;->trackType:I

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 258
    :cond_1
    iput-object v0, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->pendingTextFormat:Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$PendingFormatUpdate;

    goto :goto_0

    .line 255
    :cond_2
    iput-object v0, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->pendingAudioFormat:Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$PendingFormatUpdate;

    goto :goto_0

    .line 252
    :cond_3
    iput-object v0, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->pendingVideoFormat:Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$PendingFormatUpdate;

    :goto_0
    return-void
.end method

.method public synthetic onDrmKeysLoaded(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onDrmKeysLoaded(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onDrmKeysRemoved(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onDrmKeysRemoved(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onDrmKeysRestored(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onDrmKeysRestored(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onDrmSessionAcquired(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onDrmSessionAcquired(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onDrmSessionAcquired(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onDrmSessionAcquired(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public synthetic onDrmSessionManagerError(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onDrmSessionManagerError(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    return-void
.end method

.method public synthetic onDrmSessionReleased(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onDrmSessionReleased(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onDroppedVideoFrames(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;IJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onDroppedVideoFrames(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;IJ)V

    return-void
.end method

.method public onEvents(Lcom/google/android/exoplr2avp/Player;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$Events;)V
    .locals 2

    .line 301
    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$Events;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 304
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->maybeAddSessions(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$Events;)V

    .line 306
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 307
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->maybeUpdateMetricsBuilderValues(Lcom/google/android/exoplr2avp/Player;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$Events;)V

    .line 308
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->maybeReportPlaybackError(J)V

    .line 309
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->maybeReportTrackChanges(Lcom/google/android/exoplr2avp/Player;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$Events;J)V

    .line 310
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->maybeReportNetworkChange(J)V

    .line 311
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->maybeReportPlaybackStateChange(Lcom/google/android/exoplr2avp/Player;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$Events;J)V

    const/16 p1, 0x404

    .line 313
    invoke-virtual {p2, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$Events;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->sessionManager:Lcom/google/android/exoplr2avp/analytics/PlaybackSessionManager;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$Events;->getEventTime(I)Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/analytics/PlaybackSessionManager;->finishAllSessions(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V

    :cond_1
    return-void
.end method

.method public synthetic onIsLoadingChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onIsLoadingChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method public synthetic onIsPlayingChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onIsPlayingChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method public synthetic onLoadCanceled(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onLoadCanceled(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V

    return-void
.end method

.method public synthetic onLoadCompleted(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onLoadCompleted(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V

    return-void
.end method

.method public onLoadError(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;Ljava/io/IOException;Z)V
    .locals 0

    .line 291
    iget p1, p3, Lcom/google/android/exoplr2avp/source/MediaLoadData;->dataType:I

    iput p1, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->ioErrorType:I

    return-void
.end method

.method public synthetic onLoadStarted(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onLoadStarted(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V

    return-void
.end method

.method public synthetic onLoadingChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onLoadingChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method public synthetic onMaxSeekToPreviousPositionChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onMaxSeekToPreviousPositionChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;J)V

    return-void
.end method

.method public synthetic onMediaItemTransition(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/MediaItem;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onMediaItemTransition(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/MediaItem;I)V

    return-void
.end method

.method public synthetic onMediaMetadataChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/MediaMetadata;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onMediaMetadataChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/MediaMetadata;)V

    return-void
.end method

.method public synthetic onMetadata(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/metadata/Metadata;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onMetadata(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/metadata/Metadata;)V

    return-void
.end method

.method public synthetic onPlayWhenReadyChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ZI)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onPlayWhenReadyChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ZI)V

    return-void
.end method

.method public synthetic onPlaybackParametersChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/PlaybackParameters;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onPlaybackParametersChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/PlaybackParameters;)V

    return-void
.end method

.method public synthetic onPlaybackStateChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onPlaybackStateChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public synthetic onPlaybackSuppressionReasonChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onPlaybackSuppressionReasonChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/PlaybackException;)V
    .locals 0

    .line 296
    iput-object p2, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->pendingPlayerError:Lcom/google/android/exoplr2avp/PlaybackException;

    return-void
.end method

.method public synthetic onPlayerErrorChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/PlaybackException;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onPlayerErrorChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/PlaybackException;)V

    return-void
.end method

.method public synthetic onPlayerReleased(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onPlayerReleased(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onPlayerStateChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ZI)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onPlayerStateChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ZI)V

    return-void
.end method

.method public synthetic onPlaylistMetadataChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/MediaMetadata;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onPlaylistMetadataChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/MediaMetadata;)V

    return-void
.end method

.method public synthetic onPositionDiscontinuity(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onPositionDiscontinuity(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public onPositionDiscontinuity(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Player$PositionInfo;Lcom/google/android/exoplr2avp/Player$PositionInfo;I)V
    .locals 0

    const/4 p1, 0x1

    if-ne p4, p1, :cond_0

    .line 208
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->isSeeking:Z

    .line 210
    :cond_0
    iput p4, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->discontinuityReason:I

    return-void
.end method

.method public synthetic onRenderedFirstFrame(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/Object;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onRenderedFirstFrame(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/Object;J)V

    return-void
.end method

.method public synthetic onRepeatModeChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onRepeatModeChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public synthetic onSeekBackIncrementChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onSeekBackIncrementChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;J)V

    return-void
.end method

.method public synthetic onSeekForwardIncrementChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onSeekForwardIncrementChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;J)V

    return-void
.end method

.method public synthetic onSeekProcessed(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onSeekProcessed(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onSeekStarted(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onSeekStarted(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public onSessionActive(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    .locals 1

    .line 169
    iget-object v0, p1, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 173
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->finishCurrentSession()V

    .line 174
    iput-object p2, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->activeSessionId:Ljava/lang/String;

    .line 175
    new-instance p2, Landroid/media/metrics/PlaybackMetrics$Builder;

    invoke-direct {p2}, Landroid/media/metrics/PlaybackMetrics$Builder;-><init>()V

    const-string v0, "ExoPlayerLib"

    .line 177
    invoke-virtual {p2, v0}, Landroid/media/metrics/PlaybackMetrics$Builder;->setPlayerName(Ljava/lang/String;)Landroid/media/metrics/PlaybackMetrics$Builder;

    move-result-object p2

    const-string v0, "2.18.0"

    .line 178
    invoke-virtual {p2, v0}, Landroid/media/metrics/PlaybackMetrics$Builder;->setPlayerVersion(Ljava/lang/String;)Landroid/media/metrics/PlaybackMetrics$Builder;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->metricsBuilder:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 179
    iget-object p2, p1, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    invoke-direct {p0, p2, p1}, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->maybeUpdateTimelineMetadata(Lcom/google/android/exoplr2avp/Timeline;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method public onSessionCreated(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSessionFinished(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Z)V
    .locals 0

    .line 189
    iget-object p3, p1, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    if-eqz p3, :cond_0

    iget-object p1, p1, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->activeSessionId:Ljava/lang/String;

    .line 190
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 193
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->finishCurrentSession()V

    .line 195
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->bandwidthTimeMs:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object p1, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->bandwidthBytes:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public synthetic onShuffleModeChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onShuffleModeChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method public synthetic onSkipSilenceEnabledChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onSkipSilenceEnabledChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method public synthetic onSurfaceSizeChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;II)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onSurfaceSizeChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;II)V

    return-void
.end method

.method public synthetic onTimelineChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onTimelineChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public synthetic onTrackSelectionParametersChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onTrackSelectionParametersChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;)V

    return-void
.end method

.method public synthetic onTracksChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Tracks;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onTracksChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Tracks;)V

    return-void
.end method

.method public synthetic onUpstreamDiscarded(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onUpstreamDiscarded(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V

    return-void
.end method

.method public synthetic onVideoCodecError(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onVideoCodecError(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    return-void
.end method

.method public synthetic onVideoDecoderInitialized(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onVideoDecoderInitialized(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V

    return-void
.end method

.method public synthetic onVideoDecoderInitialized(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onVideoDecoderInitialized(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V

    return-void
.end method

.method public synthetic onVideoDecoderReleased(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onVideoDecoderReleased(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    return-void
.end method

.method public onVideoDisabled(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V
    .locals 1

    .line 216
    iget p1, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->droppedFrames:I

    iget v0, p2, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->droppedBufferCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->droppedFrames:I

    .line 217
    iget p1, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->playedFrames:I

    iget p2, p2, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->renderedOutputBufferCount:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->playedFrames:I

    return-void
.end method

.method public synthetic onVideoEnabled(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onVideoEnabled(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V

    return-void
.end method

.method public synthetic onVideoFrameProcessingOffset(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;JI)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onVideoFrameProcessingOffset(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;JI)V

    return-void
.end method

.method public synthetic onVideoInputFormatChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Format;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onVideoInputFormatChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Format;)V

    return-void
.end method

.method public synthetic onVideoInputFormatChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onVideoInputFormatChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;)V

    return-void
.end method

.method public synthetic onVideoSizeChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;IIIF)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onVideoSizeChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;IIIF)V

    return-void
.end method

.method public onVideoSizeChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/video/VideoSize;)V
    .locals 2

    .line 267
    iget-object p1, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->pendingVideoFormat:Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$PendingFormatUpdate;

    if-eqz p1, :cond_0

    .line 268
    iget-object v0, p1, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$PendingFormatUpdate;->format:Lcom/google/android/exoplr2avp/Format;

    iget v0, v0, Lcom/google/android/exoplr2avp/Format;->height:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 269
    iget-object v0, p1, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$PendingFormatUpdate;->format:Lcom/google/android/exoplr2avp/Format;

    .line 272
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/Format;->buildUpon()Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object v0

    iget v1, p2, Lcom/google/android/exoplr2avp/video/VideoSize;->width:I

    .line 273
    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/Format$Builder;->setWidth(I)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object v0

    iget p2, p2, Lcom/google/android/exoplr2avp/video/VideoSize;->height:I

    .line 274
    invoke-virtual {v0, p2}, Lcom/google/android/exoplr2avp/Format$Builder;->setHeight(I)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object p2

    .line 275
    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/Format$Builder;->build()Lcom/google/android/exoplr2avp/Format;

    move-result-object p2

    .line 276
    new-instance v0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$PendingFormatUpdate;

    iget v1, p1, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$PendingFormatUpdate;->selectionReason:I

    iget-object p1, p1, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$PendingFormatUpdate;->sessionId:Ljava/lang/String;

    invoke-direct {v0, p2, v1, p1}, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$PendingFormatUpdate;-><init>(Lcom/google/android/exoplr2avp/Format;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener;->pendingVideoFormat:Lcom/google/android/exoplr2avp/analytics/MediaMetricsListener$PendingFormatUpdate;

    :cond_0
    return-void
.end method

.method public synthetic onVolumeChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;F)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onVolumeChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;F)V

    return-void
.end method
