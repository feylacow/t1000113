.class public final Lcom/google/android/exoplr2avp/source/MaskingMediaSource$PlaceholderTimeline;
.super Lcom/google/android/exoplr2avp/Timeline;
.source "MaskingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/source/MaskingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaceholderTimeline"
.end annotation


# instance fields
.field private final mediaItem:Lcom/google/android/exoplr2avp/MediaItem;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/MediaItem;)V
    .locals 0

    .line 350
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/Timeline;-><init>()V

    .line 351
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/MaskingMediaSource$PlaceholderTimeline;->mediaItem:Lcom/google/android/exoplr2avp/MediaItem;

    return-void
.end method


# virtual methods
.method public getIndexOfPeriod(Ljava/lang/Object;)I
    .locals 1

    .line 401
    sget-object v0, Lcom/google/android/exoplr2avp/source/MaskingMediaSource$MaskingTimeline;->MASKING_EXTERNAL_PERIOD_UID:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public getPeriod(ILcom/google/android/exoplr2avp/Timeline$Period;Z)Lcom/google/android/exoplr2avp/Timeline$Period;
    .locals 11

    const/4 p1, 0x0

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    .line 389
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    if-eqz p3, :cond_1

    .line 390
    sget-object p1, Lcom/google/android/exoplr2avp/source/MaskingMediaSource$MaskingTimeline;->MASKING_EXTERNAL_PERIOD_UID:Ljava/lang/Object;

    :cond_1
    move-object v3, p1

    const/4 v4, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v7, 0x0

    sget-object v9, Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;->NONE:Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;

    const/4 v10, 0x1

    move-object v1, p2

    .line 388
    invoke-virtual/range {v1 .. v10}, Lcom/google/android/exoplr2avp/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJLcom/google/android/exoplr2avp/source/ads/AdPlaybackState;Z)Lcom/google/android/exoplr2avp/Timeline$Period;

    return-object p2
.end method

.method public getPeriodCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getUidOfPeriod(I)Ljava/lang/Object;
    .locals 0

    .line 406
    sget-object p1, Lcom/google/android/exoplr2avp/source/MaskingMediaSource$MaskingTimeline;->MASKING_EXTERNAL_PERIOD_UID:Ljava/lang/Object;

    return-object p1
.end method

.method public getWindow(ILcom/google/android/exoplr2avp/Timeline$Window;J)Lcom/google/android/exoplr2avp/Timeline$Window;
    .locals 21

    move-object/from16 v15, p2

    move-object/from16 v0, p2

    .line 361
    sget-object v1, Lcom/google/android/exoplr2avp/Timeline$Window;->SINGLE_WINDOW_UID:Ljava/lang/Object;

    move-object/from16 v13, p0

    iget-object v2, v13, Lcom/google/android/exoplr2avp/source/MaskingMediaSource$PlaceholderTimeline;->mediaItem:Lcom/google/android/exoplr2avp/MediaItem;

    const/4 v3, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const-wide/16 v16, 0x0

    move-wide/from16 v13, v16

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    move-wide/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    invoke-virtual/range {v0 .. v20}, Lcom/google/android/exoplr2avp/Timeline$Window;->set(Ljava/lang/Object;Lcom/google/android/exoplr2avp/MediaItem;Ljava/lang/Object;JJJZZLcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;JJIIJ)Lcom/google/android/exoplr2avp/Timeline$Window;

    const/4 v0, 0x1

    move-object/from16 v1, p2

    .line 377
    iput-boolean v0, v1, Lcom/google/android/exoplr2avp/Timeline$Window;->isPlaceholder:Z

    return-object v1
.end method

.method public getWindowCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
