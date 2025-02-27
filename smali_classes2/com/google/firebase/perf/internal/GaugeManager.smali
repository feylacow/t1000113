.class public Lcom/google/firebase/perf/internal/GaugeManager;
.super Ljava/lang/Object;
.source "GaugeManager.java"


# static fields
.field private static final APPROX_NUMBER_OF_DATA_POINTS_PER_GAUGE_METRIC:J = 0x14L

.field private static final INVALID_GAUGE_COLLECTION_FREQUENCY:J = -0x1L

.field private static final TIME_TO_WAIT_BEFORE_FLUSHING_GAUGES_QUEUE_MS:J = 0x14L

.field private static final logger:Lcom/google/firebase/perf/logging/AndroidLogger;

.field private static sharedInstance:Lcom/google/firebase/perf/internal/GaugeManager;


# instance fields
.field private applicationProcessState:Lcom/google/firebase/perf/v1/ApplicationProcessState;

.field private final configResolver:Lcom/google/firebase/perf/config/ConfigResolver;

.field private final cpuGaugeCollector:Lcom/google/firebase/perf/gauges/CpuGaugeCollector;

.field private gaugeManagerDataCollectionJob:Ljava/util/concurrent/ScheduledFuture;

.field private final gaugeManagerExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private gaugeMetadataManager:Lcom/google/firebase/perf/internal/GaugeMetadataManager;

.field private final memoryGaugeCollector:Lcom/google/firebase/perf/gauges/MemoryGaugeCollector;

.field private sessionId:Ljava/lang/String;

.field private final transportManager:Lcom/google/firebase/perf/transport/TransportManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    invoke-static {}, Lcom/google/firebase/perf/logging/AndroidLogger;->getInstance()Lcom/google/firebase/perf/logging/AndroidLogger;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/perf/internal/GaugeManager;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    .line 51
    new-instance v0, Lcom/google/firebase/perf/internal/GaugeManager;

    invoke-direct {v0}, Lcom/google/firebase/perf/internal/GaugeManager;-><init>()V

    sput-object v0, Lcom/google/firebase/perf/internal/GaugeManager;->sharedInstance:Lcom/google/firebase/perf/internal/GaugeManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .line 75
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    .line 76
    invoke-static {}, Lcom/google/firebase/perf/transport/TransportManager;->getInstance()Lcom/google/firebase/perf/transport/TransportManager;

    move-result-object v2

    .line 77
    invoke-static {}, Lcom/google/firebase/perf/config/ConfigResolver;->getInstance()Lcom/google/firebase/perf/config/ConfigResolver;

    move-result-object v3

    .line 79
    invoke-static {}, Lcom/google/firebase/perf/gauges/CpuGaugeCollector;->getInstance()Lcom/google/firebase/perf/gauges/CpuGaugeCollector;

    move-result-object v5

    .line 80
    invoke-static {}, Lcom/google/firebase/perf/gauges/MemoryGaugeCollector;->getInstance()Lcom/google/firebase/perf/gauges/MemoryGaugeCollector;

    move-result-object v6

    const/4 v4, 0x0

    move-object v0, p0

    .line 74
    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/perf/internal/GaugeManager;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/perf/transport/TransportManager;Lcom/google/firebase/perf/config/ConfigResolver;Lcom/google/firebase/perf/internal/GaugeMetadataManager;Lcom/google/firebase/perf/gauges/CpuGaugeCollector;Lcom/google/firebase/perf/gauges/MemoryGaugeCollector;)V

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/perf/transport/TransportManager;Lcom/google/firebase/perf/config/ConfigResolver;Lcom/google/firebase/perf/internal/GaugeMetadataManager;Lcom/google/firebase/perf/gauges/CpuGaugeCollector;Lcom/google/firebase/perf/gauges/MemoryGaugeCollector;)V
    .locals 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sget-object v0, Lcom/google/firebase/perf/v1/ApplicationProcessState;->APPLICATION_PROCESS_STATE_UNKNOWN:Lcom/google/firebase/perf/v1/ApplicationProcessState;

    iput-object v0, p0, Lcom/google/firebase/perf/internal/GaugeManager;->applicationProcessState:Lcom/google/firebase/perf/v1/ApplicationProcessState;

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/google/firebase/perf/internal/GaugeManager;->sessionId:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcom/google/firebase/perf/internal/GaugeManager;->gaugeManagerDataCollectionJob:Ljava/util/concurrent/ScheduledFuture;

    .line 92
    iput-object p1, p0, Lcom/google/firebase/perf/internal/GaugeManager;->gaugeManagerExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 93
    iput-object p2, p0, Lcom/google/firebase/perf/internal/GaugeManager;->transportManager:Lcom/google/firebase/perf/transport/TransportManager;

    .line 94
    iput-object p3, p0, Lcom/google/firebase/perf/internal/GaugeManager;->configResolver:Lcom/google/firebase/perf/config/ConfigResolver;

    .line 95
    iput-object p4, p0, Lcom/google/firebase/perf/internal/GaugeManager;->gaugeMetadataManager:Lcom/google/firebase/perf/internal/GaugeMetadataManager;

    .line 96
    iput-object p5, p0, Lcom/google/firebase/perf/internal/GaugeManager;->cpuGaugeCollector:Lcom/google/firebase/perf/gauges/CpuGaugeCollector;

    .line 97
    iput-object p6, p0, Lcom/google/firebase/perf/internal/GaugeManager;->memoryGaugeCollector:Lcom/google/firebase/perf/gauges/MemoryGaugeCollector;

    return-void
.end method

.method private static collectGaugeMetricOnce(Lcom/google/firebase/perf/gauges/CpuGaugeCollector;Lcom/google/firebase/perf/gauges/MemoryGaugeCollector;Lcom/google/firebase/perf/util/Timer;)V
    .locals 0

    .line 339
    invoke-virtual {p0, p2}, Lcom/google/firebase/perf/gauges/CpuGaugeCollector;->collectOnce(Lcom/google/firebase/perf/util/Timer;)V

    .line 340
    invoke-virtual {p1, p2}, Lcom/google/firebase/perf/gauges/MemoryGaugeCollector;->collectOnce(Lcom/google/firebase/perf/util/Timer;)V

    return-void
.end method

.method private getCpuGaugeCollectionFrequencyMs(Lcom/google/firebase/perf/v1/ApplicationProcessState;)J
    .locals 5

    .line 354
    sget-object v0, Lcom/google/firebase/perf/internal/GaugeManager$1;->$SwitchMap$com$google$firebase$perf$v1$ApplicationProcessState:[I

    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/ApplicationProcessState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const-wide/16 v1, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    move-wide v3, v1

    goto :goto_0

    .line 359
    :cond_0
    iget-object p1, p0, Lcom/google/firebase/perf/internal/GaugeManager;->configResolver:Lcom/google/firebase/perf/config/ConfigResolver;

    invoke-virtual {p1}, Lcom/google/firebase/perf/config/ConfigResolver;->getSessionsCpuCaptureFrequencyForegroundMs()J

    move-result-wide v3

    goto :goto_0

    .line 356
    :cond_1
    iget-object p1, p0, Lcom/google/firebase/perf/internal/GaugeManager;->configResolver:Lcom/google/firebase/perf/config/ConfigResolver;

    invoke-virtual {p1}, Lcom/google/firebase/perf/config/ConfigResolver;->getSessionsCpuCaptureFrequencyBackgroundMs()J

    move-result-wide v3

    .line 365
    :goto_0
    invoke-static {v3, v4}, Lcom/google/firebase/perf/gauges/CpuGaugeCollector;->isInvalidCollectionFrequency(J)Z

    move-result p1

    if-eqz p1, :cond_2

    return-wide v1

    :cond_2
    return-wide v3
.end method

.method private getGaugeMetadata()Lcom/google/firebase/perf/v1/GaugeMetadata;
    .locals 2

    .line 270
    invoke-static {}, Lcom/google/firebase/perf/v1/GaugeMetadata;->newBuilder()Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/perf/internal/GaugeManager;->gaugeMetadataManager:Lcom/google/firebase/perf/internal/GaugeMetadataManager;

    .line 271
    invoke-virtual {v1}, Lcom/google/firebase/perf/internal/GaugeMetadataManager;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;->setProcessName(Ljava/lang/String;)Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/perf/internal/GaugeManager;->gaugeMetadataManager:Lcom/google/firebase/perf/internal/GaugeMetadataManager;

    .line 272
    invoke-virtual {v1}, Lcom/google/firebase/perf/internal/GaugeMetadataManager;->getDeviceRamSizeKb()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;->setDeviceRamSizeKb(I)Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/perf/internal/GaugeManager;->gaugeMetadataManager:Lcom/google/firebase/perf/internal/GaugeMetadataManager;

    .line 273
    invoke-virtual {v1}, Lcom/google/firebase/perf/internal/GaugeMetadataManager;->getMaxAppJavaHeapMemoryKb()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;->setMaxAppJavaHeapMemoryKb(I)Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/perf/internal/GaugeManager;->gaugeMetadataManager:Lcom/google/firebase/perf/internal/GaugeMetadataManager;

    .line 275
    invoke-virtual {v1}, Lcom/google/firebase/perf/internal/GaugeMetadataManager;->getMaxEncouragedAppJavaHeapMemoryKb()I

    move-result v1

    .line 274
    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;->setMaxEncouragedAppJavaHeapMemoryKb(I)Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;

    move-result-object v0

    .line 276
    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetadata;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/google/firebase/perf/internal/GaugeManager;
    .locals 2

    const-class v0, Lcom/google/firebase/perf/internal/GaugeManager;

    monitor-enter v0

    .line 107
    :try_start_0
    sget-object v1, Lcom/google/firebase/perf/internal/GaugeManager;->sharedInstance:Lcom/google/firebase/perf/internal/GaugeManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getMemoryGaugeCollectionFrequencyMs(Lcom/google/firebase/perf/v1/ApplicationProcessState;)J
    .locals 5

    .line 385
    sget-object v0, Lcom/google/firebase/perf/internal/GaugeManager$1;->$SwitchMap$com$google$firebase$perf$v1$ApplicationProcessState:[I

    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/ApplicationProcessState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const-wide/16 v1, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    move-wide v3, v1

    goto :goto_0

    .line 391
    :cond_0
    iget-object p1, p0, Lcom/google/firebase/perf/internal/GaugeManager;->configResolver:Lcom/google/firebase/perf/config/ConfigResolver;

    .line 392
    invoke-virtual {p1}, Lcom/google/firebase/perf/config/ConfigResolver;->getSessionsMemoryCaptureFrequencyForegroundMs()J

    move-result-wide v3

    goto :goto_0

    .line 387
    :cond_1
    iget-object p1, p0, Lcom/google/firebase/perf/internal/GaugeManager;->configResolver:Lcom/google/firebase/perf/config/ConfigResolver;

    .line 388
    invoke-virtual {p1}, Lcom/google/firebase/perf/config/ConfigResolver;->getSessionsMemoryCaptureFrequencyBackgroundMs()J

    move-result-wide v3

    .line 398
    :goto_0
    invoke-static {v3, v4}, Lcom/google/firebase/perf/gauges/MemoryGaugeCollector;->isInvalidCollectionFrequency(J)Z

    move-result p1

    if-eqz p1, :cond_2

    return-wide v1

    :cond_2
    return-wide v3
.end method

.method static synthetic lambda$startCollectingGauges$0(Lcom/google/firebase/perf/internal/GaugeManager;Ljava/lang/String;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V
    .locals 0

    .line 147
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/internal/GaugeManager;->syncFlush(Ljava/lang/String;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V

    return-void
.end method

.method static synthetic lambda$stopCollectingGauges$1(Lcom/google/firebase/perf/internal/GaugeManager;Ljava/lang/String;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V
    .locals 0

    .line 213
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/internal/GaugeManager;->syncFlush(Ljava/lang/String;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V

    return-void
.end method

.method private startCollectingCpuMetrics(JLcom/google/firebase/perf/util/Timer;)Z
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 291
    sget-object p1, Lcom/google/firebase/perf/internal/GaugeManager;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    const/4 p2, 0x0

    new-array p3, p2, [Ljava/lang/Object;

    const-string v0, "Invalid Cpu Metrics collection frequency. Did not collect Cpu Metrics."

    invoke-virtual {p1, v0, p3}, Lcom/google/firebase/perf/logging/AndroidLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return p2

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/internal/GaugeManager;->cpuGaugeCollector:Lcom/google/firebase/perf/gauges/CpuGaugeCollector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/firebase/perf/gauges/CpuGaugeCollector;->startCollecting(JLcom/google/firebase/perf/util/Timer;)V

    const/4 p1, 0x1

    return p1
.end method

.method private startCollectingGauges(Lcom/google/firebase/perf/v1/ApplicationProcessState;Lcom/google/firebase/perf/util/Timer;)J
    .locals 7

    .line 170
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/internal/GaugeManager;->getCpuGaugeCollectionFrequencyMs(Lcom/google/firebase/perf/v1/ApplicationProcessState;)J

    move-result-wide v0

    .line 171
    invoke-direct {p0, v0, v1, p2}, Lcom/google/firebase/perf/internal/GaugeManager;->startCollectingCpuMetrics(JLcom/google/firebase/perf/util/Timer;)Z

    move-result v2

    const-wide/16 v3, -0x1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, v3

    .line 175
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/internal/GaugeManager;->getMemoryGaugeCollectionFrequencyMs(Lcom/google/firebase/perf/v1/ApplicationProcessState;)J

    move-result-wide v5

    .line 176
    invoke-direct {p0, v5, v6, p2}, Lcom/google/firebase/perf/internal/GaugeManager;->startCollectingMemoryMetrics(JLcom/google/firebase/perf/util/Timer;)Z

    move-result p1

    if-eqz p1, :cond_2

    cmp-long p1, v0, v3

    if-nez p1, :cond_1

    move-wide v0, v5

    goto :goto_1

    .line 180
    :cond_1
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    move-wide v0, p1

    :cond_2
    :goto_1
    return-wide v0
.end method

.method private startCollectingMemoryMetrics(JLcom/google/firebase/perf/util/Timer;)Z
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 312
    sget-object p1, Lcom/google/firebase/perf/internal/GaugeManager;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    const/4 p2, 0x0

    new-array p3, p2, [Ljava/lang/Object;

    const-string v0, "Invalid Memory Metrics collection frequency. Did not collect Memory Metrics."

    invoke-virtual {p1, v0, p3}, Lcom/google/firebase/perf/logging/AndroidLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return p2

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/internal/GaugeManager;->memoryGaugeCollector:Lcom/google/firebase/perf/gauges/MemoryGaugeCollector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/firebase/perf/gauges/MemoryGaugeCollector;->startCollecting(JLcom/google/firebase/perf/util/Timer;)V

    const/4 p1, 0x1

    return p1
.end method

.method private syncFlush(Ljava/lang/String;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V
    .locals 2

    .line 230
    invoke-static {}, Lcom/google/firebase/perf/v1/GaugeMetric;->newBuilder()Lcom/google/firebase/perf/v1/GaugeMetric$Builder;

    move-result-object v0

    .line 233
    :goto_0
    iget-object v1, p0, Lcom/google/firebase/perf/internal/GaugeManager;->cpuGaugeCollector:Lcom/google/firebase/perf/gauges/CpuGaugeCollector;

    iget-object v1, v1, Lcom/google/firebase/perf/gauges/CpuGaugeCollector;->cpuMetricReadings:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/google/firebase/perf/internal/GaugeManager;->cpuGaugeCollector:Lcom/google/firebase/perf/gauges/CpuGaugeCollector;

    iget-object v1, v1, Lcom/google/firebase/perf/gauges/CpuGaugeCollector;->cpuMetricReadings:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/perf/v1/CpuMetricReading;

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->addCpuMetricReadings(Lcom/google/firebase/perf/v1/CpuMetricReading;)Lcom/google/firebase/perf/v1/GaugeMetric$Builder;

    goto :goto_0

    .line 238
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/google/firebase/perf/internal/GaugeManager;->memoryGaugeCollector:Lcom/google/firebase/perf/gauges/MemoryGaugeCollector;

    iget-object v1, v1, Lcom/google/firebase/perf/gauges/MemoryGaugeCollector;->memoryMetricReadings:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 239
    iget-object v1, p0, Lcom/google/firebase/perf/internal/GaugeManager;->memoryGaugeCollector:Lcom/google/firebase/perf/gauges/MemoryGaugeCollector;

    iget-object v1, v1, Lcom/google/firebase/perf/gauges/MemoryGaugeCollector;->memoryMetricReadings:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/perf/v1/AndroidMemoryReading;

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->addAndroidMemoryReadings(Lcom/google/firebase/perf/v1/AndroidMemoryReading;)Lcom/google/firebase/perf/v1/GaugeMetric$Builder;

    goto :goto_1

    .line 243
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->setSessionId(Ljava/lang/String;)Lcom/google/firebase/perf/v1/GaugeMetric$Builder;

    .line 245
    iget-object p1, p0, Lcom/google/firebase/perf/internal/GaugeManager;->transportManager:Lcom/google/firebase/perf/transport/TransportManager;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-virtual {p1, v0, p2}, Lcom/google/firebase/perf/transport/TransportManager;->log(Lcom/google/firebase/perf/v1/GaugeMetric;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V

    return-void
.end method


# virtual methods
.method public collectGaugeMetricOnce(Lcom/google/firebase/perf/util/Timer;)V
    .locals 2

    .line 331
    iget-object v0, p0, Lcom/google/firebase/perf/internal/GaugeManager;->cpuGaugeCollector:Lcom/google/firebase/perf/gauges/CpuGaugeCollector;

    iget-object v1, p0, Lcom/google/firebase/perf/internal/GaugeManager;->memoryGaugeCollector:Lcom/google/firebase/perf/gauges/MemoryGaugeCollector;

    invoke-static {v0, v1, p1}, Lcom/google/firebase/perf/internal/GaugeManager;->collectGaugeMetricOnce(Lcom/google/firebase/perf/gauges/CpuGaugeCollector;Lcom/google/firebase/perf/gauges/MemoryGaugeCollector;Lcom/google/firebase/perf/util/Timer;)V

    return-void
.end method

.method logGaugeMetadata(Ljava/lang/String;Lcom/google/firebase/perf/v1/ApplicationProcessState;)Z
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/google/firebase/perf/internal/GaugeManager;->gaugeMetadataManager:Lcom/google/firebase/perf/internal/GaugeMetadataManager;

    if-eqz v0, :cond_0

    .line 259
    invoke-static {}, Lcom/google/firebase/perf/v1/GaugeMetric;->newBuilder()Lcom/google/firebase/perf/v1/GaugeMetric$Builder;

    move-result-object v0

    .line 260
    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->setSessionId(Ljava/lang/String;)Lcom/google/firebase/perf/v1/GaugeMetric$Builder;

    move-result-object p1

    .line 261
    invoke-direct {p0}, Lcom/google/firebase/perf/internal/GaugeManager;->getGaugeMetadata()Lcom/google/firebase/perf/v1/GaugeMetadata;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->setGaugeMetadata(Lcom/google/firebase/perf/v1/GaugeMetadata;)Lcom/google/firebase/perf/v1/GaugeMetric$Builder;

    move-result-object p1

    .line 262
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/perf/v1/GaugeMetric;

    .line 263
    iget-object v0, p0, Lcom/google/firebase/perf/internal/GaugeManager;->transportManager:Lcom/google/firebase/perf/transport/TransportManager;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/perf/transport/TransportManager;->log(Lcom/google/firebase/perf/v1/GaugeMetric;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setApplicationContext(Landroid/content/Context;)V
    .locals 1

    .line 102
    new-instance v0, Lcom/google/firebase/perf/internal/GaugeMetadataManager;

    invoke-direct {v0, p1}, Lcom/google/firebase/perf/internal/GaugeMetadataManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/firebase/perf/internal/GaugeManager;->gaugeMetadataManager:Lcom/google/firebase/perf/internal/GaugeMetadataManager;

    return-void
.end method

.method public startCollectingGauges(Lcom/google/firebase/perf/internal/PerfSession;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V
    .locals 12

    .line 126
    iget-object v0, p0, Lcom/google/firebase/perf/internal/GaugeManager;->sessionId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/google/firebase/perf/internal/GaugeManager;->stopCollectingGauges()V

    .line 130
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/perf/internal/PerfSession;->getTimer()Lcom/google/firebase/perf/util/Timer;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/google/firebase/perf/internal/GaugeManager;->startCollectingGauges(Lcom/google/firebase/perf/v1/ApplicationProcessState;Lcom/google/firebase/perf/util/Timer;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-nez v5, :cond_1

    .line 132
    sget-object p1, Lcom/google/firebase/perf/internal/GaugeManager;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    new-array p2, v4, [Ljava/lang/Object;

    const-string v0, "Invalid gauge collection frequency. Unable to start collecting Gauges."

    invoke-virtual {p1, v0, p2}, Lcom/google/firebase/perf/logging/AndroidLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 136
    :cond_1
    invoke-virtual {p1}, Lcom/google/firebase/perf/internal/PerfSession;->sessionId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/internal/GaugeManager;->sessionId:Ljava/lang/String;

    .line 137
    iput-object p2, p0, Lcom/google/firebase/perf/internal/GaugeManager;->applicationProcessState:Lcom/google/firebase/perf/v1/ApplicationProcessState;

    .line 144
    :try_start_0
    iget-object v5, p0, Lcom/google/firebase/perf/internal/GaugeManager;->gaugeManagerExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {p0, p1, p2}, Lcom/google/firebase/perf/internal/GaugeManager$$Lambda$1;->lambdaFactory$(Lcom/google/firebase/perf/internal/GaugeManager;Ljava/lang/String;Lcom/google/firebase/perf/v1/ApplicationProcessState;)Ljava/lang/Runnable;

    move-result-object v6

    const-wide/16 p1, 0x14

    mul-long v9, v0, p1

    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v7, v9

    .line 145
    invoke-interface/range {v5 .. v11}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/internal/GaugeManager;->gaugeManagerDataCollectionJob:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 154
    sget-object p2, Lcom/google/firebase/perf/internal/GaugeManager;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to start collecting Gauges: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/concurrent/RejectedExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {p2, p1, v0}, Lcom/google/firebase/perf/logging/AndroidLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public stopCollectingGauges()V
    .locals 5

    .line 193
    iget-object v0, p0, Lcom/google/firebase/perf/internal/GaugeManager;->sessionId:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/perf/internal/GaugeManager;->applicationProcessState:Lcom/google/firebase/perf/v1/ApplicationProcessState;

    .line 201
    iget-object v2, p0, Lcom/google/firebase/perf/internal/GaugeManager;->cpuGaugeCollector:Lcom/google/firebase/perf/gauges/CpuGaugeCollector;

    invoke-virtual {v2}, Lcom/google/firebase/perf/gauges/CpuGaugeCollector;->stopCollecting()V

    .line 202
    iget-object v2, p0, Lcom/google/firebase/perf/internal/GaugeManager;->memoryGaugeCollector:Lcom/google/firebase/perf/gauges/MemoryGaugeCollector;

    invoke-virtual {v2}, Lcom/google/firebase/perf/gauges/MemoryGaugeCollector;->stopCollecting()V

    .line 204
    iget-object v2, p0, Lcom/google/firebase/perf/internal/GaugeManager;->gaugeManagerDataCollectionJob:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    .line 205
    invoke-interface {v2, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 210
    :cond_1
    iget-object v2, p0, Lcom/google/firebase/perf/internal/GaugeManager;->gaugeManagerExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {p0, v0, v1}, Lcom/google/firebase/perf/internal/GaugeManager$$Lambda$2;->lambdaFactory$(Lcom/google/firebase/perf/internal/GaugeManager;Ljava/lang/String;Lcom/google/firebase/perf/v1/ApplicationProcessState;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v3, 0x14

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 211
    invoke-interface {v2, v0, v3, v4, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    const/4 v0, 0x0

    .line 218
    iput-object v0, p0, Lcom/google/firebase/perf/internal/GaugeManager;->sessionId:Ljava/lang/String;

    .line 219
    sget-object v0, Lcom/google/firebase/perf/v1/ApplicationProcessState;->APPLICATION_PROCESS_STATE_UNKNOWN:Lcom/google/firebase/perf/v1/ApplicationProcessState;

    iput-object v0, p0, Lcom/google/firebase/perf/internal/GaugeManager;->applicationProcessState:Lcom/google/firebase/perf/v1/ApplicationProcessState;

    return-void
.end method
