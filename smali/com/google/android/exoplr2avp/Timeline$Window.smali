.class public final Lcom/google/android/exoplr2avp/Timeline$Window;
.super Ljava/lang/Object;
.source "Timeline.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/Bundleable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/Timeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Window"
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplr2avp/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplr2avp/Bundleable$Creator<",
            "Lcom/google/android/exoplr2avp/Timeline$Window;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_MEDIA_ITEM:Lcom/google/android/exoplr2avp/MediaItem;

.field private static final FAKE_WINDOW_UID:Ljava/lang/Object;

.field private static final FIELD_DEFAULT_POSITION_US:I = 0x9

.field private static final FIELD_DURATION_US:I = 0xa

.field private static final FIELD_ELAPSED_REALTIME_EPOCH_OFFSET_MS:I = 0x4

.field private static final FIELD_FIRST_PERIOD_INDEX:I = 0xb

.field private static final FIELD_IS_DYNAMIC:I = 0x6

.field private static final FIELD_IS_PLACEHOLDER:I = 0x8

.field private static final FIELD_IS_SEEKABLE:I = 0x5

.field private static final FIELD_LAST_PERIOD_INDEX:I = 0xc

.field private static final FIELD_LIVE_CONFIGURATION:I = 0x7

.field private static final FIELD_MEDIA_ITEM:I = 0x1

.field private static final FIELD_POSITION_IN_FIRST_PERIOD_US:I = 0xd

.field private static final FIELD_PRESENTATION_START_TIME_MS:I = 0x2

.field private static final FIELD_WINDOW_START_TIME_MS:I = 0x3

.field public static final SINGLE_WINDOW_UID:Ljava/lang/Object;


# instance fields
.field public defaultPositionUs:J

.field public durationUs:J

.field public elapsedRealtimeEpochOffsetMs:J

.field public firstPeriodIndex:I

.field public isDynamic:Z

.field public isLive:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public isPlaceholder:Z

.field public isSeekable:Z

.field public lastPeriodIndex:I

.field public liveConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;

.field public manifest:Ljava/lang/Object;

.field public mediaItem:Lcom/google/android/exoplr2avp/MediaItem;

.field public positionInFirstPeriodUs:J

.field public presentationStartTimeMs:J

.field public tag:Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public uid:Ljava/lang/Object;

.field public windowStartTimeMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 156
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/exoplr2avp/Timeline$Window;->SINGLE_WINDOW_UID:Ljava/lang/Object;

    .line 158
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/exoplr2avp/Timeline$Window;->FAKE_WINDOW_UID:Ljava/lang/Object;

    .line 160
    new-instance v0, Lcom/google/android/exoplr2avp/MediaItem$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/MediaItem$Builder;-><init>()V

    const-string v1, "com.google.android.exoplr2avp.Timeline"

    .line 162
    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->setMediaId(Ljava/lang/String;)Lcom/google/android/exoplr2avp/MediaItem$Builder;

    move-result-object v0

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 163
    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplr2avp/MediaItem$Builder;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->build()Lcom/google/android/exoplr2avp/MediaItem;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplr2avp/Timeline$Window;->EMPTY_MEDIA_ITEM:Lcom/google/android/exoplr2avp/MediaItem;

    .line 497
    sget-object v0, Lcom/google/android/exoplr2avp/-$$Lambda$Timeline$Window$93iji5pcQjZymcfCVmqhJN_cSdk;->INSTANCE:Lcom/google/android/exoplr2avp/-$$Lambda$Timeline$Window$93iji5pcQjZymcfCVmqhJN_cSdk;

    sput-object v0, Lcom/google/android/exoplr2avp/Timeline$Window;->CREATOR:Lcom/google/android/exoplr2avp/Bundleable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    sget-object v0, Lcom/google/android/exoplr2avp/Timeline$Window;->SINGLE_WINDOW_UID:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/exoplr2avp/Timeline$Window;->uid:Ljava/lang/Object;

    .line 260
    sget-object v0, Lcom/google/android/exoplr2avp/Timeline$Window;->EMPTY_MEDIA_ITEM:Lcom/google/android/exoplr2avp/MediaItem;

    iput-object v0, p0, Lcom/google/android/exoplr2avp/Timeline$Window;->mediaItem:Lcom/google/android/exoplr2avp/MediaItem;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplr2avp/Timeline$Window;Z)Landroid/os/Bundle;
    .locals 0

    .line 151
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/Timeline$Window;->toBundle(Z)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private static fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplr2avp/Timeline$Window;
    .locals 26

    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 500
    invoke-static {v1}, Lcom/google/android/exoplr2avp/Timeline$Window;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 503
    sget-object v3, Lcom/google/android/exoplr2avp/MediaItem;->CREATOR:Lcom/google/android/exoplr2avp/Bundleable$Creator;

    invoke-interface {v3, v1}, Lcom/google/android/exoplr2avp/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplr2avp/Bundleable;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/MediaItem;

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, v2

    :goto_0
    const/4 v1, 0x2

    .line 506
    invoke-static {v1}, Lcom/google/android/exoplr2avp/Timeline$Window;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 505
    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    const/4 v1, 0x3

    .line 508
    invoke-static {v1}, Lcom/google/android/exoplr2avp/Timeline$Window;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    const/4 v1, 0x4

    .line 511
    invoke-static {v1}, Lcom/google/android/exoplr2avp/Timeline$Window;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    .line 510
    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    const/4 v1, 0x5

    .line 514
    invoke-static {v1}, Lcom/google/android/exoplr2avp/Timeline$Window;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    const/4 v1, 0x6

    .line 516
    invoke-static {v1}, Lcom/google/android/exoplr2avp/Timeline$Window;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    const/4 v1, 0x7

    .line 518
    invoke-static {v1}, Lcom/google/android/exoplr2avp/Timeline$Window;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 522
    sget-object v2, Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;->CREATOR:Lcom/google/android/exoplr2avp/Bundleable$Creator;

    invoke-interface {v2, v1}, Lcom/google/android/exoplr2avp/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplr2avp/Bundleable;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;

    :cond_1
    move-object v15, v2

    const/16 v1, 0x8

    .line 525
    invoke-static {v1}, Lcom/google/android/exoplr2avp/Timeline$Window;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/16 v2, 0x9

    .line 527
    invoke-static {v2}, Lcom/google/android/exoplr2avp/Timeline$Window;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    move-wide/from16 v24, v7

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v16

    const/16 v2, 0xa

    .line 529
    invoke-static {v2}, Lcom/google/android/exoplr2avp/Timeline$Window;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v18

    const/16 v2, 0xb

    .line 531
    invoke-static {v2}, Lcom/google/android/exoplr2avp/Timeline$Window;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v20

    const/16 v2, 0xc

    .line 533
    invoke-static {v2}, Lcom/google/android/exoplr2avp/Timeline$Window;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v21

    const/16 v2, 0xd

    .line 535
    invoke-static {v2}, Lcom/google/android/exoplr2avp/Timeline$Window;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v22

    .line 537
    new-instance v0, Lcom/google/android/exoplr2avp/Timeline$Window;

    move-object v3, v0

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/Timeline$Window;-><init>()V

    .line 538
    sget-object v4, Lcom/google/android/exoplr2avp/Timeline$Window;->FAKE_WINDOW_UID:Ljava/lang/Object;

    const/4 v6, 0x0

    move-wide/from16 v7, v24

    invoke-virtual/range {v3 .. v23}, Lcom/google/android/exoplr2avp/Timeline$Window;->set(Ljava/lang/Object;Lcom/google/android/exoplr2avp/MediaItem;Ljava/lang/Object;JJJZZLcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;JJIIJ)Lcom/google/android/exoplr2avp/Timeline$Window;

    .line 553
    iput-boolean v1, v0, Lcom/google/android/exoplr2avp/Timeline$Window;->isPlaceholder:Z

    return-object v0
.end method

.method private static keyForField(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    .line 558
    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$93iji5pcQjZymcfCVmqhJN_cSdk(Landroid/os/Bundle;)Lcom/google/android/exoplr2avp/Timeline$Window;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplr2avp/Timeline$Window;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplr2avp/Timeline$Window;

    move-result-object p0

    return-object p0
.end method

.method private final toBundle(Z)Landroid/os/Bundle;
    .locals 3

    .line 455
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x1

    .line 457
    invoke-static {v1}, Lcom/google/android/exoplr2avp/Timeline$Window;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 458
    sget-object p1, Lcom/google/android/exoplr2avp/MediaItem;->EMPTY:Lcom/google/android/exoplr2avp/MediaItem;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplr2avp/Timeline$Window;->mediaItem:Lcom/google/android/exoplr2avp/MediaItem;

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/MediaItem;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 456
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 p1, 0x2

    .line 459
    invoke-static {p1}, Lcom/google/android/exoplr2avp/Timeline$Window;->keyForField(I)Ljava/lang/String;

    move-result-object p1

    iget-wide v1, p0, Lcom/google/android/exoplr2avp/Timeline$Window;->presentationStartTimeMs:J

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 p1, 0x3

    .line 460
    invoke-static {p1}, Lcom/google/android/exoplr2avp/Timeline$Window;->keyForField(I)Ljava/lang/String;

    move-result-object p1

    iget-wide v1, p0, Lcom/google/android/exoplr2avp/Timeline$Window;->windowStartTimeMs:J

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 p1, 0x4

    .line 462
    invoke-static {p1}, Lcom/google/android/exoplr2avp/Timeline$Window;->keyForField(I)Ljava/lang/String;

    move-result-object p1

    iget-wide v1, p0, Lcom/google/android/exoplr2avp/Timeline$Window;->elapsedRealtimeEpochOffsetMs:J

    .line 461
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 p1, 0x5

    .line 463
    invoke-static {p1}, Lcom/google/android/exoplr2avp/Timeline$Window;->keyForField(I)Ljava/lang/String;

    move-result-object p1

    iget-boolean v1, p0, Lcom/google/android/exoplr2avp/Timeline$Window;->isSeekable:Z

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 p1, 0x6

    .line 464
    invoke-static {p1}, Lcom/google/android/exoplr2avp/Timeline$Window;->keyForField(I)Ljava/lang/String;

    move-result-object p1

    iget-boolean v1, p0, Lcom/google/android/exoplr2avp/Timeline$Window;->isDynamic:Z

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 465
    iget-object p1, p0, Lcom/google/android/exoplr2avp/Timeline$Window;->liveConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;

    if-eqz p1, :cond_1

    const/4 v1, 0x7

    .line 467
    invoke-static {v1}, Lcom/google/android/exoplr2avp/Timeline$Window;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    const/16 p1, 0x8

    .line 469
    invoke-static {p1}, Lcom/google/android/exoplr2avp/Timeline$Window;->keyForField(I)Ljava/lang/String;

    move-result-object p1

    iget-boolean v1, p0, Lcom/google/android/exoplr2avp/Timeline$Window;->isPlaceholder:Z

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 p1, 0x9

    .line 470
    invoke-static {p1}, Lcom/google/android/exoplr2avp/Timeline$Window;->keyForField(I)Ljava/lang/String;

    move-result-object p1

    iget-wide v1, p0, Lcom/google/android/exoplr2avp/Timeline$Window;->defaultPositionUs:J

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/16 p1, 0xa

    .line 471
    invoke-static {p1}, Lcom/google/android/exoplr2avp/Timeline$Window;->keyForField(I)Ljava/lang/String;

    move-result-object p1

    iget-wide v1, p0, Lcom/google/android/exoplr2avp/Timeline$Window;->durationUs:J

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/16 p1, 0xb

    .line 472
    invoke-static {p1}, Lcom/google/android/exoplr2avp/Timeline$Window;->keyForField(I)Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Lcom/google/android/exoplr2avp/Timeline$Window;->firstPeriodIndex:I

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p1, 0xc

    .line 473
    invoke-static {p1}, Lcom/google/android/exoplr2avp/Timeline$Window;->keyForField(I)Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Lcom/google/android/exoplr2avp/Timeline$Window;->lastPeriodIndex:I

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p1, 0xd

    .line 474
    invoke-static {p1}, Lcom/google/android/exoplr2avp/Timeline$Window;->keyForField(I)Ljava/lang/String;

    move-result-object p1

    iget-wide v1, p0, Lcom/google/android/exoplr2avp/Timeline$Window;->positionInFirstPeriodUs:J

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 373
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_1

    .line 376
    :cond_1
    check-cast p1, Lcom/google/android/exoplr2avp/Timeline$Window;

    .line 377
    iget-object v2, p0, Lcom/google/android/exoplr2avp/Timeline$Window;->uid:Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/android/exoplr2avp/Timeline$Window;->uid:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/exoplr2avp/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplr2avp/Timeline$Window;->mediaItem:Lcom/google/android/exoplr2avp/MediaItem;

    iget-object v3, p1, Lcom/google/android/exoplr2avp/Timeline$Window;->mediaItem:Lcom/google/android/exoplr2avp/MediaItem;

    .line 378
    invoke-static {v2, v3}, Lcom/google/android/exoplr2avp/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplr2avp/Timeline$Window;->manifest:Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/android/exoplr2avp/Timeline$Window;->manifest:Ljava/lang/Object;

    .line 379
    invoke-static {v2, v3}, Lcom/google/android/exoplr2avp/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplr2avp/Timeline$Window;->liveConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;

    iget-object v3, p1, Lcom/google/android/exoplr2avp/Timeline$Window;->liveConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;

    .line 380
    invoke-static {v2, v3}, Lcom/google/android/exoplr2avp/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplr2avp/Timeline$Window;->presentationStartTimeMs:J

    iget-wide v4, p1, Lcom/google/android/exoplr2avp/Timeline$Window;->presentationStartTimeMs:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplr2avp/Timeline$Window;->windowStartTimeMs:J

    iget-wide v4, p1, Lcom/google/android/exoplr2avp/Timeline$Window;->windowStartTimeMs:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplr2avp/Timeline$Window;->elapsedRealtimeEpochOffsetMs:J

    iget-wide v4, p1, Lcom/google/android/exoplr2avp/Timeline$Window;->elapsedRealtimeEpochOffsetMs:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-boolean v2, p0, Lcom/google/android/exoplr2avp/Timeline$Window;->isSeekable:Z

    iget-boolean v3, p1, Lcom/google/android/exoplr2avp/Timeline$Window;->isSeekable:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/android/exoplr2avp/Timeline$Window;->isDynamic:Z

    iget-boolean v3, p1, Lcom/google/android/exoplr2avp/Timeline$Window;->isDynamic:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/android/exoplr2avp/Timeline$Window;->isPlaceholder:Z

    iget-boolean v3, p1, Lcom/google/android/exoplr2avp/Timeline$Window;->isPlaceholder:Z

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplr2avp/Timeline$Window;->defaultPositionUs:J

    iget-wide v4, p1, Lcom/google/android/exoplr2avp/Timeline$Window;->defaultPositionUs:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplr2avp/Timeline$Window;->durationUs:J

    iget-wide v4, p1, Lcom/google/android/exoplr2avp/Timeline$Window;->durationUs:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget v2, p0, Lcom/google/android/exoplr2avp/Timeline$Window;->firstPeriodIndex:I

    iget v3, p1, Lcom/google/android/exoplr2avp/Timeline$Window;->firstPeriodIndex:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/exoplr2avp/Timeline$Window;->lastPeriodIndex:I

    iget v3, p1, Lcom/google/android/exoplr2avp/Timeline$Window;->lastPeriodIndex:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplr2avp/Timeline$Window;->positionInFirstPeriodUs:J

    iget-wide v4, p1, Lcom/google/android/exoplr2avp/Timeline$Window;->positionInFirstPeriodUs:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getCurrentUnixTimeMs()J
    .locals 2

    .line 356
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/Timeline$Window;->elapsedRealtimeEpochOffsetMs:J

    invoke-static {v0, v1}, Lcom/google/android/exoplr2avp/util/Util;->getNowUnixTimeMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultPositionMs()J
    .locals 2

    .line 310
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/Timeline$Window;->defaultPositionUs:J

    invoke-static {v0, v1}, Lcom/google/android/exoplr2avp/util/Util;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultPositionUs()J
    .locals 2

    .line 320
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/Timeline$Window;->defaultPositionUs:J

    return-wide v0
.end method

.method public getDurationMs()J
    .locals 2

    .line 325
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/Timeline$Window;->durationUs:J

    invoke-static {v0, v1}, Lcom/google/android/exoplr2avp/util/Util;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDurationUs()J
    .locals 2

    .line 330
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/Timeline$Window;->durationUs:J

    return-wide v0
.end method

.method public getPositionInFirstPeriodMs()J
    .locals 2

    .line 338
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/Timeline$Window;->positionInFirstPeriodUs:J

    invoke-static {v0, v1}, Lcom/google/android/exoplr2avp/util/Util;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPositionInFirstPeriodUs()J
    .locals 2

    .line 346
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/Timeline$Window;->positionInFirstPeriodUs:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    .line 398
    iget-object v0, p0, Lcom/google/android/exoplr2avp/Timeline$Window;->uid:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0xd9

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 399
    iget-object v0, p0, Lcom/google/android/exoplr2avp/Timeline$Window;->mediaItem:Lcom/google/android/exoplr2avp/MediaItem;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaItem;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 400
    iget-object v0, p0, Lcom/google/android/exoplr2avp/Timeline$Window;->manifest:Ljava/lang/Object;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 401
    iget-object v0, p0, Lcom/google/android/exoplr2avp/Timeline$Window;->liveConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    .line 402
    iget-wide v2, p0, Lcom/google/android/exoplr2avp/Timeline$Window;->presentationStartTimeMs:J

    const/16 v0, 0x20

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x1f

    .line 403
    iget-wide v2, p0, Lcom/google/android/exoplr2avp/Timeline$Window;->windowStartTimeMs:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x1f

    .line 404
    iget-wide v2, p0, Lcom/google/android/exoplr2avp/Timeline$Window;->elapsedRealtimeEpochOffsetMs:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x1f

    .line 407
    iget-boolean v2, p0, Lcom/google/android/exoplr2avp/Timeline$Window;->isSeekable:Z

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    .line 408
    iget-boolean v2, p0, Lcom/google/android/exoplr2avp/Timeline$Window;->isDynamic:Z

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    .line 409
    iget-boolean v2, p0, Lcom/google/android/exoplr2avp/Timeline$Window;->isPlaceholder:Z

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    .line 410
    iget-wide v2, p0, Lcom/google/android/exoplr2avp/Timeline$Window;->defaultPositionUs:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x1f

    .line 411
    iget-wide v2, p0, Lcom/google/android/exoplr2avp/Timeline$Window;->durationUs:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x1f

    .line 412
    iget v2, p0, Lcom/google/android/exoplr2avp/Timeline$Window;->firstPeriodIndex:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    .line 413
    iget v2, p0, Lcom/google/android/exoplr2avp/Timeline$Window;->lastPeriodIndex:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    .line 414
    iget-wide v2, p0, Lcom/google/android/exoplr2avp/Timeline$Window;->positionInFirstPeriodUs:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/2addr v1, v0

    return v1
.end method

.method public isLive()Z
    .locals 4

    .line 363
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/Timeline$Window;->isLive:Z

    iget-object v1, p0, Lcom/google/android/exoplr2avp/Timeline$Window;->liveConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 364
    iget-object v0, p0, Lcom/google/android/exoplr2avp/Timeline$Window;->liveConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    return v2
.end method

.method public set(Ljava/lang/Object;Lcom/google/android/exoplr2avp/MediaItem;Ljava/lang/Object;JJJZZLcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;JJIIJ)Lcom/google/android/exoplr2avp/Timeline$Window;
    .locals 5

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p12

    move-object v3, p1

    .line 280
    iput-object v3, v0, Lcom/google/android/exoplr2avp/Timeline$Window;->uid:Ljava/lang/Object;

    if-eqz v1, :cond_0

    move-object v3, v1

    goto :goto_0

    .line 281
    :cond_0
    sget-object v3, Lcom/google/android/exoplr2avp/Timeline$Window;->EMPTY_MEDIA_ITEM:Lcom/google/android/exoplr2avp/MediaItem;

    :goto_0
    iput-object v3, v0, Lcom/google/android/exoplr2avp/Timeline$Window;->mediaItem:Lcom/google/android/exoplr2avp/MediaItem;

    if-eqz v1, :cond_1

    .line 283
    iget-object v3, v1, Lcom/google/android/exoplr2avp/MediaItem;->localConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    if-eqz v3, :cond_1

    .line 284
    iget-object v1, v1, Lcom/google/android/exoplr2avp/MediaItem;->localConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->tag:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 285
    :goto_1
    iput-object v1, v0, Lcom/google/android/exoplr2avp/Timeline$Window;->tag:Ljava/lang/Object;

    move-object v1, p3

    .line 286
    iput-object v1, v0, Lcom/google/android/exoplr2avp/Timeline$Window;->manifest:Ljava/lang/Object;

    move-wide v3, p4

    .line 287
    iput-wide v3, v0, Lcom/google/android/exoplr2avp/Timeline$Window;->presentationStartTimeMs:J

    move-wide v3, p6

    .line 288
    iput-wide v3, v0, Lcom/google/android/exoplr2avp/Timeline$Window;->windowStartTimeMs:J

    move-wide v3, p8

    .line 289
    iput-wide v3, v0, Lcom/google/android/exoplr2avp/Timeline$Window;->elapsedRealtimeEpochOffsetMs:J

    move v1, p10

    .line 290
    iput-boolean v1, v0, Lcom/google/android/exoplr2avp/Timeline$Window;->isSeekable:Z

    move/from16 v1, p11

    .line 291
    iput-boolean v1, v0, Lcom/google/android/exoplr2avp/Timeline$Window;->isDynamic:Z

    const/4 v1, 0x0

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 292
    :goto_2
    iput-boolean v3, v0, Lcom/google/android/exoplr2avp/Timeline$Window;->isLive:Z

    .line 293
    iput-object v2, v0, Lcom/google/android/exoplr2avp/Timeline$Window;->liveConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;

    move-wide/from16 v2, p13

    .line 294
    iput-wide v2, v0, Lcom/google/android/exoplr2avp/Timeline$Window;->defaultPositionUs:J

    move-wide/from16 v2, p15

    .line 295
    iput-wide v2, v0, Lcom/google/android/exoplr2avp/Timeline$Window;->durationUs:J

    move/from16 v2, p17

    .line 296
    iput v2, v0, Lcom/google/android/exoplr2avp/Timeline$Window;->firstPeriodIndex:I

    move/from16 v2, p18

    .line 297
    iput v2, v0, Lcom/google/android/exoplr2avp/Timeline$Window;->lastPeriodIndex:I

    move-wide/from16 v2, p19

    .line 298
    iput-wide v2, v0, Lcom/google/android/exoplr2avp/Timeline$Window;->positionInFirstPeriodUs:J

    .line 299
    iput-boolean v1, v0, Lcom/google/android/exoplr2avp/Timeline$Window;->isPlaceholder:Z

    return-object v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    .line 488
    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/Timeline$Window;->toBundle(Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
