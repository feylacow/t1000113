.class public final Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSink$CacheDataSinkException;
.super Lcom/google/android/exoplr2avp/upstream/cache/Cache$CacheException;
.source "CacheDataSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CacheDataSinkException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/IOException;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/upstream/cache/Cache$CacheException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
