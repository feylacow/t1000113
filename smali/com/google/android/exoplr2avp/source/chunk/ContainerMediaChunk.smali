.class public Lcom/google/android/exoplr2avp/source/chunk/ContainerMediaChunk;
.super Lcom/google/android/exoplr2avp/source/chunk/BaseMediaChunk;
.source "ContainerMediaChunk.java"


# instance fields
.field private final chunkCount:I

.field private final chunkExtractor:Lcom/google/android/exoplr2avp/source/chunk/ChunkExtractor;

.field private volatile loadCanceled:Z

.field private loadCompleted:Z

.field private nextLoadPosition:J

.field private final sampleOffsetUs:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/upstream/DataSource;Lcom/google/android/exoplr2avp/upstream/DataSpec;Lcom/google/android/exoplr2avp/Format;ILjava/lang/Object;JJJJJIJLcom/google/android/exoplr2avp/source/chunk/ChunkExtractor;)V
    .locals 3

    move-object v0, p0

    .line 74
    invoke-direct/range {p0 .. p15}, Lcom/google/android/exoplr2avp/source/chunk/BaseMediaChunk;-><init>(Lcom/google/android/exoplr2avp/upstream/DataSource;Lcom/google/android/exoplr2avp/upstream/DataSpec;Lcom/google/android/exoplr2avp/Format;ILjava/lang/Object;JJJJJ)V

    move/from16 v1, p16

    .line 85
    iput v1, v0, Lcom/google/android/exoplr2avp/source/chunk/ContainerMediaChunk;->chunkCount:I

    move-wide/from16 v1, p17

    .line 86
    iput-wide v1, v0, Lcom/google/android/exoplr2avp/source/chunk/ContainerMediaChunk;->sampleOffsetUs:J

    move-object/from16 v1, p19

    .line 87
    iput-object v1, v0, Lcom/google/android/exoplr2avp/source/chunk/ContainerMediaChunk;->chunkExtractor:Lcom/google/android/exoplr2avp/source/chunk/ChunkExtractor;

    return-void
.end method


# virtual methods
.method public final cancelLoad()V
    .locals 1

    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/source/chunk/ContainerMediaChunk;->loadCanceled:Z

    return-void
.end method

.method public getNextChunkIndex()J
    .locals 4

    .line 92
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/source/chunk/ContainerMediaChunk;->chunkIndex:J

    iget v2, p0, Lcom/google/android/exoplr2avp/source/chunk/ContainerMediaChunk;->chunkCount:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method protected getTrackOutputProvider(Lcom/google/android/exoplr2avp/source/chunk/BaseMediaChunkOutput;)Lcom/google/android/exoplr2avp/source/chunk/ChunkExtractor$TrackOutputProvider;
    .locals 0

    return-object p1
.end method

.method public isLoadCompleted()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/source/chunk/ContainerMediaChunk;->loadCompleted:Z

    return v0
.end method

.method public final load()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/source/chunk/ContainerMediaChunk;->nextLoadPosition:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 112
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/source/chunk/ContainerMediaChunk;->getOutput()Lcom/google/android/exoplr2avp/source/chunk/BaseMediaChunkOutput;

    move-result-object v0

    .line 113
    iget-wide v1, p0, Lcom/google/android/exoplr2avp/source/chunk/ContainerMediaChunk;->sampleOffsetUs:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplr2avp/source/chunk/BaseMediaChunkOutput;->setSampleOffsetUs(J)V

    .line 114
    iget-object v3, p0, Lcom/google/android/exoplr2avp/source/chunk/ContainerMediaChunk;->chunkExtractor:Lcom/google/android/exoplr2avp/source/chunk/ChunkExtractor;

    .line 115
    invoke-virtual {p0, v0}, Lcom/google/android/exoplr2avp/source/chunk/ContainerMediaChunk;->getTrackOutputProvider(Lcom/google/android/exoplr2avp/source/chunk/BaseMediaChunkOutput;)Lcom/google/android/exoplr2avp/source/chunk/ChunkExtractor$TrackOutputProvider;

    move-result-object v4

    .line 116
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/source/chunk/ContainerMediaChunk;->clippedStartTimeUs:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v5

    if-nez v2, :cond_0

    move-wide v0, v5

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/source/chunk/ContainerMediaChunk;->clippedStartTimeUs:J

    iget-wide v7, p0, Lcom/google/android/exoplr2avp/source/chunk/ContainerMediaChunk;->sampleOffsetUs:J

    sub-long/2addr v0, v7

    .line 117
    :goto_0
    iget-wide v7, p0, Lcom/google/android/exoplr2avp/source/chunk/ContainerMediaChunk;->clippedEndTimeUs:J

    cmp-long v2, v7, v5

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-wide v5, p0, Lcom/google/android/exoplr2avp/source/chunk/ContainerMediaChunk;->clippedEndTimeUs:J

    iget-wide v7, p0, Lcom/google/android/exoplr2avp/source/chunk/ContainerMediaChunk;->sampleOffsetUs:J

    sub-long/2addr v5, v7

    :goto_1
    move-wide v7, v5

    move-wide v5, v0

    .line 114
    invoke-interface/range {v3 .. v8}, Lcom/google/android/exoplr2avp/source/chunk/ChunkExtractor;->init(Lcom/google/android/exoplr2avp/source/chunk/ChunkExtractor$TrackOutputProvider;JJ)V

    .line 121
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/chunk/ContainerMediaChunk;->dataSpec:Lcom/google/android/exoplr2avp/upstream/DataSpec;

    iget-wide v1, p0, Lcom/google/android/exoplr2avp/source/chunk/ContainerMediaChunk;->nextLoadPosition:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplr2avp/upstream/DataSpec;->subrange(J)Lcom/google/android/exoplr2avp/upstream/DataSpec;

    move-result-object v0

    .line 122
    new-instance v7, Lcom/google/android/exoplr2avp/extractor/DefaultExtractorInput;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/chunk/ContainerMediaChunk;->dataSource:Lcom/google/android/exoplr2avp/upstream/StatsDataSource;

    iget-wide v3, v0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->position:J

    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/chunk/ContainerMediaChunk;->dataSource:Lcom/google/android/exoplr2avp/upstream/StatsDataSource;

    .line 124
    invoke-virtual {v1, v0}, Lcom/google/android/exoplr2avp/upstream/StatsDataSource;->open(Lcom/google/android/exoplr2avp/upstream/DataSpec;)J

    move-result-wide v5

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplr2avp/extractor/DefaultExtractorInput;-><init>(Lcom/google/android/exoplr2avp/upstream/DataReader;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 127
    :goto_2
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/source/chunk/ContainerMediaChunk;->loadCanceled:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/chunk/ContainerMediaChunk;->chunkExtractor:Lcom/google/android/exoplr2avp/source/chunk/ChunkExtractor;

    invoke-interface {v0, v7}, Lcom/google/android/exoplr2avp/source/chunk/ChunkExtractor;->read(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    goto :goto_2

    .line 129
    :cond_3
    :try_start_2
    invoke-interface {v7}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/chunk/ContainerMediaChunk;->dataSpec:Lcom/google/android/exoplr2avp/upstream/DataSpec;

    iget-wide v2, v2, Lcom/google/android/exoplr2avp/upstream/DataSpec;->position:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplr2avp/source/chunk/ContainerMediaChunk;->nextLoadPosition:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 132
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/chunk/ContainerMediaChunk;->dataSource:Lcom/google/android/exoplr2avp/upstream/StatsDataSource;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/upstream/DataSourceUtil;->closeQuietly(Lcom/google/android/exoplr2avp/upstream/DataSource;)V

    .line 134
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/source/chunk/ContainerMediaChunk;->loadCanceled:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/source/chunk/ContainerMediaChunk;->loadCompleted:Z

    return-void

    :catchall_0
    move-exception v0

    .line 129
    :try_start_3
    invoke-interface {v7}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/exoplr2avp/source/chunk/ContainerMediaChunk;->dataSpec:Lcom/google/android/exoplr2avp/upstream/DataSpec;

    iget-wide v3, v3, Lcom/google/android/exoplr2avp/upstream/DataSpec;->position:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/exoplr2avp/source/chunk/ContainerMediaChunk;->nextLoadPosition:J

    .line 130
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 132
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/chunk/ContainerMediaChunk;->dataSource:Lcom/google/android/exoplr2avp/upstream/StatsDataSource;

    invoke-static {v1}, Lcom/google/android/exoplr2avp/upstream/DataSourceUtil;->closeQuietly(Lcom/google/android/exoplr2avp/upstream/DataSource;)V

    .line 133
    throw v0
.end method
