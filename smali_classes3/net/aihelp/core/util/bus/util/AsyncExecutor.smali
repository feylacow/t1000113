.class public Lnet/aihelp/core/util/bus/util/AsyncExecutor;
.super Ljava/lang/Object;
.source "AsyncExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/core/util/bus/util/AsyncExecutor$RunnableEx;,
        Lnet/aihelp/core/util/bus/util/AsyncExecutor$Builder;
    }
.end annotation


# instance fields
.field private final eventBus:Lnet/aihelp/core/util/bus/EventBus;

.field private final failureEventConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private final scope:Ljava/lang/Object;

.field private final threadPool:Ljava/util/concurrent/Executor;


# direct methods
.method private constructor <init>(Ljava/util/concurrent/Executor;Lnet/aihelp/core/util/bus/EventBus;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lnet/aihelp/core/util/bus/EventBus;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lnet/aihelp/core/util/bus/util/AsyncExecutor;->threadPool:Ljava/util/concurrent/Executor;

    .line 94
    iput-object p2, p0, Lnet/aihelp/core/util/bus/util/AsyncExecutor;->eventBus:Lnet/aihelp/core/util/bus/EventBus;

    .line 95
    iput-object p4, p0, Lnet/aihelp/core/util/bus/util/AsyncExecutor;->scope:Ljava/lang/Object;

    const/4 p1, 0x1

    :try_start_0
    new-array p1, p1, [Ljava/lang/Class;

    const/4 p2, 0x0

    .line 97
    const-class p4, Ljava/lang/Throwable;

    aput-object p4, p1, p2

    invoke-virtual {p3, p1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/core/util/bus/util/AsyncExecutor;->failureEventConstructor:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 99
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Failure event class must have a constructor with one parameter of type Throwable"

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/Executor;Lnet/aihelp/core/util/bus/EventBus;Ljava/lang/Class;Ljava/lang/Object;Lnet/aihelp/core/util/bus/util/AsyncExecutor$1;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/aihelp/core/util/bus/util/AsyncExecutor;-><init>(Ljava/util/concurrent/Executor;Lnet/aihelp/core/util/bus/EventBus;Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lnet/aihelp/core/util/bus/util/AsyncExecutor;)Ljava/lang/reflect/Constructor;
    .locals 0

    .line 31
    iget-object p0, p0, Lnet/aihelp/core/util/bus/util/AsyncExecutor;->failureEventConstructor:Ljava/lang/reflect/Constructor;

    return-object p0
.end method

.method static synthetic access$300(Lnet/aihelp/core/util/bus/util/AsyncExecutor;)Lnet/aihelp/core/util/bus/EventBus;
    .locals 0

    .line 31
    iget-object p0, p0, Lnet/aihelp/core/util/bus/util/AsyncExecutor;->eventBus:Lnet/aihelp/core/util/bus/EventBus;

    return-object p0
.end method

.method static synthetic access$400(Lnet/aihelp/core/util/bus/util/AsyncExecutor;)Ljava/lang/Object;
    .locals 0

    .line 31
    iget-object p0, p0, Lnet/aihelp/core/util/bus/util/AsyncExecutor;->scope:Ljava/lang/Object;

    return-object p0
.end method

.method public static builder()Lnet/aihelp/core/util/bus/util/AsyncExecutor$Builder;
    .locals 2

    .line 80
    new-instance v0, Lnet/aihelp/core/util/bus/util/AsyncExecutor$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/aihelp/core/util/bus/util/AsyncExecutor$Builder;-><init>(Lnet/aihelp/core/util/bus/util/AsyncExecutor$1;)V

    return-object v0
.end method

.method public static create()Lnet/aihelp/core/util/bus/util/AsyncExecutor;
    .locals 2

    .line 84
    new-instance v0, Lnet/aihelp/core/util/bus/util/AsyncExecutor$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/aihelp/core/util/bus/util/AsyncExecutor$Builder;-><init>(Lnet/aihelp/core/util/bus/util/AsyncExecutor$1;)V

    invoke-virtual {v0}, Lnet/aihelp/core/util/bus/util/AsyncExecutor$Builder;->build()Lnet/aihelp/core/util/bus/util/AsyncExecutor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public execute(Lnet/aihelp/core/util/bus/util/AsyncExecutor$RunnableEx;)V
    .locals 2

    .line 106
    iget-object v0, p0, Lnet/aihelp/core/util/bus/util/AsyncExecutor;->threadPool:Ljava/util/concurrent/Executor;

    new-instance v1, Lnet/aihelp/core/util/bus/util/AsyncExecutor$1;

    invoke-direct {v1, p0, p1}, Lnet/aihelp/core/util/bus/util/AsyncExecutor$1;-><init>(Lnet/aihelp/core/util/bus/util/AsyncExecutor;Lnet/aihelp/core/util/bus/util/AsyncExecutor$RunnableEx;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
