.class public final Lcom/google/android/exoplr2avp/upstream/ByteArrayDataSource;
.super Lcom/google/android/exoplr2avp/upstream/BaseDataSource;
.source "ByteArrayDataSource.java"


# instance fields
.field private bytesRemaining:I

.field private final data:[B

.field private opened:Z

.field private readPosition:I

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>([B)V
    .locals 2

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/upstream/BaseDataSource;-><init>(Z)V

    .line 42
    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    array-length v1, p1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkArgument(Z)V

    .line 44
    iput-object p1, p0, Lcom/google/android/exoplr2avp/upstream/ByteArrayDataSource;->data:[B

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/upstream/ByteArrayDataSource;->opened:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/upstream/ByteArrayDataSource;->opened:Z

    .line 90
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/upstream/ByteArrayDataSource;->transferEnded()V

    :cond_0
    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/google/android/exoplr2avp/upstream/ByteArrayDataSource;->uri:Landroid/net/Uri;

    return-void
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/ByteArrayDataSource;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public open(Lcom/google/android/exoplr2avp/upstream/DataSpec;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    iget-object v0, p1, Lcom/google/android/exoplr2avp/upstream/DataSpec;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplr2avp/upstream/ByteArrayDataSource;->uri:Landroid/net/Uri;

    .line 50
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/upstream/ByteArrayDataSource;->transferInitializing(Lcom/google/android/exoplr2avp/upstream/DataSpec;)V

    .line 51
    iget-wide v0, p1, Lcom/google/android/exoplr2avp/upstream/DataSpec;->position:J

    iget-object v2, p0, Lcom/google/android/exoplr2avp/upstream/ByteArrayDataSource;->data:[B

    array-length v2, v2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    .line 54
    iget-wide v0, p1, Lcom/google/android/exoplr2avp/upstream/DataSpec;->position:J

    long-to-int v1, v0

    iput v1, p0, Lcom/google/android/exoplr2avp/upstream/ByteArrayDataSource;->readPosition:I

    .line 55
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/ByteArrayDataSource;->data:[B

    array-length v0, v0

    iget-wide v1, p1, Lcom/google/android/exoplr2avp/upstream/DataSpec;->position:J

    long-to-int v2, v1

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplr2avp/upstream/ByteArrayDataSource;->bytesRemaining:I

    .line 56
    iget-wide v0, p1, Lcom/google/android/exoplr2avp/upstream/DataSpec;->length:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 57
    iget v0, p0, Lcom/google/android/exoplr2avp/upstream/ByteArrayDataSource;->bytesRemaining:I

    int-to-long v0, v0

    iget-wide v4, p1, Lcom/google/android/exoplr2avp/upstream/DataSpec;->length:J

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    iput v1, p0, Lcom/google/android/exoplr2avp/upstream/ByteArrayDataSource;->bytesRemaining:I

    :cond_0
    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/upstream/ByteArrayDataSource;->opened:Z

    .line 60
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/upstream/ByteArrayDataSource;->transferStarted(Lcom/google/android/exoplr2avp/upstream/DataSpec;)V

    .line 61
    iget-wide v0, p1, Lcom/google/android/exoplr2avp/upstream/DataSpec;->length:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-wide v0, p1, Lcom/google/android/exoplr2avp/upstream/DataSpec;->length:J

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/google/android/exoplr2avp/upstream/ByteArrayDataSource;->bytesRemaining:I

    int-to-long v0, p1

    :goto_0
    return-wide v0

    .line 52
    :cond_2
    new-instance p1, Lcom/google/android/exoplr2avp/upstream/DataSourceException;

    const/16 v0, 0x7d8

    invoke-direct {p1, v0}, Lcom/google/android/exoplr2avp/upstream/DataSourceException;-><init>(I)V

    throw p1
.end method

.method public read([BII)I
    .locals 2

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 68
    :cond_0
    iget v0, p0, Lcom/google/android/exoplr2avp/upstream/ByteArrayDataSource;->bytesRemaining:I

    if-nez v0, :cond_1

    const/4 p1, -0x1

    return p1

    .line 72
    :cond_1
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 73
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/ByteArrayDataSource;->data:[B

    iget v1, p0, Lcom/google/android/exoplr2avp/upstream/ByteArrayDataSource;->readPosition:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    iget p1, p0, Lcom/google/android/exoplr2avp/upstream/ByteArrayDataSource;->readPosition:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/exoplr2avp/upstream/ByteArrayDataSource;->readPosition:I

    .line 75
    iget p1, p0, Lcom/google/android/exoplr2avp/upstream/ByteArrayDataSource;->bytesRemaining:I

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/exoplr2avp/upstream/ByteArrayDataSource;->bytesRemaining:I

    .line 76
    invoke-virtual {p0, p3}, Lcom/google/android/exoplr2avp/upstream/ByteArrayDataSource;->bytesTransferred(I)V

    return p3
.end method
