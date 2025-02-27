.class final Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod$SourceLoadable;
.super Ljava/lang/Object;
.source "SingleSampleMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/upstream/Loader$Loadable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SourceLoadable"
.end annotation


# instance fields
.field private final dataSource:Lcom/google/android/exoplr2avp/upstream/StatsDataSource;

.field public final dataSpec:Lcom/google/android/exoplr2avp/upstream/DataSpec;

.field public final loadTaskId:J

.field private sampleData:[B


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/upstream/DataSpec;Lcom/google/android/exoplr2avp/upstream/DataSource;)V
    .locals 2

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    invoke-static {}, Lcom/google/android/exoplr2avp/source/LoadEventInfo;->getNewId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod$SourceLoadable;->loadTaskId:J

    .line 421
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod$SourceLoadable;->dataSpec:Lcom/google/android/exoplr2avp/upstream/DataSpec;

    .line 422
    new-instance p1, Lcom/google/android/exoplr2avp/upstream/StatsDataSource;

    invoke-direct {p1, p2}, Lcom/google/android/exoplr2avp/upstream/StatsDataSource;-><init>(Lcom/google/android/exoplr2avp/upstream/DataSource;)V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod$SourceLoadable;->dataSource:Lcom/google/android/exoplr2avp/upstream/StatsDataSource;

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod$SourceLoadable;)Lcom/google/android/exoplr2avp/upstream/StatsDataSource;
    .locals 0

    .line 410
    iget-object p0, p0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod$SourceLoadable;->dataSource:Lcom/google/android/exoplr2avp/upstream/StatsDataSource;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod$SourceLoadable;)[B
    .locals 0

    .line 410
    iget-object p0, p0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    return-object p0
.end method


# virtual methods
.method public cancelLoad()V
    .locals 0

    return-void
.end method

.method public load()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 433
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod$SourceLoadable;->dataSource:Lcom/google/android/exoplr2avp/upstream/StatsDataSource;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/upstream/StatsDataSource;->resetBytesRead()V

    .line 436
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod$SourceLoadable;->dataSource:Lcom/google/android/exoplr2avp/upstream/StatsDataSource;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod$SourceLoadable;->dataSpec:Lcom/google/android/exoplr2avp/upstream/DataSpec;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/upstream/StatsDataSource;->open(Lcom/google/android/exoplr2avp/upstream/DataSpec;)J

    const/4 v0, 0x0

    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 440
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod$SourceLoadable;->dataSource:Lcom/google/android/exoplr2avp/upstream/StatsDataSource;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/upstream/StatsDataSource;->getBytesRead()J

    move-result-wide v0

    long-to-int v1, v0

    .line 441
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    if-nez v0, :cond_0

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 442
    iput-object v0, p0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    goto :goto_1

    .line 443
    :cond_0
    array-length v2, v0

    if-ne v1, v2, :cond_1

    .line 444
    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    .line 446
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod$SourceLoadable;->dataSource:Lcom/google/android/exoplr2avp/upstream/StatsDataSource;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    array-length v3, v2

    sub-int/2addr v3, v1

    invoke-virtual {v0, v2, v1, v3}, Lcom/google/android/exoplr2avp/upstream/StatsDataSource;->read([BII)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 449
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod$SourceLoadable;->dataSource:Lcom/google/android/exoplr2avp/upstream/StatsDataSource;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/upstream/DataSourceUtil;->closeQuietly(Lcom/google/android/exoplr2avp/upstream/DataSource;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaPeriod$SourceLoadable;->dataSource:Lcom/google/android/exoplr2avp/upstream/StatsDataSource;

    invoke-static {v1}, Lcom/google/android/exoplr2avp/upstream/DataSourceUtil;->closeQuietly(Lcom/google/android/exoplr2avp/upstream/DataSource;)V

    .line 450
    throw v0
.end method
