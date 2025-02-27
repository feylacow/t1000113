.class final Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$DashTimeline;
.super Lcom/google/android/exoplr2avp/Timeline;
.source "DashMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DashTimeline"
.end annotation


# instance fields
.field private final elapsedRealtimeEpochOffsetMs:J

.field private final firstPeriodId:I

.field private final liveConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;

.field private final manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

.field private final mediaItem:Lcom/google/android/exoplr2avp/MediaItem;

.field private final offsetInFirstPeriodUs:J

.field private final presentationStartTimeMs:J

.field private final windowDefaultStartPositionUs:J

.field private final windowDurationUs:J

.field private final windowStartTimeMs:J


# direct methods
.method public constructor <init>(JJJIJJJLcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;Lcom/google/android/exoplr2avp/MediaItem;Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;)V
    .locals 7

    move-object v0, p0

    move-object/from16 v1, p14

    move-object/from16 v2, p16

    .line 1157
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/Timeline;-><init>()V

    .line 1158
    iget-boolean v3, v1, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->dynamic:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-ne v3, v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-static {v4}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    move-wide v3, p1

    .line 1159
    iput-wide v3, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$DashTimeline;->presentationStartTimeMs:J

    move-wide v3, p3

    .line 1160
    iput-wide v3, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$DashTimeline;->windowStartTimeMs:J

    move-wide v3, p5

    .line 1161
    iput-wide v3, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$DashTimeline;->elapsedRealtimeEpochOffsetMs:J

    move v3, p7

    .line 1162
    iput v3, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$DashTimeline;->firstPeriodId:I

    move-wide v3, p8

    .line 1163
    iput-wide v3, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$DashTimeline;->offsetInFirstPeriodUs:J

    move-wide/from16 v3, p10

    .line 1164
    iput-wide v3, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$DashTimeline;->windowDurationUs:J

    move-wide/from16 v3, p12

    .line 1165
    iput-wide v3, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$DashTimeline;->windowDefaultStartPositionUs:J

    .line 1166
    iput-object v1, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    move-object/from16 v1, p15

    .line 1167
    iput-object v1, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$DashTimeline;->mediaItem:Lcom/google/android/exoplr2avp/MediaItem;

    .line 1168
    iput-object v2, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$DashTimeline;->liveConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;

    return-void
.end method

.method private getAdjustedWindowDefaultStartPositionUs(J)J
    .locals 10

    .line 1228
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$DashTimeline;->windowDefaultStartPositionUs:J

    .line 1229
    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    invoke-static {v2}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$DashTimeline;->isMovingLiveWindow(Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;)Z

    move-result v2

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_1

    add-long/2addr v0, p1

    .line 1234
    iget-wide p1, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$DashTimeline;->windowDurationUs:J

    cmp-long v4, v0, p1

    if-lez v4, :cond_1

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    return-wide p1

    .line 1241
    :cond_1
    iget-wide p1, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$DashTimeline;->offsetInFirstPeriodUs:J

    add-long/2addr p1, v0

    .line 1242
    iget-object v4, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v6

    const/4 v4, 0x0

    .line 1243
    :goto_0
    iget-object v8, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    invoke-virtual {v8}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v4, v8, :cond_2

    cmp-long v8, p1, v6

    if-ltz v8, :cond_2

    sub-long/2addr p1, v6

    add-int/lit8 v4, v4, 0x1

    .line 1247
    iget-object v6, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    invoke-virtual {v6, v4}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v6

    goto :goto_0

    .line 1249
    :cond_2
    iget-object v8, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    .line 1250
    invoke-virtual {v8, v4}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplr2avp/source/dash/manifest/Period;

    move-result-object v4

    const/4 v8, 0x2

    .line 1251
    invoke-virtual {v4, v8}, Lcom/google/android/exoplr2avp/source/dash/manifest/Period;->getAdaptationSetIndex(I)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_3

    return-wide v0

    .line 1259
    :cond_3
    iget-object v4, v4, Lcom/google/android/exoplr2avp/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    .line 1260
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplr2avp/source/dash/manifest/AdaptationSet;

    iget-object v4, v4, Lcom/google/android/exoplr2avp/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;

    invoke-virtual {v4}, Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;->getIndex()Lcom/google/android/exoplr2avp/source/dash/DashSegmentIndex;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1261
    invoke-interface {v4, v6, v7}, Lcom/google/android/exoplr2avp/source/dash/DashSegmentIndex;->getSegmentCount(J)J

    move-result-wide v8

    cmp-long v5, v8, v2

    if-nez v5, :cond_4

    goto :goto_1

    .line 1265
    :cond_4
    invoke-interface {v4, p1, p2, v6, v7}, Lcom/google/android/exoplr2avp/source/dash/DashSegmentIndex;->getSegmentNum(JJ)J

    move-result-wide v2

    .line 1267
    invoke-interface {v4, v2, v3}, Lcom/google/android/exoplr2avp/source/dash/DashSegmentIndex;->getTimeUs(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    sub-long/2addr v0, p1

    :cond_5
    :goto_1
    return-wide v0
.end method

.method private static isMovingLiveWindow(Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;)Z
    .locals 5

    .line 1278
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->dynamic:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->minUpdatePeriodMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->durationMs:J

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getIndexOfPeriod(Ljava/lang/Object;)I
    .locals 2

    .line 1219
    instance-of v0, p1, Ljava/lang/Integer;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 1222
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1223
    iget v0, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$DashTimeline;->firstPeriodId:I

    sub-int/2addr p1, v0

    if-ltz p1, :cond_2

    .line 1224
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$DashTimeline;->getPeriodCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, p1

    :cond_2
    :goto_0
    return v1
.end method

.method public getPeriod(ILcom/google/android/exoplr2avp/Timeline$Period;Z)Lcom/google/android/exoplr2avp/Timeline$Period;
    .locals 11

    .line 1178
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$DashTimeline;->getPeriodCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkIndex(III)I

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 1179
    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    invoke-virtual {v2, p1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplr2avp/source/dash/manifest/Period;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/exoplr2avp/source/dash/manifest/Period;->id:Ljava/lang/String;

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object v4, v0

    :goto_0
    if-eqz p3, :cond_1

    .line 1180
    iget p3, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$DashTimeline;->firstPeriodId:I

    add-int/2addr p3, p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_1
    move-object v5, v0

    const/4 v6, 0x0

    .line 1181
    iget-object p3, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    .line 1185
    invoke-virtual {p3, p1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v7

    iget-object p3, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    .line 1186
    invoke-virtual {p3, p1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplr2avp/source/dash/manifest/Period;

    move-result-object p1

    iget-wide v2, p1, Lcom/google/android/exoplr2avp/source/dash/manifest/Period;->startMs:J

    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplr2avp/source/dash/manifest/Period;

    move-result-object p1

    iget-wide v0, p1, Lcom/google/android/exoplr2avp/source/dash/manifest/Period;->startMs:J

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Lcom/google/android/exoplr2avp/util/Util;->msToUs(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$DashTimeline;->offsetInFirstPeriodUs:J

    sub-long v9, v0, v2

    move-object v3, p2

    .line 1181
    invoke-virtual/range {v3 .. v10}, Lcom/google/android/exoplr2avp/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJ)Lcom/google/android/exoplr2avp/Timeline$Period;

    move-result-object p1

    return-object p1
.end method

.method public getPeriodCount()I
    .locals 1

    .line 1173
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v0

    return v0
.end method

.method public getUidOfPeriod(I)Ljava/lang/Object;
    .locals 2

    .line 1273
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$DashTimeline;->getPeriodCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkIndex(III)I

    .line 1274
    iget v0, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$DashTimeline;->firstPeriodId:I

    add-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getWindow(ILcom/google/android/exoplr2avp/Timeline$Window;J)Lcom/google/android/exoplr2avp/Timeline$Window;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    const/4 v11, 0x1

    move/from16 v3, p1

    .line 1197
    invoke-static {v3, v2, v11}, Lcom/google/android/exoplr2avp/util/Assertions;->checkIndex(III)I

    move-wide/from16 v2, p3

    .line 1199
    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$DashTimeline;->getAdjustedWindowDefaultStartPositionUs(J)J

    move-result-wide v14

    .line 1200
    sget-object v2, Lcom/google/android/exoplr2avp/Timeline$Window;->SINGLE_WINDOW_UID:Ljava/lang/Object;

    iget-object v3, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$DashTimeline;->mediaItem:Lcom/google/android/exoplr2avp/MediaItem;

    iget-object v12, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    move-object v4, v12

    iget-wide v5, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$DashTimeline;->presentationStartTimeMs:J

    iget-wide v7, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$DashTimeline;->windowStartTimeMs:J

    iget-wide v9, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$DashTimeline;->elapsedRealtimeEpochOffsetMs:J

    .line 1208
    invoke-static {v12}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$DashTimeline;->isMovingLiveWindow(Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;)Z

    move-result v12

    iget-object v13, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$DashTimeline;->liveConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;

    move/from16 p1, v12

    iget-wide v11, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$DashTimeline;->windowDurationUs:J

    move-wide/from16 v16, v11

    .line 1213
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$DashTimeline;->getPeriodCount()I

    move-result v11

    const/4 v12, 0x1

    add-int/lit8 v19, v11, -0x1

    iget-wide v11, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$DashTimeline;->offsetInFirstPeriodUs:J

    move-wide/from16 v20, v11

    const/4 v11, 0x1

    const/16 v18, 0x0

    move/from16 v12, p1

    .line 1200
    invoke-virtual/range {v1 .. v21}, Lcom/google/android/exoplr2avp/Timeline$Window;->set(Ljava/lang/Object;Lcom/google/android/exoplr2avp/MediaItem;Ljava/lang/Object;JJJZZLcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;JJIIJ)Lcom/google/android/exoplr2avp/Timeline$Window;

    move-result-object v1

    return-object v1
.end method

.method public getWindowCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
