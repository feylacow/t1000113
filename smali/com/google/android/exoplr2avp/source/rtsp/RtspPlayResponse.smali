.class final Lcom/google/android/exoplr2avp/source/rtsp/RtspPlayResponse;
.super Ljava/lang/Object;
.source "RtspPlayResponse.java"


# instance fields
.field public final sessionTiming:Lcom/google/android/exoplr2avp/source/rtsp/RtspSessionTiming;

.field public final status:I

.field public final trackTimingList:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplr2avp/source/rtsp/RtspTrackTiming;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/google/android/exoplr2avp/source/rtsp/RtspSessionTiming;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/exoplr2avp/source/rtsp/RtspSessionTiming;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/rtsp/RtspTrackTiming;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspPlayResponse;->status:I

    .line 42
    iput-object p2, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspPlayResponse;->sessionTiming:Lcom/google/android/exoplr2avp/source/rtsp/RtspSessionTiming;

    .line 43
    invoke-static {p3}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspPlayResponse;->trackTimingList:Lcom/google/common/collect/ImmutableList;

    return-void
.end method
