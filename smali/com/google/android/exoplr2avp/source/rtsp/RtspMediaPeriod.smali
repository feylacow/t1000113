.class final Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;
.super Ljava/lang/Object;
.source "RtspMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/source/MediaPeriod;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtpLoadInfo;,
        Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtspLoaderWrapper;,
        Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$SampleStreamImpl;,
        Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$InternalListener;,
        Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$Listener;
    }
.end annotation


# static fields
.field private static final PORT_BINDING_MAX_RETRY_COUNT:I = 0x3


# instance fields
.field private final allocator:Lcom/google/android/exoplr2avp/upstream/Allocator;

.field private callback:Lcom/google/android/exoplr2avp/source/MediaPeriod$Callback;

.field private final handler:Landroid/os/Handler;

.field private final internalListener:Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$InternalListener;

.field private isUsingRtpTcp:Z

.field private final listener:Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$Listener;

.field private loadingFinished:Z

.field private notifyDiscontinuity:Z

.field private pendingSeekPositionUs:J

.field private pendingSeekPositionUsForTcpRetry:J

.field private playbackException:Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource$RtspPlaybackException;

.field private portBindingRetryCount:I

.field private preparationError:Ljava/io/IOException;

.field private prepared:Z

.field private released:Z

.field private requestedSeekPositionUs:J

.field private final rtpDataChannelFactory:Lcom/google/android/exoplr2avp/source/rtsp/RtpDataChannel$Factory;

.field private final rtspClient:Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;

.field private final rtspLoaderWrappers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtspLoaderWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final selectedLoadInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtpLoadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private trackGroups:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplr2avp/source/TrackGroup;",
            ">;"
        }
    .end annotation
.end field

.field private trackSelected:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/upstream/Allocator;Lcom/google/android/exoplr2avp/source/rtsp/RtpDataChannel$Factory;Landroid/net/Uri;Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$Listener;Ljava/lang/String;Ljavax/net/SocketFactory;Z)V
    .locals 7

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->allocator:Lcom/google/android/exoplr2avp/upstream/Allocator;

    .line 123
    iput-object p2, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->rtpDataChannelFactory:Lcom/google/android/exoplr2avp/source/rtsp/RtpDataChannel$Factory;

    .line 124
    iput-object p4, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->listener:Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$Listener;

    .line 126
    invoke-static {}, Lcom/google/android/exoplr2avp/util/Util;->createHandlerForCurrentLooper()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->handler:Landroid/os/Handler;

    .line 127
    new-instance v2, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$InternalListener;

    const/4 p1, 0x0

    invoke-direct {v2, p0, p1}, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$InternalListener;-><init>(Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$1;)V

    iput-object v2, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->internalListener:Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$InternalListener;

    .line 128
    new-instance p1, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;

    move-object v0, p1

    move-object v1, v2

    move-object v3, p5

    move-object v4, p3

    move-object v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;-><init>(Lcom/google/android/exoplr2avp/source/rtsp/RtspClient$SessionInfoListener;Lcom/google/android/exoplr2avp/source/rtsp/RtspClient$PlaybackEventListener;Ljava/lang/String;Landroid/net/Uri;Ljavax/net/SocketFactory;Z)V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->rtspClient:Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;

    .line 136
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    .line 137
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->selectedLoadInfos:Ljava/util/List;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 139
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->pendingSeekPositionUs:J

    .line 140
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->requestedSeekPositionUs:J

    .line 141
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->pendingSeekPositionUsForTcpRetry:J

    return-void
.end method

.method static synthetic access$1008(Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;)I
    .locals 2

    .line 63
    iget v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->portBindingRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->portBindingRetryCount:I

    return v0
.end method

.method static synthetic access$1100(Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;)Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource$RtspPlaybackException;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->playbackException:Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource$RtspPlaybackException;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource$RtspPlaybackException;)Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource$RtspPlaybackException;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->playbackException:Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource$RtspPlaybackException;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;)Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->rtspClient:Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;)Ljava/util/List;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->selectedLoadInfos:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;)Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$Listener;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->listener:Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$Listener;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;)Z
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->isSeekPending()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1602(Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;Z)Z
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->notifyDiscontinuity:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;)J
    .locals 2

    .line 63
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->pendingSeekPositionUs:J

    return-wide v0
.end method

.method static synthetic access$1702(Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;J)J
    .locals 0

    .line 63
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->pendingSeekPositionUs:J

    return-wide p1
.end method

.method static synthetic access$1800(Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;)J
    .locals 2

    .line 63
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->requestedSeekPositionUs:J

    return-wide v0
.end method

.method static synthetic access$1802(Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;J)J
    .locals 0

    .line 63
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->requestedSeekPositionUs:J

    return-wide p1
.end method

.method static synthetic access$1900(Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;)J
    .locals 2

    .line 63
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->pendingSeekPositionUsForTcpRetry:J

    return-wide v0
.end method

.method static synthetic access$1902(Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;J)J
    .locals 0

    .line 63
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->pendingSeekPositionUsForTcpRetry:J

    return-wide p1
.end method

.method static synthetic access$2000(Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;Landroid/net/Uri;)Lcom/google/android/exoplr2avp/source/rtsp/RtpDataLoadable;
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->getLoadableByTrackUri(Landroid/net/Uri;)Lcom/google/android/exoplr2avp/source/rtsp/RtpDataLoadable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2100(Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;)Lcom/google/android/exoplr2avp/source/rtsp/RtpDataChannel$Factory;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->rtpDataChannelFactory:Lcom/google/android/exoplr2avp/source/rtsp/RtpDataChannel$Factory;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->maybeFinishPrepare()V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;)Lcom/google/android/exoplr2avp/upstream/Allocator;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->allocator:Lcom/google/android/exoplr2avp/upstream/Allocator;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;)Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$InternalListener;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->internalListener:Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$InternalListener;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->updateLoadingFinished()V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->maybeSetupTracks()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;)Ljava/util/List;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;)Landroid/os/Handler;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->isUsingRtpTcp:Z

    return p0
.end method

.method static synthetic access$602(Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;Z)Z
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->isUsingRtpTcp:Z

    return p1
.end method

.method static synthetic access$700(Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->retryWithRtpTcp()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->prepared:Z

    return p0
.end method

.method static synthetic access$902(Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->preparationError:Ljava/io/IOException;

    return-object p1
.end method

.method private static buildTrackGroups(Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtspLoaderWrapper;",
            ">;)",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplr2avp/source/TrackGroup;",
            ">;"
        }
    .end annotation

    .line 468
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 470
    :goto_0
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 471
    invoke-virtual {p0, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtspLoaderWrapper;

    invoke-static {v3}, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->access$200(Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtspLoaderWrapper;)Lcom/google/android/exoplr2avp/source/SampleQueue;

    move-result-object v3

    .line 472
    new-instance v4, Lcom/google/android/exoplr2avp/source/TrackGroup;

    .line 474
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/google/android/exoplr2avp/Format;

    invoke-virtual {v3}, Lcom/google/android/exoplr2avp/source/SampleQueue;->getUpstreamFormat()Lcom/google/android/exoplr2avp/Format;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplr2avp/Format;

    aput-object v3, v6, v1

    invoke-direct {v4, v5, v6}, Lcom/google/android/exoplr2avp/source/TrackGroup;-><init>(Ljava/lang/String;[Lcom/google/android/exoplr2avp/Format;)V

    .line 472
    invoke-virtual {v0, v4}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 476
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method private getLoadableByTrackUri(Landroid/net/Uri;)Lcom/google/android/exoplr2avp/source/rtsp/RtpDataLoadable;
    .locals 3

    const/4 v0, 0x0

    .line 400
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 401
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtspLoaderWrapper;

    invoke-static {v1}, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->access$100(Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtspLoaderWrapper;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 402
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtspLoaderWrapper;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->loadInfo:Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtpLoadInfo;

    .line 403
    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtpLoadInfo;->getTrackUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 404
    invoke-static {v1}, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtpLoadInfo;->access$300(Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtpLoadInfo;)Lcom/google/android/exoplr2avp/source/rtsp/RtpDataLoadable;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private isSeekPending()Z
    .locals 5

    .line 412
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->pendingSeekPositionUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private maybeFinishPrepare()V
    .locals 2

    .line 416
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->released:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->prepared:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 421
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 422
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtspLoaderWrapper;

    invoke-static {v1}, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->access$200(Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtspLoaderWrapper;)Lcom/google/android/exoplr2avp/source/SampleQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/source/SampleQueue;->getUpstreamFormat()Lcom/google/android/exoplr2avp/Format;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 427
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->prepared:Z

    .line 428
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->buildTrackGroups(Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->trackGroups:Lcom/google/common/collect/ImmutableList;

    .line 429
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->callback:Lcom/google/android/exoplr2avp/source/MediaPeriod$Callback;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Lcom/google/android/exoplr2avp/source/MediaPeriod$Callback;->onPrepared(Lcom/google/android/exoplr2avp/source/MediaPeriod;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private maybeSetupTracks()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 450
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->selectedLoadInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 451
    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->selectedLoadInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtpLoadInfo;

    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtpLoadInfo;->isTransportReady()Z

    move-result v2

    and-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 454
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->trackSelected:Z

    if-eqz v0, :cond_1

    .line 455
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->rtspClient:Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->selectedLoadInfos:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;->setupSelectedTracks(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method private retryWithRtpTcp()V
    .locals 8

    .line 657
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->rtspClient:Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;->retryWithRtpTcp()V

    .line 660
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->rtpDataChannelFactory:Lcom/google/android/exoplr2avp/source/rtsp/RtpDataChannel$Factory;

    .line 661
    invoke-interface {v0}, Lcom/google/android/exoplr2avp/source/rtsp/RtpDataChannel$Factory;->createFallbackDataChannelFactory()Lcom/google/android/exoplr2avp/source/rtsp/RtpDataChannel$Factory;

    move-result-object v0

    if-nez v0, :cond_0

    .line 663
    new-instance v0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource$RtspPlaybackException;

    const-string v1, "No fallback data channel factory for TCP retry"

    invoke-direct {v0, v1}, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource$RtspPlaybackException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->playbackException:Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource$RtspPlaybackException;

    return-void

    .line 668
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 669
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->selectedLoadInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 672
    :goto_0
    iget-object v5, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 673
    iget-object v5, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtspLoaderWrapper;

    .line 675
    invoke-static {v5}, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->access$100(Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtspLoaderWrapper;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 676
    new-instance v6, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtspLoaderWrapper;

    iget-object v7, v5, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->loadInfo:Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtpLoadInfo;

    iget-object v7, v7, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtpLoadInfo;->mediaTrack:Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaTrack;

    invoke-direct {v6, p0, v7, v4, v0}, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtspLoaderWrapper;-><init>(Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaTrack;ILcom/google/android/exoplr2avp/source/rtsp/RtpDataChannel$Factory;)V

    .line 679
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 680
    invoke-virtual {v6}, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->startLoading()V

    .line 681
    iget-object v7, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->selectedLoadInfos:Ljava/util/List;

    iget-object v5, v5, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->loadInfo:Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtpLoadInfo;

    invoke-interface {v7, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 682
    iget-object v5, v6, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->loadInfo:Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtpLoadInfo;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 685
    :cond_1
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 690
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    .line 691
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 692
    iget-object v4, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 693
    iget-object v4, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 694
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->selectedLoadInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 695
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->selectedLoadInfos:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 699
    :goto_2
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-ge v3, v1, :cond_4

    .line 700
    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtspLoaderWrapper;

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->cancelLoad()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private seekInsideBufferUs(J)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 439
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 440
    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtspLoaderWrapper;

    invoke-static {v2}, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->access$200(Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtspLoaderWrapper;)Lcom/google/android/exoplr2avp/source/SampleQueue;

    move-result-object v2

    .line 441
    invoke-virtual {v2, p1, p2, v0}, Lcom/google/android/exoplr2avp/source/SampleQueue;->seekTo(JZ)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private suppressRead()Z
    .locals 1

    .line 393
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->notifyDiscontinuity:Z

    return v0
.end method

.method private updateLoadingFinished()V
    .locals 3

    const/4 v0, 0x1

    .line 460
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->loadingFinished:Z

    const/4 v0, 0x0

    .line 461
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 462
    iget-boolean v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->loadingFinished:Z

    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtspLoaderWrapper;

    invoke-static {v2}, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->access$100(Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtspLoaderWrapper;)Z

    move-result v2

    and-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->loadingFinished:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public continueLoading(J)Z
    .locals 0

    .line 354
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->isLoading()Z

    move-result p1

    return p1
.end method

.method public discardBuffer(JZ)V
    .locals 3

    .line 236
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->isSeekPending()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 240
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 241
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtspLoaderWrapper;

    .line 242
    invoke-static {v1}, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->access$100(Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtspLoaderWrapper;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 243
    invoke-static {v1}, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->access$200(Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtspLoaderWrapper;)Lcom/google/android/exoplr2avp/source/SampleQueue;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/google/android/exoplr2avp/source/SampleQueue;->discardTo(JZZ)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getAdjustedSeekPositionUs(JLcom/google/android/exoplr2avp/SeekParameters;)J
    .locals 0

    return-wide p1
.end method

.method public getBufferedPositionUs()J
    .locals 9

    .line 324
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->loadingFinished:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 328
    :cond_0
    iget-wide v3, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->requestedSeekPositionUs:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1

    return-wide v3

    :cond_1
    const-wide v3, 0x7fffffffffffffffL

    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 334
    :goto_0
    iget-object v7, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 335
    iget-object v7, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtspLoaderWrapper;

    .line 336
    invoke-static {v7}, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->access$100(Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtspLoaderWrapper;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 337
    invoke-virtual {v7}, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->getBufferedPositionUs()J

    move-result-wide v7

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    const/4 v5, 0x0

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    if-nez v5, :cond_4

    cmp-long v0, v3, v1

    if-nez v0, :cond_5

    :cond_4
    const-wide/16 v3, 0x0

    :cond_5
    return-wide v3

    :cond_6
    :goto_1
    return-wide v1
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .line 349
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStreamKeys(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;",
            ">;)",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplr2avp/offline/StreamKey;",
            ">;"
        }
    .end annotation

    .line 180
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getStreamKeys(Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 63
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->getStreamKeys(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public getTrackGroups()Lcom/google/android/exoplr2avp/source/TrackGroupArray;
    .locals 3

    .line 174
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->prepared:Z

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 175
    new-instance v0, Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->trackGroups:Lcom/google/common/collect/ImmutableList;

    invoke-static {v1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/ImmutableList;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/google/android/exoplr2avp/source/TrackGroup;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/exoplr2avp/source/TrackGroup;

    invoke-direct {v0, v1}, Lcom/google/android/exoplr2avp/source/TrackGroupArray;-><init>([Lcom/google/android/exoplr2avp/source/TrackGroup;)V

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .line 359
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->loadingFinished:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method isReady(I)Z
    .locals 1

    .line 370
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->suppressRead()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtspLoaderWrapper;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->isSampleQueueReady()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public maybeThrowPrepareError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->preparationError:Ljava/io/IOException;

    if-nez v0, :cond_0

    return-void

    .line 168
    :cond_0
    throw v0
.end method

.method public prepare(Lcom/google/android/exoplr2avp/source/MediaPeriod$Callback;J)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->callback:Lcom/google/android/exoplr2avp/source/MediaPeriod$Callback;

    .line 158
    :try_start_0
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->rtspClient:Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 160
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->preparationError:Ljava/io/IOException;

    .line 161
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->rtspClient:Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    :goto_0
    return-void
.end method

.method readData(ILcom/google/android/exoplr2avp/FormatHolder;Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;I)I
    .locals 1

    .line 379
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->suppressRead()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x3

    return p1

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtspLoaderWrapper;

    invoke-virtual {p1, p2, p3, p4}, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->read(Lcom/google/android/exoplr2avp/FormatHolder;Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;I)I

    move-result p1

    return p1
.end method

.method public readDiscontinuity()J
    .locals 2

    .line 254
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->notifyDiscontinuity:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 255
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->notifyDiscontinuity:Z

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 2

    const/4 v0, 0x0

    .line 146
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtspLoaderWrapper;

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->release()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->rtspClient:Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    const/4 v0, 0x1

    .line 150
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->released:Z

    return-void
.end method

.method public seekToUs(J)J
    .locals 5

    .line 276
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->isUsingRtpTcp:Z

    if-nez v0, :cond_0

    .line 278
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->pendingSeekPositionUsForTcpRetry:J

    return-wide p1

    :cond_0
    const/4 v0, 0x0

    .line 282
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->discardBuffer(JZ)V

    .line 283
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->requestedSeekPositionUs:J

    .line 285
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->isSeekPending()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 286
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->rtspClient:Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 294
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->pendingSeekPositionUs:J

    .line 295
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->rtspClient:Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;->seekToUs(J)V

    return-wide p1

    .line 301
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_2
    return-wide p1

    .line 305
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->seekInsideBufferUs(J)Z

    move-result v1

    if-eqz v1, :cond_4

    return-wide p1

    .line 309
    :cond_4
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->pendingSeekPositionUs:J

    .line 310
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->rtspClient:Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;->seekToUs(J)V

    .line 311
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 312
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtspLoaderWrapper;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->seekTo(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-wide p1
.end method

.method public selectTracks([Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;[Z[Lcom/google/android/exoplr2avp/source/SampleStream;[ZJ)J
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 193
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 194
    aget-object v2, p3, v1

    if-eqz v2, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    aget-boolean v2, p2, v1

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 195
    aput-object v2, p3, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 200
    :cond_2
    iget-object p2, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->selectedLoadInfos:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    const/4 p2, 0x0

    .line 201
    :goto_1
    array-length v1, p1

    const/4 v2, 0x1

    if-ge p2, v1, :cond_5

    .line 202
    aget-object v1, p1, p2

    if-nez v1, :cond_3

    goto :goto_2

    .line 207
    :cond_3
    invoke-interface {v1}, Lcom/google/android/exoplr2avp/trackselection/TrackSelection;->getTrackGroup()Lcom/google/android/exoplr2avp/source/TrackGroup;

    move-result-object v1

    .line 208
    iget-object v3, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->trackGroups:Lcom/google/common/collect/ImmutableList;

    invoke-static {v3}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3, v1}, Lcom/google/common/collect/ImmutableList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 209
    iget-object v4, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->selectedLoadInfos:Ljava/util/List;

    iget-object v5, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtspLoaderWrapper;

    invoke-static {v5}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtspLoaderWrapper;

    iget-object v5, v5, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->loadInfo:Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtpLoadInfo;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object v4, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->trackGroups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v4, v1}, Lcom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 213
    aget-object v1, p3, p2

    if-nez v1, :cond_4

    .line 214
    new-instance v1, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$SampleStreamImpl;

    invoke-direct {v1, p0, v3}, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$SampleStreamImpl;-><init>(Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;I)V

    aput-object v1, p3, p2

    .line 216
    aput-boolean v2, p4, p2

    :cond_4
    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 222
    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_7

    .line 223
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtspLoaderWrapper;

    .line 224
    iget-object p2, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->selectedLoadInfos:Ljava/util/List;

    iget-object p3, p1, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->loadInfo:Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtpLoadInfo;

    invoke-interface {p2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 225
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->cancelLoad()V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 229
    :cond_7
    iput-boolean v2, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->trackSelected:Z

    .line 230
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->maybeSetupTracks()V

    return-wide p5
.end method

.method skipData(IJ)I
    .locals 1

    .line 386
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->suppressRead()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x3

    return p1

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->rtspLoaderWrappers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtspLoaderWrapper;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$RtspLoaderWrapper;->skipData(J)I

    move-result p1

    return p1
.end method
