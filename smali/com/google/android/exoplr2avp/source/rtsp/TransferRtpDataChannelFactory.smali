.class final Lcom/google/android/exoplr2avp/source/rtsp/TransferRtpDataChannelFactory;
.super Ljava/lang/Object;
.source "TransferRtpDataChannelFactory.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/source/rtsp/RtpDataChannel$Factory;


# static fields
.field private static final INTERLEAVED_CHANNELS_PER_TRACK:I = 0x2


# instance fields
.field private final timeoutMs:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/TransferRtpDataChannelFactory;->timeoutMs:J

    return-void
.end method


# virtual methods
.method public createAndOpenDataChannel(I)Lcom/google/android/exoplr2avp/source/rtsp/RtpDataChannel;
    .locals 3

    .line 37
    new-instance v0, Lcom/google/android/exoplr2avp/source/rtsp/TransferRtpDataChannel;

    iget-wide v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/TransferRtpDataChannelFactory;->timeoutMs:J

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplr2avp/source/rtsp/TransferRtpDataChannel;-><init>(J)V

    mul-int/lit8 p1, p1, 0x2

    .line 38
    invoke-static {p1}, Lcom/google/android/exoplr2avp/source/rtsp/RtpUtils;->getIncomingRtpDataSpec(I)Lcom/google/android/exoplr2avp/upstream/DataSpec;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/source/rtsp/TransferRtpDataChannel;->open(Lcom/google/android/exoplr2avp/upstream/DataSpec;)J

    return-object v0
.end method

.method public synthetic createFallbackDataChannelFactory()Lcom/google/android/exoplr2avp/source/rtsp/RtpDataChannel$Factory;
    .locals 1

    invoke-static {p0}, Lcom/google/android/exoplr2avp/source/rtsp/RtpDataChannel$Factory$-CC;->$default$createFallbackDataChannelFactory(Lcom/google/android/exoplr2avp/source/rtsp/RtpDataChannel$Factory;)Lcom/google/android/exoplr2avp/source/rtsp/RtpDataChannel$Factory;

    move-result-object v0

    return-object v0
.end method
