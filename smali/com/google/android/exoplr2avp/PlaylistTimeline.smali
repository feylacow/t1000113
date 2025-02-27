.class final Lcom/google/android/exoplr2avp/PlaylistTimeline;
.super Lcom/google/android/exoplr2avp/AbstractConcatenatedTimeline;
.source "PlaylistTimeline.java"


# instance fields
.field private final childIndexByUid:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final firstPeriodInChildIndices:[I

.field private final firstWindowInChildIndices:[I

.field private final periodCount:I

.field private final timelines:[Lcom/google/android/exoplr2avp/Timeline;

.field private final uids:[Ljava/lang/Object;

.field private final windowCount:I


# direct methods
.method public constructor <init>(Ljava/util/Collection;Lcom/google/android/exoplr2avp/source/ShuffleOrder;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/google/android/exoplr2avp/MediaSourceInfoHolder;",
            ">;",
            "Lcom/google/android/exoplr2avp/source/ShuffleOrder;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, v0, p2}, Lcom/google/android/exoplr2avp/AbstractConcatenatedTimeline;-><init>(ZLcom/google/android/exoplr2avp/source/ShuffleOrder;)V

    .line 41
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p2

    .line 42
    new-array v1, p2, [I

    iput-object v1, p0, Lcom/google/android/exoplr2avp/PlaylistTimeline;->firstPeriodInChildIndices:[I

    .line 43
    new-array v1, p2, [I

    iput-object v1, p0, Lcom/google/android/exoplr2avp/PlaylistTimeline;->firstWindowInChildIndices:[I

    .line 44
    new-array v1, p2, [Lcom/google/android/exoplr2avp/Timeline;

    iput-object v1, p0, Lcom/google/android/exoplr2avp/PlaylistTimeline;->timelines:[Lcom/google/android/exoplr2avp/Timeline;

    .line 45
    new-array p2, p2, [Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/exoplr2avp/PlaylistTimeline;->uids:[Ljava/lang/Object;

    .line 46
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplr2avp/PlaylistTimeline;->childIndexByUid:Ljava/util/HashMap;

    .line 50
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplr2avp/MediaSourceInfoHolder;

    .line 51
    iget-object v3, p0, Lcom/google/android/exoplr2avp/PlaylistTimeline;->timelines:[Lcom/google/android/exoplr2avp/Timeline;

    invoke-interface {v2}, Lcom/google/android/exoplr2avp/MediaSourceInfoHolder;->getTimeline()Lcom/google/android/exoplr2avp/Timeline;

    move-result-object v4

    aput-object v4, v3, v1

    .line 52
    iget-object v3, p0, Lcom/google/android/exoplr2avp/PlaylistTimeline;->firstWindowInChildIndices:[I

    aput v0, v3, v1

    .line 53
    iget-object v3, p0, Lcom/google/android/exoplr2avp/PlaylistTimeline;->firstPeriodInChildIndices:[I

    aput p2, v3, v1

    .line 54
    iget-object v3, p0, Lcom/google/android/exoplr2avp/PlaylistTimeline;->timelines:[Lcom/google/android/exoplr2avp/Timeline;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/android/exoplr2avp/Timeline;->getWindowCount()I

    move-result v3

    add-int/2addr v0, v3

    .line 55
    iget-object v3, p0, Lcom/google/android/exoplr2avp/PlaylistTimeline;->timelines:[Lcom/google/android/exoplr2avp/Timeline;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodCount()I

    move-result v3

    add-int/2addr p2, v3

    .line 56
    iget-object v3, p0, Lcom/google/android/exoplr2avp/PlaylistTimeline;->uids:[Ljava/lang/Object;

    invoke-interface {v2}, Lcom/google/android/exoplr2avp/MediaSourceInfoHolder;->getUid()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v3, v1

    .line 57
    iget-object v2, p0, Lcom/google/android/exoplr2avp/PlaylistTimeline;->childIndexByUid:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/google/android/exoplr2avp/PlaylistTimeline;->uids:[Ljava/lang/Object;

    aget-object v3, v3, v1

    add-int/lit8 v4, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v4

    goto :goto_0

    .line 59
    :cond_0
    iput v0, p0, Lcom/google/android/exoplr2avp/PlaylistTimeline;->windowCount:I

    .line 60
    iput p2, p0, Lcom/google/android/exoplr2avp/PlaylistTimeline;->periodCount:I

    return-void
.end method


# virtual methods
.method protected getChildIndexByChildUid(Ljava/lang/Object;)I
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/google/android/exoplr2avp/PlaylistTimeline;->childIndexByUid:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    return p1
.end method

.method protected getChildIndexByPeriodIndex(I)I
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/google/android/exoplr2avp/PlaylistTimeline;->firstPeriodInChildIndices:[I

    add-int/lit8 p1, p1, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, v1}, Lcom/google/android/exoplr2avp/util/Util;->binarySearchFloor([IIZZ)I

    move-result p1

    return p1
.end method

.method protected getChildIndexByWindowIndex(I)I
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/google/android/exoplr2avp/PlaylistTimeline;->firstWindowInChildIndices:[I

    add-int/lit8 p1, p1, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, v1}, Lcom/google/android/exoplr2avp/util/Util;->binarySearchFloor([IIZZ)I

    move-result p1

    return p1
.end method

.method getChildTimelines()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/Timeline;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/google/android/exoplr2avp/PlaylistTimeline;->timelines:[Lcom/google/android/exoplr2avp/Timeline;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getChildUidByChildIndex(I)Ljava/lang/Object;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/google/android/exoplr2avp/PlaylistTimeline;->uids:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method protected getFirstPeriodIndexByChildIndex(I)I
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/google/android/exoplr2avp/PlaylistTimeline;->firstPeriodInChildIndices:[I

    aget p1, v0, p1

    return p1
.end method

.method protected getFirstWindowIndexByChildIndex(I)I
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/google/android/exoplr2avp/PlaylistTimeline;->firstWindowInChildIndices:[I

    aget p1, v0, p1

    return p1
.end method

.method public getPeriodCount()I
    .locals 1

    .line 111
    iget v0, p0, Lcom/google/android/exoplr2avp/PlaylistTimeline;->periodCount:I

    return v0
.end method

.method protected getTimelineByChildIndex(I)Lcom/google/android/exoplr2avp/Timeline;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/google/android/exoplr2avp/PlaylistTimeline;->timelines:[Lcom/google/android/exoplr2avp/Timeline;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getWindowCount()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/google/android/exoplr2avp/PlaylistTimeline;->windowCount:I

    return v0
.end method
