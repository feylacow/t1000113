.class public final Lcom/google/android/exoplr2avp/upstream/StatsDataSource;
.super Ljava/lang/Object;
.source "StatsDataSource.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/upstream/DataSource;


# instance fields
.field private bytesRead:J

.field private final dataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

.field private lastOpenedUri:Landroid/net/Uri;

.field private lastResponseHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/upstream/DataSource;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/upstream/DataSource;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/upstream/StatsDataSource;->dataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    .line 46
    sget-object p1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/upstream/StatsDataSource;->lastOpenedUri:Landroid/net/Uri;

    .line 47
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/upstream/StatsDataSource;->lastResponseHeaders:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addTransferListener(Lcom/google/android/exoplr2avp/upstream/TransferListener;)V
    .locals 1

    .line 75
    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/StatsDataSource;->dataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/upstream/DataSource;->addTransferListener(Lcom/google/android/exoplr2avp/upstream/TransferListener;)V

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/StatsDataSource;->dataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/upstream/DataSource;->close()V

    return-void
.end method

.method public getBytesRead()J
    .locals 2

    .line 57
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/upstream/StatsDataSource;->bytesRead:J

    return-wide v0
.end method

.method public getLastOpenedUri()Landroid/net/Uri;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/StatsDataSource;->lastOpenedUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getLastResponseHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/StatsDataSource;->lastResponseHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/StatsDataSource;->dataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/upstream/DataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/StatsDataSource;->dataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/upstream/DataSource;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public open(Lcom/google/android/exoplr2avp/upstream/DataSpec;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iget-object v0, p1, Lcom/google/android/exoplr2avp/upstream/DataSpec;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplr2avp/upstream/StatsDataSource;->lastOpenedUri:Landroid/net/Uri;

    .line 83
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplr2avp/upstream/StatsDataSource;->lastResponseHeaders:Ljava/util/Map;

    .line 84
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/StatsDataSource;->dataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/upstream/DataSource;->open(Lcom/google/android/exoplr2avp/upstream/DataSpec;)J

    move-result-wide v0

    .line 85
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/upstream/StatsDataSource;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/upstream/StatsDataSource;->lastOpenedUri:Landroid/net/Uri;

    .line 86
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/upstream/StatsDataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/upstream/StatsDataSource;->lastResponseHeaders:Ljava/util/Map;

    return-wide v0
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/StatsDataSource;->dataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplr2avp/upstream/DataSource;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 94
    iget-wide p2, p0, Lcom/google/android/exoplr2avp/upstream/StatsDataSource;->bytesRead:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/exoplr2avp/upstream/StatsDataSource;->bytesRead:J

    :cond_0
    return p1
.end method

.method public resetBytesRead()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 52
    iput-wide v0, p0, Lcom/google/android/exoplr2avp/upstream/StatsDataSource;->bytesRead:J

    return-void
.end method
