.class public final Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;
.super Ljava/lang/Object;
.source "SimpleCache.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/upstream/cache/Cache;


# static fields
.field private static final SUBDIRECTORY_COUNT:I = 0xa

.field private static final TAG:Ljava/lang/String; = "SimpleCache"

.field private static final UID_FILE_SUFFIX:Ljava/lang/String; = ".uid"

.field private static final lockedCacheDirs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final cacheDir:Ljava/io/File;

.field private final contentIndex:Lcom/google/android/exoplr2avp/upstream/cache/CachedContentIndex;

.field private final evictor:Lcom/google/android/exoplr2avp/upstream/cache/CacheEvictor;

.field private final fileIndex:Lcom/google/android/exoplr2avp/upstream/cache/CacheFileMetadataIndex;

.field private initializationException:Lcom/google/android/exoplr2avp/upstream/cache/Cache$CacheException;

.field private final listeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplr2avp/upstream/cache/Cache$Listener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final random:Ljava/util/Random;

.field private released:Z

.field private totalSpace:J

.field private final touchCacheSpans:Z

.field private uid:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->lockedCacheDirs:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/google/android/exoplr2avp/upstream/cache/CacheEvictor;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 139
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;-><init>(Ljava/io/File;Lcom/google/android/exoplr2avp/upstream/cache/CacheEvictor;[BZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/google/android/exoplr2avp/upstream/cache/CacheEvictor;Lcom/google/android/exoplr2avp/database/DatabaseProvider;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 194
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;-><init>(Ljava/io/File;Lcom/google/android/exoplr2avp/upstream/cache/CacheEvictor;Lcom/google/android/exoplr2avp/database/DatabaseProvider;[BZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/google/android/exoplr2avp/upstream/cache/CacheEvictor;Lcom/google/android/exoplr2avp/database/DatabaseProvider;[BZZ)V
    .locals 7

    .line 229
    new-instance v6, Lcom/google/android/exoplr2avp/upstream/cache/CachedContentIndex;

    move-object v0, v6

    move-object v1, p3

    move-object v2, p1

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplr2avp/upstream/cache/CachedContentIndex;-><init>(Lcom/google/android/exoplr2avp/database/DatabaseProvider;Ljava/io/File;[BZZ)V

    if-eqz p3, :cond_0

    if-nez p6, :cond_0

    .line 239
    new-instance p4, Lcom/google/android/exoplr2avp/upstream/cache/CacheFileMetadataIndex;

    invoke-direct {p4, p3}, Lcom/google/android/exoplr2avp/upstream/cache/CacheFileMetadataIndex;-><init>(Lcom/google/android/exoplr2avp/database/DatabaseProvider;)V

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    .line 229
    :goto_0
    invoke-direct {p0, p1, p2, v6, p4}, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;-><init>(Ljava/io/File;Lcom/google/android/exoplr2avp/upstream/cache/CacheEvictor;Lcom/google/android/exoplr2avp/upstream/cache/CachedContentIndex;Lcom/google/android/exoplr2avp/upstream/cache/CacheFileMetadataIndex;)V

    return-void
.end method

.method constructor <init>(Ljava/io/File;Lcom/google/android/exoplr2avp/upstream/cache/CacheEvictor;Lcom/google/android/exoplr2avp/upstream/cache/CachedContentIndex;Lcom/google/android/exoplr2avp/upstream/cache/CacheFileMetadataIndex;)V
    .locals 1

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    invoke-static {p1}, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->lockFolder(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iput-object p1, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    .line 253
    iput-object p2, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->evictor:Lcom/google/android/exoplr2avp/upstream/cache/CacheEvictor;

    .line 254
    iput-object p3, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->contentIndex:Lcom/google/android/exoplr2avp/upstream/cache/CachedContentIndex;

    .line 255
    iput-object p4, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->fileIndex:Lcom/google/android/exoplr2avp/upstream/cache/CacheFileMetadataIndex;

    .line 256
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    .line 257
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->random:Ljava/util/Random;

    .line 258
    invoke-interface {p2}, Lcom/google/android/exoplr2avp/upstream/cache/CacheEvictor;->requiresCacheSpanTouches()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->touchCacheSpans:Z

    const-wide/16 p1, -0x1

    .line 259
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->uid:J

    .line 262
    new-instance p1, Landroid/os/ConditionVariable;

    invoke-direct {p1}, Landroid/os/ConditionVariable;-><init>()V

    .line 263
    new-instance p2, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache$1;

    const-string p3, "ExoPlayer:SimpleCacheInit"

    invoke-direct {p2, p0, p3, p1}, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache$1;-><init>(Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;Ljava/lang/String;Landroid/os/ConditionVariable;)V

    .line 272
    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache$1;->start()V

    .line 273
    invoke-virtual {p1}, Landroid/os/ConditionVariable;->block()V

    return-void

    .line 249
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Another SimpleCache instance uses the folder: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public constructor <init>(Ljava/io/File;Lcom/google/android/exoplr2avp/upstream/cache/CacheEvictor;[B)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 156
    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;-><init>(Ljava/io/File;Lcom/google/android/exoplr2avp/upstream/cache/CacheEvictor;[BZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/google/android/exoplr2avp/upstream/cache/CacheEvictor;[BZ)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    .line 175
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;-><init>(Ljava/io/File;Lcom/google/android/exoplr2avp/upstream/cache/CacheEvictor;Lcom/google/android/exoplr2avp/database/DatabaseProvider;[BZZ)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->initialize()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;)Lcom/google/android/exoplr2avp/upstream/cache/CacheEvictor;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->evictor:Lcom/google/android/exoplr2avp/upstream/cache/CacheEvictor;

    return-object p0
.end method

.method private addSpan(Lcom/google/android/exoplr2avp/upstream/cache/SimpleCacheSpan;)V
    .locals 4

    .line 725
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->contentIndex:Lcom/google/android/exoplr2avp/upstream/cache/CachedContentIndex;

    iget-object v1, p1, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/upstream/cache/CachedContentIndex;->getOrAdd(Ljava/lang/String;)Lcom/google/android/exoplr2avp/upstream/cache/CachedContent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/upstream/cache/CachedContent;->addSpan(Lcom/google/android/exoplr2avp/upstream/cache/SimpleCacheSpan;)V

    .line 726
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->totalSpace:J

    iget-wide v2, p1, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCacheSpan;->length:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->totalSpace:J

    .line 727
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->notifySpanAdded(Lcom/google/android/exoplr2avp/upstream/cache/SimpleCacheSpan;)V

    return-void
.end method

.method private static createCacheDirectories(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/upstream/cache/Cache$CacheException;
        }
    .end annotation

    .line 841
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 842
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to create cache directory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SimpleCache"

    .line 843
    invoke-static {v0, p0}, Lcom/google/android/exoplr2avp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    new-instance v0, Lcom/google/android/exoplr2avp/upstream/cache/Cache$CacheException;

    invoke-direct {v0, p0}, Lcom/google/android/exoplr2avp/upstream/cache/Cache$CacheException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private static createUid(Ljava/io/File;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 823
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 824
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    :goto_0
    const/16 v2, 0x10

    .line 826
    invoke-static {v0, v1, v2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v2

    .line 827
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".uid"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 828
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result p0

    if-eqz p0, :cond_1

    return-wide v0

    .line 830
    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to create UID file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static delete(Ljava/io/File;Lcom/google/android/exoplr2avp/database/DatabaseProvider;)V
    .locals 7

    const-string v0, "Failed to delete file metadata: "

    const-string v1, "SimpleCache"

    .line 96
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 100
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_1

    .line 102
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 109
    invoke-static {v2}, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->loadUid([Ljava/io/File;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    .line 112
    :try_start_0
    invoke-static {p1, v2, v3}, Lcom/google/android/exoplr2avp/upstream/cache/CacheFileMetadataIndex;->delete(Lcom/google/android/exoplr2avp/database/DatabaseProvider;J)V
    :try_end_0
    .catch Lcom/google/android/exoplr2avp/database/DatabaseIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 114
    :catch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/google/android/exoplr2avp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :goto_0
    :try_start_1
    invoke-static {p1, v2, v3}, Lcom/google/android/exoplr2avp/upstream/cache/CachedContentIndex;->delete(Lcom/google/android/exoplr2avp/database/DatabaseProvider;J)V
    :try_end_1
    .catch Lcom/google/android/exoplr2avp/database/DatabaseIOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 119
    :catch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/android/exoplr2avp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_2
    :goto_1
    invoke-static {p0}, Lcom/google/android/exoplr2avp/util/Util;->recursiveDelete(Ljava/io/File;)V

    return-void
.end method

.method private getSpan(Ljava/lang/String;JJ)Lcom/google/android/exoplr2avp/upstream/cache/SimpleCacheSpan;
    .locals 6

    .line 703
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->contentIndex:Lcom/google/android/exoplr2avp/upstream/cache/CachedContentIndex;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/upstream/cache/CachedContentIndex;->get(Ljava/lang/String;)Lcom/google/android/exoplr2avp/upstream/cache/CachedContent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 705
    invoke-static {p1, p2, p3, p4, p5}, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCacheSpan;->createHole(Ljava/lang/String;JJ)Lcom/google/android/exoplr2avp/upstream/cache/SimpleCacheSpan;

    move-result-object p1

    return-object p1

    .line 708
    :cond_0
    :goto_0
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/google/android/exoplr2avp/upstream/cache/CachedContent;->getSpan(JJ)Lcom/google/android/exoplr2avp/upstream/cache/SimpleCacheSpan;

    move-result-object p1

    .line 709
    iget-boolean v1, p1, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCacheSpan;->isCached:Z

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCacheSpan;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    iget-wide v3, p1, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCacheSpan;->length:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 712
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->removeStaleSpans()V

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private initialize()V
    .locals 7

    .line 552
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 554
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->createCacheDirectories(Ljava/io/File;)V
    :try_end_0
    .catch Lcom/google/android/exoplr2avp/upstream/cache/Cache$CacheException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 556
    iput-object v0, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->initializationException:Lcom/google/android/exoplr2avp/upstream/cache/Cache$CacheException;

    return-void

    .line 561
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const-string v1, "SimpleCache"

    if-nez v0, :cond_1

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to list cache directory files: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 564
    invoke-static {v1, v0}, Lcom/google/android/exoplr2avp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    new-instance v1, Lcom/google/android/exoplr2avp/upstream/cache/Cache$CacheException;

    invoke-direct {v1, v0}, Lcom/google/android/exoplr2avp/upstream/cache/Cache$CacheException;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->initializationException:Lcom/google/android/exoplr2avp/upstream/cache/Cache$CacheException;

    return-void

    .line 569
    :cond_1
    invoke-static {v0}, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->loadUid([Ljava/io/File;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->uid:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    .line 572
    :try_start_1
    iget-object v2, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-static {v2}, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->createUid(Ljava/io/File;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->uid:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 574
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create cache UID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 575
    invoke-static {v1, v2, v0}, Lcom/google/android/exoplr2avp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 576
    new-instance v1, Lcom/google/android/exoplr2avp/upstream/cache/Cache$CacheException;

    invoke-direct {v1, v2, v0}, Lcom/google/android/exoplr2avp/upstream/cache/Cache$CacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v1, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->initializationException:Lcom/google/android/exoplr2avp/upstream/cache/Cache$CacheException;

    return-void

    .line 582
    :cond_2
    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->contentIndex:Lcom/google/android/exoplr2avp/upstream/cache/CachedContentIndex;

    iget-wide v3, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->uid:J

    invoke-virtual {v2, v3, v4}, Lcom/google/android/exoplr2avp/upstream/cache/CachedContentIndex;->initialize(J)V

    .line 583
    iget-object v2, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->fileIndex:Lcom/google/android/exoplr2avp/upstream/cache/CacheFileMetadataIndex;

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 584
    iget-wide v4, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->uid:J

    invoke-virtual {v2, v4, v5}, Lcom/google/android/exoplr2avp/upstream/cache/CacheFileMetadataIndex;->initialize(J)V

    .line 585
    iget-object v2, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->fileIndex:Lcom/google/android/exoplr2avp/upstream/cache/CacheFileMetadataIndex;

    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/upstream/cache/CacheFileMetadataIndex;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 586
    iget-object v4, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-direct {p0, v4, v3, v0, v2}, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->loadDirectory(Ljava/io/File;Z[Ljava/io/File;Ljava/util/Map;)V

    .line 587
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->fileIndex:Lcom/google/android/exoplr2avp/upstream/cache/CacheFileMetadataIndex;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/exoplr2avp/upstream/cache/CacheFileMetadataIndex;->removeAll(Ljava/util/Set;)V

    goto :goto_2

    .line 589
    :cond_3
    iget-object v2, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v0, v4}, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->loadDirectory(Ljava/io/File;Z[Ljava/io/File;Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 598
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->contentIndex:Lcom/google/android/exoplr2avp/upstream/cache/CachedContentIndex;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/upstream/cache/CachedContentIndex;->removeEmpty()V

    .line 600
    :try_start_3
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->contentIndex:Lcom/google/android/exoplr2avp/upstream/cache/CachedContentIndex;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/upstream/cache/CachedContentIndex;->store()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    const-string v2, "Storing index file failed"

    .line 602
    invoke-static {v1, v2, v0}, Lcom/google/android/exoplr2avp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void

    :catch_3
    move-exception v0

    .line 592
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to initialize cache indices: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 593
    invoke-static {v1, v2, v0}, Lcom/google/android/exoplr2avp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 594
    new-instance v1, Lcom/google/android/exoplr2avp/upstream/cache/Cache$CacheException;

    invoke-direct {v1, v2, v0}, Lcom/google/android/exoplr2avp/upstream/cache/Cache$CacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v1, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->initializationException:Lcom/google/android/exoplr2avp/upstream/cache/Cache$CacheException;

    return-void
.end method

.method public static declared-synchronized isCacheFolderLocked(Ljava/io/File;)Z
    .locals 2

    const-class v0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;

    monitor-enter v0

    .line 82
    :try_start_0
    sget-object v1, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->lockedCacheDirs:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private loadDirectory(Ljava/io/File;Z[Ljava/io/File;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Z[",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplr2avp/upstream/cache/CacheFileMetadata;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_8

    .line 621
    array-length v0, p3

    if-nez v0, :cond_0

    goto :goto_3

    .line 630
    :cond_0
    array-length p1, p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_7

    aget-object v8, p3, v1

    .line 631
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_1

    const/16 v3, 0x2e

    .line 632
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 633
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-direct {p0, v8, v0, v2, p4}, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->loadDirectory(Ljava/io/File;Z[Ljava/io/File;Ljava/util/Map;)V

    goto :goto_2

    :cond_1
    if-eqz p2, :cond_2

    .line 636
    invoke-static {v2}, Lcom/google/android/exoplr2avp/upstream/cache/CachedContentIndex;->isIndexFile(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, ".uid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const-wide/16 v3, -0x1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p4, :cond_3

    .line 643
    invoke-interface {p4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplr2avp/upstream/cache/CacheFileMetadata;

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_4

    .line 645
    iget-wide v3, v2, Lcom/google/android/exoplr2avp/upstream/cache/CacheFileMetadata;->length:J

    .line 646
    iget-wide v5, v2, Lcom/google/android/exoplr2avp/upstream/cache/CacheFileMetadata;->lastTouchTimestamp:J

    .line 649
    :cond_4
    iget-object v7, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->contentIndex:Lcom/google/android/exoplr2avp/upstream/cache/CachedContentIndex;

    move-object v2, v8

    .line 650
    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCacheSpan;->createCacheEntry(Ljava/io/File;JJLcom/google/android/exoplr2avp/upstream/cache/CachedContentIndex;)Lcom/google/android/exoplr2avp/upstream/cache/SimpleCacheSpan;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 652
    invoke-direct {p0, v2}, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->addSpan(Lcom/google/android/exoplr2avp/upstream/cache/SimpleCacheSpan;)V

    goto :goto_2

    .line 654
    :cond_5
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    return-void

    :cond_8
    :goto_3
    if-nez p2, :cond_9

    .line 626
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_9
    return-void
.end method

.method private static loadUid([Ljava/io/File;)J
    .locals 5

    .line 805
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 806
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".uid"

    .line 807
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 809
    :try_start_0
    invoke-static {v3}, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->parseUid(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 812
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Malformed UID file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SimpleCache"

    invoke-static {v4, v3}, Lcom/google/android/exoplr2avp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private static declared-synchronized lockFolder(Ljava/io/File;)Z
    .locals 2

    const-class v0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;

    monitor-enter v0

    .line 849
    :try_start_0
    sget-object v1, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->lockedCacheDirs:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private notifySpanAdded(Lcom/google/android/exoplr2avp/upstream/cache/SimpleCacheSpan;)V
    .locals 3

    .line 779
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 781
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 782
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplr2avp/upstream/cache/Cache$Listener;

    invoke-interface {v2, p0, p1}, Lcom/google/android/exoplr2avp/upstream/cache/Cache$Listener;->onSpanAdded(Lcom/google/android/exoplr2avp/upstream/cache/Cache;Lcom/google/android/exoplr2avp/upstream/cache/CacheSpan;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 785
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->evictor:Lcom/google/android/exoplr2avp/upstream/cache/CacheEvictor;

    invoke-interface {v0, p0, p1}, Lcom/google/android/exoplr2avp/upstream/cache/CacheEvictor;->onSpanAdded(Lcom/google/android/exoplr2avp/upstream/cache/Cache;Lcom/google/android/exoplr2avp/upstream/cache/CacheSpan;)V

    return-void
.end method

.method private notifySpanRemoved(Lcom/google/android/exoplr2avp/upstream/cache/CacheSpan;)V
    .locals 3

    .line 769
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/google/android/exoplr2avp/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 771
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 772
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplr2avp/upstream/cache/Cache$Listener;

    invoke-interface {v2, p0, p1}, Lcom/google/android/exoplr2avp/upstream/cache/Cache$Listener;->onSpanRemoved(Lcom/google/android/exoplr2avp/upstream/cache/Cache;Lcom/google/android/exoplr2avp/upstream/cache/CacheSpan;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 775
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->evictor:Lcom/google/android/exoplr2avp/upstream/cache/CacheEvictor;

    invoke-interface {v0, p0, p1}, Lcom/google/android/exoplr2avp/upstream/cache/CacheEvictor;->onSpanRemoved(Lcom/google/android/exoplr2avp/upstream/cache/Cache;Lcom/google/android/exoplr2avp/upstream/cache/CacheSpan;)V

    return-void
.end method

.method private notifySpanTouched(Lcom/google/android/exoplr2avp/upstream/cache/SimpleCacheSpan;Lcom/google/android/exoplr2avp/upstream/cache/CacheSpan;)V
    .locals 3

    .line 789
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 791
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 792
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplr2avp/upstream/cache/Cache$Listener;

    invoke-interface {v2, p0, p1, p2}, Lcom/google/android/exoplr2avp/upstream/cache/Cache$Listener;->onSpanTouched(Lcom/google/android/exoplr2avp/upstream/cache/Cache;Lcom/google/android/exoplr2avp/upstream/cache/CacheSpan;Lcom/google/android/exoplr2avp/upstream/cache/CacheSpan;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 795
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->evictor:Lcom/google/android/exoplr2avp/upstream/cache/CacheEvictor;

    invoke-interface {v0, p0, p1, p2}, Lcom/google/android/exoplr2avp/upstream/cache/CacheEvictor;->onSpanTouched(Lcom/google/android/exoplr2avp/upstream/cache/Cache;Lcom/google/android/exoplr2avp/upstream/cache/CacheSpan;Lcom/google/android/exoplr2avp/upstream/cache/CacheSpan;)V

    return-void
.end method

.method private static parseUid(Ljava/lang/String;)J
    .locals 2

    const/16 v0, 0x2e

    .line 836
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method private removeSpanInternal(Lcom/google/android/exoplr2avp/upstream/cache/CacheSpan;)V
    .locals 5

    .line 731
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->contentIndex:Lcom/google/android/exoplr2avp/upstream/cache/CachedContentIndex;

    iget-object v1, p1, Lcom/google/android/exoplr2avp/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/upstream/cache/CachedContentIndex;->get(Ljava/lang/String;)Lcom/google/android/exoplr2avp/upstream/cache/CachedContent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 732
    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/upstream/cache/CachedContent;->removeSpan(Lcom/google/android/exoplr2avp/upstream/cache/CacheSpan;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 735
    :cond_0
    iget-wide v1, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->totalSpace:J

    iget-wide v3, p1, Lcom/google/android/exoplr2avp/upstream/cache/CacheSpan;->length:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->totalSpace:J

    .line 736
    iget-object v1, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->fileIndex:Lcom/google/android/exoplr2avp/upstream/cache/CacheFileMetadataIndex;

    if-eqz v1, :cond_1

    .line 737
    iget-object v1, p1, Lcom/google/android/exoplr2avp/upstream/cache/CacheSpan;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 739
    :try_start_0
    iget-object v2, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->fileIndex:Lcom/google/android/exoplr2avp/upstream/cache/CacheFileMetadataIndex;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplr2avp/upstream/cache/CacheFileMetadataIndex;->remove(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 743
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to remove file index entry for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimpleCache"

    invoke-static {v2, v1}, Lcom/google/android/exoplr2avp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->contentIndex:Lcom/google/android/exoplr2avp/upstream/cache/CachedContentIndex;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/upstream/cache/CachedContent;->key:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplr2avp/upstream/cache/CachedContentIndex;->maybeRemove(Ljava/lang/String;)V

    .line 747
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->notifySpanRemoved(Lcom/google/android/exoplr2avp/upstream/cache/CacheSpan;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private removeStaleSpans()V
    .locals 9

    .line 755
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 756
    iget-object v1, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->contentIndex:Lcom/google/android/exoplr2avp/upstream/cache/CachedContentIndex;

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/upstream/cache/CachedContentIndex;->getAll()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplr2avp/upstream/cache/CachedContent;

    .line 757
    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/upstream/cache/CachedContent;->getSpans()Ljava/util/TreeSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplr2avp/upstream/cache/CacheSpan;

    .line 758
    iget-object v4, v3, Lcom/google/android/exoplr2avp/upstream/cache/CacheSpan;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    iget-wide v6, v3, Lcom/google/android/exoplr2avp/upstream/cache/CacheSpan;->length:J

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    .line 759
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 763
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 764
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplr2avp/upstream/cache/CacheSpan;

    invoke-direct {p0, v2}, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->removeSpanInternal(Lcom/google/android/exoplr2avp/upstream/cache/CacheSpan;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private touchSpan(Ljava/lang/String;Lcom/google/android/exoplr2avp/upstream/cache/SimpleCacheSpan;)Lcom/google/android/exoplr2avp/upstream/cache/SimpleCacheSpan;
    .locals 9

    .line 669
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->touchCacheSpans:Z

    if-nez v0, :cond_0

    return-object p2

    .line 672
    :cond_0
    iget-object v0, p2, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCacheSpan;->file:Ljava/io/File;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 673
    iget-wide v3, p2, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCacheSpan;->length:J

    .line 674
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const/4 v0, 0x0

    .line 676
    iget-object v1, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->fileIndex:Lcom/google/android/exoplr2avp/upstream/cache/CacheFileMetadataIndex;

    if-eqz v1, :cond_1

    move-wide v5, v7

    .line 678
    :try_start_0
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplr2avp/upstream/cache/CacheFileMetadataIndex;->set(Ljava/lang/String;JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "SimpleCache"

    const-string v2, "Failed to update index with new touch timestamp."

    .line 680
    invoke-static {v1, v2}, Lcom/google/android/exoplr2avp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 687
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->contentIndex:Lcom/google/android/exoplr2avp/upstream/cache/CachedContentIndex;

    .line 688
    invoke-virtual {v1, p1}, Lcom/google/android/exoplr2avp/upstream/cache/CachedContentIndex;->get(Ljava/lang/String;)Lcom/google/android/exoplr2avp/upstream/cache/CachedContent;

    move-result-object p1

    invoke-virtual {p1, p2, v7, v8, v0}, Lcom/google/android/exoplr2avp/upstream/cache/CachedContent;->setLastTouchTimestamp(Lcom/google/android/exoplr2avp/upstream/cache/SimpleCacheSpan;JZ)Lcom/google/android/exoplr2avp/upstream/cache/SimpleCacheSpan;

    move-result-object p1

    .line 689
    invoke-direct {p0, p2, p1}, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->notifySpanTouched(Lcom/google/android/exoplr2avp/upstream/cache/SimpleCacheSpan;Lcom/google/android/exoplr2avp/upstream/cache/CacheSpan;)V

    return-object p1
.end method

.method private static declared-synchronized unlockFolder(Ljava/io/File;)V
    .locals 2

    const-class v0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;

    monitor-enter v0

    .line 853
    :try_start_0
    sget-object v1, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->lockedCacheDirs:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 854
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public declared-synchronized addListener(Ljava/lang/String;Lcom/google/android/exoplr2avp/upstream/cache/Cache$Listener;)Ljava/util/NavigableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplr2avp/upstream/cache/Cache$Listener;",
            ")",
            "Ljava/util/NavigableSet<",
            "Lcom/google/android/exoplr2avp/upstream/cache/CacheSpan;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 311
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->released:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 312
    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    invoke-static {p2}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 316
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 317
    iget-object v1, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    :cond_1
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->getCachedSpans(Ljava/lang/String;)Ljava/util/NavigableSet;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized applyContentMetadataMutations(Ljava/lang/String;Lcom/google/android/exoplr2avp/upstream/cache/ContentMetadataMutations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/upstream/cache/Cache$CacheException;
        }
    .end annotation

    monitor-enter p0

    .line 533
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->released:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 534
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->checkInitialization()V

    .line 536
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->contentIndex:Lcom/google/android/exoplr2avp/upstream/cache/CachedContentIndex;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplr2avp/upstream/cache/CachedContentIndex;->applyContentMetadataMutations(Ljava/lang/String;Lcom/google/android/exoplr2avp/upstream/cache/ContentMetadataMutations;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    :try_start_1
    iget-object p1, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->contentIndex:Lcom/google/android/exoplr2avp/upstream/cache/CachedContentIndex;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/upstream/cache/CachedContentIndex;->store()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 542
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    .line 540
    :try_start_2
    new-instance p2, Lcom/google/android/exoplr2avp/upstream/cache/Cache$CacheException;

    invoke-direct {p2, p1}, Lcom/google/android/exoplr2avp/upstream/cache/Cache$CacheException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized checkInitialization()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/upstream/cache/Cache$CacheException;
        }
    .end annotation

    monitor-enter p0

    .line 282
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->initializationException:Lcom/google/android/exoplr2avp/upstream/cache/Cache$CacheException;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 285
    monitor-exit p0

    return-void

    .line 283
    :cond_0
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized commitFile(Ljava/io/File;J)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/upstream/cache/Cache$CacheException;
        }
    .end annotation

    monitor-enter p0

    .line 430
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->released:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 431
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 432
    monitor-exit p0

    return-void

    :cond_1
    const-wide/16 v3, 0x0

    cmp-long v0, p2, v3

    if-nez v0, :cond_2

    .line 435
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 436
    monitor-exit p0

    return-void

    .line 439
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->contentIndex:Lcom/google/android/exoplr2avp/upstream/cache/CachedContentIndex;

    .line 440
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCacheSpan;->createCacheEntry(Ljava/io/File;JLcom/google/android/exoplr2avp/upstream/cache/CachedContentIndex;)Lcom/google/android/exoplr2avp/upstream/cache/SimpleCacheSpan;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCacheSpan;

    .line 441
    iget-object p3, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->contentIndex:Lcom/google/android/exoplr2avp/upstream/cache/CachedContentIndex;

    iget-object v0, p2, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCacheSpan;->key:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/google/android/exoplr2avp/upstream/cache/CachedContentIndex;->get(Ljava/lang/String;)Lcom/google/android/exoplr2avp/upstream/cache/CachedContent;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/exoplr2avp/upstream/cache/CachedContent;

    .line 442
    iget-wide v3, p2, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCacheSpan;->position:J

    iget-wide v5, p2, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCacheSpan;->length:J

    invoke-virtual {p3, v3, v4, v5, v6}, Lcom/google/android/exoplr2avp/upstream/cache/CachedContent;->isFullyLocked(JJ)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 445
    invoke-virtual {p3}, Lcom/google/android/exoplr2avp/upstream/cache/CachedContent;->getMetadata()Lcom/google/android/exoplr2avp/upstream/cache/DefaultContentMetadata;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/exoplr2avp/upstream/cache/ContentMetadata$-CC;->getContentLength(Lcom/google/android/exoplr2avp/upstream/cache/ContentMetadata;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long p3, v3, v5

    if-eqz p3, :cond_4

    .line 447
    iget-wide v5, p2, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCacheSpan;->position:J

    iget-wide v7, p2, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCacheSpan;->length:J

    add-long/2addr v5, v7

    cmp-long p3, v5, v3

    if-gtz p3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 450
    :cond_4
    iget-object p3, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->fileIndex:Lcom/google/android/exoplr2avp/upstream/cache/CacheFileMetadataIndex;

    if-eqz p3, :cond_5

    .line 451
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 453
    :try_start_3
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->fileIndex:Lcom/google/android/exoplr2avp/upstream/cache/CacheFileMetadataIndex;

    iget-wide v2, p2, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCacheSpan;->length:J

    iget-wide v4, p2, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCacheSpan;->lastTouchTimestamp:J

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplr2avp/upstream/cache/CacheFileMetadataIndex;->set(Ljava/lang/String;JJ)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 455
    :try_start_4
    new-instance p2, Lcom/google/android/exoplr2avp/upstream/cache/Cache$CacheException;

    invoke-direct {p2, p1}, Lcom/google/android/exoplr2avp/upstream/cache/Cache$CacheException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 458
    :cond_5
    :goto_2
    invoke-direct {p0, p2}, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->addSpan(Lcom/google/android/exoplr2avp/upstream/cache/SimpleCacheSpan;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 460
    :try_start_5
    iget-object p1, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->contentIndex:Lcom/google/android/exoplr2avp/upstream/cache/CachedContentIndex;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/upstream/cache/CachedContentIndex;->store()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 464
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 465
    monitor-exit p0

    return-void

    :catch_1
    move-exception p1

    .line 462
    :try_start_7
    new-instance p2, Lcom/google/android/exoplr2avp/upstream/cache/Cache$CacheException;

    invoke-direct {p2, p1}, Lcom/google/android/exoplr2avp/upstream/cache/Cache$CacheException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getCacheSpace()J
    .locals 2

    monitor-enter p0

    .line 354
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->released:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 355
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->totalSpace:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCachedBytes(Ljava/lang/String;JJ)J
    .locals 10

    monitor-enter p0

    const-wide/16 v0, -0x1

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, p4, v0

    if-nez v4, :cond_0

    move-wide p4, v2

    goto :goto_0

    :cond_0
    add-long/2addr p4, p2

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v4, p4, v0

    if-gez v4, :cond_1

    goto :goto_1

    :cond_1
    move-wide v2, p4

    :goto_1
    move-wide p4, v0

    :goto_2
    cmp-long v4, p2, v2

    if-gez v4, :cond_3

    sub-long v8, v2, p2

    move-object v4, p0

    move-object v5, p1

    move-wide v6, p2

    .line 518
    :try_start_0
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->getCachedLength(Ljava/lang/String;JJ)J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v6, v4, v0

    if-lez v6, :cond_2

    add-long/2addr p4, v4

    goto :goto_3

    :cond_2
    neg-long v4, v4

    :goto_3
    add-long/2addr p2, v4

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 527
    :cond_3
    monitor-exit p0

    return-wide p4
.end method

.method public declared-synchronized getCachedLength(Ljava/lang/String;JJ)J
    .locals 3

    monitor-enter p0

    .line 499
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->released:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    const-wide/16 v0, -0x1

    cmp-long v2, p4, v0

    if-nez v2, :cond_1

    const-wide p4, 0x7fffffffffffffffL

    .line 503
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->contentIndex:Lcom/google/android/exoplr2avp/upstream/cache/CachedContentIndex;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/upstream/cache/CachedContentIndex;->get(Ljava/lang/String;)Lcom/google/android/exoplr2avp/upstream/cache/CachedContent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 504
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/google/android/exoplr2avp/upstream/cache/CachedContent;->getCachedBytesLength(JJ)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    neg-long p1, p4

    :goto_1
    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getCachedSpans(Ljava/lang/String;)Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/NavigableSet<",
            "Lcom/google/android/exoplr2avp/upstream/cache/CacheSpan;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 339
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->released:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 340
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->contentIndex:Lcom/google/android/exoplr2avp/upstream/cache/CachedContentIndex;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/upstream/cache/CachedContentIndex;->get(Ljava/lang/String;)Lcom/google/android/exoplr2avp/upstream/cache/CachedContent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 341
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/upstream/cache/CachedContent;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 343
    :cond_1
    new-instance v0, Ljava/util/TreeSet;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/upstream/cache/CachedContent;->getSpans()Ljava/util/TreeSet;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    goto :goto_2

    .line 342
    :cond_2
    :goto_1
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    :goto_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getContentMetadata(Ljava/lang/String;)Lcom/google/android/exoplr2avp/upstream/cache/ContentMetadata;
    .locals 1

    monitor-enter p0

    .line 546
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->released:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 547
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->contentIndex:Lcom/google/android/exoplr2avp/upstream/cache/CachedContentIndex;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/upstream/cache/CachedContentIndex;->getContentMetadata(Ljava/lang/String;)Lcom/google/android/exoplr2avp/upstream/cache/ContentMetadata;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getKeys()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 348
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->released:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 349
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->contentIndex:Lcom/google/android/exoplr2avp/upstream/cache/CachedContentIndex;

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/upstream/cache/CachedContentIndex;->getKeys()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUid()J
    .locals 2

    monitor-enter p0

    .line 289
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->uid:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isCached(Ljava/lang/String;JJ)Z
    .locals 3

    monitor-enter p0

    .line 492
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->released:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 493
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->contentIndex:Lcom/google/android/exoplr2avp/upstream/cache/CachedContentIndex;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/upstream/cache/CachedContentIndex;->get(Ljava/lang/String;)Lcom/google/android/exoplr2avp/upstream/cache/CachedContent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 494
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/google/android/exoplr2avp/upstream/cache/CachedContent;->getCachedBytesLength(JJ)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long p3, p1, p4

    if-ltz p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized release()V
    .locals 4

    monitor-enter p0

    .line 294
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->released:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 295
    monitor-exit p0

    return-void

    .line 297
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 298
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->removeStaleSpans()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x1

    .line 300
    :try_start_2
    iget-object v1, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->contentIndex:Lcom/google/android/exoplr2avp/upstream/cache/CachedContentIndex;

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/upstream/cache/CachedContentIndex;->store()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 304
    :try_start_3
    iget-object v1, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-static {v1}, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->unlockFolder(Ljava/io/File;)V

    .line 305
    :goto_0
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->released:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_4
    const-string v2, "SimpleCache"

    const-string v3, "Storing index file failed"

    .line 302
    invoke-static {v2, v3, v1}, Lcom/google/android/exoplr2avp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 304
    :try_start_5
    iget-object v1, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-static {v1}, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->unlockFolder(Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 307
    :goto_1
    monitor-exit p0

    return-void

    .line 304
    :goto_2
    :try_start_6
    iget-object v2, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-static {v2}, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->unlockFolder(Ljava/io/File;)V

    .line 305
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->released:Z

    .line 306
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized releaseHoleSpan(Lcom/google/android/exoplr2avp/upstream/cache/CacheSpan;)V
    .locals 3

    monitor-enter p0

    .line 469
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->released:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 470
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->contentIndex:Lcom/google/android/exoplr2avp/upstream/cache/CachedContentIndex;

    iget-object v1, p1, Lcom/google/android/exoplr2avp/upstream/cache/CacheSpan;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/upstream/cache/CachedContentIndex;->get(Ljava/lang/String;)Lcom/google/android/exoplr2avp/upstream/cache/CachedContent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/upstream/cache/CachedContent;

    .line 471
    iget-wide v1, p1, Lcom/google/android/exoplr2avp/upstream/cache/CacheSpan;->position:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplr2avp/upstream/cache/CachedContent;->unlockRange(J)V

    .line 472
    iget-object p1, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->contentIndex:Lcom/google/android/exoplr2avp/upstream/cache/CachedContentIndex;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/upstream/cache/CachedContent;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/upstream/cache/CachedContentIndex;->maybeRemove(Ljava/lang/String;)V

    .line 473
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeListener(Ljava/lang/String;Lcom/google/android/exoplr2avp/upstream/cache/Cache$Listener;)V
    .locals 1

    monitor-enter p0

    .line 325
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->released:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 326
    monitor-exit p0

    return-void

    .line 328
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 330
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 331
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 332
    iget-object p2, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->listeners:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 335
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeResource(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 478
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->released:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 479
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->getCachedSpans(Ljava/lang/String;)Ljava/util/NavigableSet;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/upstream/cache/CacheSpan;

    .line 480
    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->removeSpanInternal(Lcom/google/android/exoplr2avp/upstream/cache/CacheSpan;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 482
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeSpan(Lcom/google/android/exoplr2avp/upstream/cache/CacheSpan;)V
    .locals 1

    monitor-enter p0

    .line 486
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->released:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 487
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->removeSpanInternal(Lcom/google/android/exoplr2avp/upstream/cache/CacheSpan;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startFile(Ljava/lang/String;JJ)Ljava/io/File;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/upstream/cache/Cache$CacheException;
        }
    .end annotation

    monitor-enter p0

    .line 405
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->released:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 406
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->checkInitialization()V

    .line 408
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->contentIndex:Lcom/google/android/exoplr2avp/upstream/cache/CachedContentIndex;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/upstream/cache/CachedContentIndex;->get(Ljava/lang/String;)Lcom/google/android/exoplr2avp/upstream/cache/CachedContent;

    move-result-object v0

    .line 409
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/google/android/exoplr2avp/upstream/cache/CachedContent;->isFullyLocked(JJ)Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 411
    iget-object v1, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 414
    iget-object v1, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    invoke-static {v1}, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->createCacheDirectories(Ljava/io/File;)V

    .line 415
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->removeStaleSpans()V

    .line 417
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->evictor:Lcom/google/android/exoplr2avp/upstream/cache/CacheEvictor;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplr2avp/upstream/cache/CacheEvictor;->onStartFile(Lcom/google/android/exoplr2avp/upstream/cache/Cache;Ljava/lang/String;JJ)V

    .line 419
    new-instance v2, Ljava/io/File;

    iget-object p1, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->cacheDir:Ljava/io/File;

    iget-object p4, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->random:Ljava/util/Random;

    const/16 p5, 0xa

    invoke-virtual {p4, p5}, Ljava/util/Random;->nextInt(I)I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p4

    invoke-direct {v2, p1, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 420
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    .line 421
    invoke-static {v2}, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->createCacheDirectories(Ljava/io/File;)V

    .line 423
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 424
    iget v3, v0, Lcom/google/android/exoplr2avp/upstream/cache/CachedContent;->id:I

    move-wide v4, p2

    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCacheSpan;->getCacheFile(Ljava/io/File;IJJ)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startReadWrite(Ljava/lang/String;JJ)Lcom/google/android/exoplr2avp/upstream/cache/CacheSpan;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/google/android/exoplr2avp/upstream/cache/Cache$CacheException;
        }
    .end annotation

    monitor-enter p0

    .line 361
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->released:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 362
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->checkInitialization()V

    .line 365
    :goto_1
    invoke-virtual/range {p0 .. p5}, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->startReadWriteNonBlocking(Ljava/lang/String;JJ)Lcom/google/android/exoplr2avp/upstream/cache/CacheSpan;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 367
    monitor-exit p0

    return-object v0

    .line 374
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startReadWriteNonBlocking(Ljava/lang/String;JJ)Lcom/google/android/exoplr2avp/upstream/cache/CacheSpan;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/upstream/cache/Cache$CacheException;
        }
    .end annotation

    monitor-enter p0

    .line 383
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->released:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 384
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->checkInitialization()V

    .line 386
    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->getSpan(Ljava/lang/String;JJ)Lcom/google/android/exoplr2avp/upstream/cache/SimpleCacheSpan;

    move-result-object p4

    .line 388
    iget-boolean p5, p4, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCacheSpan;->isCached:Z

    if-eqz p5, :cond_1

    .line 390
    invoke-direct {p0, p1, p4}, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->touchSpan(Ljava/lang/String;Lcom/google/android/exoplr2avp/upstream/cache/SimpleCacheSpan;)Lcom/google/android/exoplr2avp/upstream/cache/SimpleCacheSpan;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 393
    :cond_1
    :try_start_1
    iget-object p5, p0, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->contentIndex:Lcom/google/android/exoplr2avp/upstream/cache/CachedContentIndex;

    invoke-virtual {p5, p1}, Lcom/google/android/exoplr2avp/upstream/cache/CachedContentIndex;->getOrAdd(Ljava/lang/String;)Lcom/google/android/exoplr2avp/upstream/cache/CachedContent;

    move-result-object p1

    .line 394
    iget-wide v0, p4, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCacheSpan;->length:J

    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/google/android/exoplr2avp/upstream/cache/CachedContent;->lockRange(JJ)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    .line 396
    monitor-exit p0

    return-object p4

    :cond_2
    const/4 p1, 0x0

    .line 400
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
