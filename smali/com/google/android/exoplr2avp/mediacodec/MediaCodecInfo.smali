.class public final Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;
.super Ljava/lang/Object;
.source "MediaCodecInfo.java"


# static fields
.field public static final MAX_SUPPORTED_INSTANCES_UNKNOWN:I = -0x1

.field public static final TAG:Ljava/lang/String; = "MediaCodecInfo"


# instance fields
.field public final adaptive:Z

.field public final capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

.field public final codecMimeType:Ljava/lang/String;

.field public final hardwareAccelerated:Z

.field private final isVideo:Z

.field public final mimeType:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final secure:Z

.field public final softwareOnly:Z

.field public final tunneling:Z

.field public final vendor:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZZ)V
    .locals 0

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 194
    iput-object p2, p0, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    .line 195
    iput-object p3, p0, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->codecMimeType:Ljava/lang/String;

    .line 196
    iput-object p4, p0, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 197
    iput-boolean p5, p0, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->hardwareAccelerated:Z

    .line 198
    iput-boolean p6, p0, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->softwareOnly:Z

    .line 199
    iput-boolean p7, p0, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->vendor:Z

    .line 200
    iput-boolean p8, p0, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->adaptive:Z

    .line 201
    iput-boolean p9, p0, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->tunneling:Z

    .line 202
    iput-boolean p10, p0, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->secure:Z

    .line 203
    invoke-static {p2}, Lcom/google/android/exoplr2avp/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->isVideo:Z

    return-void
.end method

.method private static adjustMaxInputChannelCount(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2

    const/4 v0, 0x1

    if-gt p2, v0, :cond_4

    .line 620
    sget v0, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    if-lez p2, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v0, "audio/mpeg"

    .line 624
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "audio/3gpp"

    .line 625
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "audio/amr-wb"

    .line 626
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "audio/mp4a-latm"

    .line 627
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "audio/vorbis"

    .line 628
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "audio/opus"

    .line 629
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "audio/raw"

    .line 630
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "audio/flac"

    .line 631
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "audio/g711-alaw"

    .line 632
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "audio/g711-mlaw"

    .line 633
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "audio/gsm"

    .line 634
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "audio/ac3"

    .line 640
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x6

    goto :goto_0

    :cond_2
    const-string v0, "audio/eac3"

    .line 642
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x10

    goto :goto_0

    :cond_3
    const/16 p1, 0x1e

    .line 648
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AssumedMaxChannelAdjustment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", ["

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " to "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "MediaCodecInfo"

    invoke-static {p2, p0}, Lcom/google/android/exoplr2avp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    :cond_4
    :goto_1
    return p2
.end method

.method private static alignVideoSizeV21(Landroid/media/MediaCodecInfo$VideoCapabilities;II)Landroid/graphics/Point;
    .locals 2

    .line 710
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    move-result v0

    .line 711
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    move-result p0

    .line 712
    new-instance v1, Landroid/graphics/Point;

    .line 713
    invoke-static {p1, v0}, Lcom/google/android/exoplr2avp/util/Util;->ceilDivide(II)I

    move-result p1

    mul-int p1, p1, v0

    .line 714
    invoke-static {p2, p0}, Lcom/google/android/exoplr2avp/util/Util;->ceilDivide(II)I

    move-result p2

    mul-int p2, p2, p0

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method

.method private static areSizeAndRateSupportedV21(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z
    .locals 3

    .line 691
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->alignVideoSizeV21(Landroid/media/MediaCodecInfo$VideoCapabilities;II)Landroid/graphics/Point;

    move-result-object p1

    .line 692
    iget p2, p1, Landroid/graphics/Point;->x:I

    .line 693
    iget p1, p1, Landroid/graphics/Point;->y:I

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpl-double v2, p3, v0

    if-eqz v2, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, p3, v0

    if-gez v2, :cond_0

    goto :goto_0

    .line 703
    :cond_0
    invoke-static {p3, p4}, Ljava/lang/Math;->floor(D)D

    move-result-wide p3

    .line 704
    invoke-virtual {p0, p2, p1, p3, p4}, Landroid/media/MediaCodecInfo$VideoCapabilities;->areSizeAndRateSupported(IID)Z

    move-result p0

    return p0

    .line 698
    :cond_1
    :goto_0
    invoke-virtual {p0, p2, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result p0

    return p0
.end method

.method private static estimateLegacyVp9ProfileLevels(Landroid/media/MediaCodecInfo$CodecCapabilities;)[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 736
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 738
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBitrateRange()Landroid/util/Range;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const v1, 0xaba9500

    const/4 v2, 0x1

    if-lt p0, v1, :cond_1

    const/16 p0, 0x400

    goto :goto_1

    :cond_1
    const v1, 0x7270e00

    if-lt p0, v1, :cond_2

    const/16 p0, 0x200

    goto :goto_1

    :cond_2
    const v1, 0x3938700

    if-lt p0, v1, :cond_3

    const/16 p0, 0x100

    goto :goto_1

    :cond_3
    const v1, 0x1c9c380

    if-lt p0, v1, :cond_4

    const/16 p0, 0x80

    goto :goto_1

    :cond_4
    const v1, 0x112a880

    if-lt p0, v1, :cond_5

    const/16 p0, 0x40

    goto :goto_1

    :cond_5
    const v1, 0xb71b00

    if-lt p0, v1, :cond_6

    const/16 p0, 0x20

    goto :goto_1

    :cond_6
    const v1, 0x6ddd00

    if-lt p0, v1, :cond_7

    const/16 p0, 0x10

    goto :goto_1

    :cond_7
    const v1, 0x36ee80

    if-lt p0, v1, :cond_8

    const/16 p0, 0x8

    goto :goto_1

    :cond_8
    const v1, 0x1b7740

    if-lt p0, v1, :cond_9

    const/4 p0, 0x4

    goto :goto_1

    :cond_9
    const v1, 0xc3500

    if-lt p0, v1, :cond_a

    const/4 p0, 0x2

    goto :goto_1

    :cond_a
    const/4 p0, 0x1

    .line 768
    :goto_1
    new-instance v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;

    invoke-direct {v1}, Landroid/media/MediaCodecInfo$CodecProfileLevel;-><init>()V

    .line 770
    iput v2, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 771
    iput p0, v1, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    new-array p0, v2, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    aput-object v1, p0, v0

    return-object p0
.end method

.method private static getMaxSupportedInstancesV23(Landroid/media/MediaCodecInfo$CodecCapabilities;)I
    .locals 0

    .line 719
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getMaxSupportedInstances()I

    move-result p0

    return p0
.end method

.method private static isAdaptive(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 2

    .line 661
    sget v0, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->isAdaptiveV19(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isAdaptiveV19(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 1

    const-string v0, "adaptive-playback"

    .line 666
    invoke-virtual {p0, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isCodecProfileAndLevelSupported(Lcom/google/android/exoplr2avp/Format;)Z
    .locals 9

    .line 281
    iget-object v0, p1, Lcom/google/android/exoplr2avp/Format;->codecs:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 284
    :cond_0
    invoke-static {p1}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecUtil;->getCodecProfileAndLevel(Lcom/google/android/exoplr2avp/Format;)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 289
    :cond_1
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 290
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 291
    iget-object v3, p1, Lcom/google/android/exoplr2avp/Format;->sampleMimeType:Ljava/lang/String;

    const-string/jumbo v4, "video/dolby-vision"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 295
    iget-object v3, p0, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    const-string/jumbo v5, "video/avc"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v2, 0x8

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    .line 298
    :cond_2
    iget-object v3, p0, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    const-string/jumbo v5, "video/hevc"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x2

    goto :goto_0

    .line 304
    :cond_3
    :goto_1
    iget-boolean v3, p0, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->isVideo:Z

    if-nez v3, :cond_4

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_4

    return v1

    .line 310
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->getProfileLevels()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v3

    .line 311
    sget v5, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v6, 0x17

    if-gt v5, v6, :cond_5

    iget-object v5, p0, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    const-string/jumbo v6, "video/x-vnd.on2.vp9"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    array-length v5, v3

    if-nez v5, :cond_5

    .line 314
    iget-object v3, p0, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-static {v3}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->estimateLegacyVp9ProfileLevels(Landroid/media/MediaCodecInfo$CodecCapabilities;)[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v3

    .line 317
    :cond_5
    array-length v5, v3

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_7

    aget-object v7, v3, v6

    .line 318
    iget v8, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-ne v8, v2, :cond_6

    iget v7, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    if-lt v7, v0, :cond_6

    return v1

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 322
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "codec.profileLevel, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/Format;->codecs:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->codecMimeType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    return v4
.end method

.method private isSampleMimeTypeSupported(Lcom/google/android/exoplr2avp/Format;)Z
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/exoplr2avp/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    .line 277
    invoke-static {p1}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecUtil;->getAlternativeCodecMimeType(Lcom/google/android/exoplr2avp/Format;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private static isSecure(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 2

    .line 679
    sget v0, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->isSecureV21(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isSecureV21(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 1

    const-string v0, "secure-playback"

    .line 684
    invoke-virtual {p0, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isTunneling(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 2

    .line 670
    sget v0, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->isTunnelingV21(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isTunnelingV21(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 1

    const-string/jumbo v0, "tunneled-playback"

    .line 675
    invoke-virtual {p0, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private logAssumedSupport(Ljava/lang/String;)V
    .locals 2

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AssumedSupport ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/google/android/exoplr2avp/util/Util;->DEVICE_DEBUG_INFO:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaCodecInfo"

    invoke-static {v0, p1}, Lcom/google/android/exoplr2avp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private logNoSupport(Ljava/lang/String;)V
    .locals 2

    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NoSupport ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/google/android/exoplr2avp/util/Util;->DEVICE_DEBUG_INFO:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaCodecInfo"

    invoke-static {v0, p1}, Lcom/google/android/exoplr2avp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static needsAdaptationFlushWorkaround(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "audio/opus"

    .line 813
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static needsAdaptationReconfigureWorkaround(Ljava/lang/String;)Z
    .locals 2

    .line 798
    sget-object v0, Lcom/google/android/exoplr2avp/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "SM-T230"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OMX.MARVELL.VIDEO.HW.CODA7542DECODER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static needsDisableAdaptationWorkaround(Ljava/lang/String;)Z
    .locals 2

    .line 784
    sget v0, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v1, 0x16

    if-gt v0, v1, :cond_2

    sget-object v0, Lcom/google/android/exoplr2avp/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "ODROID-XU3"

    .line 785
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/exoplr2avp/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "Nexus 10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "OMX.Exynos.AVC.Decoder"

    .line 786
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "OMX.Exynos.AVC.Decoder.secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final needsRotatedVerticalResolutionWorkaround(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "OMX.MTK.VIDEO.DECODER.HEVC"

    .line 826
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/google/android/exoplr2avp/util/Util;->DEVICE:Ljava/lang/String;

    const-string v0, "mcv5a"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;
    .locals 12

    .line 165
    new-instance v11, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p7, :cond_0

    if-eqz p3, :cond_0

    .line 175
    invoke-static {p3}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->isAdaptive(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    invoke-static {p0}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->needsDisableAdaptationWorkaround(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    if-eqz p3, :cond_1

    .line 177
    invoke-static {p3}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->isTunneling(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    if-nez p8, :cond_3

    if-eqz p3, :cond_2

    .line 178
    invoke-static {p3}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->isSecure(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v10, 0x1

    :goto_3
    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZZ)V

    return-object v11
.end method


# virtual methods
.method public alignVideoSizeV21(II)Landroid/graphics/Point;
    .locals 2

    .line 527
    iget-object v0, p0, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 530
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 534
    :cond_1
    invoke-static {v0, p1, p2}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->alignVideoSizeV21(Landroid/media/MediaCodecInfo$VideoCapabilities;II)Landroid/graphics/Point;

    move-result-object p1

    return-object p1
.end method

.method public canReuseCodec(Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/Format;)Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;
    .locals 13

    .line 397
    iget-object v0, p1, Lcom/google/android/exoplr2avp/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v1, p2, Lcom/google/android/exoplr2avp/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/exoplr2avp/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 401
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->isVideo:Z

    if-eqz v1, :cond_8

    .line 402
    iget v1, p1, Lcom/google/android/exoplr2avp/Format;->rotationDegrees:I

    iget v2, p2, Lcom/google/android/exoplr2avp/Format;->rotationDegrees:I

    if-eq v1, v2, :cond_1

    or-int/lit16 v0, v0, 0x400

    .line 405
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->adaptive:Z

    if-nez v1, :cond_3

    iget v1, p1, Lcom/google/android/exoplr2avp/Format;->width:I

    iget v2, p2, Lcom/google/android/exoplr2avp/Format;->width:I

    if-ne v1, v2, :cond_2

    iget v1, p1, Lcom/google/android/exoplr2avp/Format;->height:I

    iget v2, p2, Lcom/google/android/exoplr2avp/Format;->height:I

    if-eq v1, v2, :cond_3

    :cond_2
    or-int/lit16 v0, v0, 0x200

    .line 409
    :cond_3
    iget-object v1, p1, Lcom/google/android/exoplr2avp/Format;->colorInfo:Lcom/google/android/exoplr2avp/video/ColorInfo;

    iget-object v2, p2, Lcom/google/android/exoplr2avp/Format;->colorInfo:Lcom/google/android/exoplr2avp/video/ColorInfo;

    invoke-static {v1, v2}, Lcom/google/android/exoplr2avp/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    or-int/lit16 v0, v0, 0x800

    .line 412
    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->needsAdaptationReconfigureWorkaround(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 413
    invoke-virtual {p1, p2}, Lcom/google/android/exoplr2avp/Format;->initializationDataEquals(Lcom/google/android/exoplr2avp/Format;)Z

    move-result v1

    if-nez v1, :cond_5

    or-int/lit8 v0, v0, 0x2

    :cond_5
    if-nez v0, :cond_7

    .line 418
    new-instance v0, Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 422
    invoke-virtual {p1, p2}, Lcom/google/android/exoplr2avp/Format;->initializationDataEquals(Lcom/google/android/exoplr2avp/Format;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x3

    const/4 v5, 0x3

    goto :goto_1

    :cond_6
    const/4 v1, 0x2

    const/4 v5, 0x2

    :goto_1
    const/4 v6, 0x0

    move-object v1, v0

    move-object v3, p1

    move-object v4, p2

    .line 424
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/Format;II)V

    return-object v0

    :cond_7
    move v12, v0

    goto/16 :goto_2

    .line 428
    :cond_8
    iget v1, p1, Lcom/google/android/exoplr2avp/Format;->channelCount:I

    iget v2, p2, Lcom/google/android/exoplr2avp/Format;->channelCount:I

    if-eq v1, v2, :cond_9

    or-int/lit16 v0, v0, 0x1000

    .line 431
    :cond_9
    iget v1, p1, Lcom/google/android/exoplr2avp/Format;->sampleRate:I

    iget v2, p2, Lcom/google/android/exoplr2avp/Format;->sampleRate:I

    if-eq v1, v2, :cond_a

    or-int/lit16 v0, v0, 0x2000

    .line 434
    :cond_a
    iget v1, p1, Lcom/google/android/exoplr2avp/Format;->pcmEncoding:I

    iget v2, p2, Lcom/google/android/exoplr2avp/Format;->pcmEncoding:I

    if-eq v1, v2, :cond_b

    or-int/lit16 v0, v0, 0x4000

    :cond_b
    if-nez v0, :cond_c

    .line 440
    iget-object v1, p0, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    const-string v2, "audio/mp4a-latm"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 443
    invoke-static {p1}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecUtil;->getCodecProfileAndLevel(Lcom/google/android/exoplr2avp/Format;)Landroid/util/Pair;

    move-result-object v1

    .line 446
    invoke-static {p2}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecUtil;->getCodecProfileAndLevel(Lcom/google/android/exoplr2avp/Format;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v1, :cond_c

    if-eqz v2, :cond_c

    .line 448
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 449
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x2a

    if-ne v1, v3, :cond_c

    if-ne v2, v3, :cond_c

    .line 452
    new-instance v0, Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;

    iget-object v5, p0, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const/4 v8, 0x3

    const/4 v9, 0x0

    move-object v4, v0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v4 .. v9}, Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/Format;II)V

    return-object v0

    .line 462
    :cond_c
    invoke-virtual {p1, p2}, Lcom/google/android/exoplr2avp/Format;->initializationDataEquals(Lcom/google/android/exoplr2avp/Format;)Z

    move-result v1

    if-nez v1, :cond_d

    or-int/lit8 v0, v0, 0x20

    .line 465
    :cond_d
    iget-object v1, p0, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->needsAdaptationFlushWorkaround(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    or-int/lit8 v0, v0, 0x2

    :cond_e
    if-nez v0, :cond_7

    .line 470
    new-instance v0, Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/Format;II)V

    return-object v0

    .line 475
    :goto_2
    new-instance v0, Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;

    iget-object v8, p0, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const/4 v11, 0x0

    move-object v7, v0

    move-object v9, p1

    move-object v10, p2

    invoke-direct/range {v7 .. v12}, Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/Format;II)V

    return-object v0
.end method

.method public getMaxSupportedInstances()I
    .locals 2

    .line 230
    sget v0, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-nez v0, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    invoke-static {v0}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->getMaxSupportedInstancesV23(Landroid/media/MediaCodecInfo$CodecCapabilities;)I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public getProfileLevels()[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    if-nez v0, :cond_0

    goto :goto_0

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget-object v0, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    :goto_1
    return-object v0
.end method

.method public isAudioChannelCountSupportedV21(I)Z
    .locals 4

    .line 573
    iget-object v0, p0, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "channelCount.caps"

    .line 574
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    return v1

    .line 577
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "channelCount.aCaps"

    .line 579
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    return v1

    .line 582
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    .line 583
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$AudioCapabilities;->getMaxInputChannelCount()I

    move-result v0

    invoke-static {v2, v3, v0}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->adjustMaxInputChannelCount(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-ge v0, p1, :cond_2

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "channelCount.support, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public isAudioSampleRateSupportedV21(I)Z
    .locals 3

    .line 547
    iget-object v0, p0, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "sampleRate.caps"

    .line 548
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    return v1

    .line 551
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "sampleRate.aCaps"

    .line 553
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    return v1

    .line 556
    :cond_1
    invoke-virtual {v0, p1}, Landroid/media/MediaCodecInfo$AudioCapabilities;->isSampleRateSupported(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sampleRate.support, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public isFormatSupported(Lcom/google/android/exoplr2avp/Format;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 244
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->isSampleMimeTypeSupported(Lcom/google/android/exoplr2avp/Format;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 248
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->isCodecProfileAndLevelSupported(Lcom/google/android/exoplr2avp/Format;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 252
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->isVideo:Z

    const/16 v2, 0x15

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    .line 253
    iget v0, p1, Lcom/google/android/exoplr2avp/Format;->width:I

    if-lez v0, :cond_6

    iget v0, p1, Lcom/google/android/exoplr2avp/Format;->height:I

    if-gtz v0, :cond_2

    goto :goto_0

    .line 256
    :cond_2
    sget v0, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    if-lt v0, v2, :cond_3

    .line 257
    iget v0, p1, Lcom/google/android/exoplr2avp/Format;->width:I

    iget v1, p1, Lcom/google/android/exoplr2avp/Format;->height:I

    iget p1, p1, Lcom/google/android/exoplr2avp/Format;->frameRate:F

    float-to-double v2, p1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->isVideoSizeAndRateSupportedV21(IID)Z

    move-result p1

    return p1

    .line 259
    :cond_3
    iget v0, p1, Lcom/google/android/exoplr2avp/Format;->width:I

    iget v2, p1, Lcom/google/android/exoplr2avp/Format;->height:I

    mul-int v0, v0, v2

    .line 260
    invoke-static {}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecUtil;->maxH264DecodableFrameSize()I

    move-result v2

    if-gt v0, v2, :cond_4

    const/4 v1, 0x1

    :cond_4
    if-nez v1, :cond_5

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "legacyFrameSize, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/google/android/exoplr2avp/Format;->width:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/google/android/exoplr2avp/Format;->height:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    :cond_5
    return v1

    :cond_6
    :goto_0
    return v3

    .line 267
    :cond_7
    sget v0, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    if-lt v0, v2, :cond_9

    iget v0, p1, Lcom/google/android/exoplr2avp/Format;->sampleRate:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    iget v0, p1, Lcom/google/android/exoplr2avp/Format;->sampleRate:I

    .line 269
    invoke-virtual {p0, v0}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->isAudioSampleRateSupportedV21(I)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_8
    iget v0, p1, Lcom/google/android/exoplr2avp/Format;->channelCount:I

    if-eq v0, v2, :cond_9

    iget p1, p1, Lcom/google/android/exoplr2avp/Format;->channelCount:I

    .line 271
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->isAudioChannelCountSupportedV21(I)Z

    move-result p1

    if-eqz p1, :cond_a

    :cond_9
    const/4 v1, 0x1

    :cond_a
    return v1
.end method

.method public isHdr10PlusOutOfBandMetadataSupported()Z
    .locals 6

    .line 328
    sget v0, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    const-string/jumbo v2, "video/x-vnd.on2.vp9"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->getProfileLevels()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 330
    iget v4, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    const/16 v5, 0x4000

    if-ne v4, v5, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public isSeamlessAdaptationSupported(Lcom/google/android/exoplr2avp/Format;)Z
    .locals 1

    .line 350
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->isVideo:Z

    if-eqz v0, :cond_0

    .line 351
    iget-boolean p1, p0, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->adaptive:Z

    return p1

    .line 353
    :cond_0
    invoke-static {p1}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecUtil;->getCodecProfileAndLevel(Lcom/google/android/exoplr2avp/Format;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 354
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x2a

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isSeamlessAdaptationSupported(Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/Format;Z)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p3, :cond_0

    .line 376
    iget-object p3, p1, Lcom/google/android/exoplr2avp/Format;->colorInfo:Lcom/google/android/exoplr2avp/video/ColorInfo;

    if-eqz p3, :cond_0

    iget-object p3, p2, Lcom/google/android/exoplr2avp/Format;->colorInfo:Lcom/google/android/exoplr2avp/video/ColorInfo;

    if-nez p3, :cond_0

    .line 377
    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/Format;->buildUpon()Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object p2

    iget-object p3, p1, Lcom/google/android/exoplr2avp/Format;->colorInfo:Lcom/google/android/exoplr2avp/video/ColorInfo;

    invoke-virtual {p2, p3}, Lcom/google/android/exoplr2avp/Format$Builder;->setColorInfo(Lcom/google/android/exoplr2avp/video/ColorInfo;)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/Format$Builder;->build()Lcom/google/android/exoplr2avp/Format;

    move-result-object p2

    .line 379
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->canReuseCodec(Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/Format;)Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;

    move-result-object p1

    iget p1, p1, Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;->result:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isVideoSizeAndRateSupportedV21(IID)Z
    .locals 4

    .line 491
    iget-object v0, p0, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo p1, "sizeAndRate.caps"

    .line 492
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    return v1

    .line 495
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo p1, "sizeAndRate.vCaps"

    .line 497
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    return v1

    .line 500
    :cond_1
    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->areSizeAndRateSupportedV21(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "x"

    if-ge p1, p2, :cond_3

    .line 501
    iget-object v3, p0, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 502
    invoke-static {v3}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->needsRotatedVerticalResolutionWorkaround(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 503
    invoke-static {v0, p2, p1, p3, p4}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->areSizeAndRateSupportedV21(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 507
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sizeAndRate.rotated, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->logAssumedSupport(Ljava/lang/String;)V

    goto :goto_1

    .line 504
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sizeAndRate.support, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    return v1

    :cond_4
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    return-object v0
.end method
