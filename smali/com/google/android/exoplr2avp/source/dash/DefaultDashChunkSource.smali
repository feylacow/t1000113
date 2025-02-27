.class public Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;
.super Ljava/lang/Object;
.source "DefaultDashChunkSource.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/source/dash/DashChunkSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;,
        Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationSegmentIterator;,
        Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$Factory;
    }
.end annotation


# instance fields
.field private final adaptationSetIndices:[I

.field private final baseUrlExclusionList:Lcom/google/android/exoplr2avp/source/dash/BaseUrlExclusionList;

.field private final dataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

.field private final elapsedRealtimeOffsetMs:J

.field private fatalError:Ljava/io/IOException;

.field private manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

.field private final manifestLoaderErrorThrower:Lcom/google/android/exoplr2avp/upstream/LoaderErrorThrower;

.field private final maxSegmentsPerLoad:I

.field private missingLastSegment:Z

.field private periodIndex:I

.field private final playerTrackEmsgHandler:Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;

.field protected final representationHolders:[Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;

.field private trackSelection:Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

.field private final trackType:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/source/chunk/ChunkExtractor$Factory;Lcom/google/android/exoplr2avp/upstream/LoaderErrorThrower;Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;Lcom/google/android/exoplr2avp/source/dash/BaseUrlExclusionList;I[ILcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;ILcom/google/android/exoplr2avp/upstream/DataSource;JIZLjava/util/List;Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;Lcom/google/android/exoplr2avp/analytics/PlayerId;)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/source/chunk/ChunkExtractor$Factory;",
            "Lcom/google/android/exoplr2avp/upstream/LoaderErrorThrower;",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;",
            "Lcom/google/android/exoplr2avp/source/dash/BaseUrlExclusionList;",
            "I[I",
            "Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;",
            "I",
            "Lcom/google/android/exoplr2avp/upstream/DataSource;",
            "JIZ",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/Format;",
            ">;",
            "Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;",
            "Lcom/google/android/exoplr2avp/analytics/PlayerId;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p7

    .line 194
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v5, p2

    .line 195
    iput-object v5, v0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->manifestLoaderErrorThrower:Lcom/google/android/exoplr2avp/upstream/LoaderErrorThrower;

    .line 196
    iput-object v1, v0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    .line 197
    iput-object v2, v0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->baseUrlExclusionList:Lcom/google/android/exoplr2avp/source/dash/BaseUrlExclusionList;

    move-object/from16 v5, p6

    .line 198
    iput-object v5, v0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->adaptationSetIndices:[I

    .line 199
    iput-object v4, v0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    move/from16 v12, p8

    .line 200
    iput v12, v0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->trackType:I

    move-object/from16 v5, p9

    .line 201
    iput-object v5, v0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->dataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    .line 202
    iput v3, v0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->periodIndex:I

    move-wide/from16 v5, p10

    .line 203
    iput-wide v5, v0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->elapsedRealtimeOffsetMs:J

    move/from16 v5, p12

    .line 204
    iput v5, v0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->maxSegmentsPerLoad:I

    move-object/from16 v13, p15

    .line 205
    iput-object v13, v0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->playerTrackEmsgHandler:Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;

    .line 207
    invoke-virtual {v1, v3}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v23

    .line 209
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->getRepresentations()Ljava/util/ArrayList;

    move-result-object v1

    .line 210
    invoke-interface/range {p7 .. p7}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;->length()I

    move-result v3

    new-array v3, v3, [Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;

    iput-object v3, v0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;

    const/4 v3, 0x0

    const/4 v15, 0x0

    .line 211
    :goto_0
    iget-object v5, v0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;

    array-length v5, v5

    if-ge v15, v5, :cond_1

    .line 212
    invoke-interface {v4, v15}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;->getIndexInTrackGroup(I)I

    move-result v5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;

    .line 214
    iget-object v5, v14, Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;->baseUrls:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, v5}, Lcom/google/android/exoplr2avp/source/dash/BaseUrlExclusionList;->selectBaseUrl(Ljava/util/List;)Lcom/google/android/exoplr2avp/source/dash/manifest/BaseUrl;

    move-result-object v5

    .line 215
    iget-object v11, v0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;

    new-instance v25, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;

    if-eqz v5, :cond_0

    goto :goto_1

    .line 219
    :cond_0
    iget-object v5, v14, Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;->baseUrls:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v5, v3}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplr2avp/source/dash/manifest/BaseUrl;

    :goto_1
    move-object/from16 v18, v5

    iget-object v7, v14, Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;->format:Lcom/google/android/exoplr2avp/Format;

    move-object/from16 v5, p1

    move/from16 v6, p8

    move/from16 v8, p13

    move-object/from16 v9, p14

    move-object/from16 v10, p15

    move-object/from16 v26, v11

    move-object/from16 v11, p16

    .line 220
    invoke-interface/range {v5 .. v11}, Lcom/google/android/exoplr2avp/source/chunk/ChunkExtractor$Factory;->createProgressiveMediaExtractor(ILcom/google/android/exoplr2avp/Format;ZLjava/util/List;Lcom/google/android/exoplr2avp/extractor/TrackOutput;Lcom/google/android/exoplr2avp/analytics/PlayerId;)Lcom/google/android/exoplr2avp/source/chunk/ChunkExtractor;

    move-result-object v19

    const-wide/16 v20, 0x0

    .line 228
    invoke-virtual {v14}, Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;->getIndex()Lcom/google/android/exoplr2avp/source/dash/DashSegmentIndex;

    move-result-object v22

    move-object v5, v14

    move-object/from16 v14, v25

    move v6, v15

    move-wide/from16 v15, v23

    move-object/from16 v17, v5

    invoke-direct/range {v14 .. v22}, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;-><init>(JLcom/google/android/exoplr2avp/source/dash/manifest/Representation;Lcom/google/android/exoplr2avp/source/dash/manifest/BaseUrl;Lcom/google/android/exoplr2avp/source/chunk/ChunkExtractor;JLcom/google/android/exoplr2avp/source/dash/DashSegmentIndex;)V

    aput-object v25, v26, v6

    add-int/lit8 v15, v6, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private createFallbackOptions(Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;Ljava/util/List;)Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy$FallbackOptions;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/BaseUrl;",
            ">;)",
            "Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy$FallbackOptions;"
        }
    .end annotation

    .line 554
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 555
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 558
    invoke-interface {p1, v3, v0, v1}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;->isBlacklisted(IJ)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 562
    :cond_1
    invoke-static {p2}, Lcom/google/android/exoplr2avp/source/dash/BaseUrlExclusionList;->getPriorityCount(Ljava/util/List;)I

    move-result p1

    .line 563
    new-instance v0, Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy$FallbackOptions;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->baseUrlExclusionList:Lcom/google/android/exoplr2avp/source/dash/BaseUrlExclusionList;

    .line 566
    invoke-virtual {v1, p2}, Lcom/google/android/exoplr2avp/source/dash/BaseUrlExclusionList;->getPriorityCountAfterExclusion(Ljava/util/List;)I

    move-result p2

    sub-int p2, p1, p2

    invoke-direct {v0, p1, p2, v2, v4}, Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy$FallbackOptions;-><init>(IIII)V

    return-object v0
.end method

.method private getAvailableLiveDurationUs(JJ)J
    .locals 4

    .line 595
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    iget-boolean v0, v0, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->dynamic:Z

    if-nez v0, :cond_0

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    return-wide p1

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;->getLastAvailableSegmentNum(J)J

    move-result-wide v2

    .line 599
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentEndTimeUs(J)J

    move-result-wide v0

    .line 600
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->getNowPeriodTimeUs(J)J

    move-result-wide p1

    .line 601
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    sub-long/2addr p1, p3

    .line 602
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method private getNowPeriodTimeUs(J)J
    .locals 5

    .line 606
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    iget-wide v0, v0, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->availabilityStartTimeMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    iget-wide v0, v0, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->availabilityStartTimeMs:J

    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    iget v3, p0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->periodIndex:I

    .line 610
    invoke-virtual {v2, v3}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplr2avp/source/dash/manifest/Period;

    move-result-object v2

    iget-wide v2, v2, Lcom/google/android/exoplr2avp/source/dash/manifest/Period;->startMs:J

    add-long/2addr v0, v2

    .line 609
    invoke-static {v0, v1}, Lcom/google/android/exoplr2avp/util/Util;->msToUs(J)J

    move-result-wide v0

    sub-long v2, p1, v0

    :goto_0
    return-wide v2
.end method

.method private getRepresentations()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;",
            ">;"
        }
    .end annotation

    .line 586
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    iget v1, p0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->periodIndex:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplr2avp/source/dash/manifest/Period;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplr2avp/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    .line 587
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 588
    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->adaptationSetIndices:[I

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget v5, v2, v4

    .line 589
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplr2avp/source/dash/manifest/AdaptationSet;

    iget-object v5, v5, Lcom/google/android/exoplr2avp/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private getSegmentNum(Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;Lcom/google/android/exoplr2avp/source/chunk/MediaChunk;JJJ)J
    .locals 6

    if-eqz p2, :cond_0

    .line 578
    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/source/chunk/MediaChunk;->getNextChunkIndex()J

    move-result-wide p1

    goto :goto_0

    .line 580
    :cond_0
    invoke-virtual {p1, p3, p4}, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentNum(J)J

    move-result-wide v0

    move-wide v2, p5

    move-wide v4, p7

    .line 579
    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplr2avp/util/Util;->constrainValue(JJJ)J

    move-result-wide p1

    :goto_0
    return-wide p1
.end method

.method private updateSelectedBaseUrl(I)Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;
    .locals 3

    .line 728
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;

    aget-object v0, v0, p1

    .line 730
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->baseUrlExclusionList:Lcom/google/android/exoplr2avp/source/dash/BaseUrlExclusionList;

    iget-object v2, v0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;

    iget-object v2, v2, Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;->baseUrls:Lcom/google/common/collect/ImmutableList;

    .line 731
    invoke-virtual {v1, v2}, Lcom/google/android/exoplr2avp/source/dash/BaseUrlExclusionList;->selectBaseUrl(Ljava/util/List;)Lcom/google/android/exoplr2avp/source/dash/manifest/BaseUrl;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 732
    iget-object v2, v0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Lcom/google/android/exoplr2avp/source/dash/manifest/BaseUrl;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplr2avp/source/dash/manifest/BaseUrl;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 733
    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;->copyWithNewSelectedBaseUrl(Lcom/google/android/exoplr2avp/source/dash/manifest/BaseUrl;)Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;

    move-result-object v0

    .line 734
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;

    aput-object v0, v1, p1

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getAdjustedSeekPositionUs(JLcom/google/android/exoplr2avp/SeekParameters;)J
    .locals 16

    move-wide/from16 v1, p1

    move-object/from16 v7, p0

    .line 235
    iget-object v0, v7, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    .line 236
    iget-object v6, v5, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplr2avp/source/dash/DashSegmentIndex;

    if-eqz v6, :cond_2

    .line 237
    invoke-virtual {v5, v1, v2}, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentNum(J)J

    move-result-wide v3

    .line 238
    invoke-virtual {v5, v3, v4}, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentStartTimeUs(J)J

    move-result-wide v8

    .line 239
    invoke-virtual {v5}, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentCount()J

    move-result-wide v10

    cmp-long v0, v8, v1

    if-gez v0, :cond_1

    const-wide/16 v12, -0x1

    const-wide/16 v14, 0x1

    cmp-long v0, v10, v12

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {v5}, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;->getFirstSegmentNum()J

    move-result-wide v12

    add-long/2addr v12, v10

    sub-long/2addr v12, v14

    cmp-long v0, v3, v12

    if-gez v0, :cond_1

    :cond_0
    add-long/2addr v3, v14

    .line 245
    invoke-virtual {v5, v3, v4}, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentStartTimeUs(J)J

    move-result-wide v3

    move-wide v5, v3

    goto :goto_1

    :cond_1
    move-wide v5, v8

    :goto_1
    move-object/from16 v0, p3

    move-wide/from16 v1, p1

    move-wide v3, v8

    .line 247
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplr2avp/SeekParameters;->resolveSeekPositionUs(JJJ)J

    move-result-wide v0

    return-wide v0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-wide v1
.end method

.method public getNextChunk(JJLjava/util/List;Lcom/google/android/exoplr2avp/source/chunk/ChunkHolder;)V
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/exoplr2avp/source/chunk/MediaChunk;",
            ">;",
            "Lcom/google/android/exoplr2avp/source/chunk/ChunkHolder;",
            ")V"
        }
    .end annotation

    move-object/from16 v14, p0

    move-wide/from16 v9, p1

    move-object/from16 v15, p6

    .line 308
    iget-object v0, v14, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sub-long v11, p3, v9

    .line 313
    iget-object v0, v14, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    iget-wide v0, v0, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->availabilityStartTimeMs:J

    .line 314
    invoke-static {v0, v1}, Lcom/google/android/exoplr2avp/util/Util;->msToUs(J)J

    move-result-wide v0

    iget-object v2, v14, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    iget v3, v14, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->periodIndex:I

    .line 315
    invoke-virtual {v2, v3}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplr2avp/source/dash/manifest/Period;

    move-result-object v2

    iget-wide v2, v2, Lcom/google/android/exoplr2avp/source/dash/manifest/Period;->startMs:J

    invoke-static {v2, v3}, Lcom/google/android/exoplr2avp/util/Util;->msToUs(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    add-long v0, v0, p3

    .line 318
    iget-object v2, v14, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->playerTrackEmsgHandler:Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;

    if-eqz v2, :cond_1

    .line 319
    invoke-virtual {v2, v0, v1}, Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->maybeRefreshManifestBeforeLoadingNextChunk(J)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 324
    :cond_1
    iget-wide v0, v14, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->elapsedRealtimeOffsetMs:J

    invoke-static {v0, v1}, Lcom/google/android/exoplr2avp/util/Util;->getNowUnixTimeMs(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/exoplr2avp/util/Util;->msToUs(J)J

    move-result-wide v7

    .line 325
    invoke-direct {v14, v7, v8}, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->getNowPeriodTimeUs(J)J

    move-result-wide v24

    .line 326
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v5, 0x1

    if-eqz v0, :cond_2

    move-object/from16 v6, p5

    const/16 v26, 0x0

    goto :goto_0

    :cond_2
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v5

    move-object/from16 v6, p5

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/source/chunk/MediaChunk;

    move-object/from16 v26, v0

    .line 327
    :goto_0
    iget-object v0, v14, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;->length()I

    move-result v3

    new-array v4, v3, [Lcom/google/android/exoplr2avp/source/chunk/MediaChunkIterator;

    const/16 v27, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_5

    .line 329
    iget-object v0, v14, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;

    aget-object v1, v0, v2

    .line 330
    iget-object v0, v1, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplr2avp/source/dash/DashSegmentIndex;

    if-nez v0, :cond_3

    .line 331
    sget-object v0, Lcom/google/android/exoplr2avp/source/chunk/MediaChunkIterator;->EMPTY:Lcom/google/android/exoplr2avp/source/chunk/MediaChunkIterator;

    aput-object v0, v4, v2

    move v13, v2

    move/from16 v28, v3

    move-object/from16 v29, v4

    move-wide/from16 v30, v11

    move-wide v11, v7

    goto :goto_2

    .line 334
    :cond_3
    invoke-virtual {v1, v7, v8}, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;->getFirstAvailableSegmentNum(J)J

    move-result-wide v16

    .line 336
    invoke-virtual {v1, v7, v8}, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;->getLastAvailableSegmentNum(J)J

    move-result-wide v20

    move-object/from16 v0, p0

    move v13, v2

    move-object/from16 v2, v26

    move/from16 v28, v3

    move-object/from16 v29, v4

    move-wide/from16 v3, p3

    move-wide/from16 v5, v16

    move-wide/from16 v30, v11

    move-wide v11, v7

    move-wide/from16 v7, v20

    .line 338
    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->getSegmentNum(Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;Lcom/google/android/exoplr2avp/source/chunk/MediaChunk;JJJ)J

    move-result-wide v18

    cmp-long v0, v18, v16

    if-gez v0, :cond_4

    .line 345
    sget-object v0, Lcom/google/android/exoplr2avp/source/chunk/MediaChunkIterator;->EMPTY:Lcom/google/android/exoplr2avp/source/chunk/MediaChunkIterator;

    aput-object v0, v29, v13

    goto :goto_2

    .line 347
    :cond_4
    invoke-direct {v14, v13}, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->updateSelectedBaseUrl(I)Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;

    move-result-object v17

    .line 348
    new-instance v0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationSegmentIterator;

    move-object/from16 v16, v0

    move-wide/from16 v22, v24

    invoke-direct/range {v16 .. v23}, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationSegmentIterator;-><init>(Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;JJJ)V

    aput-object v0, v29, v13

    :goto_2
    add-int/lit8 v2, v13, 0x1

    move-object/from16 v6, p5

    move-wide v7, v11

    move/from16 v3, v28

    move-object/from16 v4, v29

    move-wide/from16 v11, v30

    const/4 v5, 0x1

    goto :goto_1

    :cond_5
    move-object/from16 v29, v4

    move-wide/from16 v30, v11

    move-wide v11, v7

    .line 355
    invoke-direct {v14, v11, v12, v9, v10}, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->getAvailableLiveDurationUs(JJ)J

    move-result-wide v5

    .line 356
    iget-object v0, v14, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    move-wide/from16 v1, p1

    move-wide/from16 v3, v30

    move-object/from16 v7, p5

    move-object/from16 v8, v29

    invoke-interface/range {v0 .. v8}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;->updateSelectedTrack(JJJLjava/util/List;[Lcom/google/android/exoplr2avp/source/chunk/MediaChunkIterator;)V

    .line 359
    iget-object v0, v14, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    .line 360
    invoke-interface {v0}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;->getSelectedIndex()I

    move-result v0

    invoke-direct {v14, v0}, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->updateSelectedBaseUrl(I)Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;

    move-result-object v9

    .line 361
    iget-object v0, v9, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;->chunkExtractor:Lcom/google/android/exoplr2avp/source/chunk/ChunkExtractor;

    if-eqz v0, :cond_9

    .line 362
    iget-object v0, v9, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;

    .line 365
    iget-object v1, v9, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;->chunkExtractor:Lcom/google/android/exoplr2avp/source/chunk/ChunkExtractor;

    invoke-interface {v1}, Lcom/google/android/exoplr2avp/source/chunk/ChunkExtractor;->getSampleFormats()[Lcom/google/android/exoplr2avp/Format;

    move-result-object v1

    if-nez v1, :cond_6

    .line 366
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;->getInitializationUri()Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;

    move-result-object v1

    move-object v6, v1

    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    .line 368
    :goto_3
    iget-object v1, v9, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplr2avp/source/dash/DashSegmentIndex;

    if-nez v1, :cond_7

    .line 369
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;->getIndexUri()Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;

    move-result-object v0

    move-object v7, v0

    goto :goto_4

    :cond_7
    const/4 v7, 0x0

    :goto_4
    if-nez v6, :cond_8

    if-eqz v7, :cond_9

    .line 373
    :cond_8
    iget-object v2, v14, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->dataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    iget-object v0, v14, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    .line 377
    invoke-interface {v0}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;->getSelectedFormat()Lcom/google/android/exoplr2avp/Format;

    move-result-object v3

    iget-object v0, v14, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    .line 378
    invoke-interface {v0}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;->getSelectionReason()I

    move-result v4

    iget-object v0, v14, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    .line 379
    invoke-interface {v0}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;->getSelectionData()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v9

    .line 374
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->newInitializationChunk(Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;Lcom/google/android/exoplr2avp/upstream/DataSource;Lcom/google/android/exoplr2avp/Format;ILjava/lang/Object;Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;)Lcom/google/android/exoplr2avp/source/chunk/Chunk;

    move-result-object v0

    iput-object v0, v15, Lcom/google/android/exoplr2avp/source/chunk/ChunkHolder;->chunk:Lcom/google/android/exoplr2avp/source/chunk/Chunk;

    return-void

    .line 386
    :cond_9
    invoke-static {v9}, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;->access$000(Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;)J

    move-result-wide v16

    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v10, v16, v18

    if-eqz v10, :cond_a

    const/4 v13, 0x1

    goto :goto_5

    :cond_a
    const/4 v13, 0x0

    .line 389
    :goto_5
    invoke-virtual {v9}, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_b

    .line 391
    iput-boolean v13, v15, Lcom/google/android/exoplr2avp/source/chunk/ChunkHolder;->endOfStream:Z

    return-void

    .line 395
    :cond_b
    invoke-virtual {v9, v11, v12}, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;->getFirstAvailableSegmentNum(J)J

    move-result-wide v20

    .line 396
    invoke-virtual {v9, v11, v12}, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;->getLastAvailableSegmentNum(J)J

    move-result-wide v11

    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v2, v26

    move-wide/from16 v3, p3

    move-wide/from16 v5, v20

    move-wide v7, v11

    .line 398
    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->getSegmentNum(Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;Lcom/google/android/exoplr2avp/source/chunk/MediaChunk;JJJ)J

    move-result-wide v7

    cmp-long v0, v7, v20

    if-gez v0, :cond_c

    .line 406
    new-instance v0, Lcom/google/android/exoplr2avp/source/BehindLiveWindowException;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/source/BehindLiveWindowException;-><init>()V

    iput-object v0, v14, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->fatalError:Ljava/io/IOException;

    return-void

    :cond_c
    cmp-long v0, v7, v11

    if-gtz v0, :cond_11

    .line 410
    iget-boolean v1, v14, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->missingLastSegment:Z

    if-eqz v1, :cond_d

    if-ltz v0, :cond_d

    goto :goto_7

    :cond_d
    if-eqz v13, :cond_e

    .line 417
    invoke-virtual {v9, v7, v8}, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentStartTimeUs(J)J

    move-result-wide v0

    cmp-long v2, v0, v16

    if-ltz v2, :cond_e

    const/4 v0, 0x1

    .line 419
    iput-boolean v0, v15, Lcom/google/android/exoplr2avp/source/chunk/ChunkHolder;->endOfStream:Z

    return-void

    :cond_e
    const/4 v0, 0x1

    .line 423
    iget v1, v14, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->maxSegmentsPerLoad:I

    int-to-long v1, v1

    sub-long/2addr v11, v7

    const-wide/16 v3, 0x1

    add-long/2addr v11, v3

    invoke-static {v1, v2, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    if-eqz v10, :cond_f

    :goto_6
    if-le v2, v0, :cond_f

    int-to-long v5, v2

    add-long/2addr v5, v7

    sub-long/2addr v5, v3

    .line 426
    invoke-virtual {v9, v5, v6}, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentStartTimeUs(J)J

    move-result-wide v5

    cmp-long v1, v5, v16

    if-ltz v1, :cond_f

    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    :cond_f
    move v10, v2

    .line 434
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    move-wide/from16 v18, p3

    .line 435
    :cond_10
    iget-object v2, v14, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->dataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    iget v3, v14, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->trackType:I

    iget-object v0, v14, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    .line 440
    invoke-interface {v0}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;->getSelectedFormat()Lcom/google/android/exoplr2avp/Format;

    move-result-object v4

    iget-object v0, v14, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    .line 441
    invoke-interface {v0}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;->getSelectionReason()I

    move-result v5

    iget-object v0, v14, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    .line 442
    invoke-interface {v0}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;->getSelectionData()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v0, p0

    move-object v1, v9

    move v9, v10

    move-wide/from16 v10, v18

    move-wide/from16 v12, v24

    .line 436
    invoke-virtual/range {v0 .. v13}, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->newMediaChunk(Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;Lcom/google/android/exoplr2avp/upstream/DataSource;ILcom/google/android/exoplr2avp/Format;ILjava/lang/Object;JIJJ)Lcom/google/android/exoplr2avp/source/chunk/Chunk;

    move-result-object v0

    iput-object v0, v15, Lcom/google/android/exoplr2avp/source/chunk/ChunkHolder;->chunk:Lcom/google/android/exoplr2avp/source/chunk/Chunk;

    return-void

    .line 413
    :cond_11
    :goto_7
    iput-boolean v13, v15, Lcom/google/android/exoplr2avp/source/chunk/ChunkHolder;->endOfStream:Z

    return-void
.end method

.method public getPreferredQueueSize(JLjava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/exoplr2avp/source/chunk/MediaChunk;",
            ">;)I"
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->fatalError:Ljava/io/IOException;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;->evaluateQueueSize(JLjava/util/List;)I

    move-result p1

    return p1

    .line 288
    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public maybeThrowError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->fatalError:Ljava/io/IOException;

    if-nez v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->manifestLoaderErrorThrower:Lcom/google/android/exoplr2avp/upstream/LoaderErrorThrower;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/upstream/LoaderErrorThrower;->maybeThrowError()V

    return-void

    .line 279
    :cond_0
    throw v0
.end method

.method protected newInitializationChunk(Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;Lcom/google/android/exoplr2avp/upstream/DataSource;Lcom/google/android/exoplr2avp/Format;ILjava/lang/Object;Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;)Lcom/google/android/exoplr2avp/source/chunk/Chunk;
    .locals 12

    move-object v0, p1

    move-object/from16 v1, p6

    .line 621
    iget-object v2, v0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;

    if-eqz v1, :cond_1

    .line 626
    iget-object v3, v0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Lcom/google/android/exoplr2avp/source/dash/manifest/BaseUrl;

    iget-object v3, v3, Lcom/google/android/exoplr2avp/source/dash/manifest/BaseUrl;->url:Ljava/lang/String;

    move-object/from16 v4, p7

    .line 627
    invoke-virtual {v1, v4, v3}, Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;->attemptMerge(Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;Ljava/lang/String;)Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v3

    goto :goto_0

    :cond_1
    move-object/from16 v4, p7

    move-object v1, v4

    .line 634
    :goto_0
    iget-object v3, v0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Lcom/google/android/exoplr2avp/source/dash/manifest/BaseUrl;

    iget-object v3, v3, Lcom/google/android/exoplr2avp/source/dash/manifest/BaseUrl;->url:Ljava/lang/String;

    const/4 v4, 0x0

    .line 635
    invoke-static {v2, v3, v1, v4}, Lcom/google/android/exoplr2avp/source/dash/DashUtil;->buildDataSpec(Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;Ljava/lang/String;Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;I)Lcom/google/android/exoplr2avp/upstream/DataSpec;

    move-result-object v7

    .line 637
    new-instance v1, Lcom/google/android/exoplr2avp/source/chunk/InitializationChunk;

    iget-object v11, v0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;->chunkExtractor:Lcom/google/android/exoplr2avp/source/chunk/ChunkExtractor;

    move-object v5, v1

    move-object v6, p2

    move-object v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v5 .. v11}, Lcom/google/android/exoplr2avp/source/chunk/InitializationChunk;-><init>(Lcom/google/android/exoplr2avp/upstream/DataSource;Lcom/google/android/exoplr2avp/upstream/DataSpec;Lcom/google/android/exoplr2avp/Format;ILjava/lang/Object;Lcom/google/android/exoplr2avp/source/chunk/ChunkExtractor;)V

    return-object v1
.end method

.method protected newMediaChunk(Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;Lcom/google/android/exoplr2avp/upstream/DataSource;ILcom/google/android/exoplr2avp/Format;ILjava/lang/Object;JIJJ)Lcom/google/android/exoplr2avp/source/chunk/Chunk;
    .locals 24

    move-object/from16 v0, p1

    move-wide/from16 v13, p7

    move-wide/from16 v1, p12

    .line 657
    iget-object v4, v0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;

    .line 658
    invoke-virtual {v0, v13, v14}, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentStartTimeUs(J)J

    move-result-wide v7

    .line 659
    invoke-virtual {v0, v13, v14}, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentUrl(J)Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;

    move-result-object v3

    .line 660
    iget-object v5, v0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;->chunkExtractor:Lcom/google/android/exoplr2avp/source/chunk/ChunkExtractor;

    const/4 v6, 0x0

    const/16 v9, 0x8

    if-nez v5, :cond_1

    .line 661
    invoke-virtual {v0, v13, v14}, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentEndTimeUs(J)J

    move-result-wide v10

    .line 663
    invoke-virtual {v0, v13, v14, v1, v2}, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;->isSegmentAvailableAtFullNetworkSpeed(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v6, 0x8

    .line 667
    :goto_0
    iget-object v0, v0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Lcom/google/android/exoplr2avp/source/dash/manifest/BaseUrl;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/source/dash/manifest/BaseUrl;->url:Ljava/lang/String;

    .line 668
    invoke-static {v4, v0, v3, v6}, Lcom/google/android/exoplr2avp/source/dash/DashUtil;->buildDataSpec(Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;Ljava/lang/String;Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;I)Lcom/google/android/exoplr2avp/upstream/DataSpec;

    move-result-object v2

    .line 670
    new-instance v15, Lcom/google/android/exoplr2avp/source/chunk/SingleSampleMediaChunk;

    move-object v0, v15

    move-object/from16 v1, p2

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-wide v6, v7

    move-wide v8, v10

    move-wide/from16 v10, p7

    move/from16 v12, p3

    move-object/from16 v13, p4

    invoke-direct/range {v0 .. v13}, Lcom/google/android/exoplr2avp/source/chunk/SingleSampleMediaChunk;-><init>(Lcom/google/android/exoplr2avp/upstream/DataSource;Lcom/google/android/exoplr2avp/upstream/DataSpec;Lcom/google/android/exoplr2avp/Format;ILjava/lang/Object;JJJILcom/google/android/exoplr2avp/Format;)V

    return-object v15

    :cond_1
    const/4 v5, 0x1

    move/from16 v10, p9

    const/4 v15, 0x1

    :goto_1
    if-ge v5, v10, :cond_3

    int-to-long v11, v5

    add-long/2addr v11, v13

    .line 684
    invoke-virtual {v0, v11, v12}, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentUrl(J)Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;

    move-result-object v11

    .line 686
    iget-object v12, v0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Lcom/google/android/exoplr2avp/source/dash/manifest/BaseUrl;

    iget-object v12, v12, Lcom/google/android/exoplr2avp/source/dash/manifest/BaseUrl;->url:Ljava/lang/String;

    .line 687
    invoke-virtual {v3, v11, v12}, Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;->attemptMerge(Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;Ljava/lang/String;)Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;

    move-result-object v11

    if-nez v11, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v5, v5, 0x1

    move-object v3, v11

    goto :goto_1

    :cond_3
    :goto_2
    int-to-long v10, v15

    add-long/2addr v10, v13

    const-wide/16 v16, 0x1

    sub-long v10, v10, v16

    .line 696
    invoke-virtual {v0, v10, v11}, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentEndTimeUs(J)J

    move-result-wide v16

    .line 697
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;->access$000(Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;)J

    move-result-wide v18

    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v18, v20

    if-eqz v5, :cond_4

    cmp-long v5, v18, v16

    if-gtz v5, :cond_4

    move-wide/from16 v21, v18

    goto :goto_3

    :cond_4
    move-wide/from16 v21, v20

    .line 703
    :goto_3
    invoke-virtual {v0, v10, v11, v1, v2}, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;->isSegmentAvailableAtFullNetworkSpeed(JJ)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    const/16 v6, 0x8

    .line 706
    :goto_4
    iget-object v1, v0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Lcom/google/android/exoplr2avp/source/dash/manifest/BaseUrl;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/source/dash/manifest/BaseUrl;->url:Ljava/lang/String;

    .line 707
    invoke-static {v4, v1, v3, v6}, Lcom/google/android/exoplr2avp/source/dash/DashUtil;->buildDataSpec(Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;Ljava/lang/String;Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;I)Lcom/google/android/exoplr2avp/upstream/DataSpec;

    move-result-object v3

    .line 709
    iget-wide v1, v4, Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;->presentationTimeOffsetUs:J

    neg-long v1, v1

    move-wide/from16 v18, v1

    .line 710
    new-instance v23, Lcom/google/android/exoplr2avp/source/chunk/ContainerMediaChunk;

    move-object/from16 v1, v23

    iget-object v0, v0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;->chunkExtractor:Lcom/google/android/exoplr2avp/source/chunk/ChunkExtractor;

    move-object/from16 v20, v0

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-wide/from16 v9, v16

    move-wide/from16 v11, p10

    move-wide/from16 v13, v21

    move v0, v15

    move-wide/from16 v15, p7

    move/from16 v17, v0

    invoke-direct/range {v1 .. v20}, Lcom/google/android/exoplr2avp/source/chunk/ContainerMediaChunk;-><init>(Lcom/google/android/exoplr2avp/upstream/DataSource;Lcom/google/android/exoplr2avp/upstream/DataSpec;Lcom/google/android/exoplr2avp/Format;ILjava/lang/Object;JJJJJIJLcom/google/android/exoplr2avp/source/chunk/ChunkExtractor;)V

    return-object v23
.end method

.method public onChunkLoadCompleted(Lcom/google/android/exoplr2avp/source/chunk/Chunk;)V
    .locals 7

    .line 451
    instance-of v0, p1, Lcom/google/android/exoplr2avp/source/chunk/InitializationChunk;

    if-eqz v0, :cond_0

    .line 452
    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplr2avp/source/chunk/InitializationChunk;

    .line 453
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/source/chunk/InitializationChunk;->trackFormat:Lcom/google/android/exoplr2avp/Format;

    invoke-interface {v1, v0}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;->indexOf(Lcom/google/android/exoplr2avp/Format;)I

    move-result v0

    .line 454
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;

    aget-object v1, v1, v0

    .line 458
    iget-object v2, v1, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;->segmentIndex:Lcom/google/android/exoplr2avp/source/dash/DashSegmentIndex;

    if-nez v2, :cond_0

    .line 459
    iget-object v2, v1, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;->chunkExtractor:Lcom/google/android/exoplr2avp/source/chunk/ChunkExtractor;

    invoke-interface {v2}, Lcom/google/android/exoplr2avp/source/chunk/ChunkExtractor;->getChunkIndex()Lcom/google/android/exoplr2avp/extractor/ChunkIndex;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 461
    iget-object v3, p0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;

    new-instance v4, Lcom/google/android/exoplr2avp/source/dash/DashWrappingSegmentIndex;

    iget-object v5, v1, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;

    iget-wide v5, v5, Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;->presentationTimeOffsetUs:J

    invoke-direct {v4, v2, v5, v6}, Lcom/google/android/exoplr2avp/source/dash/DashWrappingSegmentIndex;-><init>(Lcom/google/android/exoplr2avp/extractor/ChunkIndex;J)V

    .line 462
    invoke-virtual {v1, v4}, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;->copyWithNewSegmentIndex(Lcom/google/android/exoplr2avp/source/dash/DashSegmentIndex;)Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;

    move-result-object v1

    aput-object v1, v3, v0

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->playerTrackEmsgHandler:Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;

    if-eqz v0, :cond_1

    .line 469
    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->onChunkLoadCompleted(Lcom/google/android/exoplr2avp/source/chunk/Chunk;)V

    :cond_1
    return-void
.end method

.method public onChunkLoadError(Lcom/google/android/exoplr2avp/source/chunk/Chunk;ZLcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 482
    :cond_0
    iget-object p2, p0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->playerTrackEmsgHandler:Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->onChunkLoadError(Lcom/google/android/exoplr2avp/source/chunk/Chunk;)Z

    move-result p2

    if-eqz p2, :cond_1

    return v1

    .line 486
    :cond_1
    iget-object p2, p0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    iget-boolean p2, p2, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->dynamic:Z

    if-nez p2, :cond_2

    instance-of p2, p1, Lcom/google/android/exoplr2avp/source/chunk/MediaChunk;

    if-eqz p2, :cond_2

    iget-object p2, p3, Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;->exception:Ljava/io/IOException;

    instance-of p2, p2, Lcom/google/android/exoplr2avp/upstream/HttpDataSource$InvalidResponseCodeException;

    if-eqz p2, :cond_2

    iget-object p2, p3, Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;->exception:Ljava/io/IOException;

    check-cast p2, Lcom/google/android/exoplr2avp/upstream/HttpDataSource$InvalidResponseCodeException;

    iget p2, p2, Lcom/google/android/exoplr2avp/upstream/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    const/16 v2, 0x194

    if-ne p2, v2, :cond_2

    .line 490
    iget-object p2, p0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    iget-object v3, p1, Lcom/google/android/exoplr2avp/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplr2avp/Format;

    .line 491
    invoke-interface {v2, v3}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;->indexOf(Lcom/google/android/exoplr2avp/Format;)I

    move-result v2

    aget-object p2, p2, v2

    .line 492
    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentCount()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    .line 494
    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;->getFirstSegmentNum()J

    move-result-wide v4

    add-long/2addr v4, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v4, v2

    .line 495
    move-object p2, p1

    check-cast p2, Lcom/google/android/exoplr2avp/source/chunk/MediaChunk;

    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/source/chunk/MediaChunk;->getNextChunkIndex()J

    move-result-wide v2

    cmp-long p2, v2, v4

    if-lez p2, :cond_2

    .line 496
    iput-boolean v1, p0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->missingLastSegment:Z

    return v1

    .line 502
    :cond_2
    iget-object p2, p0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    iget-object v2, p1, Lcom/google/android/exoplr2avp/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplr2avp/Format;

    invoke-interface {p2, v2}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;->indexOf(Lcom/google/android/exoplr2avp/Format;)I

    move-result p2

    .line 503
    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;

    aget-object p2, v2, p2

    .line 505
    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->baseUrlExclusionList:Lcom/google/android/exoplr2avp/source/dash/BaseUrlExclusionList;

    iget-object v3, p2, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;

    iget-object v3, v3, Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;->baseUrls:Lcom/google/common/collect/ImmutableList;

    .line 506
    invoke-virtual {v2, v3}, Lcom/google/android/exoplr2avp/source/dash/BaseUrlExclusionList;->selectBaseUrl(Ljava/util/List;)Lcom/google/android/exoplr2avp/source/dash/manifest/BaseUrl;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 507
    iget-object v3, p2, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Lcom/google/android/exoplr2avp/source/dash/manifest/BaseUrl;

    invoke-virtual {v3, v2}, Lcom/google/android/exoplr2avp/source/dash/manifest/BaseUrl;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 513
    :cond_3
    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    iget-object v3, p2, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;

    iget-object v3, v3, Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;->baseUrls:Lcom/google/common/collect/ImmutableList;

    .line 514
    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->createFallbackOptions(Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;Ljava/util/List;)Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy$FallbackOptions;

    move-result-object v2

    const/4 v3, 0x2

    .line 515
    invoke-virtual {v2, v3}, Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy$FallbackOptions;->isFallbackAvailable(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 516
    invoke-virtual {v2, v1}, Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy$FallbackOptions;->isFallbackAvailable(I)Z

    move-result v4

    if-nez v4, :cond_4

    return v0

    .line 521
    :cond_4
    invoke-interface {p4, v2, p3}, Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;->getFallbackSelectionFor(Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy$FallbackOptions;Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;)Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy$FallbackSelection;

    move-result-object p3

    if-eqz p3, :cond_7

    .line 522
    iget p4, p3, Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy$FallbackSelection;->type:I

    invoke-virtual {v2, p4}, Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy$FallbackOptions;->isFallbackAvailable(I)Z

    move-result p4

    if-nez p4, :cond_5

    goto :goto_0

    .line 528
    :cond_5
    iget p4, p3, Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy$FallbackSelection;->type:I

    if-ne p4, v3, :cond_6

    .line 529
    iget-object p2, p0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplr2avp/Format;

    .line 531
    invoke-interface {p2, p1}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;->indexOf(Lcom/google/android/exoplr2avp/Format;)I

    move-result p1

    iget-wide p3, p3, Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy$FallbackSelection;->exclusionDurationMs:J

    .line 530
    invoke-interface {p2, p1, p3, p4}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;->blacklist(IJ)Z

    move-result v0

    goto :goto_0

    .line 532
    :cond_6
    iget p1, p3, Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy$FallbackSelection;->type:I

    if-ne p1, v1, :cond_7

    .line 533
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->baseUrlExclusionList:Lcom/google/android/exoplr2avp/source/dash/BaseUrlExclusionList;

    iget-object p2, p2, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Lcom/google/android/exoplr2avp/source/dash/manifest/BaseUrl;

    iget-wide p3, p3, Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy$FallbackSelection;->exclusionDurationMs:J

    invoke-virtual {p1, p2, p3, p4}, Lcom/google/android/exoplr2avp/source/dash/BaseUrlExclusionList;->exclude(Lcom/google/android/exoplr2avp/source/dash/manifest/BaseUrl;J)V

    const/4 v0, 0x1

    :cond_7
    :goto_0
    return v0
.end method

.method public release()V
    .locals 4

    .line 542
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 543
    iget-object v3, v3, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;->chunkExtractor:Lcom/google/android/exoplr2avp/source/chunk/ChunkExtractor;

    if-eqz v3, :cond_0

    .line 545
    invoke-interface {v3}, Lcom/google/android/exoplr2avp/source/chunk/ChunkExtractor;->release()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public shouldCancelLoad(JLcom/google/android/exoplr2avp/source/chunk/Chunk;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/google/android/exoplr2avp/source/chunk/Chunk;",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/exoplr2avp/source/chunk/MediaChunk;",
            ">;)Z"
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->fatalError:Ljava/io/IOException;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;->shouldCancelChunkLoad(JLcom/google/android/exoplr2avp/source/chunk/Chunk;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public updateManifest(Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;I)V
    .locals 5

    .line 257
    :try_start_0
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    .line 258
    iput p2, p0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->periodIndex:I

    .line 259
    invoke-virtual {p1, p2}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide p1

    .line 260
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->getRepresentations()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    .line 261
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 262
    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    invoke-interface {v2, v1}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;->getIndexInTrackGroup(I)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;

    .line 263
    iget-object v3, p0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->representationHolders:[Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;

    aget-object v4, v3, v1

    .line 264
    invoke-virtual {v4, p1, p2, v2}, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;->copyWithNewRepresentation(JLcom/google/android/exoplr2avp/source/dash/manifest/Representation;)Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;

    move-result-object v2

    aput-object v2, v3, v1
    :try_end_0
    .catch Lcom/google/android/exoplr2avp/source/BehindLiveWindowException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 267
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->fatalError:Ljava/io/IOException;

    :cond_0
    return-void
.end method

.method public updateTrackSelection(Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;->trackSelection:Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    return-void
.end method
