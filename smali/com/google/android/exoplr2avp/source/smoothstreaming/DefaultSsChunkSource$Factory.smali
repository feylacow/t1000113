.class public final Lcom/google/android/exoplr2avp/source/smoothstreaming/DefaultSsChunkSource$Factory;
.super Ljava/lang/Object;
.source "DefaultSsChunkSource.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/source/smoothstreaming/SsChunkSource$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/source/smoothstreaming/DefaultSsChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final dataSourceFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/DefaultSsChunkSource$Factory;->dataSourceFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

    return-void
.end method


# virtual methods
.method public createChunkSource(Lcom/google/android/exoplr2avp/upstream/LoaderErrorThrower;Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;ILcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;Lcom/google/android/exoplr2avp/upstream/TransferListener;)Lcom/google/android/exoplr2avp/source/smoothstreaming/SsChunkSource;
    .locals 7

    .line 68
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/DefaultSsChunkSource$Factory;->dataSourceFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;->createDataSource()Lcom/google/android/exoplr2avp/upstream/DataSource;

    move-result-object v6

    if-eqz p5, :cond_0

    .line 70
    invoke-interface {v6, p5}, Lcom/google/android/exoplr2avp/upstream/DataSource;->addTransferListener(Lcom/google/android/exoplr2avp/upstream/TransferListener;)V

    .line 72
    :cond_0
    new-instance p5, Lcom/google/android/exoplr2avp/source/smoothstreaming/DefaultSsChunkSource;

    move-object v1, p5

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplr2avp/source/smoothstreaming/DefaultSsChunkSource;-><init>(Lcom/google/android/exoplr2avp/upstream/LoaderErrorThrower;Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;ILcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;Lcom/google/android/exoplr2avp/upstream/DataSource;)V

    return-object p5
.end method
