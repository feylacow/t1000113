.class final Lcom/google/android/exoplr2avp/extractor/DefaultExtractorsFactory$ExtensionLoader;
.super Ljava/lang/Object;
.source "DefaultExtractorsFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/extractor/DefaultExtractorsFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ExtensionLoader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/extractor/DefaultExtractorsFactory$ExtensionLoader$ConstructorSupplier;
    }
.end annotation


# instance fields
.field private final constructorSupplier:Lcom/google/android/exoplr2avp/extractor/DefaultExtractorsFactory$ExtensionLoader$ConstructorSupplier;

.field private final extensionLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private extractorConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/google/android/exoplr2avp/extractor/Extractor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/extractor/DefaultExtractorsFactory$ExtensionLoader$ConstructorSupplier;)V
    .locals 1

    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 470
    iput-object p1, p0, Lcom/google/android/exoplr2avp/extractor/DefaultExtractorsFactory$ExtensionLoader;->constructorSupplier:Lcom/google/android/exoplr2avp/extractor/DefaultExtractorsFactory$ExtensionLoader$ConstructorSupplier;

    .line 471
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/extractor/DefaultExtractorsFactory$ExtensionLoader;->extensionLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private maybeLoadExtractorConstructor()Ljava/lang/reflect/Constructor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/google/android/exoplr2avp/extractor/Extractor;",
            ">;"
        }
    .end annotation

    .line 490
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/DefaultExtractorsFactory$ExtensionLoader;->extensionLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 491
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplr2avp/extractor/DefaultExtractorsFactory$ExtensionLoader;->extensionLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 492
    iget-object v1, p0, Lcom/google/android/exoplr2avp/extractor/DefaultExtractorsFactory$ExtensionLoader;->extractorConstructor:Ljava/lang/reflect/Constructor;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 495
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/exoplr2avp/extractor/DefaultExtractorsFactory$ExtensionLoader;->constructorSupplier:Lcom/google/android/exoplr2avp/extractor/DefaultExtractorsFactory$ExtensionLoader$ConstructorSupplier;

    invoke-interface {v1}, Lcom/google/android/exoplr2avp/extractor/DefaultExtractorsFactory$ExtensionLoader$ConstructorSupplier;->getConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v1

    :catch_0
    move-exception v1

    .line 500
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error instantiating extension"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 502
    :catch_1
    iget-object v1, p0, Lcom/google/android/exoplr2avp/extractor/DefaultExtractorsFactory$ExtensionLoader;->extensionLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 503
    iget-object v1, p0, Lcom/google/android/exoplr2avp/extractor/DefaultExtractorsFactory$ExtensionLoader;->extractorConstructor:Ljava/lang/reflect/Constructor;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 504
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public varargs getExtractor([Ljava/lang/Object;)Lcom/google/android/exoplr2avp/extractor/Extractor;
    .locals 2

    .line 477
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/extractor/DefaultExtractorsFactory$ExtensionLoader;->maybeLoadExtractorConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 482
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/extractor/Extractor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 484
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected error creating extractor"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
