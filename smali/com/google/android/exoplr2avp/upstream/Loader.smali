.class public final Lcom/google/android/exoplr2avp/upstream/Loader;
.super Ljava/lang/Object;
.source "Loader.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/upstream/LoaderErrorThrower;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/upstream/Loader$ReleaseTask;,
        Lcom/google/android/exoplr2avp/upstream/Loader$LoadTask;,
        Lcom/google/android/exoplr2avp/upstream/Loader$LoadErrorAction;,
        Lcom/google/android/exoplr2avp/upstream/Loader$ReleaseCallback;,
        Lcom/google/android/exoplr2avp/upstream/Loader$Callback;,
        Lcom/google/android/exoplr2avp/upstream/Loader$Loadable;,
        Lcom/google/android/exoplr2avp/upstream/Loader$UnexpectedLoaderException;
    }
.end annotation


# static fields
.field private static final ACTION_TYPE_DONT_RETRY:I = 0x2

.field private static final ACTION_TYPE_DONT_RETRY_FATAL:I = 0x3

.field private static final ACTION_TYPE_RETRY:I = 0x0

.field private static final ACTION_TYPE_RETRY_AND_RESET_ERROR_COUNT:I = 0x1

.field public static final DONT_RETRY:Lcom/google/android/exoplr2avp/upstream/Loader$LoadErrorAction;

.field public static final DONT_RETRY_FATAL:Lcom/google/android/exoplr2avp/upstream/Loader$LoadErrorAction;

.field public static final RETRY:Lcom/google/android/exoplr2avp/upstream/Loader$LoadErrorAction;

.field public static final RETRY_RESET_ERROR_COUNT:Lcom/google/android/exoplr2avp/upstream/Loader$LoadErrorAction;

.field private static final THREAD_NAME_PREFIX:Ljava/lang/String; = "ExoPlayer:Loader:"


# instance fields
.field private currentTask:Lcom/google/android/exoplr2avp/upstream/Loader$LoadTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplr2avp/upstream/Loader$LoadTask<",
            "+",
            "Lcom/google/android/exoplr2avp/upstream/Loader$Loadable;",
            ">;"
        }
    .end annotation
.end field

.field private final downloadExecutorService:Ljava/util/concurrent/ExecutorService;

.field private fatalError:Ljava/io/IOException;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 164
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplr2avp/upstream/Loader;->createRetryAction(ZJ)Lcom/google/android/exoplr2avp/upstream/Loader$LoadErrorAction;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplr2avp/upstream/Loader;->RETRY:Lcom/google/android/exoplr2avp/upstream/Loader$LoadErrorAction;

    const/4 v0, 0x1

    .line 167
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplr2avp/upstream/Loader;->createRetryAction(ZJ)Lcom/google/android/exoplr2avp/upstream/Loader$LoadErrorAction;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplr2avp/upstream/Loader;->RETRY_RESET_ERROR_COUNT:Lcom/google/android/exoplr2avp/upstream/Loader$LoadErrorAction;

    .line 169
    new-instance v0, Lcom/google/android/exoplr2avp/upstream/Loader$LoadErrorAction;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/google/android/exoplr2avp/upstream/Loader$LoadErrorAction;-><init>(IJLcom/google/android/exoplr2avp/upstream/Loader$1;)V

    sput-object v0, Lcom/google/android/exoplr2avp/upstream/Loader;->DONT_RETRY:Lcom/google/android/exoplr2avp/upstream/Loader$LoadErrorAction;

    .line 175
    new-instance v0, Lcom/google/android/exoplr2avp/upstream/Loader$LoadErrorAction;

    const/4 v3, 0x3

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/google/android/exoplr2avp/upstream/Loader$LoadErrorAction;-><init>(IJLcom/google/android/exoplr2avp/upstream/Loader$1;)V

    sput-object v0, Lcom/google/android/exoplr2avp/upstream/Loader;->DONT_RETRY_FATAL:Lcom/google/android/exoplr2avp/upstream/Loader$LoadErrorAction;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExoPlayer:Loader:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 209
    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Util;->newSingleThreadExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/upstream/Loader;->downloadExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplr2avp/upstream/Loader;)Lcom/google/android/exoplr2avp/upstream/Loader$LoadTask;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/google/android/exoplr2avp/upstream/Loader;->currentTask:Lcom/google/android/exoplr2avp/upstream/Loader$LoadTask;

    return-object p0
.end method

.method static synthetic access$102(Lcom/google/android/exoplr2avp/upstream/Loader;Lcom/google/android/exoplr2avp/upstream/Loader$LoadTask;)Lcom/google/android/exoplr2avp/upstream/Loader$LoadTask;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/google/android/exoplr2avp/upstream/Loader;->currentTask:Lcom/google/android/exoplr2avp/upstream/Loader$LoadTask;

    return-object p1
.end method

.method static synthetic access$202(Lcom/google/android/exoplr2avp/upstream/Loader;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/google/android/exoplr2avp/upstream/Loader;->fatalError:Ljava/io/IOException;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/android/exoplr2avp/upstream/Loader;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/google/android/exoplr2avp/upstream/Loader;->downloadExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method public static createRetryAction(ZJ)Lcom/google/android/exoplr2avp/upstream/Loader$LoadErrorAction;
    .locals 2

    .line 220
    new-instance v0, Lcom/google/android/exoplr2avp/upstream/Loader$LoadErrorAction;

    const/4 v1, 0x0

    .line 221
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/exoplr2avp/upstream/Loader$LoadErrorAction;-><init>(IJLcom/google/android/exoplr2avp/upstream/Loader$1;)V

    return-object v0
.end method


# virtual methods
.method public cancelLoading()V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/Loader;->currentTask:Lcom/google/android/exoplr2avp/upstream/Loader$LoadTask;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/upstream/Loader$LoadTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/upstream/Loader$LoadTask;->cancel(Z)V

    return-void
.end method

.method public clearFatalError()V
    .locals 1

    const/4 v0, 0x0

    .line 235
    iput-object v0, p0, Lcom/google/android/exoplr2avp/upstream/Loader;->fatalError:Ljava/io/IOException;

    return-void
.end method

.method public hasFatalError()Z
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/Loader;->fatalError:Ljava/io/IOException;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLoading()Z
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/Loader;->currentTask:Lcom/google/android/exoplr2avp/upstream/Loader$LoadTask;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public maybeThrowError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, -0x80000000

    .line 300
    invoke-virtual {p0, v0}, Lcom/google/android/exoplr2avp/upstream/Loader;->maybeThrowError(I)V

    return-void
.end method

.method public maybeThrowError(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/Loader;->fatalError:Ljava/io/IOException;

    if-nez v0, :cond_2

    .line 307
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/Loader;->currentTask:Lcom/google/android/exoplr2avp/upstream/Loader$LoadTask;

    if-eqz v0, :cond_1

    const/high16 v1, -0x80000000

    if-ne p1, v1, :cond_0

    .line 309
    iget p1, v0, Lcom/google/android/exoplr2avp/upstream/Loader$LoadTask;->defaultMinRetryCount:I

    .line 308
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/upstream/Loader$LoadTask;->maybeThrowError(I)V

    :cond_1
    return-void

    .line 306
    :cond_2
    throw v0
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 277
    invoke-virtual {p0, v0}, Lcom/google/android/exoplr2avp/upstream/Loader;->release(Lcom/google/android/exoplr2avp/upstream/Loader$ReleaseCallback;)V

    return-void
.end method

.method public release(Lcom/google/android/exoplr2avp/upstream/Loader$ReleaseCallback;)V
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/Loader;->currentTask:Lcom/google/android/exoplr2avp/upstream/Loader$LoadTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 288
    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/upstream/Loader$LoadTask;->cancel(Z)V

    :cond_0
    if-eqz p1, :cond_1

    .line 291
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/Loader;->downloadExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/exoplr2avp/upstream/Loader$ReleaseTask;

    invoke-direct {v1, p1}, Lcom/google/android/exoplr2avp/upstream/Loader$ReleaseTask;-><init>(Lcom/google/android/exoplr2avp/upstream/Loader$ReleaseCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 293
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplr2avp/upstream/Loader;->downloadExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public startLoading(Lcom/google/android/exoplr2avp/upstream/Loader$Loadable;Lcom/google/android/exoplr2avp/upstream/Loader$Callback;I)J
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/exoplr2avp/upstream/Loader$Loadable;",
            ">(TT;",
            "Lcom/google/android/exoplr2avp/upstream/Loader$Callback<",
            "TT;>;I)J"
        }
    .end annotation

    .line 254
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/os/Looper;

    const/4 v0, 0x0

    .line 255
    iput-object v0, p0, Lcom/google/android/exoplr2avp/upstream/Loader;->fatalError:Ljava/io/IOException;

    .line 256
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 257
    new-instance v0, Lcom/google/android/exoplr2avp/upstream/Loader$LoadTask;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-wide v7, v9

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplr2avp/upstream/Loader$LoadTask;-><init>(Lcom/google/android/exoplr2avp/upstream/Loader;Landroid/os/Looper;Lcom/google/android/exoplr2avp/upstream/Loader$Loadable;Lcom/google/android/exoplr2avp/upstream/Loader$Callback;IJ)V

    const-wide/16 p1, 0x0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplr2avp/upstream/Loader$LoadTask;->start(J)V

    return-wide v9
.end method
