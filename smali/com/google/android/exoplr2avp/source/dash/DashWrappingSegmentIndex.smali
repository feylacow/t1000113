.class public final Lcom/google/android/exoplr2avp/source/dash/DashWrappingSegmentIndex;
.super Ljava/lang/Object;
.source "DashWrappingSegmentIndex.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/source/dash/DashSegmentIndex;


# instance fields
.field private final chunkIndex:Lcom/google/android/exoplr2avp/extractor/ChunkIndex;

.field private final timeOffsetUs:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/extractor/ChunkIndex;J)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/dash/DashWrappingSegmentIndex;->chunkIndex:Lcom/google/android/exoplr2avp/extractor/ChunkIndex;

    .line 37
    iput-wide p2, p0, Lcom/google/android/exoplr2avp/source/dash/DashWrappingSegmentIndex;->timeOffsetUs:J

    return-void
.end method


# virtual methods
.method public getAvailableSegmentCount(JJ)J
    .locals 0

    .line 57
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/dash/DashWrappingSegmentIndex;->chunkIndex:Lcom/google/android/exoplr2avp/extractor/ChunkIndex;

    iget p1, p1, Lcom/google/android/exoplr2avp/extractor/ChunkIndex;->length:I

    int-to-long p1, p1

    return-wide p1
.end method

.method public getDurationUs(JJ)J
    .locals 0

    .line 72
    iget-object p3, p0, Lcom/google/android/exoplr2avp/source/dash/DashWrappingSegmentIndex;->chunkIndex:Lcom/google/android/exoplr2avp/extractor/ChunkIndex;

    iget-object p3, p3, Lcom/google/android/exoplr2avp/extractor/ChunkIndex;->durationsUs:[J

    long-to-int p2, p1

    aget-wide p1, p3, p2

    return-wide p1
.end method

.method public getFirstAvailableSegmentNum(JJ)J
    .locals 0

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public getFirstSegmentNum()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNextSegmentAvailableTimeUs(JJ)J
    .locals 0

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    return-wide p1
.end method

.method public getSegmentCount(J)J
    .locals 0

    .line 52
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/dash/DashWrappingSegmentIndex;->chunkIndex:Lcom/google/android/exoplr2avp/extractor/ChunkIndex;

    iget p1, p1, Lcom/google/android/exoplr2avp/extractor/ChunkIndex;->length:I

    int-to-long p1, p1

    return-wide p1
.end method

.method public getSegmentNum(JJ)J
    .locals 2

    .line 83
    iget-object p3, p0, Lcom/google/android/exoplr2avp/source/dash/DashWrappingSegmentIndex;->chunkIndex:Lcom/google/android/exoplr2avp/extractor/ChunkIndex;

    iget-wide v0, p0, Lcom/google/android/exoplr2avp/source/dash/DashWrappingSegmentIndex;->timeOffsetUs:J

    add-long/2addr p1, v0

    invoke-virtual {p3, p1, p2}, Lcom/google/android/exoplr2avp/extractor/ChunkIndex;->getChunkIndex(J)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method

.method public getSegmentUrl(J)Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;
    .locals 7

    .line 77
    new-instance v6, Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;

    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/dash/DashWrappingSegmentIndex;->chunkIndex:Lcom/google/android/exoplr2avp/extractor/ChunkIndex;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/extractor/ChunkIndex;->offsets:[J

    long-to-int p2, p1

    aget-wide v2, v0, p2

    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/dash/DashWrappingSegmentIndex;->chunkIndex:Lcom/google/android/exoplr2avp/extractor/ChunkIndex;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/extractor/ChunkIndex;->sizes:[I

    aget p1, p1, p2

    int-to-long v4, p1

    const/4 v1, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;-><init>(Ljava/lang/String;JJ)V

    return-object v6
.end method

.method public getTimeUs(J)J
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/dash/DashWrappingSegmentIndex;->chunkIndex:Lcom/google/android/exoplr2avp/extractor/ChunkIndex;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/extractor/ChunkIndex;->timesUs:[J

    long-to-int p2, p1

    aget-wide p1, v0, p2

    iget-wide v0, p0, Lcom/google/android/exoplr2avp/source/dash/DashWrappingSegmentIndex;->timeOffsetUs:J

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public isExplicit()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
