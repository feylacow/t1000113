.class public final Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;
.super Lcom/google/android/exoplr2avp/source/BaseMediaSource;
.source "SsMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/upstream/Loader$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplr2avp/source/BaseMediaSource;",
        "Lcom/google/android/exoplr2avp/upstream/Loader$Callback<",
        "Lcom/google/android/exoplr2avp/upstream/ParsingLoadable<",
        "Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final DEFAULT_LIVE_PRESENTATION_DELAY_MS:J = 0x7530L

.field private static final MINIMUM_MANIFEST_REFRESH_PERIOD_MS:I = 0x1388

.field private static final MIN_LIVE_DEFAULT_START_POSITION_US:J = 0x4c4b40L


# instance fields
.field private final chunkSourceFactory:Lcom/google/android/exoplr2avp/source/smoothstreaming/SsChunkSource$Factory;

.field private final compositeSequenceableLoaderFactory:Lcom/google/android/exoplr2avp/source/CompositeSequenceableLoaderFactory;

.field private final drmSessionManager:Lcom/google/android/exoplr2avp/drm/DrmSessionManager;

.field private final livePresentationDelayMs:J

.field private final loadErrorHandlingPolicy:Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

.field private final localConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

.field private manifest:Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;

.field private manifestDataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

.field private final manifestDataSourceFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

.field private final manifestEventDispatcher:Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;

.field private manifestLoadStartTimestamp:J

.field private manifestLoader:Lcom/google/android/exoplr2avp/upstream/Loader;

.field private manifestLoaderErrorThrower:Lcom/google/android/exoplr2avp/upstream/LoaderErrorThrower;

.field private final manifestParser:Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser<",
            "+",
            "Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;",
            ">;"
        }
    .end annotation
.end field

.field private manifestRefreshHandler:Landroid/os/Handler;

.field private final manifestUri:Landroid/net/Uri;

.field private final mediaItem:Lcom/google/android/exoplr2avp/MediaItem;

.field private final mediaPeriods:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaPeriod;",
            ">;"
        }
    .end annotation
.end field

.field private mediaTransferListener:Lcom/google/android/exoplr2avp/upstream/TransferListener;

.field private final sideloadedManifest:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.smoothstreaming"

    .line 75
    invoke-static {v0}, Lcom/google/android/exoplr2avp/ExoPlayerLibraryInfo;->registerModule(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplr2avp/MediaItem;Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser;Lcom/google/android/exoplr2avp/source/smoothstreaming/SsChunkSource$Factory;Lcom/google/android/exoplr2avp/source/CompositeSequenceableLoaderFactory;Lcom/google/android/exoplr2avp/drm/DrmSessionManager;Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/MediaItem;",
            "Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;",
            "Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;",
            "Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser<",
            "+",
            "Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;",
            ">;",
            "Lcom/google/android/exoplr2avp/source/smoothstreaming/SsChunkSource$Factory;",
            "Lcom/google/android/exoplr2avp/source/CompositeSequenceableLoaderFactory;",
            "Lcom/google/android/exoplr2avp/drm/DrmSessionManager;",
            "Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;",
            "J)V"
        }
    .end annotation

    .line 338
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/source/BaseMediaSource;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 339
    iget-boolean v2, p2, Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;->isLive:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 340
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->mediaItem:Lcom/google/android/exoplr2avp/MediaItem;

    .line 341
    iget-object p1, p1, Lcom/google/android/exoplr2avp/MediaItem;->localConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->localConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    .line 342
    iput-object p2, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;

    .line 344
    iget-object v2, p1, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    move-object p1, v3

    goto :goto_2

    .line 346
    :cond_2
    iget-object p1, p1, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Util;->fixSmoothStreamingIsmManifestUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->manifestUri:Landroid/net/Uri;

    .line 347
    iput-object p3, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->manifestDataSourceFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

    .line 348
    iput-object p4, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->manifestParser:Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser;

    .line 349
    iput-object p5, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->chunkSourceFactory:Lcom/google/android/exoplr2avp/source/smoothstreaming/SsChunkSource$Factory;

    .line 350
    iput-object p6, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplr2avp/source/CompositeSequenceableLoaderFactory;

    .line 351
    iput-object p7, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->drmSessionManager:Lcom/google/android/exoplr2avp/drm/DrmSessionManager;

    .line 352
    iput-object p8, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

    .line 353
    iput-wide p9, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->livePresentationDelayMs:J

    .line 354
    invoke-virtual {p0, v3}, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->createEventDispatcher(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->manifestEventDispatcher:Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    .line 355
    :cond_3
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->sideloadedManifest:Z

    .line 356
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplr2avp/MediaItem;Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser;Lcom/google/android/exoplr2avp/source/smoothstreaming/SsChunkSource$Factory;Lcom/google/android/exoplr2avp/source/CompositeSequenceableLoaderFactory;Lcom/google/android/exoplr2avp/drm/DrmSessionManager;Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;JLcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource$1;)V
    .locals 0

    .line 71
    invoke-direct/range {p0 .. p10}, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;-><init>(Lcom/google/android/exoplr2avp/MediaItem;Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser;Lcom/google/android/exoplr2avp/source/smoothstreaming/SsChunkSource$Factory;Lcom/google/android/exoplr2avp/source/CompositeSequenceableLoaderFactory;Lcom/google/android/exoplr2avp/drm/DrmSessionManager;Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;J)V

    return-void
.end method

.method public static synthetic lambda$a_FFLe2ruTJUkYFegjbj_8OZMug(Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->startLoadingManifest()V

    return-void
.end method

.method private processManifest()V
    .locals 30

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 506
    :goto_0
    iget-object v3, v0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 507
    iget-object v3, v0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaPeriod;

    iget-object v4, v0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaPeriod;->updateManifest(Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    .line 512
    iget-object v4, v0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;

    iget-object v4, v4, Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;->streamElements:[Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest$StreamElement;

    array-length v5, v4

    const-wide v6, 0x7fffffffffffffffL

    move-wide v14, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v5, :cond_2

    aget-object v9, v4, v8

    .line 513
    iget v10, v9, Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest$StreamElement;->chunkCount:I

    if-lez v10, :cond_1

    .line 514
    invoke-virtual {v9, v1}, Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest$StreamElement;->getStartTimeUs(I)J

    move-result-wide v10

    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    .line 515
    iget v10, v9, Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest$StreamElement;->chunkCount:I

    add-int/lit8 v10, v10, -0x1

    .line 518
    invoke-virtual {v9, v10}, Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest$StreamElement;->getStartTimeUs(I)J

    move-result-wide v10

    iget v12, v9, Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest$StreamElement;->chunkCount:I

    add-int/lit8 v12, v12, -0x1

    .line 519
    invoke-virtual {v9, v12}, Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest$StreamElement;->getChunkDurationUs(I)J

    move-result-wide v12

    add-long/2addr v10, v12

    .line 516
    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    const-wide/16 v4, 0x0

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v14, v6

    if-nez v1, :cond_4

    .line 525
    iget-object v1, v0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;

    iget-boolean v1, v1, Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;->isLive:Z

    if-eqz v1, :cond_3

    move-wide v11, v8

    goto :goto_2

    :cond_3
    move-wide v11, v4

    .line 526
    :goto_2
    new-instance v1, Lcom/google/android/exoplr2avp/source/SinglePeriodTimeline;

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x1

    iget-object v2, v0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;

    iget-boolean v2, v2, Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;->isLive:Z

    iget-object v3, v0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;

    iget-boolean v3, v3, Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;->isLive:Z

    iget-object v4, v0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;

    iget-object v5, v0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->mediaItem:Lcom/google/android/exoplr2avp/MediaItem;

    move-object v10, v1

    move/from16 v20, v2

    move/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    invoke-direct/range {v10 .. v23}, Lcom/google/android/exoplr2avp/source/SinglePeriodTimeline;-><init>(JJJJZZZLjava/lang/Object;Lcom/google/android/exoplr2avp/MediaItem;)V

    goto/16 :goto_4

    .line 537
    :cond_4
    iget-object v1, v0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;

    iget-boolean v1, v1, Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;->isLive:Z

    if-eqz v1, :cond_7

    .line 538
    iget-object v1, v0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;

    iget-wide v6, v1, Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;->dvrWindowLengthUs:J

    cmp-long v1, v6, v8

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;

    iget-wide v6, v1, Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;->dvrWindowLengthUs:J

    cmp-long v1, v6, v4

    if-lez v1, :cond_5

    .line 539
    iget-object v1, v0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;

    iget-wide v4, v1, Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;->dvrWindowLengthUs:J

    sub-long v4, v2, v4

    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    :cond_5
    move-wide/from16 v21, v14

    sub-long v19, v2, v21

    .line 542
    iget-wide v1, v0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->livePresentationDelayMs:J

    invoke-static {v1, v2}, Lcom/google/android/exoplr2avp/util/Util;->msToUs(J)J

    move-result-wide v1

    sub-long v1, v19, v1

    const-wide/32 v3, 0x4c4b40

    cmp-long v5, v1, v3

    if-gez v5, :cond_6

    const-wide/16 v1, 0x2

    .line 547
    div-long v1, v19, v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    :cond_6
    move-wide/from16 v23, v1

    .line 549
    new-instance v1, Lcom/google/android/exoplr2avp/source/SinglePeriodTimeline;

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v25, 0x1

    const/16 v26, 0x1

    const/16 v27, 0x1

    iget-object v2, v0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;

    iget-object v3, v0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->mediaItem:Lcom/google/android/exoplr2avp/MediaItem;

    move-object/from16 v16, v1

    move-object/from16 v28, v2

    move-object/from16 v29, v3

    invoke-direct/range {v16 .. v29}, Lcom/google/android/exoplr2avp/source/SinglePeriodTimeline;-><init>(JJJJZZZLjava/lang/Object;Lcom/google/android/exoplr2avp/MediaItem;)V

    goto :goto_4

    .line 562
    :cond_7
    iget-object v1, v0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;

    iget-wide v4, v1, Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;->durationUs:J

    cmp-long v1, v4, v8

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;

    iget-wide v1, v1, Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;->durationUs:J

    move-wide v12, v1

    goto :goto_3

    :cond_8
    sub-long/2addr v2, v14

    move-wide v12, v2

    .line 563
    :goto_3
    new-instance v1, Lcom/google/android/exoplr2avp/source/SinglePeriodTimeline;

    add-long v10, v14, v12

    const-wide/16 v16, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    iget-object v2, v0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;

    iget-object v3, v0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->mediaItem:Lcom/google/android/exoplr2avp/MediaItem;

    move-object v9, v1

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    invoke-direct/range {v9 .. v22}, Lcom/google/android/exoplr2avp/source/SinglePeriodTimeline;-><init>(JJJJZZZLjava/lang/Object;Lcom/google/android/exoplr2avp/MediaItem;)V

    .line 575
    :goto_4
    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->refreshSourceInfo(Lcom/google/android/exoplr2avp/Timeline;)V

    return-void
.end method

.method private scheduleManifestRefresh()V
    .locals 6

    .line 579
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;

    iget-boolean v0, v0, Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;->isLive:Z

    if-nez v0, :cond_0

    return-void

    .line 582
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->manifestLoadStartTimestamp:J

    const-wide/16 v2, 0x1388

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    .line 583
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 584
    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->manifestRefreshHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplr2avp/source/smoothstreaming/-$$Lambda$SsMediaSource$a_FFLe2ruTJUkYFegjbj_8OZMug;

    invoke-direct {v3, p0}, Lcom/google/android/exoplr2avp/source/smoothstreaming/-$$Lambda$SsMediaSource$a_FFLe2ruTJUkYFegjbj_8OZMug;-><init>(Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startLoadingManifest()V
    .locals 9

    .line 588
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->manifestLoader:Lcom/google/android/exoplr2avp/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/upstream/Loader;->hasFatalError()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 591
    :cond_0
    new-instance v0, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->manifestDataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->manifestUri:Landroid/net/Uri;

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->manifestParser:Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;-><init>(Lcom/google/android/exoplr2avp/upstream/DataSource;Landroid/net/Uri;ILcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser;)V

    .line 594
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->manifestLoader:Lcom/google/android/exoplr2avp/upstream/Loader;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

    iget v3, v0, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->type:I

    .line 596
    invoke-interface {v2, v3}, Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;->getMinimumLoadableRetryCount(I)I

    move-result v2

    .line 595
    invoke-virtual {v1, v0, p0, v2}, Lcom/google/android/exoplr2avp/upstream/Loader;->startLoading(Lcom/google/android/exoplr2avp/upstream/Loader$Loadable;Lcom/google/android/exoplr2avp/upstream/Loader$Callback;I)J

    move-result-wide v7

    .line 597
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->manifestEventDispatcher:Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;

    new-instance v2, Lcom/google/android/exoplr2avp/source/LoadEventInfo;

    iget-wide v4, v0, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->loadTaskId:J

    iget-object v6, v0, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplr2avp/upstream/DataSpec;

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/google/android/exoplr2avp/source/LoadEventInfo;-><init>(JLcom/google/android/exoplr2avp/upstream/DataSpec;J)V

    iget v0, v0, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->type:I

    invoke-virtual {v1, v2, v0}, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Lcom/google/android/exoplr2avp/source/LoadEventInfo;I)V

    return-void
.end method


# virtual methods
.method public createPeriod(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplr2avp/upstream/Allocator;J)Lcom/google/android/exoplr2avp/source/MediaPeriod;
    .locals 11

    .line 390
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->createEventDispatcher(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v8

    .line 391
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->createDrmEventDispatcher(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;

    move-result-object v6

    .line 392
    new-instance p1, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaPeriod;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->chunkSourceFactory:Lcom/google/android/exoplr2avp/source/smoothstreaming/SsChunkSource$Factory;

    iget-object v3, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->mediaTransferListener:Lcom/google/android/exoplr2avp/upstream/TransferListener;

    iget-object v4, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplr2avp/source/CompositeSequenceableLoaderFactory;

    iget-object v5, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->drmSessionManager:Lcom/google/android/exoplr2avp/drm/DrmSessionManager;

    iget-object v7, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

    iget-object v9, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->manifestLoaderErrorThrower:Lcom/google/android/exoplr2avp/upstream/LoaderErrorThrower;

    move-object v0, p1

    move-object v10, p2

    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaPeriod;-><init>(Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;Lcom/google/android/exoplr2avp/source/smoothstreaming/SsChunkSource$Factory;Lcom/google/android/exoplr2avp/upstream/TransferListener;Lcom/google/android/exoplr2avp/source/CompositeSequenceableLoaderFactory;Lcom/google/android/exoplr2avp/drm/DrmSessionManager;Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplr2avp/upstream/LoaderErrorThrower;Lcom/google/android/exoplr2avp/upstream/Allocator;)V

    .line 404
    iget-object p2, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public getMediaItem()Lcom/google/android/exoplr2avp/MediaItem;
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->mediaItem:Lcom/google/android/exoplr2avp/MediaItem;

    return-object v0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 385
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->manifestLoaderErrorThrower:Lcom/google/android/exoplr2avp/upstream/LoaderErrorThrower;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/upstream/LoaderErrorThrower;->maybeThrowError()V

    return-void
.end method

.method public bridge synthetic onLoadCanceled(Lcom/google/android/exoplr2avp/upstream/Loader$Loadable;JJZ)V
    .locals 0

    .line 71
    check-cast p1, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;

    invoke-virtual/range {p0 .. p6}, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->onLoadCanceled(Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;JJZ)V

    return-void
.end method

.method public onLoadCanceled(Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;JJZ)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/upstream/ParsingLoadable<",
            "Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;",
            ">;JJZ)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    .line 458
    new-instance v14, Lcom/google/android/exoplr2avp/source/LoadEventInfo;

    iget-wide v3, v1, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->loadTaskId:J

    iget-object v5, v1, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplr2avp/upstream/DataSpec;

    .line 462
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->getUri()Landroid/net/Uri;

    move-result-object v6

    .line 463
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->getResponseHeaders()Ljava/util/Map;

    move-result-object v7

    .line 466
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v12

    move-object v2, v14

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v2 .. v13}, Lcom/google/android/exoplr2avp/source/LoadEventInfo;-><init>(JLcom/google/android/exoplr2avp/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 467
    iget-object v2, v0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

    iget-wide v3, v1, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->loadTaskId:J

    invoke-interface {v2, v3, v4}, Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    .line 468
    iget-object v2, v0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->manifestEventDispatcher:Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;

    iget v1, v1, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->type:I

    invoke-virtual {v2, v14, v1}, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Lcom/google/android/exoplr2avp/source/LoadEventInfo;I)V

    return-void
.end method

.method public bridge synthetic onLoadCompleted(Lcom/google/android/exoplr2avp/upstream/Loader$Loadable;JJ)V
    .locals 0

    .line 71
    check-cast p1, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;

    invoke-virtual/range {p0 .. p5}, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->onLoadCompleted(Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;JJ)V

    return-void
.end method

.method public onLoadCompleted(Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;JJ)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/upstream/ParsingLoadable<",
            "Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;",
            ">;JJ)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    .line 435
    new-instance v14, Lcom/google/android/exoplr2avp/source/LoadEventInfo;

    iget-wide v3, v1, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->loadTaskId:J

    iget-object v5, v1, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplr2avp/upstream/DataSpec;

    .line 439
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->getUri()Landroid/net/Uri;

    move-result-object v6

    .line 440
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->getResponseHeaders()Ljava/util/Map;

    move-result-object v7

    .line 443
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v12

    move-object v2, v14

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v2 .. v13}, Lcom/google/android/exoplr2avp/source/LoadEventInfo;-><init>(JLcom/google/android/exoplr2avp/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 444
    iget-object v2, v0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

    iget-wide v3, v1, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->loadTaskId:J

    invoke-interface {v2, v3, v4}, Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    .line 445
    iget-object v2, v0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->manifestEventDispatcher:Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;

    iget v3, v1, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->type:I

    invoke-virtual {v2, v14, v3}, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Lcom/google/android/exoplr2avp/source/LoadEventInfo;I)V

    .line 446
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;

    iput-object v1, v0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;

    sub-long v1, p2, p4

    .line 447
    iput-wide v1, v0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->manifestLoadStartTimestamp:J

    .line 448
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->processManifest()V

    .line 449
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->scheduleManifestRefresh()V

    return-void
.end method

.method public bridge synthetic onLoadError(Lcom/google/android/exoplr2avp/upstream/Loader$Loadable;JJLjava/io/IOException;I)Lcom/google/android/exoplr2avp/upstream/Loader$LoadErrorAction;
    .locals 0

    .line 71
    check-cast p1, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;

    invoke-virtual/range {p0 .. p7}, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->onLoadError(Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;JJLjava/io/IOException;I)Lcom/google/android/exoplr2avp/upstream/Loader$LoadErrorAction;

    move-result-object p1

    return-object p1
.end method

.method public onLoadError(Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;JJLjava/io/IOException;I)Lcom/google/android/exoplr2avp/upstream/Loader$LoadErrorAction;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/upstream/ParsingLoadable<",
            "Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;",
            ">;JJ",
            "Ljava/io/IOException;",
            "I)",
            "Lcom/google/android/exoplr2avp/upstream/Loader$LoadErrorAction;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    .line 478
    new-instance v15, Lcom/google/android/exoplr2avp/source/LoadEventInfo;

    iget-wide v4, v1, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->loadTaskId:J

    iget-object v6, v1, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplr2avp/upstream/DataSpec;

    .line 482
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->getUri()Landroid/net/Uri;

    move-result-object v7

    .line 483
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->getResponseHeaders()Ljava/util/Map;

    move-result-object v8

    .line 486
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v13

    move-object v3, v15

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v3 .. v14}, Lcom/google/android/exoplr2avp/source/LoadEventInfo;-><init>(JLcom/google/android/exoplr2avp/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 487
    new-instance v3, Lcom/google/android/exoplr2avp/source/MediaLoadData;

    iget v4, v1, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->type:I

    invoke-direct {v3, v4}, Lcom/google/android/exoplr2avp/source/MediaLoadData;-><init>(I)V

    .line 488
    iget-object v4, v0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

    new-instance v5, Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;

    move/from16 v6, p7

    invoke-direct {v5, v15, v3, v2, v6}, Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;-><init>(Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;Ljava/io/IOException;I)V

    .line 489
    invoke-interface {v4, v5}, Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;->getRetryDelayMsFor(Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;)J

    move-result-wide v3

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    .line 493
    sget-object v3, Lcom/google/android/exoplr2avp/upstream/Loader;->DONT_RETRY_FATAL:Lcom/google/android/exoplr2avp/upstream/Loader$LoadErrorAction;

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 494
    invoke-static {v5, v3, v4}, Lcom/google/android/exoplr2avp/upstream/Loader;->createRetryAction(ZJ)Lcom/google/android/exoplr2avp/upstream/Loader$LoadErrorAction;

    move-result-object v3

    .line 495
    :goto_0
    invoke-virtual {v3}, Lcom/google/android/exoplr2avp/upstream/Loader$LoadErrorAction;->isRetry()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    .line 496
    iget-object v5, v0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->manifestEventDispatcher:Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;

    iget v6, v1, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->type:I

    invoke-virtual {v5, v15, v6, v2, v4}, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->loadError(Lcom/google/android/exoplr2avp/source/LoadEventInfo;ILjava/io/IOException;Z)V

    if-eqz v4, :cond_1

    .line 498
    iget-object v2, v0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

    iget-wide v4, v1, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->loadTaskId:J

    invoke-interface {v2, v4, v5}, Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    :cond_1
    return-object v3
.end method

.method protected prepareSourceInternal(Lcom/google/android/exoplr2avp/upstream/TransferListener;)V
    .locals 2

    .line 368
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->mediaTransferListener:Lcom/google/android/exoplr2avp/upstream/TransferListener;

    .line 369
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->drmSessionManager:Lcom/google/android/exoplr2avp/drm/DrmSessionManager;

    invoke-interface {p1}, Lcom/google/android/exoplr2avp/drm/DrmSessionManager;->prepare()V

    .line 370
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->drmSessionManager:Lcom/google/android/exoplr2avp/drm/DrmSessionManager;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->getPlayerId()Lcom/google/android/exoplr2avp/analytics/PlayerId;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplr2avp/drm/DrmSessionManager;->setPlayer(Landroid/os/Looper;Lcom/google/android/exoplr2avp/analytics/PlayerId;)V

    .line 371
    iget-boolean p1, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->sideloadedManifest:Z

    if-eqz p1, :cond_0

    .line 372
    new-instance p1, Lcom/google/android/exoplr2avp/upstream/LoaderErrorThrower$Dummy;

    invoke-direct {p1}, Lcom/google/android/exoplr2avp/upstream/LoaderErrorThrower$Dummy;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->manifestLoaderErrorThrower:Lcom/google/android/exoplr2avp/upstream/LoaderErrorThrower;

    .line 373
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->processManifest()V

    goto :goto_0

    .line 375
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->manifestDataSourceFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

    invoke-interface {p1}, Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;->createDataSource()Lcom/google/android/exoplr2avp/upstream/DataSource;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->manifestDataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    .line 376
    new-instance p1, Lcom/google/android/exoplr2avp/upstream/Loader;

    const-string v0, "SsMediaSource"

    invoke-direct {p1, v0}, Lcom/google/android/exoplr2avp/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->manifestLoader:Lcom/google/android/exoplr2avp/upstream/Loader;

    .line 377
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->manifestLoaderErrorThrower:Lcom/google/android/exoplr2avp/upstream/LoaderErrorThrower;

    .line 378
    invoke-static {}, Lcom/google/android/exoplr2avp/util/Util;->createHandlerForCurrentLooper()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->manifestRefreshHandler:Landroid/os/Handler;

    .line 379
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->startLoadingManifest()V

    :goto_0
    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplr2avp/source/MediaPeriod;)V
    .locals 1

    .line 410
    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaPeriod;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaPeriod;->release()V

    .line 411
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected releaseSourceInternal()V
    .locals 4

    .line 416
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->sideloadedManifest:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;

    .line 417
    iput-object v1, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->manifestDataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    const-wide/16 v2, 0x0

    .line 418
    iput-wide v2, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->manifestLoadStartTimestamp:J

    .line 419
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->manifestLoader:Lcom/google/android/exoplr2avp/upstream/Loader;

    if-eqz v0, :cond_1

    .line 420
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/upstream/Loader;->release()V

    .line 421
    iput-object v1, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->manifestLoader:Lcom/google/android/exoplr2avp/upstream/Loader;

    .line 423
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->manifestRefreshHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 424
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 425
    iput-object v1, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->manifestRefreshHandler:Landroid/os/Handler;

    .line 427
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;->drmSessionManager:Lcom/google/android/exoplr2avp/drm/DrmSessionManager;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/drm/DrmSessionManager;->release()V

    return-void
.end method
