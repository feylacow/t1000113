.class public final Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManagerProvider;
.super Ljava/lang/Object;
.source "DefaultDrmSessionManagerProvider.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;


# instance fields
.field private drmConfiguration:Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration;

.field private drmHttpDataSourceFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

.field private final lock:Ljava/lang/Object;

.field private manager:Lcom/google/android/exoplr2avp/drm/DrmSessionManager;

.field private userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManagerProvider;->lock:Ljava/lang/Object;

    return-void
.end method

.method private createManager(Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration;)Lcom/google/android/exoplr2avp/drm/DrmSessionManager;
    .locals 4

    .line 92
    iget-object v0, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManagerProvider;->drmHttpDataSourceFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    new-instance v0, Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;-><init>()V

    iget-object v1, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManagerProvider;->userAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;->setUserAgent(Ljava/lang/String;)Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;

    move-result-object v0

    .line 95
    :goto_0
    new-instance v1, Lcom/google/android/exoplr2avp/drm/HttpMediaDrmCallback;

    .line 97
    iget-object v2, p1, Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration;->licenseUri:Landroid/net/Uri;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    iget-object v2, p1, Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration;->licenseUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    iget-boolean v3, p1, Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration;->forceDefaultLicenseUri:Z

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/exoplr2avp/drm/HttpMediaDrmCallback;-><init>(Ljava/lang/String;ZLcom/google/android/exoplr2avp/upstream/DataSource$Factory;)V

    .line 100
    iget-object v0, p1, Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration;->licenseRequestHeaders:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 101
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lcom/google/android/exoplr2avp/drm/HttpMediaDrmCallback;->setKeyRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 103
    :cond_2
    new-instance v0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$Builder;-><init>()V

    iget-object v2, p1, Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration;->scheme:Ljava/util/UUID;

    sget-object v3, Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm;->DEFAULT_PROVIDER:Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$Provider;

    .line 105
    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$Builder;->setUuidAndExoMediaDrmProvider(Ljava/util/UUID;Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$Provider;)Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$Builder;

    move-result-object v0

    iget-boolean v2, p1, Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration;->multiSession:Z

    .line 107
    invoke-virtual {v0, v2}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$Builder;->setMultiSession(Z)Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$Builder;

    move-result-object v0

    iget-boolean v2, p1, Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration;->playClearContentWithoutKey:Z

    .line 108
    invoke-virtual {v0, v2}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$Builder;->setPlayClearSamplesWithoutKeys(Z)Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$Builder;

    move-result-object v0

    iget-object v2, p1, Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration;->forcedSessionTrackTypes:Lcom/google/common/collect/ImmutableList;

    .line 110
    invoke-static {v2}, Lcom/google/common/primitives/Ints;->toArray(Ljava/util/Collection;)[I

    move-result-object v2

    .line 109
    invoke-virtual {v0, v2}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$Builder;->setUseDrmSessionsForClearContent([I)Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$Builder;

    move-result-object v0

    .line 111
    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$Builder;->build(Lcom/google/android/exoplr2avp/drm/MediaDrmCallback;)Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 112
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration;->getKeySetId()[B

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->setMode(I[B)V

    return-object v0
.end method


# virtual methods
.method public get(Lcom/google/android/exoplr2avp/MediaItem;)Lcom/google/android/exoplr2avp/drm/DrmSessionManager;
    .locals 2

    .line 73
    iget-object v0, p1, Lcom/google/android/exoplr2avp/MediaItem;->localConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object p1, p1, Lcom/google/android/exoplr2avp/MediaItem;->localConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->drmConfiguration:Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration;

    if-eqz p1, :cond_2

    .line 76
    sget v0, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManagerProvider;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManagerProvider;->drmConfiguration:Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration;

    invoke-static {p1, v1}, Lcom/google/android/exoplr2avp/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 82
    iput-object p1, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManagerProvider;->drmConfiguration:Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration;

    .line 83
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManagerProvider;->createManager(Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration;)Lcom/google/android/exoplr2avp/drm/DrmSessionManager;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManagerProvider;->manager:Lcom/google/android/exoplr2avp/drm/DrmSessionManager;

    .line 85
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManagerProvider;->manager:Lcom/google/android/exoplr2avp/drm/DrmSessionManager;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/drm/DrmSessionManager;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 86
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 77
    :cond_2
    :goto_0
    sget-object p1, Lcom/google/android/exoplr2avp/drm/DrmSessionManager;->DRM_UNSUPPORTED:Lcom/google/android/exoplr2avp/drm/DrmSessionManager;

    return-object p1
.end method

.method public setDrmHttpDataSourceFactory(Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManagerProvider;->drmHttpDataSourceFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

    return-void
.end method

.method public setDrmUserAgent(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManagerProvider;->userAgent:Ljava/lang/String;

    return-void
.end method
