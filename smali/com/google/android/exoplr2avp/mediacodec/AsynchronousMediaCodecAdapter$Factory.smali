.class public final Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecAdapter$Factory;
.super Ljava/lang/Object;
.source "AsynchronousMediaCodecAdapter.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final callbackThreadSupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Landroid/os/HandlerThread;",
            ">;"
        }
    .end annotation
.end field

.field private final queueingThreadSupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Landroid/os/HandlerThread;",
            ">;"
        }
    .end annotation
.end field

.field private final synchronizeCodecInteractionsWithQueueing:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 2

    .line 69
    new-instance v0, Lcom/google/android/exoplr2avp/mediacodec/-$$Lambda$AsynchronousMediaCodecAdapter$Factory$QBE5YWy504e2_N3mfoDDOd9zH3o;

    invoke-direct {v0, p1}, Lcom/google/android/exoplr2avp/mediacodec/-$$Lambda$AsynchronousMediaCodecAdapter$Factory$QBE5YWy504e2_N3mfoDDOd9zH3o;-><init>(I)V

    new-instance v1, Lcom/google/android/exoplr2avp/mediacodec/-$$Lambda$AsynchronousMediaCodecAdapter$Factory$t3ma0ulXlZkQN2oMJwNiIXv4T4M;

    invoke-direct {v1, p1}, Lcom/google/android/exoplr2avp/mediacodec/-$$Lambda$AsynchronousMediaCodecAdapter$Factory$t3ma0ulXlZkQN2oMJwNiIXv4T4M;-><init>(I)V

    invoke-direct {p0, v0, v1, p2}, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecAdapter$Factory;-><init>(Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Z)V

    return-void
.end method

.method constructor <init>(Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Supplier<",
            "Landroid/os/HandlerThread;",
            ">;",
            "Lcom/google/common/base/Supplier<",
            "Landroid/os/HandlerThread;",
            ">;Z)V"
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecAdapter$Factory;->callbackThreadSupplier:Lcom/google/common/base/Supplier;

    .line 83
    iput-object p2, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecAdapter$Factory;->queueingThreadSupplier:Lcom/google/common/base/Supplier;

    .line 84
    iput-boolean p3, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecAdapter$Factory;->synchronizeCodecInteractionsWithQueueing:Z

    return-void
.end method

.method static synthetic lambda$new$0(I)Landroid/os/HandlerThread;
    .locals 1

    .line 71
    new-instance v0, Landroid/os/HandlerThread;

    invoke-static {p0}, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecAdapter;->access$300(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$new$1(I)Landroid/os/HandlerThread;
    .locals 1

    .line 73
    new-instance v0, Landroid/os/HandlerThread;

    invoke-static {p0}, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecAdapter;->access$200(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public createAdapter(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter$Configuration;)Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecAdapter;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    iget-object v0, p1, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter$Configuration;->codecInfo:Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const/4 v1, 0x0

    .line 94
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createCodec:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplr2avp/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 95
    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 96
    :try_start_1
    new-instance v2, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecAdapter;

    iget-object v3, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecAdapter$Factory;->callbackThreadSupplier:Lcom/google/common/base/Supplier;

    .line 99
    invoke-interface {v3}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/os/HandlerThread;

    iget-object v3, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecAdapter$Factory;->queueingThreadSupplier:Lcom/google/common/base/Supplier;

    .line 100
    invoke-interface {v3}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/os/HandlerThread;

    iget-boolean v7, p0, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecAdapter$Factory;->synchronizeCodecInteractionsWithQueueing:Z

    const/4 v8, 0x0

    move-object v3, v2

    move-object v4, v0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecAdapter;-><init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Landroid/os/HandlerThread;ZLcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecAdapter$1;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 102
    :try_start_2
    invoke-static {}, Lcom/google/android/exoplr2avp/util/TraceUtil;->endSection()V

    .line 103
    iget-object v1, p1, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter$Configuration;->mediaFormat:Landroid/media/MediaFormat;

    iget-object v3, p1, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter$Configuration;->surface:Landroid/view/Surface;

    iget-object v4, p1, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter$Configuration;->crypto:Landroid/media/MediaCrypto;

    iget p1, p1, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter$Configuration;->flags:I

    invoke-static {v2, v1, v3, v4, p1}, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecAdapter;->access$100(Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecAdapter;Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    move-object v0, v1

    :goto_0
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 113
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    goto :goto_1

    .line 111
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecAdapter;->release()V

    .line 115
    :cond_1
    :goto_1
    throw p1
.end method

.method public bridge synthetic createAdapter(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter$Configuration;)Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecAdapter$Factory;->createAdapter(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter$Configuration;)Lcom/google/android/exoplr2avp/mediacodec/AsynchronousMediaCodecAdapter;

    move-result-object p1

    return-object p1
.end method
