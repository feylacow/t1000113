.class public final Lcom/google/android/exoplr2avp/source/mediaparser/InputReaderAdapterV30;
.super Ljava/lang/Object;
.source "InputReaderAdapterV30.java"

# interfaces
.implements Landroid/media/MediaParser$SeekableInputReader;


# instance fields
.field private currentPosition:J

.field private dataReader:Lcom/google/android/exoplr2avp/upstream/DataReader;

.field private lastSeekPosition:J

.field private resourceLength:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAndResetSeekPosition()J
    .locals 4

    .line 59
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/source/mediaparser/InputReaderAdapterV30;->lastSeekPosition:J

    const-wide/16 v2, -0x1

    .line 60
    iput-wide v2, p0, Lcom/google/android/exoplr2avp/source/mediaparser/InputReaderAdapterV30;->lastSeekPosition:J

    return-wide v0
.end method

.method public getLength()J
    .locals 2

    .line 85
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/source/mediaparser/InputReaderAdapterV30;->resourceLength:J

    return-wide v0
.end method

.method public getPosition()J
    .locals 2

    .line 80
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/source/mediaparser/InputReaderAdapterV30;->currentPosition:J

    return-wide v0
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/mediaparser/InputReaderAdapterV30;->dataReader:Lcom/google/android/exoplr2avp/upstream/DataReader;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/upstream/DataReader;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplr2avp/upstream/DataReader;->read([BII)I

    move-result p1

    .line 74
    iget-wide p2, p0, Lcom/google/android/exoplr2avp/source/mediaparser/InputReaderAdapterV30;->currentPosition:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/exoplr2avp/source/mediaparser/InputReaderAdapterV30;->currentPosition:J

    return p1
.end method

.method public seekToPosition(J)V
    .locals 0

    .line 68
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/source/mediaparser/InputReaderAdapterV30;->lastSeekPosition:J

    return-void
.end method

.method public setCurrentPosition(J)V
    .locals 0

    .line 51
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/source/mediaparser/InputReaderAdapterV30;->currentPosition:J

    return-void
.end method

.method public setDataReader(Lcom/google/android/exoplr2avp/upstream/DataReader;J)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/mediaparser/InputReaderAdapterV30;->dataReader:Lcom/google/android/exoplr2avp/upstream/DataReader;

    .line 45
    iput-wide p2, p0, Lcom/google/android/exoplr2avp/source/mediaparser/InputReaderAdapterV30;->resourceLength:J

    const-wide/16 p1, -0x1

    .line 46
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/source/mediaparser/InputReaderAdapterV30;->lastSeekPosition:J

    return-void
.end method
