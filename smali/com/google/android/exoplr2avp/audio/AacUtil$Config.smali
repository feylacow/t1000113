.class public final Lcom/google/android/exoplr2avp/audio/AacUtil$Config;
.super Ljava/lang/Object;
.source "AacUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/audio/AacUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation


# instance fields
.field public final channelCount:I

.field public final codecs:Ljava/lang/String;

.field public final sampleRateHz:I


# direct methods
.method private constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/google/android/exoplr2avp/audio/AacUtil$Config;->sampleRateHz:I

    .line 47
    iput p2, p0, Lcom/google/android/exoplr2avp/audio/AacUtil$Config;->channelCount:I

    .line 48
    iput-object p3, p0, Lcom/google/android/exoplr2avp/audio/AacUtil$Config;->codecs:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(IILjava/lang/String;Lcom/google/android/exoplr2avp/audio/AacUtil$1;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/audio/AacUtil$Config;-><init>(IILjava/lang/String;)V

    return-void
.end method
