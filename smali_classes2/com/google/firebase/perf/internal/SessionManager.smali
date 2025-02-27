.class public Lcom/google/firebase/perf/internal/SessionManager;
.super Lcom/google/firebase/perf/internal/AppStateUpdateHandler;
.source "SessionManager.java"


# static fields
.field private static final ourInstance:Lcom/google/firebase/perf/internal/SessionManager;


# instance fields
.field private final appStateMonitor:Lcom/google/firebase/perf/internal/AppStateMonitor;

.field private final clients:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/firebase/perf/internal/SessionAwareObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private final gaugeManager:Lcom/google/firebase/perf/internal/GaugeManager;

.field private perfSession:Lcom/google/firebase/perf/internal/PerfSession;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lcom/google/firebase/perf/internal/SessionManager;

    invoke-direct {v0}, Lcom/google/firebase/perf/internal/SessionManager;-><init>()V

    sput-object v0, Lcom/google/firebase/perf/internal/SessionManager;->ourInstance:Lcom/google/firebase/perf/internal/SessionManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 57
    invoke-static {}, Lcom/google/firebase/perf/internal/GaugeManager;->getInstance()Lcom/google/firebase/perf/internal/GaugeManager;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/perf/internal/PerfSession;->create()Lcom/google/firebase/perf/internal/PerfSession;

    move-result-object v1

    invoke-static {}, Lcom/google/firebase/perf/internal/AppStateMonitor;->getInstance()Lcom/google/firebase/perf/internal/AppStateMonitor;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/firebase/perf/internal/SessionManager;-><init>(Lcom/google/firebase/perf/internal/GaugeManager;Lcom/google/firebase/perf/internal/PerfSession;Lcom/google/firebase/perf/internal/AppStateMonitor;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/perf/internal/GaugeManager;Lcom/google/firebase/perf/internal/PerfSession;Lcom/google/firebase/perf/internal/AppStateMonitor;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/google/firebase/perf/internal/AppStateUpdateHandler;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/perf/internal/SessionManager;->clients:Ljava/util/Set;

    .line 63
    iput-object p1, p0, Lcom/google/firebase/perf/internal/SessionManager;->gaugeManager:Lcom/google/firebase/perf/internal/GaugeManager;

    .line 64
    iput-object p2, p0, Lcom/google/firebase/perf/internal/SessionManager;->perfSession:Lcom/google/firebase/perf/internal/PerfSession;

    .line 65
    iput-object p3, p0, Lcom/google/firebase/perf/internal/SessionManager;->appStateMonitor:Lcom/google/firebase/perf/internal/AppStateMonitor;

    .line 66
    invoke-virtual {p0}, Lcom/google/firebase/perf/internal/SessionManager;->registerForAppState()V

    return-void
.end method

.method public static getInstance()Lcom/google/firebase/perf/internal/SessionManager;
    .locals 1

    .line 48
    sget-object v0, Lcom/google/firebase/perf/internal/SessionManager;->ourInstance:Lcom/google/firebase/perf/internal/SessionManager;

    return-object v0
.end method

.method private logGaugeMetadataIfCollectionEnabled(Lcom/google/firebase/perf/v1/ApplicationProcessState;)V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/google/firebase/perf/internal/SessionManager;->perfSession:Lcom/google/firebase/perf/internal/PerfSession;

    invoke-virtual {v0}, Lcom/google/firebase/perf/internal/PerfSession;->isGaugeAndEventCollectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/google/firebase/perf/internal/SessionManager;->gaugeManager:Lcom/google/firebase/perf/internal/GaugeManager;

    iget-object v1, p0, Lcom/google/firebase/perf/internal/SessionManager;->perfSession:Lcom/google/firebase/perf/internal/PerfSession;

    invoke-virtual {v1}, Lcom/google/firebase/perf/internal/PerfSession;->sessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/perf/internal/GaugeManager;->logGaugeMetadata(Ljava/lang/String;Lcom/google/firebase/perf/v1/ApplicationProcessState;)Z

    :cond_0
    return-void
.end method

.method private startOrStopCollectingGauges(Lcom/google/firebase/perf/v1/ApplicationProcessState;)V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/google/firebase/perf/internal/SessionManager;->perfSession:Lcom/google/firebase/perf/internal/PerfSession;

    invoke-virtual {v0}, Lcom/google/firebase/perf/internal/PerfSession;->isGaugeAndEventCollectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/google/firebase/perf/internal/SessionManager;->gaugeManager:Lcom/google/firebase/perf/internal/GaugeManager;

    iget-object v1, p0, Lcom/google/firebase/perf/internal/SessionManager;->perfSession:Lcom/google/firebase/perf/internal/PerfSession;

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/perf/internal/GaugeManager;->startCollectingGauges(Lcom/google/firebase/perf/internal/PerfSession;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V

    goto :goto_0

    .line 164
    :cond_0
    iget-object p1, p0, Lcom/google/firebase/perf/internal/SessionManager;->gaugeManager:Lcom/google/firebase/perf/internal/GaugeManager;

    invoke-virtual {p1}, Lcom/google/firebase/perf/internal/GaugeManager;->stopCollectingGauges()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onUpdateAppState(Lcom/google/firebase/perf/v1/ApplicationProcessState;)V
    .locals 1

    .line 71
    invoke-super {p0, p1}, Lcom/google/firebase/perf/internal/AppStateUpdateHandler;->onUpdateAppState(Lcom/google/firebase/perf/v1/ApplicationProcessState;)V

    .line 73
    iget-object v0, p0, Lcom/google/firebase/perf/internal/SessionManager;->appStateMonitor:Lcom/google/firebase/perf/internal/AppStateMonitor;

    invoke-virtual {v0}, Lcom/google/firebase/perf/internal/AppStateMonitor;->isColdStart()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 79
    :cond_0
    sget-object v0, Lcom/google/firebase/perf/v1/ApplicationProcessState;->FOREGROUND:Lcom/google/firebase/perf/v1/ApplicationProcessState;

    if-ne p1, v0, :cond_1

    .line 80
    invoke-virtual {p0, p1}, Lcom/google/firebase/perf/internal/SessionManager;->updatePerfSession(Lcom/google/firebase/perf/v1/ApplicationProcessState;)V

    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {p0}, Lcom/google/firebase/perf/internal/SessionManager;->updatePerfSessionIfExpired()Z

    move-result v0

    if-nez v0, :cond_2

    .line 83
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/internal/SessionManager;->startOrStopCollectingGauges(Lcom/google/firebase/perf/v1/ApplicationProcessState;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final perfSession()Lcom/google/firebase/perf/internal/PerfSession;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/google/firebase/perf/internal/SessionManager;->perfSession:Lcom/google/firebase/perf/internal/PerfSession;

    return-object v0
.end method

.method public registerForSessionUpdates(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/firebase/perf/internal/SessionAwareObject;",
            ">;)V"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/google/firebase/perf/internal/SessionManager;->clients:Ljava/util/Set;

    monitor-enter v0

    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/perf/internal/SessionManager;->clients:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 139
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setPerfSession(Lcom/google/firebase/perf/internal/PerfSession;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/google/firebase/perf/internal/SessionManager;->perfSession:Lcom/google/firebase/perf/internal/PerfSession;

    return-void
.end method

.method public unregisterForSessionUpdates(Ljava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/firebase/perf/internal/SessionAwareObject;",
            ">;)V"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/google/firebase/perf/internal/SessionManager;->clients:Ljava/util/Set;

    monitor-enter v0

    .line 150
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/perf/internal/SessionManager;->clients:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 151
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updatePerfSession(Lcom/google/firebase/perf/v1/ApplicationProcessState;)V
    .locals 4

    .line 111
    iget-object v0, p0, Lcom/google/firebase/perf/internal/SessionManager;->clients:Ljava/util/Set;

    monitor-enter v0

    .line 112
    :try_start_0
    invoke-static {}, Lcom/google/firebase/perf/internal/PerfSession;->create()Lcom/google/firebase/perf/internal/PerfSession;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/perf/internal/SessionManager;->perfSession:Lcom/google/firebase/perf/internal/PerfSession;

    .line 114
    iget-object v1, p0, Lcom/google/firebase/perf/internal/SessionManager;->clients:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 115
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/perf/internal/SessionAwareObject;

    if-eqz v2, :cond_0

    .line 117
    iget-object v3, p0, Lcom/google/firebase/perf/internal/SessionManager;->perfSession:Lcom/google/firebase/perf/internal/PerfSession;

    invoke-interface {v2, v3}, Lcom/google/firebase/perf/internal/SessionAwareObject;->updateSession(Lcom/google/firebase/perf/internal/PerfSession;)V

    goto :goto_0

    .line 121
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 124
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/internal/SessionManager;->logGaugeMetadataIfCollectionEnabled(Lcom/google/firebase/perf/v1/ApplicationProcessState;)V

    .line 127
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/internal/SessionManager;->startOrStopCollectingGauges(Lcom/google/firebase/perf/v1/ApplicationProcessState;)V

    return-void

    :catchall_0
    move-exception p1

    .line 124
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public updatePerfSessionIfExpired()Z
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/google/firebase/perf/internal/SessionManager;->perfSession:Lcom/google/firebase/perf/internal/PerfSession;

    invoke-virtual {v0}, Lcom/google/firebase/perf/internal/PerfSession;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/google/firebase/perf/internal/SessionManager;->appStateMonitor:Lcom/google/firebase/perf/internal/AppStateMonitor;

    invoke-virtual {v0}, Lcom/google/firebase/perf/internal/AppStateMonitor;->getAppState()Lcom/google/firebase/perf/v1/ApplicationProcessState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/perf/internal/SessionManager;->updatePerfSession(Lcom/google/firebase/perf/v1/ApplicationProcessState;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
