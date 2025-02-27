.class final Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpAacReader;
.super Ljava/lang/Object;
.source "RtpAacReader.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpPayloadReader;


# static fields
.field private static final AAC_HIGH_BITRATE_MODE:Ljava/lang/String; = "AAC-hbr"

.field private static final AAC_LOW_BITRATE_MODE:Ljava/lang/String; = "AAC-lbr"

.field private static final TAG:Ljava/lang/String; = "RtpAacReader"


# instance fields
.field private final auHeaderScratchBit:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

.field private final auIndexFieldBitSize:I

.field private final auSizeFieldBitSize:I

.field private firstReceivedTimestamp:J

.field private final numBitsInAuHeader:I

.field private final payloadFormat:Lcom/google/android/exoplr2avp/source/rtsp/RtpPayloadFormat;

.field private final sampleRate:I

.field private startTimeOffsetUs:J

.field private trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/source/rtsp/RtpPayloadFormat;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpAacReader;->payloadFormat:Lcom/google/android/exoplr2avp/source/rtsp/RtpPayloadFormat;

    .line 56
    new-instance v0, Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpAacReader;->auHeaderScratchBit:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    .line 57
    iget v0, p1, Lcom/google/android/exoplr2avp/source/rtsp/RtpPayloadFormat;->clockRate:I

    iput v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpAacReader;->sampleRate:I

    .line 60
    iget-object p1, p1, Lcom/google/android/exoplr2avp/source/rtsp/RtpPayloadFormat;->fmtpParameters:Lcom/google/common/collect/ImmutableMap;

    const-string v0, "mode"

    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "AAC-hbr"

    .line 61
    invoke-static {p1, v0}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0xd

    .line 62
    iput p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpAacReader;->auSizeFieldBitSize:I

    const/4 p1, 0x3

    .line 63
    iput p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpAacReader;->auIndexFieldBitSize:I

    goto :goto_0

    :cond_0
    const-string v0, "AAC-lbr"

    .line 64
    invoke-static {p1, v0}, Lcom/google/common/base/Ascii;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x6

    .line 65
    iput p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpAacReader;->auSizeFieldBitSize:I

    const/4 p1, 0x2

    .line 66
    iput p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpAacReader;->auIndexFieldBitSize:I

    .line 71
    :goto_0
    iget p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpAacReader;->auIndexFieldBitSize:I

    iget v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpAacReader;->auSizeFieldBitSize:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpAacReader;->numBitsInAuHeader:I

    return-void

    .line 68
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "AAC mode not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static outputSampleMetadata(Lcom/google/android/exoplr2avp/extractor/TrackOutput;JI)V
    .locals 7

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v4, p3

    .line 153
    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplr2avp/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplr2avp/extractor/TrackOutput$CryptoData;)V

    return-void
.end method

.method private static toSampleTimeUs(JJJI)J
    .locals 6

    sub-long v0, p2, p4

    int-to-long v4, p6

    const-wide/32 v2, 0xf4240

    .line 161
    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplr2avp/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide p2

    add-long/2addr p0, p2

    return-wide p0
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplr2avp/util/ParsableByteArray;JIZ)V
    .locals 8

    .line 106
    iget-object p4, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpAacReader;->trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    invoke-static {p4}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readShort()S

    move-result p4

    .line 110
    iget v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpAacReader;->numBitsInAuHeader:I

    div-int v0, p4, v0

    .line 111
    iget-wide v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpAacReader;->startTimeOffsetUs:J

    iget-wide v5, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpAacReader;->firstReceivedTimestamp:J

    iget v7, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpAacReader;->sampleRate:I

    move-wide v3, p2

    .line 112
    invoke-static/range {v1 .. v7}, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpAacReader;->toSampleTimeUs(JJJI)J

    move-result-wide p2

    .line 115
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpAacReader;->auHeaderScratchBit:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->reset(Lcom/google/android/exoplr2avp/util/ParsableByteArray;)V

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 118
    iget-object p4, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpAacReader;->auHeaderScratchBit:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    iget v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpAacReader;->auSizeFieldBitSize:I

    invoke-virtual {p4, v0}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBits(I)I

    move-result p4

    .line 119
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpAacReader;->auHeaderScratchBit:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    iget v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpAacReader;->auIndexFieldBitSize:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    .line 122
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpAacReader;->trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/google/android/exoplr2avp/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplr2avp/util/ParsableByteArray;I)V

    if-eqz p5, :cond_1

    .line 124
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpAacReader;->trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpAacReader;->outputSampleMetadata(Lcom/google/android/exoplr2avp/extractor/TrackOutput;JI)V

    goto :goto_1

    :cond_0
    add-int/lit8 p4, p4, 0x7

    .line 128
    div-int/lit8 p4, p4, 0x8

    invoke-virtual {p1, p4}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->skipBytes(I)V

    const/4 p4, 0x0

    :goto_0
    if-ge p4, v0, :cond_1

    .line 130
    iget-object p5, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpAacReader;->auHeaderScratchBit:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    iget v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpAacReader;->auSizeFieldBitSize:I

    invoke-virtual {p5, v1}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBits(I)I

    move-result p5

    .line 131
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpAacReader;->auHeaderScratchBit:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    iget v2, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpAacReader;->auIndexFieldBitSize:I

    invoke-virtual {v1, v2}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    .line 133
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpAacReader;->trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    invoke-interface {v1, p1, p5}, Lcom/google/android/exoplr2avp/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplr2avp/util/ParsableByteArray;I)V

    .line 134
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpAacReader;->trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    invoke-static {v1, p2, p3, p5}, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpAacReader;->outputSampleMetadata(Lcom/google/android/exoplr2avp/extractor/TrackOutput;JI)V

    int-to-long v2, v0

    const-wide/32 v4, 0xf4240

    .line 137
    iget p5, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpAacReader;->sampleRate:I

    int-to-long v6, p5

    .line 138
    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplr2avp/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v1

    add-long/2addr p2, v1

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public createTracks(Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;I)V
    .locals 1

    const/4 v0, 0x1

    .line 78
    invoke-interface {p1, p2, v0}, Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpAacReader;->trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    .line 79
    iget-object p2, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpAacReader;->payloadFormat:Lcom/google/android/exoplr2avp/source/rtsp/RtpPayloadFormat;

    iget-object p2, p2, Lcom/google/android/exoplr2avp/source/rtsp/RtpPayloadFormat;->format:Lcom/google/android/exoplr2avp/Format;

    invoke-interface {p1, p2}, Lcom/google/android/exoplr2avp/extractor/TrackOutput;->format(Lcom/google/android/exoplr2avp/Format;)V

    return-void
.end method

.method public onReceivingFirstPacket(JI)V
    .locals 0

    .line 84
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpAacReader;->firstReceivedTimestamp:J

    return-void
.end method

.method public seek(JJ)V
    .locals 0

    .line 146
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpAacReader;->firstReceivedTimestamp:J

    .line 147
    iput-wide p3, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpAacReader;->startTimeOffsetUs:J

    return-void
.end method
