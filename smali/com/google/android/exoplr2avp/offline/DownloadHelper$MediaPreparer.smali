.class final Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;
.super Ljava/lang/Object;
.source "DownloadHelper.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/source/MediaSource$MediaSourceCaller;
.implements Lcom/google/android/exoplr2avp/source/MediaPeriod$Callback;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/offline/DownloadHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaPreparer"
.end annotation


# static fields
.field private static final DOWNLOAD_HELPER_CALLBACK_MESSAGE_FAILED:I = 0x1

.field private static final DOWNLOAD_HELPER_CALLBACK_MESSAGE_PREPARED:I = 0x0

.field private static final MESSAGE_CHECK_FOR_FAILURE:I = 0x1

.field private static final MESSAGE_CONTINUE_LOADING:I = 0x2

.field private static final MESSAGE_PREPARE_SOURCE:I = 0x0

.field private static final MESSAGE_RELEASE:I = 0x3


# instance fields
.field private final allocator:Lcom/google/android/exoplr2avp/upstream/Allocator;

.field private final downloadHelper:Lcom/google/android/exoplr2avp/offline/DownloadHelper;

.field private final downloadHelperHandler:Landroid/os/Handler;

.field public mediaPeriods:[Lcom/google/android/exoplr2avp/source/MediaPeriod;

.field private final mediaSource:Lcom/google/android/exoplr2avp/source/MediaSource;

.field private final mediaSourceHandler:Landroid/os/Handler;

.field private final mediaSourceThread:Landroid/os/HandlerThread;

.field private final pendingMediaPeriods:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplr2avp/source/MediaPeriod;",
            ">;"
        }
    .end annotation
.end field

.field private released:Z

.field public timeline:Lcom/google/android/exoplr2avp/Timeline;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/source/MediaSource;Lcom/google/android/exoplr2avp/offline/DownloadHelper;)V
    .locals 1

    .line 992
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 993
    iput-object p1, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;->mediaSource:Lcom/google/android/exoplr2avp/source/MediaSource;

    .line 994
    iput-object p2, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;->downloadHelper:Lcom/google/android/exoplr2avp/offline/DownloadHelper;

    .line 995
    new-instance p1, Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;

    const/4 p2, 0x1

    const/high16 v0, 0x10000

    invoke-direct {p1, p2, v0}, Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;-><init>(ZI)V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;->allocator:Lcom/google/android/exoplr2avp/upstream/Allocator;

    .line 996
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;->pendingMediaPeriods:Ljava/util/ArrayList;

    .line 998
    new-instance p1, Lcom/google/android/exoplr2avp/offline/-$$Lambda$DownloadHelper$MediaPreparer$auvSM5SzU0sKLLyaejzyEehjgcI;

    invoke-direct {p1, p0}, Lcom/google/android/exoplr2avp/offline/-$$Lambda$DownloadHelper$MediaPreparer$auvSM5SzU0sKLLyaejzyEehjgcI;-><init>(Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;)V

    .line 999
    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Util;->createHandlerForCurrentOrMainLooper(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    .line 1000
    iput-object p1, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;->downloadHelperHandler:Landroid/os/Handler;

    .line 1001
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "ExoPlayer:DownloadHelper"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;->mediaSourceThread:Landroid/os/HandlerThread;

    .line 1002
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 1003
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/google/android/exoplr2avp/util/Util;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;->mediaSourceHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    .line 1004
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private handleDownloadHelperCallbackMessage(Landroid/os/Message;)Z
    .locals 3

    .line 1114
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;->released:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1118
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    return v1

    .line 1130
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;->release()V

    .line 1131
    iget-object v0, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;->downloadHelper:Lcom/google/android/exoplr2avp/offline/DownloadHelper;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    invoke-static {v0, p1}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->access$300(Lcom/google/android/exoplr2avp/offline/DownloadHelper;Ljava/io/IOException;)V

    return v2

    .line 1121
    :cond_2
    :try_start_0
    iget-object p1, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;->downloadHelper:Lcom/google/android/exoplr2avp/offline/DownloadHelper;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->access$200(Lcom/google/android/exoplr2avp/offline/DownloadHelper;)V
    :try_end_0
    .catch Lcom/google/android/exoplr2avp/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1123
    iget-object v0, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;->downloadHelperHandler:Landroid/os/Handler;

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 1124
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1126
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return v2
.end method

.method public static synthetic lambda$auvSM5SzU0sKLLyaejzyEehjgcI(Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;Landroid/os/Message;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;->handleDownloadHelperCallbackMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    .line 1019
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    const/4 v3, 0x0

    if-eq v0, v2, :cond_4

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    return v3

    .line 1049
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;->mediaPeriods:[Lcom/google/android/exoplr2avp/source/MediaPeriod;

    if-eqz p1, :cond_1

    .line 1050
    array-length v0, p1

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v4, p1, v3

    .line 1051
    iget-object v5, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;->mediaSource:Lcom/google/android/exoplr2avp/source/MediaSource;

    invoke-interface {v5, v4}, Lcom/google/android/exoplr2avp/source/MediaSource;->releasePeriod(Lcom/google/android/exoplr2avp/source/MediaPeriod;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1054
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;->mediaSource:Lcom/google/android/exoplr2avp/source/MediaSource;

    invoke-interface {p1, p0}, Lcom/google/android/exoplr2avp/source/MediaSource;->releaseSource(Lcom/google/android/exoplr2avp/source/MediaSource$MediaSourceCaller;)V

    .line 1055
    iget-object p1, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;->mediaSourceHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1056
    iget-object p1, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;->mediaSourceThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    return v2

    .line 1043
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplr2avp/source/MediaPeriod;

    .line 1044
    iget-object v0, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;->pendingMediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x0

    .line 1045
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplr2avp/source/MediaPeriod;->continueLoading(J)Z

    :cond_3
    return v2

    .line 1027
    :cond_4
    :try_start_0
    iget-object p1, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;->mediaPeriods:[Lcom/google/android/exoplr2avp/source/MediaPeriod;

    if-nez p1, :cond_5

    .line 1028
    iget-object p1, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;->mediaSource:Lcom/google/android/exoplr2avp/source/MediaSource;

    invoke-interface {p1}, Lcom/google/android/exoplr2avp/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    goto :goto_2

    .line 1030
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;->pendingMediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v3, p1, :cond_6

    .line 1031
    iget-object p1, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;->pendingMediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/source/MediaPeriod;

    invoke-interface {p1}, Lcom/google/android/exoplr2avp/source/MediaPeriod;->maybeThrowPrepareError()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1034
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;->mediaSourceHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 1037
    iget-object v0, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;->downloadHelperHandler:Landroid/os/Handler;

    .line 1038
    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1039
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :goto_3
    return v2

    .line 1021
    :cond_7
    iget-object p1, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;->mediaSource:Lcom/google/android/exoplr2avp/source/MediaSource;

    sget-object v0, Lcom/google/android/exoplr2avp/analytics/PlayerId;->UNSET:Lcom/google/android/exoplr2avp/analytics/PlayerId;

    invoke-interface {p1, p0, v1, v0}, Lcom/google/android/exoplr2avp/source/MediaSource;->prepareSource(Lcom/google/android/exoplr2avp/source/MediaSource$MediaSourceCaller;Lcom/google/android/exoplr2avp/upstream/TransferListener;Lcom/google/android/exoplr2avp/analytics/PlayerId;)V

    .line 1023
    iget-object p1, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;->mediaSourceHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return v2
.end method

.method public onContinueLoadingRequested(Lcom/google/android/exoplr2avp/source/MediaPeriod;)V
    .locals 2

    .line 1108
    iget-object v0, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;->pendingMediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1109
    iget-object v0, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;->mediaSourceHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Lcom/google/android/exoplr2avp/source/SequenceableLoader;)V
    .locals 0

    .line 968
    check-cast p1, Lcom/google/android/exoplr2avp/source/MediaPeriod;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;->onContinueLoadingRequested(Lcom/google/android/exoplr2avp/source/MediaPeriod;)V

    return-void
.end method

.method public onPrepared(Lcom/google/android/exoplr2avp/source/MediaPeriod;)V
    .locals 1

    .line 1099
    iget-object v0, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;->pendingMediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1100
    iget-object p1, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;->pendingMediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1101
    iget-object p1, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;->mediaSourceHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1102
    iget-object p1, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;->downloadHelperHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public onSourceInfoRefreshed(Lcom/google/android/exoplr2avp/source/MediaSource;Lcom/google/android/exoplr2avp/Timeline;)V
    .locals 6

    .line 1067
    iget-object p1, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    if-eqz p1, :cond_0

    return-void

    .line 1071
    :cond_0
    new-instance p1, Lcom/google/android/exoplr2avp/Timeline$Window;

    invoke-direct {p1}, Lcom/google/android/exoplr2avp/Timeline$Window;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Lcom/google/android/exoplr2avp/Timeline;->getWindow(ILcom/google/android/exoplr2avp/Timeline$Window;)Lcom/google/android/exoplr2avp/Timeline$Window;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/Timeline$Window;->isLive()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1072
    iget-object p1, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;->downloadHelperHandler:Landroid/os/Handler;

    new-instance p2, Lcom/google/android/exoplr2avp/offline/DownloadHelper$LiveContentUnsupportedException;

    invoke-direct {p2}, Lcom/google/android/exoplr2avp/offline/DownloadHelper$LiveContentUnsupportedException;-><init>()V

    const/4 v0, 0x1

    .line 1073
    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1076
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 1079
    :cond_1
    iput-object p2, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    .line 1080
    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodCount()I

    move-result p1

    new-array p1, p1, [Lcom/google/android/exoplr2avp/source/MediaPeriod;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;->mediaPeriods:[Lcom/google/android/exoplr2avp/source/MediaPeriod;

    const/4 p1, 0x0

    .line 1081
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;->mediaPeriods:[Lcom/google/android/exoplr2avp/source/MediaPeriod;

    array-length v2, v1

    const-wide/16 v3, 0x0

    if-ge p1, v2, :cond_2

    .line 1082
    iget-object v1, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;->mediaSource:Lcom/google/android/exoplr2avp/source/MediaSource;

    new-instance v2, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    .line 1084
    invoke-virtual {p2, p1}, Lcom/google/android/exoplr2avp/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;->allocator:Lcom/google/android/exoplr2avp/upstream/Allocator;

    .line 1083
    invoke-interface {v1, v2, v5, v3, v4}, Lcom/google/android/exoplr2avp/source/MediaSource;->createPeriod(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplr2avp/upstream/Allocator;J)Lcom/google/android/exoplr2avp/source/MediaPeriod;

    move-result-object v1

    .line 1087
    iget-object v2, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;->mediaPeriods:[Lcom/google/android/exoplr2avp/source/MediaPeriod;

    aput-object v1, v2, p1

    .line 1088
    iget-object v2, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;->pendingMediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1090
    :cond_2
    array-length p1, v1

    :goto_1
    if-ge v0, p1, :cond_3

    aget-object p2, v1, v0

    .line 1091
    invoke-interface {p2, p0, v3, v4}, Lcom/google/android/exoplr2avp/source/MediaPeriod;->prepare(Lcom/google/android/exoplr2avp/source/MediaPeriod$Callback;J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public release()V
    .locals 2

    .line 1008
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;->released:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1011
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;->released:Z

    .line 1012
    iget-object v0, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;->mediaSourceHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
