.class public Lcom/google/android/exoplr2avp/mediacodec/MediaCodecUtil$DecoderQueryException;
.super Ljava/lang/Exception;
.source "MediaCodecUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/mediacodec/MediaCodecUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecoderQueryException"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "Failed to query underlying media codecs"

    .line 60
    invoke-direct {p0, v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Throwable;Lcom/google/android/exoplr2avp/mediacodec/MediaCodecUtil$1;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecUtil$DecoderQueryException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
