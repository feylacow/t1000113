.class public final Lcom/google/android/exoplr2avp/source/LoadEventInfo;
.super Ljava/lang/Object;
.source "LoadEventInfo.java"


# static fields
.field private static final idSource:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field public final bytesLoaded:J

.field public final dataSpec:Lcom/google/android/exoplr2avp/upstream/DataSpec;

.field public final elapsedRealtimeMs:J

.field public final loadDurationMs:J

.field public final loadTaskId:J

.field public final responseHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/google/android/exoplr2avp/source/LoadEventInfo;->idSource:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(JLcom/google/android/exoplr2avp/upstream/DataSpec;J)V
    .locals 12

    move-object v3, p3

    .line 62
    iget-object v4, v3, Lcom/google/android/exoplr2avp/upstream/DataSpec;->uri:Landroid/net/Uri;

    .line 66
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v6, p4

    .line 62
    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplr2avp/source/LoadEventInfo;-><init>(JLcom/google/android/exoplr2avp/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    return-void
.end method

.method public constructor <init>(JLcom/google/android/exoplr2avp/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/google/android/exoplr2avp/upstream/DataSpec;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;JJJ)V"
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/source/LoadEventInfo;->loadTaskId:J

    .line 92
    iput-object p3, p0, Lcom/google/android/exoplr2avp/source/LoadEventInfo;->dataSpec:Lcom/google/android/exoplr2avp/upstream/DataSpec;

    .line 93
    iput-object p4, p0, Lcom/google/android/exoplr2avp/source/LoadEventInfo;->uri:Landroid/net/Uri;

    .line 94
    iput-object p5, p0, Lcom/google/android/exoplr2avp/source/LoadEventInfo;->responseHeaders:Ljava/util/Map;

    .line 95
    iput-wide p6, p0, Lcom/google/android/exoplr2avp/source/LoadEventInfo;->elapsedRealtimeMs:J

    .line 96
    iput-wide p8, p0, Lcom/google/android/exoplr2avp/source/LoadEventInfo;->loadDurationMs:J

    .line 97
    iput-wide p10, p0, Lcom/google/android/exoplr2avp/source/LoadEventInfo;->bytesLoaded:J

    return-void
.end method

.method public static getNewId()J
    .locals 2

    .line 34
    sget-object v0, Lcom/google/android/exoplr2avp/source/LoadEventInfo;->idSource:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    return-wide v0
.end method
