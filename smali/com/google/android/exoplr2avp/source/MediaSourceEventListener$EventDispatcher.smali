.class public Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;
.super Ljava/lang/Object;
.source "MediaSourceEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/source/MediaSourceEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventDispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;
    }
.end annotation


# instance fields
.field private final listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;",
            ">;"
        }
    .end annotation
.end field

.field public final mediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

.field private final mediaTimeOffsetMs:J

.field public final windowIndex:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 157
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;J)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;",
            ">;I",
            "Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;",
            "J)V"
        }
    .end annotation

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 170
    iput p2, p0, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->windowIndex:I

    .line 171
    iput-object p3, p0, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    .line 172
    iput-wide p4, p0, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->mediaTimeOffsetMs:J

    return-void
.end method

.method private adjustMediaTime(J)J
    .locals 3

    .line 476
    invoke-static {p1, p2}, Lcom/google/android/exoplr2avp/util/Util;->usToMs(J)J

    move-result-wide p1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    goto :goto_0

    .line 477
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->mediaTimeOffsetMs:J

    add-long/2addr v0, p1

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public addEventListener(Landroid/os/Handler;Lcom/google/android/exoplr2avp/source/MediaSourceEventListener;)V
    .locals 2

    .line 198
    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    invoke-static {p2}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    invoke-direct {v1, p1, p2}, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;-><init>(Landroid/os/Handler;Lcom/google/android/exoplr2avp/source/MediaSourceEventListener;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public downstreamFormatChanged(ILcom/google/android/exoplr2avp/Format;ILjava/lang/Object;J)V
    .locals 12

    move-object v0, p0

    .line 454
    new-instance v11, Lcom/google/android/exoplr2avp/source/MediaLoadData;

    move-wide/from16 v1, p5

    .line 461
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->adjustMediaTime(J)J

    move-result-wide v7

    const/4 v2, 0x1

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v1, v11

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplr2avp/source/MediaLoadData;-><init>(IILcom/google/android/exoplr2avp/Format;ILjava/lang/Object;JJ)V

    .line 454
    invoke-virtual {p0, v11}, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->downstreamFormatChanged(Lcom/google/android/exoplr2avp/source/MediaLoadData;)V

    return-void
.end method

.method public downstreamFormatChanged(Lcom/google/android/exoplr2avp/source/MediaLoadData;)V
    .locals 4

    .line 467
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    .line 468
    iget-object v2, v1, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->listener:Lcom/google/android/exoplr2avp/source/MediaSourceEventListener;

    .line 469
    iget-object v1, v1, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplr2avp/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$fsqKRqlWAxIWxBd4NDTZ9hsm5fM;

    invoke-direct {v3, p0, v2, p1}, Lcom/google/android/exoplr2avp/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$fsqKRqlWAxIWxBd4NDTZ9hsm5fM;-><init>(Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplr2avp/source/MediaSourceEventListener;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V

    invoke-static {v1, v3}, Lcom/google/android/exoplr2avp/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic lambda$downstreamFormatChanged$5$MediaSourceEventListener$EventDispatcher(Lcom/google/android/exoplr2avp/source/MediaSourceEventListener;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V
    .locals 2

    .line 471
    iget v0, p0, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->windowIndex:I

    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    invoke-interface {p1, v0, v1, p2}, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener;->onDownstreamFormatChanged(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V

    return-void
.end method

.method public synthetic lambda$loadCanceled$2$MediaSourceEventListener$EventDispatcher(Lcom/google/android/exoplr2avp/source/MediaSourceEventListener;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V
    .locals 2

    .line 349
    iget v0, p0, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->windowIndex:I

    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    invoke-interface {p1, v0, v1, p2, p3}, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener;->onLoadCanceled(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V

    return-void
.end method

.method public synthetic lambda$loadCompleted$1$MediaSourceEventListener$EventDispatcher(Lcom/google/android/exoplr2avp/source/MediaSourceEventListener;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V
    .locals 2

    .line 303
    iget v0, p0, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->windowIndex:I

    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    invoke-interface {p1, v0, v1, p2, p3}, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener;->onLoadCompleted(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V

    return-void
.end method

.method public synthetic lambda$loadError$3$MediaSourceEventListener$EventDispatcher(Lcom/google/android/exoplr2avp/source/MediaSourceEventListener;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;Ljava/io/IOException;Z)V
    .locals 7

    .line 418
    iget v1, p0, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->windowIndex:I

    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    move-object v0, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener;->onLoadError(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;Ljava/io/IOException;Z)V

    return-void
.end method

.method public synthetic lambda$loadStarted$0$MediaSourceEventListener$EventDispatcher(Lcom/google/android/exoplr2avp/source/MediaSourceEventListener;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V
    .locals 2

    .line 257
    iget v0, p0, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->windowIndex:I

    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    invoke-interface {p1, v0, v1, p2, p3}, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener;->onLoadStarted(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V

    return-void
.end method

.method public synthetic lambda$upstreamDiscarded$4$MediaSourceEventListener$EventDispatcher(Lcom/google/android/exoplr2avp/source/MediaSourceEventListener;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V
    .locals 1

    .line 443
    iget v0, p0, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->windowIndex:I

    invoke-interface {p1, v0, p2, p3}, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener;->onUpstreamDiscarded(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V

    return-void
.end method

.method public loadCanceled(Lcom/google/android/exoplr2avp/source/LoadEventInfo;I)V
    .locals 11

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 309
    invoke-virtual/range {v0 .. v10}, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Lcom/google/android/exoplr2avp/source/LoadEventInfo;IILcom/google/android/exoplr2avp/Format;ILjava/lang/Object;JJ)V

    return-void
.end method

.method public loadCanceled(Lcom/google/android/exoplr2avp/source/LoadEventInfo;IILcom/google/android/exoplr2avp/Format;ILjava/lang/Object;JJ)V
    .locals 12

    move-object v0, p0

    .line 330
    new-instance v11, Lcom/google/android/exoplr2avp/source/MediaLoadData;

    move-wide/from16 v1, p7

    .line 338
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->adjustMediaTime(J)J

    move-result-wide v7

    move-wide/from16 v1, p9

    .line 339
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->adjustMediaTime(J)J

    move-result-wide v9

    move-object v1, v11

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplr2avp/source/MediaLoadData;-><init>(IILcom/google/android/exoplr2avp/Format;ILjava/lang/Object;JJ)V

    move-object v1, p1

    .line 330
    invoke-virtual {p0, p1, v11}, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V

    return-void
.end method

.method public loadCanceled(Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V
    .locals 4

    .line 344
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    .line 345
    iget-object v2, v1, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->listener:Lcom/google/android/exoplr2avp/source/MediaSourceEventListener;

    .line 346
    iget-object v1, v1, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplr2avp/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$PNSz1z2r0WJu7kC3s_aF48hLMn0;

    invoke-direct {v3, p0, v2, p1, p2}, Lcom/google/android/exoplr2avp/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$PNSz1z2r0WJu7kC3s_aF48hLMn0;-><init>(Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplr2avp/source/MediaSourceEventListener;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V

    invoke-static {v1, v3}, Lcom/google/android/exoplr2avp/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public loadCompleted(Lcom/google/android/exoplr2avp/source/LoadEventInfo;I)V
    .locals 11

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 263
    invoke-virtual/range {v0 .. v10}, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Lcom/google/android/exoplr2avp/source/LoadEventInfo;IILcom/google/android/exoplr2avp/Format;ILjava/lang/Object;JJ)V

    return-void
.end method

.method public loadCompleted(Lcom/google/android/exoplr2avp/source/LoadEventInfo;IILcom/google/android/exoplr2avp/Format;ILjava/lang/Object;JJ)V
    .locals 12

    move-object v0, p0

    .line 284
    new-instance v11, Lcom/google/android/exoplr2avp/source/MediaLoadData;

    move-wide/from16 v1, p7

    .line 292
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->adjustMediaTime(J)J

    move-result-wide v7

    move-wide/from16 v1, p9

    .line 293
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->adjustMediaTime(J)J

    move-result-wide v9

    move-object v1, v11

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplr2avp/source/MediaLoadData;-><init>(IILcom/google/android/exoplr2avp/Format;ILjava/lang/Object;JJ)V

    move-object v1, p1

    .line 284
    invoke-virtual {p0, p1, v11}, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V

    return-void
.end method

.method public loadCompleted(Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V
    .locals 4

    .line 298
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    .line 299
    iget-object v2, v1, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->listener:Lcom/google/android/exoplr2avp/source/MediaSourceEventListener;

    .line 300
    iget-object v1, v1, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplr2avp/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$VlkzKZ_fb13yxsPguyQ8FK_7wW0;

    invoke-direct {v3, p0, v2, p1, p2}, Lcom/google/android/exoplr2avp/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$VlkzKZ_fb13yxsPguyQ8FK_7wW0;-><init>(Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplr2avp/source/MediaSourceEventListener;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V

    invoke-static {v1, v3}, Lcom/google/android/exoplr2avp/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public loadError(Lcom/google/android/exoplr2avp/source/LoadEventInfo;IILcom/google/android/exoplr2avp/Format;ILjava/lang/Object;JJLjava/io/IOException;Z)V
    .locals 12

    move-object v0, p0

    .line 390
    new-instance v11, Lcom/google/android/exoplr2avp/source/MediaLoadData;

    move-wide/from16 v1, p7

    .line 398
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->adjustMediaTime(J)J

    move-result-wide v7

    move-wide/from16 v1, p9

    .line 399
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->adjustMediaTime(J)J

    move-result-wide v9

    move-object v1, v11

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplr2avp/source/MediaLoadData;-><init>(IILcom/google/android/exoplr2avp/Format;ILjava/lang/Object;JJ)V

    move-object v1, p1

    move-object/from16 v2, p11

    move/from16 v3, p12

    .line 390
    invoke-virtual {p0, p1, v11, v2, v3}, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->loadError(Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;Ljava/io/IOException;Z)V

    return-void
.end method

.method public loadError(Lcom/google/android/exoplr2avp/source/LoadEventInfo;ILjava/io/IOException;Z)V
    .locals 13

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v11, p3

    move/from16 v12, p4

    .line 362
    invoke-virtual/range {v0 .. v12}, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->loadError(Lcom/google/android/exoplr2avp/source/LoadEventInfo;IILcom/google/android/exoplr2avp/Format;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    return-void
.end method

.method public loadError(Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;Ljava/io/IOException;Z)V
    .locals 10

    .line 413
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    .line 414
    iget-object v4, v1, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->listener:Lcom/google/android/exoplr2avp/source/MediaSourceEventListener;

    .line 415
    iget-object v1, v1, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->handler:Landroid/os/Handler;

    new-instance v9, Lcom/google/android/exoplr2avp/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$H6btsF9SHspAuz7ebg1BRrMTr_Q;

    move-object v2, v9

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplr2avp/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$H6btsF9SHspAuz7ebg1BRrMTr_Q;-><init>(Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplr2avp/source/MediaSourceEventListener;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;Ljava/io/IOException;Z)V

    invoke-static {v1, v9}, Lcom/google/android/exoplr2avp/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public loadStarted(Lcom/google/android/exoplr2avp/source/LoadEventInfo;I)V
    .locals 11

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 218
    invoke-virtual/range {v0 .. v10}, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Lcom/google/android/exoplr2avp/source/LoadEventInfo;IILcom/google/android/exoplr2avp/Format;ILjava/lang/Object;JJ)V

    return-void
.end method

.method public loadStarted(Lcom/google/android/exoplr2avp/source/LoadEventInfo;IILcom/google/android/exoplr2avp/Format;ILjava/lang/Object;JJ)V
    .locals 12

    move-object v0, p0

    .line 239
    new-instance v11, Lcom/google/android/exoplr2avp/source/MediaLoadData;

    move-wide/from16 v1, p7

    .line 247
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->adjustMediaTime(J)J

    move-result-wide v7

    move-wide/from16 v1, p9

    .line 248
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->adjustMediaTime(J)J

    move-result-wide v9

    move-object v1, v11

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplr2avp/source/MediaLoadData;-><init>(IILcom/google/android/exoplr2avp/Format;ILjava/lang/Object;JJ)V

    move-object v1, p1

    .line 239
    invoke-virtual {p0, p1, v11}, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V

    return-void
.end method

.method public loadStarted(Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V
    .locals 4

    .line 253
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    .line 254
    iget-object v2, v1, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->listener:Lcom/google/android/exoplr2avp/source/MediaSourceEventListener;

    .line 255
    iget-object v1, v1, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplr2avp/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$sAfJ6yF2edSK4bgCV1TDX-s85NM;

    invoke-direct {v3, p0, v2, p1, p2}, Lcom/google/android/exoplr2avp/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$sAfJ6yF2edSK4bgCV1TDX-s85NM;-><init>(Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplr2avp/source/MediaSourceEventListener;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V

    invoke-static {v1, v3}, Lcom/google/android/exoplr2avp/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeEventListener(Lcom/google/android/exoplr2avp/source/MediaSourceEventListener;)V
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    .line 210
    iget-object v2, v1, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->listener:Lcom/google/android/exoplr2avp/source/MediaSourceEventListener;

    if-ne v2, p1, :cond_0

    .line 211
    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public upstreamDiscarded(IJJ)V
    .locals 12

    move-object v0, p0

    .line 425
    new-instance v11, Lcom/google/android/exoplr2avp/source/MediaLoadData;

    move-wide v1, p2

    .line 432
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->adjustMediaTime(J)J

    move-result-wide v7

    move-wide/from16 v1, p4

    .line 433
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->adjustMediaTime(J)J

    move-result-wide v9

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, v11

    move v3, p1

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplr2avp/source/MediaLoadData;-><init>(IILcom/google/android/exoplr2avp/Format;ILjava/lang/Object;JJ)V

    .line 425
    invoke-virtual {p0, v11}, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->upstreamDiscarded(Lcom/google/android/exoplr2avp/source/MediaLoadData;)V

    return-void
.end method

.method public upstreamDiscarded(Lcom/google/android/exoplr2avp/source/MediaLoadData;)V
    .locals 5

    .line 438
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    .line 439
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    .line 440
    iget-object v3, v2, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->listener:Lcom/google/android/exoplr2avp/source/MediaSourceEventListener;

    .line 441
    iget-object v2, v2, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/exoplr2avp/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$GhfY2oZCxm7jzIRtaTln0kEUO9Q;

    invoke-direct {v4, p0, v3, v0, p1}, Lcom/google/android/exoplr2avp/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$GhfY2oZCxm7jzIRtaTln0kEUO9Q;-><init>(Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplr2avp/source/MediaSourceEventListener;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V

    invoke-static {v2, v4}, Lcom/google/android/exoplr2avp/util/Util;->postOrRun(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public withParameters(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;J)Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;
    .locals 7

    .line 187
    new-instance v6, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v0, v6

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;J)V

    return-object v6
.end method
