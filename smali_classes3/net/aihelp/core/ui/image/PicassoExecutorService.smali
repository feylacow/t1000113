.class Lnet/aihelp/core/ui/image/PicassoExecutorService;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "PicassoExecutorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/core/ui/image/PicassoExecutorService$PicassoFutureTask;
    }
.end annotation


# static fields
.field private static final DEFAULT_THREAD_COUNT:I = 0x3


# direct methods
.method constructor <init>()V
    .locals 8

    .line 37
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v7, Lnet/aihelp/core/ui/image/Utils$PicassoThreadFactory;

    invoke-direct {v7}, Lnet/aihelp/core/ui/image/Utils$PicassoThreadFactory;-><init>()V

    const/4 v1, 0x3

    const/4 v2, 0x3

    const-wide/16 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-void
.end method

.method private setThreadCount(I)V
    .locals 0

    .line 80
    invoke-virtual {p0, p1}, Lnet/aihelp/core/ui/image/PicassoExecutorService;->setCorePoolSize(I)V

    .line 81
    invoke-virtual {p0, p1}, Lnet/aihelp/core/ui/image/PicassoExecutorService;->setMaximumPoolSize(I)V

    return-void
.end method


# virtual methods
.method adjustThreadCount(Landroid/net/NetworkInfo;)V
    .locals 3

    const/4 v0, 0x3

    if-eqz p1, :cond_3

    .line 42
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 46
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    const/4 p1, 0x6

    if-eq v1, p1, :cond_1

    const/16 p1, 0x9

    if-eq v1, p1, :cond_1

    .line 75
    invoke-direct {p0, v0}, Lnet/aihelp/core/ui/image/PicassoExecutorService;->setThreadCount(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    .line 50
    invoke-direct {p0, p1}, Lnet/aihelp/core/ui/image/PicassoExecutorService;->setThreadCount(I)V

    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 71
    invoke-direct {p0, v0}, Lnet/aihelp/core/ui/image/PicassoExecutorService;->setThreadCount(I)V

    goto :goto_0

    .line 57
    :pswitch_0
    invoke-direct {p0, v0}, Lnet/aihelp/core/ui/image/PicassoExecutorService;->setThreadCount(I)V

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x2

    .line 64
    invoke-direct {p0, p1}, Lnet/aihelp/core/ui/image/PicassoExecutorService;->setThreadCount(I)V

    goto :goto_0

    .line 68
    :pswitch_2
    invoke-direct {p0, v2}, Lnet/aihelp/core/ui/image/PicassoExecutorService;->setThreadCount(I)V

    :goto_0
    return-void

    .line 43
    :cond_3
    :goto_1
    invoke-direct {p0, v0}, Lnet/aihelp/core/ui/image/PicassoExecutorService;->setThreadCount(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 86
    new-instance v0, Lnet/aihelp/core/ui/image/PicassoExecutorService$PicassoFutureTask;

    check-cast p1, Lnet/aihelp/core/ui/image/BitmapHunter;

    invoke-direct {v0, p1}, Lnet/aihelp/core/ui/image/PicassoExecutorService$PicassoFutureTask;-><init>(Lnet/aihelp/core/ui/image/BitmapHunter;)V

    .line 87
    invoke-virtual {p0}, Lnet/aihelp/core/ui/image/PicassoExecutorService;->isShutdown()Z

    move-result p1

    if-nez p1, :cond_0

    .line 88
    invoke-virtual {p0, v0}, Lnet/aihelp/core/ui/image/PicassoExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-object v0
.end method
