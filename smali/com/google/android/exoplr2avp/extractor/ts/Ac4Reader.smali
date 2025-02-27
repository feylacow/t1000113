.class public final Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;
.super Ljava/lang/Object;
.source "Ac4Reader.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/extractor/ts/ElementaryStreamReader;


# static fields
.field private static final STATE_FINDING_SYNC:I = 0x0

.field private static final STATE_READING_HEADER:I = 0x1

.field private static final STATE_READING_SAMPLE:I = 0x2


# instance fields
.field private bytesRead:I

.field private format:Lcom/google/android/exoplr2avp/Format;

.field private formatId:Ljava/lang/String;

.field private hasCRC:Z

.field private final headerScratchBits:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

.field private final headerScratchBytes:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

.field private final language:Ljava/lang/String;

.field private lastByteWasAC:Z

.field private output:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

.field private sampleDurationUs:J

.field private sampleSize:I

.field private state:I

.field private timeUs:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    const/16 v1, 0x10

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;->headerScratchBits:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    .line 88
    new-instance v1, Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->data:[B

    invoke-direct {v1, v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;-><init>([B)V

    iput-object v1, p0, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;->headerScratchBytes:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    const/4 v0, 0x0

    .line 89
    iput v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;->state:I

    .line 90
    iput v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;->bytesRead:I

    .line 91
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;->lastByteWasAC:Z

    .line 92
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;->hasCRC:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 93
    iput-wide v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;->timeUs:J

    .line 94
    iput-object p1, p0, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;->language:Ljava/lang/String;

    return-void
.end method

.method private continueRead(Lcom/google/android/exoplr2avp/util/ParsableByteArray;[BI)Z
    .locals 2

    .line 174
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;->bytesRead:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 175
    iget v1, p0, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;->bytesRead:I

    invoke-virtual {p1, p2, v1, v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readBytes([BII)V

    .line 176
    iget p1, p0, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;->bytesRead:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;->bytesRead:I

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private parseHeader()V
    .locals 5
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;->headerScratchBits:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->setPosition(I)V

    .line 207
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;->headerScratchBits:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/audio/Ac4Util;->parseAc4SyncframeInfo(Lcom/google/android/exoplr2avp/util/ParsableBitArray;)Lcom/google/android/exoplr2avp/audio/Ac4Util$SyncFrameInfo;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;->format:Lcom/google/android/exoplr2avp/Format;

    const-string v2, "audio/ac4"

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/google/android/exoplr2avp/audio/Ac4Util$SyncFrameInfo;->channelCount:I

    iget-object v3, p0, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;->format:Lcom/google/android/exoplr2avp/Format;

    iget v3, v3, Lcom/google/android/exoplr2avp/Format;->channelCount:I

    if-ne v1, v3, :cond_0

    iget v1, v0, Lcom/google/android/exoplr2avp/audio/Ac4Util$SyncFrameInfo;->sampleRate:I

    iget-object v3, p0, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;->format:Lcom/google/android/exoplr2avp/Format;

    iget v3, v3, Lcom/google/android/exoplr2avp/Format;->sampleRate:I

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;->format:Lcom/google/android/exoplr2avp/Format;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/Format;->sampleMimeType:Ljava/lang/String;

    .line 211
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 212
    :cond_0
    new-instance v1, Lcom/google/android/exoplr2avp/Format$Builder;

    invoke-direct {v1}, Lcom/google/android/exoplr2avp/Format$Builder;-><init>()V

    iget-object v3, p0, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;->formatId:Ljava/lang/String;

    .line 214
    invoke-virtual {v1, v3}, Lcom/google/android/exoplr2avp/Format$Builder;->setId(Ljava/lang/String;)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object v1

    .line 215
    invoke-virtual {v1, v2}, Lcom/google/android/exoplr2avp/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object v1

    iget v2, v0, Lcom/google/android/exoplr2avp/audio/Ac4Util$SyncFrameInfo;->channelCount:I

    .line 216
    invoke-virtual {v1, v2}, Lcom/google/android/exoplr2avp/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object v1

    iget v2, v0, Lcom/google/android/exoplr2avp/audio/Ac4Util$SyncFrameInfo;->sampleRate:I

    .line 217
    invoke-virtual {v1, v2}, Lcom/google/android/exoplr2avp/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;->language:Ljava/lang/String;

    .line 218
    invoke-virtual {v1, v2}, Lcom/google/android/exoplr2avp/Format$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object v1

    .line 219
    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/Format$Builder;->build()Lcom/google/android/exoplr2avp/Format;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;->format:Lcom/google/android/exoplr2avp/Format;

    .line 220
    iget-object v2, p0, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;->output:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    invoke-interface {v2, v1}, Lcom/google/android/exoplr2avp/extractor/TrackOutput;->format(Lcom/google/android/exoplr2avp/Format;)V

    .line 222
    :cond_1
    iget v1, v0, Lcom/google/android/exoplr2avp/audio/Ac4Util$SyncFrameInfo;->frameSize:I

    iput v1, p0, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;->sampleSize:I

    const-wide/32 v1, 0xf4240

    .line 225
    iget v0, v0, Lcom/google/android/exoplr2avp/audio/Ac4Util$SyncFrameInfo;->sampleCount:I

    int-to-long v3, v0

    mul-long v3, v3, v1

    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;->format:Lcom/google/android/exoplr2avp/Format;

    iget v0, v0, Lcom/google/android/exoplr2avp/Format;->sampleRate:I

    int-to-long v0, v0

    div-long/2addr v3, v0

    iput-wide v3, p0, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;->sampleDurationUs:J

    return-void
.end method

.method private skipToNextSync(Lcom/google/android/exoplr2avp/util/ParsableByteArray;)Z
    .locals 5

    .line 188
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_6

    .line 189
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;->lastByteWasAC:Z

    const/16 v2, 0xac

    const/4 v3, 0x1

    if-nez v0, :cond_2

    .line 190
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;->lastByteWasAC:Z

    goto :goto_0

    .line 193
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    if-ne v0, v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 194
    :goto_1
    iput-boolean v2, p0, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;->lastByteWasAC:Z

    const/16 v2, 0x40

    const/16 v4, 0x41

    if-eq v0, v2, :cond_4

    if-ne v0, v4, :cond_0

    :cond_4
    if-ne v0, v4, :cond_5

    const/4 v1, 0x1

    .line 196
    :cond_5
    iput-boolean v1, p0, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;->hasCRC:Z

    return v3

    :cond_6
    return v1
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplr2avp/util/ParsableByteArray;)V
    .locals 10

    .line 122
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;->output:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_6

    .line 124
    iget v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;->state:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 142
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v2, p0, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;->sampleSize:I

    iget v3, p0, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;->bytesRead:I

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 143
    iget-object v2, p0, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;->output:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    invoke-interface {v2, p1, v0}, Lcom/google/android/exoplr2avp/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplr2avp/util/ParsableByteArray;I)V

    .line 144
    iget v2, p0, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;->bytesRead:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;->bytesRead:I

    .line 145
    iget v7, p0, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;->sampleSize:I

    if-ne v2, v7, :cond_0

    .line 146
    iget-wide v4, p0, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;->timeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v2

    if-eqz v0, :cond_2

    .line 147
    iget-object v3, p0, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;->output:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/google/android/exoplr2avp/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplr2avp/extractor/TrackOutput$CryptoData;)V

    .line 148
    iget-wide v2, p0, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;->timeUs:J

    iget-wide v4, p0, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;->sampleDurationUs:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;->timeUs:J

    .line 150
    :cond_2
    iput v1, p0, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;->state:I

    goto :goto_0

    .line 134
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;->headerScratchBytes:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/16 v3, 0x10

    invoke-direct {p0, p1, v0, v3}, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;->continueRead(Lcom/google/android/exoplr2avp/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;->parseHeader()V

    .line 136
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;->headerScratchBytes:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->setPosition(I)V

    .line 137
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;->output:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;->headerScratchBytes:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-interface {v0, v1, v3}, Lcom/google/android/exoplr2avp/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplr2avp/util/ParsableByteArray;I)V

    .line 138
    iput v2, p0, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;->state:I

    goto :goto_0

    .line 126
    :cond_4
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;->skipToNextSync(Lcom/google/android/exoplr2avp/util/ParsableByteArray;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iput v3, p0, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;->state:I

    .line 128
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;->headerScratchBytes:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/16 v4, -0x54

    aput-byte v4, v0, v1

    .line 129
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;->headerScratchBytes:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;->hasCRC:Z

    if-eqz v1, :cond_5

    const/16 v1, 0x41

    goto :goto_1

    :cond_5
    const/16 v1, 0x40

    :goto_1
    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 130
    iput v2, p0, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;->bytesRead:I

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public createTracks(Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;Lcom/google/android/exoplr2avp/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 1

    .line 108
    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 109
    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;->formatId:Ljava/lang/String;

    .line 110
    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;->output:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    return-void
.end method

.method public packetFinished()V
    .locals 0

    return-void
.end method

.method public packetStarted(JI)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    .line 116
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;->timeUs:J

    :cond_0
    return-void
.end method

.method public seek()V
    .locals 2

    const/4 v0, 0x0

    .line 99
    iput v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;->state:I

    .line 100
    iput v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;->bytesRead:I

    .line 101
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;->lastByteWasAC:Z

    .line 102
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;->hasCRC:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 103
    iput-wide v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;->timeUs:J

    return-void
.end method
