.class public final synthetic Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$JH4QDF2Jvdgtl1LPRO9c4iLNcJw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplr2avp/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

.field public final synthetic f$1:Lcom/google/android/exoplr2avp/source/LoadEventInfo;

.field public final synthetic f$2:Lcom/google/android/exoplr2avp/source/MediaLoadData;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$JH4QDF2Jvdgtl1LPRO9c4iLNcJw;->f$0:Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    iput-object p2, p0, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$JH4QDF2Jvdgtl1LPRO9c4iLNcJw;->f$1:Lcom/google/android/exoplr2avp/source/LoadEventInfo;

    iput-object p3, p0, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$JH4QDF2Jvdgtl1LPRO9c4iLNcJw;->f$2:Lcom/google/android/exoplr2avp/source/MediaLoadData;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$JH4QDF2Jvdgtl1LPRO9c4iLNcJw;->f$0:Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$JH4QDF2Jvdgtl1LPRO9c4iLNcJw;->f$1:Lcom/google/android/exoplr2avp/source/LoadEventInfo;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/analytics/-$$Lambda$DefaultAnalyticsCollector$JH4QDF2Jvdgtl1LPRO9c4iLNcJw;->f$2:Lcom/google/android/exoplr2avp/source/MediaLoadData;

    check-cast p1, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;->lambda$onLoadCompleted$24(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V

    return-void
.end method
