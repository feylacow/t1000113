.class public Lcom/google/android/exoplr2avp/mediacodec/MediaCodecRenderer$DecoderInitializationException;
.super Ljava/lang/Exception;
.source "MediaCodecRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/mediacodec/MediaCodecRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecoderInitializationException"
.end annotation


# static fields
.field private static final CUSTOM_ERROR_CODE_BASE:I = -0xc350

.field private static final DECODER_QUERY_ERROR:I = -0xc34e

.field private static final NO_SUITABLE_DECODER_ERROR:I = -0xc34f


# instance fields
.field public final codecInfo:Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;

.field public final diagnosticInfo:Ljava/lang/String;

.field public final fallbackDecoderInitializationException:Lcom/google/android/exoplr2avp/mediacodec/MediaCodecRenderer$DecoderInitializationException;

.field public final mimeType:Ljava/lang/String;

.field public final secureDecoderRequired:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/Format;Ljava/lang/Throwable;ZI)V
    .locals 10

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Decoder init failed: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p1, Lcom/google/android/exoplr2avp/Format;->sampleMimeType:Ljava/lang/String;

    .line 128
    invoke-static {p4}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecRenderer$DecoderInitializationException;->buildCustomDiagnosticInfo(I)Ljava/lang/String;

    move-result-object v8

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    move-object v4, p2

    move v6, p3

    .line 122
    invoke-direct/range {v2 .. v9}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;Ljava/lang/String;Lcom/google/android/exoplr2avp/mediacodec/MediaCodecRenderer$DecoderInitializationException;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplr2avp/Format;Ljava/lang/Throwable;ZLcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;)V
    .locals 10

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Decoder init failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p4, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p1, Lcom/google/android/exoplr2avp/Format;->sampleMimeType:Ljava/lang/String;

    .line 143
    sget p1, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    invoke-static {p2}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecRenderer$DecoderInitializationException;->getDiagnosticInfoV21(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v8, p1

    const/4 v9, 0x0

    move-object v2, p0

    move-object v4, p2

    move v6, p3

    move-object v7, p4

    .line 137
    invoke-direct/range {v2 .. v9}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;Ljava/lang/String;Lcom/google/android/exoplr2avp/mediacodec/MediaCodecRenderer$DecoderInitializationException;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;Ljava/lang/String;Lcom/google/android/exoplr2avp/mediacodec/MediaCodecRenderer$DecoderInitializationException;)V
    .locals 0

    .line 155
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    iput-object p3, p0, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecRenderer$DecoderInitializationException;->mimeType:Ljava/lang/String;

    .line 157
    iput-boolean p4, p0, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecRenderer$DecoderInitializationException;->secureDecoderRequired:Z

    .line 158
    iput-object p5, p0, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecRenderer$DecoderInitializationException;->codecInfo:Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;

    .line 159
    iput-object p6, p0, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecRenderer$DecoderInitializationException;->diagnosticInfo:Ljava/lang/String;

    .line 160
    iput-object p7, p0, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecRenderer$DecoderInitializationException;->fallbackDecoderInitializationException:Lcom/google/android/exoplr2avp/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecRenderer$DecoderInitializationException;Lcom/google/android/exoplr2avp/mediacodec/MediaCodecRenderer$DecoderInitializationException;)Lcom/google/android/exoplr2avp/mediacodec/MediaCodecRenderer$DecoderInitializationException;
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecRenderer$DecoderInitializationException;->copyWithFallbackException(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecRenderer$DecoderInitializationException;)Lcom/google/android/exoplr2avp/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    move-result-object p0

    return-object p0
.end method

.method private static buildCustomDiagnosticInfo(I)Ljava/lang/String;
    .locals 3

    if-gez p0, :cond_0

    const-string v0, "neg_"

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 187
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.google.android.exoplr2avp.mediacodec.MediaCodecRenderer_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private copyWithFallbackException(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecRenderer$DecoderInitializationException;)Lcom/google/android/exoplr2avp/mediacodec/MediaCodecRenderer$DecoderInitializationException;
    .locals 9

    .line 166
    new-instance v8, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    .line 167
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecRenderer$DecoderInitializationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 168
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecRenderer$DecoderInitializationException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecRenderer$DecoderInitializationException;->mimeType:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecRenderer$DecoderInitializationException;->secureDecoderRequired:Z

    iget-object v5, p0, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecRenderer$DecoderInitializationException;->codecInfo:Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;

    iget-object v6, p0, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecRenderer$DecoderInitializationException;->diagnosticInfo:Ljava/lang/String;

    move-object v0, v8

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;Ljava/lang/String;Lcom/google/android/exoplr2avp/mediacodec/MediaCodecRenderer$DecoderInitializationException;)V

    return-object v8
.end method

.method private static getDiagnosticInfoV21(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    .line 179
    instance-of v0, p0, Landroid/media/MediaCodec$CodecException;

    if-eqz v0, :cond_0

    .line 180
    check-cast p0, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {p0}, Landroid/media/MediaCodec$CodecException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
