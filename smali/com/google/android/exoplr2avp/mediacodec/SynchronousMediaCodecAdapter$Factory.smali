.class public Lcom/google/android/exoplr2avp/mediacodec/SynchronousMediaCodecAdapter$Factory;
.super Ljava/lang/Object;
.source "SynchronousMediaCodecAdapter.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/mediacodec/SynchronousMediaCodecAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAdapter(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter$Configuration;)Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 49
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/mediacodec/SynchronousMediaCodecAdapter$Factory;->createCodec(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter$Configuration;)Landroid/media/MediaCodec;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v2, "configureCodec"

    .line 50
    invoke-static {v2}, Lcom/google/android/exoplr2avp/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 51
    iget-object v2, p1, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter$Configuration;->mediaFormat:Landroid/media/MediaFormat;

    iget-object v3, p1, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter$Configuration;->surface:Landroid/view/Surface;

    iget-object v4, p1, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter$Configuration;->crypto:Landroid/media/MediaCrypto;

    iget p1, p1, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter$Configuration;->flags:I

    invoke-virtual {v1, v2, v3, v4, p1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 56
    invoke-static {}, Lcom/google/android/exoplr2avp/util/TraceUtil;->endSection()V

    const-string/jumbo p1, "startCodec"

    .line 57
    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    .line 59
    invoke-static {}, Lcom/google/android/exoplr2avp/util/TraceUtil;->endSection()V

    .line 60
    new-instance p1, Lcom/google/android/exoplr2avp/mediacodec/SynchronousMediaCodecAdapter;

    invoke-direct {p1, v1, v0}, Lcom/google/android/exoplr2avp/mediacodec/SynchronousMediaCodecAdapter;-><init>(Landroid/media/MediaCodec;Lcom/google/android/exoplr2avp/mediacodec/SynchronousMediaCodecAdapter$1;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_1

    :catch_3
    move-exception p1

    :goto_1
    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 65
    :cond_0
    throw p1
.end method

.method protected createCodec(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter$Configuration;)Landroid/media/MediaCodec;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    iget-object v0, p1, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter$Configuration;->codecInfo:Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object p1, p1, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter$Configuration;->codecInfo:Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createCodec:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 74
    invoke-static {p1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1

    .line 75
    invoke-static {}, Lcom/google/android/exoplr2avp/util/TraceUtil;->endSection()V

    return-object p1
.end method
