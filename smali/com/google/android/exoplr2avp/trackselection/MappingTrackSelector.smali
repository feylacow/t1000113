.class public abstract Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector;
.super Lcom/google/android/exoplr2avp/trackselection/TrackSelector;
.source "MappingTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;
    }
.end annotation


# instance fields
.field private currentMappedTrackInfo:Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/trackselection/TrackSelector;-><init>()V

    return-void
.end method

.method private static findRenderer([Lcom/google/android/exoplr2avp/RendererCapabilities;Lcom/google/android/exoplr2avp/source/TrackGroup;[IZ)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 496
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 499
    :goto_0
    array-length v6, p0

    if-ge v3, v6, :cond_4

    .line 500
    aget-object v6, p0, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 502
    :goto_1
    iget v9, p1, Lcom/google/android/exoplr2avp/source/TrackGroup;->length:I

    if-ge v7, v9, :cond_0

    .line 506
    invoke-virtual {p1, v7}, Lcom/google/android/exoplr2avp/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplr2avp/Format;

    move-result-object v9

    invoke-interface {v6, v9}, Lcom/google/android/exoplr2avp/RendererCapabilities;->supportsFormat(Lcom/google/android/exoplr2avp/Format;)I

    move-result v9

    .line 505
    invoke-static {v9}, Lcom/google/android/exoplr2avp/RendererCapabilities$-CC;->getFormatSupport(I)I

    move-result v9

    .line 507
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 509
    :cond_0
    aget v6, p2, v3

    if-nez v6, :cond_1

    const/4 v6, 0x1

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    :goto_2
    if-gt v8, v4, :cond_2

    if-ne v8, v4, :cond_3

    if-eqz p3, :cond_3

    if-nez v5, :cond_3

    if-eqz v6, :cond_3

    :cond_2
    move v0, v3

    move v5, v6

    move v4, v8

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method private static getFormatSupport(Lcom/google/android/exoplr2avp/RendererCapabilities;Lcom/google/android/exoplr2avp/source/TrackGroup;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 534
    iget v0, p1, Lcom/google/android/exoplr2avp/source/TrackGroup;->length:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 535
    :goto_0
    iget v2, p1, Lcom/google/android/exoplr2avp/source/TrackGroup;->length:I

    if-ge v1, v2, :cond_0

    .line 536
    invoke-virtual {p1, v1}, Lcom/google/android/exoplr2avp/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplr2avp/Format;

    move-result-object v2

    invoke-interface {p0, v2}, Lcom/google/android/exoplr2avp/RendererCapabilities;->supportsFormat(Lcom/google/android/exoplr2avp/Format;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static getMixedMimeTypeAdaptationSupports([Lcom/google/android/exoplr2avp/RendererCapabilities;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 552
    array-length v0, p0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 554
    aget-object v3, p0, v2

    invoke-interface {v3}, Lcom/google/android/exoplr2avp/RendererCapabilities;->supportsMixedMimeTypeAdaptation()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public final getCurrentMappedTrackInfo()Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector;->currentMappedTrackInfo:Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;

    return-object v0
.end method

.method public final onSelectionActivated(Ljava/lang/Object;)V
    .locals 0

    .line 340
    check-cast p1, Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector;->currentMappedTrackInfo:Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;

    return-void
.end method

.method protected abstract selectTracks(Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplr2avp/Timeline;)Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;",
            "[[[I[I",
            "Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;",
            "Lcom/google/android/exoplr2avp/Timeline;",
            ")",
            "Landroid/util/Pair<",
            "[",
            "Lcom/google/android/exoplr2avp/RendererConfiguration;",
            "[",
            "Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation
.end method

.method public final selectTracks([Lcom/google/android/exoplr2avp/RendererCapabilities;Lcom/google/android/exoplr2avp/source/TrackGroupArray;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplr2avp/Timeline;)Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    move-object v0, p1

    move-object/from16 v1, p2

    .line 353
    array-length v2, v0

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [I

    .line 354
    array-length v4, v0

    add-int/2addr v4, v3

    new-array v5, v4, [[Lcom/google/android/exoplr2avp/source/TrackGroup;

    .line 355
    array-length v6, v0

    add-int/2addr v6, v3

    new-array v6, v6, [[[I

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v4, :cond_0

    .line 357
    iget v9, v1, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->length:I

    new-array v9, v9, [Lcom/google/android/exoplr2avp/source/TrackGroup;

    aput-object v9, v5, v8

    .line 358
    iget v9, v1, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->length:I

    new-array v9, v9, [[I

    aput-object v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 364
    :cond_0
    invoke-static {p1}, Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector;->getMixedMimeTypeAdaptationSupports([Lcom/google/android/exoplr2avp/RendererCapabilities;)[I

    move-result-object v4

    const/4 v8, 0x0

    .line 368
    :goto_1
    iget v9, v1, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->length:I

    if-ge v8, v9, :cond_3

    .line 369
    invoke-virtual {v1, v8}, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->get(I)Lcom/google/android/exoplr2avp/source/TrackGroup;

    move-result-object v9

    .line 371
    iget v10, v9, Lcom/google/android/exoplr2avp/source/TrackGroup;->type:I

    const/4 v11, 0x5

    if-ne v10, v11, :cond_1

    const/4 v10, 0x1

    goto :goto_2

    :cond_1
    const/4 v10, 0x0

    .line 373
    :goto_2
    invoke-static {p1, v9, v2, v10}, Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector;->findRenderer([Lcom/google/android/exoplr2avp/RendererCapabilities;Lcom/google/android/exoplr2avp/source/TrackGroup;[IZ)I

    move-result v10

    .line 378
    array-length v11, v0

    if-ne v10, v11, :cond_2

    .line 379
    iget v11, v9, Lcom/google/android/exoplr2avp/source/TrackGroup;->length:I

    new-array v11, v11, [I

    goto :goto_3

    .line 380
    :cond_2
    aget-object v11, v0, v10

    invoke-static {v11, v9}, Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector;->getFormatSupport(Lcom/google/android/exoplr2avp/RendererCapabilities;Lcom/google/android/exoplr2avp/source/TrackGroup;)[I

    move-result-object v11

    .line 382
    :goto_3
    aget v12, v2, v10

    .line 383
    aget-object v13, v5, v10

    aput-object v9, v13, v12

    .line 384
    aget-object v9, v6, v10

    aput-object v11, v9, v12

    .line 385
    aget v9, v2, v10

    add-int/2addr v9, v3

    aput v9, v2, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 389
    :cond_3
    array-length v1, v0

    new-array v10, v1, [Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    .line 390
    array-length v1, v0

    new-array v8, v1, [Ljava/lang/String;

    .line 391
    array-length v1, v0

    new-array v9, v1, [I

    .line 392
    :goto_4
    array-length v1, v0

    if-ge v7, v1, :cond_4

    .line 393
    aget v1, v2, v7

    .line 394
    new-instance v3, Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    aget-object v11, v5, v7

    .line 396
    invoke-static {v11, v1}, Lcom/google/android/exoplr2avp/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lcom/google/android/exoplr2avp/source/TrackGroup;

    invoke-direct {v3, v11}, Lcom/google/android/exoplr2avp/source/TrackGroupArray;-><init>([Lcom/google/android/exoplr2avp/source/TrackGroup;)V

    aput-object v3, v10, v7

    .line 397
    aget-object v3, v6, v7

    .line 398
    invoke-static {v3, v1}, Lcom/google/android/exoplr2avp/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    aput-object v1, v6, v7

    .line 399
    aget-object v1, v0, v7

    invoke-interface {v1}, Lcom/google/android/exoplr2avp/RendererCapabilities;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v7

    .line 400
    aget-object v1, v0, v7

    invoke-interface {v1}, Lcom/google/android/exoplr2avp/RendererCapabilities;->getTrackType()I

    move-result v1

    aput v1, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 404
    :cond_4
    array-length v1, v0

    aget v1, v2, v1

    .line 405
    new-instance v13, Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    array-length v0, v0

    aget-object v0, v5, v0

    .line 407
    invoke-static {v0, v1}, Lcom/google/android/exoplr2avp/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplr2avp/source/TrackGroup;

    invoke-direct {v13, v0}, Lcom/google/android/exoplr2avp/source/TrackGroupArray;-><init>([Lcom/google/android/exoplr2avp/source/TrackGroup;)V

    .line 411
    new-instance v0, Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-object v7, v0

    move-object v11, v4

    move-object v12, v6

    invoke-direct/range {v7 .. v13}, Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;-><init>([Ljava/lang/String;[I[Lcom/google/android/exoplr2avp/source/TrackGroupArray;[I[[[ILcom/google/android/exoplr2avp/source/TrackGroupArray;)V

    move-object v7, p0

    move-object v8, v0

    move-object v9, v6

    move-object v10, v4

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    .line 421
    invoke-virtual/range {v7 .. v12}, Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector;->selectTracks(Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplr2avp/Timeline;)Landroid/util/Pair;

    move-result-object v1

    .line 428
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [Lcom/google/android/exoplr2avp/trackselection/TrackSelection;

    invoke-static {v0, v2}, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionUtil;->buildTracks(Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;[Lcom/google/android/exoplr2avp/trackselection/TrackSelection;)Lcom/google/android/exoplr2avp/Tracks;

    move-result-object v2

    .line 430
    new-instance v3, Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, [Lcom/google/android/exoplr2avp/RendererConfiguration;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    invoke-direct {v3, v4, v1, v2, v0}, Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;-><init>([Lcom/google/android/exoplr2avp/RendererConfiguration;[Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;Lcom/google/android/exoplr2avp/Tracks;Ljava/lang/Object;)V

    return-object v3
.end method
