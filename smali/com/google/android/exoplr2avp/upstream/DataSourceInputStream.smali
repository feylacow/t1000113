.class public final Lcom/google/android/exoplr2avp/upstream/DataSourceInputStream;
.super Ljava/io/InputStream;
.source "DataSourceInputStream.java"


# instance fields
.field private closed:Z

.field private final dataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

.field private final dataSpec:Lcom/google/android/exoplr2avp/upstream/DataSpec;

.field private opened:Z

.field private final singleByteArray:[B

.field private totalBytesRead:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/upstream/DataSource;Lcom/google/android/exoplr2avp/upstream/DataSpec;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/upstream/DataSourceInputStream;->opened:Z

    .line 34
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/upstream/DataSourceInputStream;->closed:Z

    .line 42
    iput-object p1, p0, Lcom/google/android/exoplr2avp/upstream/DataSourceInputStream;->dataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    .line 43
    iput-object p2, p0, Lcom/google/android/exoplr2avp/upstream/DataSourceInputStream;->dataSpec:Lcom/google/android/exoplr2avp/upstream/DataSpec;

    const/4 p1, 0x1

    new-array p1, p1, [B

    .line 44
    iput-object p1, p0, Lcom/google/android/exoplr2avp/upstream/DataSourceInputStream;->singleByteArray:[B

    return-void
.end method

.method private checkOpened()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/upstream/DataSourceInputStream;->opened:Z

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DataSourceInputStream;->dataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/upstream/DataSourceInputStream;->dataSpec:Lcom/google/android/exoplr2avp/upstream/DataSpec;

    invoke-interface {v0, v1}, Lcom/google/android/exoplr2avp/upstream/DataSource;->open(Lcom/google/android/exoplr2avp/upstream/DataSpec;)J

    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/upstream/DataSourceInputStream;->opened:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public bytesRead()J
    .locals 2

    .line 49
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/upstream/DataSourceInputStream;->totalBytesRead:J

    return-wide v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/upstream/DataSourceInputStream;->closed:Z

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DataSourceInputStream;->dataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/upstream/DataSource;->close()V

    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/upstream/DataSourceInputStream;->closed:Z

    :cond_0
    return-void
.end method

.method public open()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/upstream/DataSourceInputStream;->checkOpened()V

    return-void
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DataSourceInputStream;->singleByteArray:[B

    invoke-virtual {p0, v0}, Lcom/google/android/exoplr2avp/upstream/DataSourceInputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DataSourceInputStream;->singleByteArray:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xff

    :goto_0
    return v1
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/exoplr2avp/upstream/DataSourceInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/upstream/DataSourceInputStream;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 79
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/upstream/DataSourceInputStream;->checkOpened()V

    .line 80
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DataSourceInputStream;->dataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplr2avp/upstream/DataSource;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    .line 84
    :cond_0
    iget-wide p2, p0, Lcom/google/android/exoplr2avp/upstream/DataSourceInputStream;->totalBytesRead:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/exoplr2avp/upstream/DataSourceInputStream;->totalBytesRead:J

    return p1
.end method
