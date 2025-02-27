.class public final Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler;
.super Ljava/lang/Object;
.source "PlayerEmsgHandler.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler$ManifestExpiryEventInfo;,
        Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;,
        Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler$PlayerEmsgCallback;
    }
.end annotation


# static fields
.field private static final EMSG_MANIFEST_EXPIRED:I = 0x1


# instance fields
.field private final allocator:Lcom/google/android/exoplr2avp/upstream/Allocator;

.field private chunkLoadedCompletedSinceLastManifestRefreshRequest:Z

.field private final decoder:Lcom/google/android/exoplr2avp/metadata/emsg/EventMessageDecoder;

.field private expiredManifestPublishTimeUs:J

.field private final handler:Landroid/os/Handler;

.field private isWaitingForManifestRefresh:Z

.field private manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

.field private final manifestPublishTimeToExpiryTimeUs:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final playerEmsgCallback:Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler$PlayerEmsgCallback;

.field private released:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler$PlayerEmsgCallback;Lcom/google/android/exoplr2avp/upstream/Allocator;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    .line 101
    iput-object p2, p0, Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler;->playerEmsgCallback:Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler$PlayerEmsgCallback;

    .line 102
    iput-object p3, p0, Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler;->allocator:Lcom/google/android/exoplr2avp/upstream/Allocator;

    .line 104
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler;->manifestPublishTimeToExpiryTimeUs:Ljava/util/TreeMap;

    .line 105
    invoke-static {p0}, Lcom/google/android/exoplr2avp/util/Util;->createHandlerForCurrentLooper(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler;->handler:Landroid/os/Handler;

    .line 106
    new-instance p1, Lcom/google/android/exoplr2avp/metadata/emsg/EventMessageDecoder;

    invoke-direct {p1}, Lcom/google/android/exoplr2avp/metadata/emsg/EventMessageDecoder;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler;->decoder:Lcom/google/android/exoplr2avp/metadata/emsg/EventMessageDecoder;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler;)Lcom/google/android/exoplr2avp/metadata/emsg/EventMessageDecoder;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler;->decoder:Lcom/google/android/exoplr2avp/metadata/emsg/EventMessageDecoder;

    return-object p0
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 61
    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler;->isPlayerEmsgEvent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/google/android/exoplr2avp/metadata/emsg/EventMessage;)J
    .locals 2

    .line 61
    invoke-static {p0}, Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler;->getManifestPublishTimeMsInEmsg(Lcom/google/android/exoplr2avp/metadata/emsg/EventMessage;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler;)Landroid/os/Handler;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private ceilingExpiryEntryForPublishTime(J)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler;->manifestPublishTimeToExpiryTimeUs:Ljava/util/TreeMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method private static getManifestPublishTimeMsInEmsg(Lcom/google/android/exoplr2avp/metadata/emsg/EventMessage;)J
    .locals 2

    .line 242
    :try_start_0
    iget-object p0, p0, Lcom/google/android/exoplr2avp/metadata/emsg/EventMessage;->messageData:[B

    invoke-static {p0}, Lcom/google/android/exoplr2avp/util/Util;->fromUtf8Bytes([B)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/exoplr2avp/util/Util;->parseXsDateTime(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Lcom/google/android/exoplr2avp/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method private handleManifestExpiredMessage(JJ)V
    .locals 3

    .line 198
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler;->manifestPublishTimeToExpiryTimeUs:Ljava/util/TreeMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler;->manifestPublishTimeToExpiryTimeUs:Ljava/util/TreeMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p3, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 202
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-lez v2, :cond_1

    .line 203
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler;->manifestPublishTimeToExpiryTimeUs:Ljava/util/TreeMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p3, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method private static isPlayerEmsgEvent(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "urn:mpeg:dash:event:2012"

    .line 254
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "1"

    .line 255
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "2"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "3"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private maybeNotifyDashManifestRefreshNeeded()V
    .locals 1

    .line 231
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler;->chunkLoadedCompletedSinceLastManifestRefreshRequest:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 235
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler;->isWaitingForManifestRefresh:Z

    const/4 v0, 0x0

    .line 236
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler;->chunkLoadedCompletedSinceLastManifestRefreshRequest:Z

    .line 237
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler;->playerEmsgCallback:Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler$PlayerEmsgCallback;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler$PlayerEmsgCallback;->onDashManifestRefreshRequested()V

    return-void
.end method

.method private notifyManifestPublishTimeExpired()V
    .locals 3

    .line 226
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler;->playerEmsgCallback:Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler$PlayerEmsgCallback;

    iget-wide v1, p0, Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler;->expiredManifestPublishTimeUs:J

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler$PlayerEmsgCallback;->onDashManifestPublishTimeExpired(J)V

    return-void
.end method

.method private removePreviouslyExpiredManifestPublishTimeValues()V
    .locals 6

    .line 214
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler;->manifestPublishTimeToExpiryTimeUs:Ljava/util/TreeMap;

    .line 215
    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 216
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 217
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 218
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 219
    iget-object v3, p0, Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    iget-wide v3, v3, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->publishTimeMs:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    .line 220
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    .line 134
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler;->released:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 137
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 139
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler$ManifestExpiryEventInfo;

    .line 140
    iget-wide v2, p1, Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler$ManifestExpiryEventInfo;->eventTimeUs:J

    iget-wide v4, p1, Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler$ManifestExpiryEventInfo;->manifestPublishTimeMsInEmsg:J

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler;->handleManifestExpiredMessage(JJ)V

    return v1
.end method

.method maybeRefreshManifestBeforeLoadingNextChunk(J)Z
    .locals 6

    .line 152
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    iget-boolean v0, v0, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->dynamic:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 155
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler;->isWaitingForManifestRefresh:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    iget-wide v3, v0, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->publishTimeMs:J

    invoke-direct {p0, v3, v4}, Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler;->ceilingExpiryEntryForPublishTime(J)Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 163
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v5, v3, p1

    if-gez v5, :cond_2

    .line 165
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler;->expiredManifestPublishTimeUs:J

    .line 166
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler;->notifyManifestPublishTimeExpired()V

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    .line 171
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler;->maybeNotifyDashManifestRefreshNeeded()V

    :cond_3
    return v1
.end method

.method public newPlayerTrackEmsgHandler()Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;
    .locals 2

    .line 123
    new-instance v0, Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler;->allocator:Lcom/google/android/exoplr2avp/upstream/Allocator;

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;-><init>(Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler;Lcom/google/android/exoplr2avp/upstream/Allocator;)V

    return-object v0
.end method

.method onChunkLoadCompleted(Lcom/google/android/exoplr2avp/source/chunk/Chunk;)V
    .locals 0

    const/4 p1, 0x1

    .line 177
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler;->chunkLoadedCompletedSinceLastManifestRefreshRequest:Z

    return-void
.end method

.method onChunkLoadError(Z)Z
    .locals 3

    .line 181
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    iget-boolean v0, v0, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->dynamic:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 184
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler;->isWaitingForManifestRefresh:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    if-eqz p1, :cond_2

    .line 191
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler;->maybeNotifyDashManifestRefreshNeeded()V

    return v2

    :cond_2
    return v1
.end method

.method public release()V
    .locals 2

    const/4 v0, 0x1

    .line 128
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler;->released:Z

    .line 129
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public updateManifest(Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;)V
    .locals 2

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler;->isWaitingForManifestRefresh:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 116
    iput-wide v0, p0, Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler;->expiredManifestPublishTimeUs:J

    .line 117
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    .line 118
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler;->removePreviouslyExpiredManifestPublishTimeValues()V

    return-void
.end method
