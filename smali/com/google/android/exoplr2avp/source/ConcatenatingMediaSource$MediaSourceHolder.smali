.class final Lcom/google/android/exoplr2avp/source/ConcatenatingMediaSource$MediaSourceHolder;
.super Ljava/lang/Object;
.source "ConcatenatingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/source/ConcatenatingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MediaSourceHolder"
.end annotation


# instance fields
.field public final activeMediaPeriodIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;",
            ">;"
        }
    .end annotation
.end field

.field public childIndex:I

.field public firstWindowIndexInChild:I

.field public isRemoved:Z

.field public final mediaSource:Lcom/google/android/exoplr2avp/source/MaskingMediaSource;

.field public final uid:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/source/MediaSource;Z)V
    .locals 1

    .line 881
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 882
    new-instance v0, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;-><init>(Lcom/google/android/exoplr2avp/source/MediaSource;Z)V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/source/ConcatenatingMediaSource$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplr2avp/source/MaskingMediaSource;

    .line 883
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/ConcatenatingMediaSource$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/List;

    .line 884
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/ConcatenatingMediaSource$MediaSourceHolder;->uid:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public reset(II)V
    .locals 0

    .line 888
    iput p1, p0, Lcom/google/android/exoplr2avp/source/ConcatenatingMediaSource$MediaSourceHolder;->childIndex:I

    .line 889
    iput p2, p0, Lcom/google/android/exoplr2avp/source/ConcatenatingMediaSource$MediaSourceHolder;->firstWindowIndexInChild:I

    const/4 p1, 0x0

    .line 890
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/source/ConcatenatingMediaSource$MediaSourceHolder;->isRemoved:Z

    .line 891
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/ConcatenatingMediaSource$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method
