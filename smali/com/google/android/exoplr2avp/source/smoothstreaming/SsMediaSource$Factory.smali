.class public final Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource$Factory;
.super Ljava/lang/Object;
.source "SsMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/source/MediaSourceFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final chunkSourceFactory:Lcom/google/android/exoplr2avp/source/smoothstreaming/SsChunkSource$Factory;

.field private compositeSequenceableLoaderFactory:Lcom/google/android/exoplr2avp/source/CompositeSequenceableLoaderFactory;

.field private drmSessionManagerProvider:Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;

.field private livePresentationDelayMs:J

.field private loadErrorHandlingPolicy:Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

.field private final manifestDataSourceFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

.field private manifestParser:Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser<",
            "+",
            "Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/source/smoothstreaming/SsChunkSource$Factory;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsChunkSource$Factory;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource$Factory;->chunkSourceFactory:Lcom/google/android/exoplr2avp/source/smoothstreaming/SsChunkSource$Factory;

    .line 130
    iput-object p2, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource$Factory;->manifestDataSourceFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

    .line 131
    new-instance p1, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManagerProvider;

    invoke-direct {p1}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManagerProvider;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource$Factory;->drmSessionManagerProvider:Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;

    .line 132
    new-instance p1, Lcom/google/android/exoplr2avp/upstream/DefaultLoadErrorHandlingPolicy;

    invoke-direct {p1}, Lcom/google/android/exoplr2avp/upstream/DefaultLoadErrorHandlingPolicy;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource$Factory;->loadErrorHandlingPolicy:Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

    const-wide/16 p1, 0x7530

    .line 133
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource$Factory;->livePresentationDelayMs:J

    .line 134
    new-instance p1, Lcom/google/android/exoplr2avp/source/DefaultCompositeSequenceableLoaderFactory;

    invoke-direct {p1}, Lcom/google/android/exoplr2avp/source/DefaultCompositeSequenceableLoaderFactory;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource$Factory;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplr2avp/source/CompositeSequenceableLoaderFactory;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;)V
    .locals 1

    .line 107
    new-instance v0, Lcom/google/android/exoplr2avp/source/smoothstreaming/DefaultSsChunkSource$Factory;

    invoke-direct {v0, p1}, Lcom/google/android/exoplr2avp/source/smoothstreaming/DefaultSsChunkSource$Factory;-><init>(Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;)V

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource$Factory;-><init>(Lcom/google/android/exoplr2avp/source/smoothstreaming/SsChunkSource$Factory;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createMediaSource(Lcom/google/android/exoplr2avp/MediaItem;)Lcom/google/android/exoplr2avp/source/MediaSource;
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplr2avp/MediaItem;)Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;

    move-result-object p1

    return-object p1
.end method

.method public createMediaSource(Lcom/google/android/exoplr2avp/MediaItem;)Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;
    .locals 13

    .line 264
    iget-object v0, p1, Lcom/google/android/exoplr2avp/MediaItem;->localConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource$Factory;->manifestParser:Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser;

    if-nez v0, :cond_0

    .line 267
    new-instance v0, Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifestParser;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifestParser;-><init>()V

    .line 269
    :cond_0
    iget-object v2, p1, Lcom/google/android/exoplr2avp/MediaItem;->localConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    iget-object v2, v2, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->streamKeys:Ljava/util/List;

    .line 270
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 271
    new-instance v3, Lcom/google/android/exoplr2avp/offline/FilteringManifestParser;

    invoke-direct {v3, v0, v2}, Lcom/google/android/exoplr2avp/offline/FilteringManifestParser;-><init>(Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser;Ljava/util/List;)V

    move-object v4, v3

    goto :goto_0

    :cond_1
    move-object v4, v0

    .line 274
    :goto_0
    new-instance v12, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource$Factory;->manifestDataSourceFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

    iget-object v5, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource$Factory;->chunkSourceFactory:Lcom/google/android/exoplr2avp/source/smoothstreaming/SsChunkSource$Factory;

    iget-object v6, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource$Factory;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplr2avp/source/CompositeSequenceableLoaderFactory;

    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource$Factory;->drmSessionManagerProvider:Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;

    .line 281
    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;->get(Lcom/google/android/exoplr2avp/MediaItem;)Lcom/google/android/exoplr2avp/drm/DrmSessionManager;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource$Factory;->loadErrorHandlingPolicy:Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

    iget-wide v9, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource$Factory;->livePresentationDelayMs:J

    const/4 v11, 0x0

    move-object v0, v12

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;-><init>(Lcom/google/android/exoplr2avp/MediaItem;Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser;Lcom/google/android/exoplr2avp/source/smoothstreaming/SsChunkSource$Factory;Lcom/google/android/exoplr2avp/source/CompositeSequenceableLoaderFactory;Lcom/google/android/exoplr2avp/drm/DrmSessionManager;Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;JLcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource$1;)V

    return-object v12
.end method

.method public createMediaSource(Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;)Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;
    .locals 1

    .line 215
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/MediaItem;->fromUri(Landroid/net/Uri;)Lcom/google/android/exoplr2avp/MediaItem;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;Lcom/google/android/exoplr2avp/MediaItem;)Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;

    move-result-object p1

    return-object p1
.end method

.method public createMediaSource(Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;Lcom/google/android/exoplr2avp/MediaItem;)Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 228
    iget-boolean v3, v1, Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;->isLive:Z

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-static {v3}, Lcom/google/android/exoplr2avp/util/Assertions;->checkArgument(Z)V

    .line 230
    iget-object v3, v2, Lcom/google/android/exoplr2avp/MediaItem;->localConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    if-eqz v3, :cond_0

    .line 231
    iget-object v3, v2, Lcom/google/android/exoplr2avp/MediaItem;->localConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    iget-object v3, v3, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->streamKeys:Ljava/util/List;

    goto :goto_0

    .line 232
    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 233
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 234
    invoke-virtual {v1, v3}, Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;->copy(Ljava/util/List;)Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;

    move-result-object v1

    :cond_1
    move-object v7, v1

    .line 236
    iget-object v1, v2, Lcom/google/android/exoplr2avp/MediaItem;->localConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 239
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplr2avp/MediaItem;->buildUpon()Lcom/google/android/exoplr2avp/MediaItem$Builder;

    move-result-object v1

    const-string v3, "application/vnd.ms-sstr+xml"

    .line 240
    invoke-virtual {v1, v3}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->setMimeType(Ljava/lang/String;)Lcom/google/android/exoplr2avp/MediaItem$Builder;

    move-result-object v1

    if-eqz v4, :cond_3

    .line 241
    iget-object v2, v2, Lcom/google/android/exoplr2avp/MediaItem;->localConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    iget-object v2, v2, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    goto :goto_2

    :cond_3
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    :goto_2
    invoke-virtual {v1, v2}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplr2avp/MediaItem$Builder;

    move-result-object v1

    .line 242
    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->build()Lcom/google/android/exoplr2avp/MediaItem;

    move-result-object v6

    .line 243
    new-instance v1, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, v0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource$Factory;->chunkSourceFactory:Lcom/google/android/exoplr2avp/source/smoothstreaming/SsChunkSource$Factory;

    iget-object v11, v0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource$Factory;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplr2avp/source/CompositeSequenceableLoaderFactory;

    iget-object v2, v0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource$Factory;->drmSessionManagerProvider:Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;

    .line 250
    invoke-interface {v2, v6}, Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;->get(Lcom/google/android/exoplr2avp/MediaItem;)Lcom/google/android/exoplr2avp/drm/DrmSessionManager;

    move-result-object v12

    iget-object v13, v0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource$Factory;->loadErrorHandlingPolicy:Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

    iget-wide v14, v0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource$Factory;->livePresentationDelayMs:J

    const/16 v16, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v16}, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;-><init>(Lcom/google/android/exoplr2avp/MediaItem;Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser;Lcom/google/android/exoplr2avp/source/smoothstreaming/SsChunkSource$Factory;Lcom/google/android/exoplr2avp/source/CompositeSequenceableLoaderFactory;Lcom/google/android/exoplr2avp/drm/DrmSessionManager;Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;JLcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource$1;)V

    return-object v1
.end method

.method public getSupportedTypes()[I
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    return-object v1
.end method

.method public setCompositeSequenceableLoaderFactory(Lcom/google/android/exoplr2avp/source/CompositeSequenceableLoaderFactory;)Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource$Factory;
    .locals 1

    const-string v0, "SsMediaSource.Factory#setCompositeSequenceableLoaderFactory no longer handles null by instantiating a new DefaultCompositeSequenceableLoaderFactory. Explicitly construct and pass an instance in order to retain the old behavior."

    .line 186
    invoke-static {p1, v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/source/CompositeSequenceableLoaderFactory;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource$Factory;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplr2avp/source/CompositeSequenceableLoaderFactory;

    return-object p0
.end method

.method public bridge synthetic setDrmSessionManagerProvider(Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplr2avp/source/MediaSource$Factory;
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource$Factory;->setDrmSessionManagerProvider(Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public setDrmSessionManagerProvider(Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource$Factory;
    .locals 1

    const-string v0, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior."

    .line 198
    invoke-static {p1, v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource$Factory;->drmSessionManagerProvider:Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;

    return-object p0
.end method

.method public setLivePresentationDelayMs(J)Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource$Factory;
    .locals 0

    .line 158
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource$Factory;->livePresentationDelayMs:J

    return-object p0
.end method

.method public bridge synthetic setLoadErrorHandlingPolicy(Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplr2avp/source/MediaSource$Factory;
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource$Factory;->setLoadErrorHandlingPolicy(Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public setLoadErrorHandlingPolicy(Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource$Factory;
    .locals 1

    const-string v0, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior."

    .line 140
    invoke-static {p1, v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource$Factory;->loadErrorHandlingPolicy:Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

    return-object p0
.end method

.method public setManifestParser(Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser;)Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource$Factory;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser<",
            "+",
            "Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;",
            ">;)",
            "Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource$Factory;"
        }
    .end annotation

    .line 170
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource$Factory;->manifestParser:Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser;

    return-object p0
.end method
