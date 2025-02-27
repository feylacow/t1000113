.class public final Lcom/google/android/exoplr2avp/extractor/ts/DtsReader;
.super Ljava/lang/Object;
.source "DtsReader.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/extractor/ts/ElementaryStreamReader;


# static fields
.field private static final HEADER_SIZE:I = 0x12

.field private static final STATE_FINDING_SYNC:I = 0x0

.field private static final STATE_READING_HEADER:I = 0x1

.field private static final STATE_READING_SAMPLE:I = 0x2


# instance fields
.field private bytesRead:I

.field private format:Lcom/google/android/exoplr2avp/Format;

.field private formatId:Ljava/lang/String;

.field private final headerScratchBytes:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

.field private final language:Ljava/lang/String;

.field private output:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

.field private sampleDurationUs:J

.field private sampleSize:I

.field private state:I

.field private syncBytes:I

.field private timeUs:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    const/16 v1, 0x12

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/DtsReader;->headerScratchBytes:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    const/4 v0, 0x0

    .line 68
    iput v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/DtsReader;->state:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 69
    iput-wide v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/DtsReader;->timeUs:J

    .line 70
    iput-object p1, p0, Lcom/google/android/exoplr2avp/extractor/ts/DtsReader;->language:Ljava/lang/String;

    return-void
.end method

.method private continueRead(Lcom/google/android/exoplr2avp/util/ParsableByteArray;[BI)Z
    .locals 2

    .line 146
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplr2avp/extractor/ts/DtsReader;->bytesRead:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 147
    iget v1, p0, Lcom/google/android/exoplr2avp/extractor/ts/DtsReader;->bytesRead:I

    invoke-virtual {p1, p2, v1, v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readBytes([BII)V

    .line 148
    iget p1, p0, Lcom/google/android/exoplr2avp/extractor/ts/DtsReader;->bytesRead:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/exoplr2avp/extractor/ts/DtsReader;->bytesRead:I

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

    .line 180
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/DtsReader;->headerScratchBytes:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object v0

    .line 181
    iget-object v1, p0, Lcom/google/android/exoplr2avp/extractor/ts/DtsReader;->format:Lcom/google/android/exoplr2avp/Format;

    if-nez v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/google/android/exoplr2avp/extractor/ts/DtsReader;->formatId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/extractor/ts/DtsReader;->language:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplr2avp/audio/DtsUtil;->parseDtsFormat([BLjava/lang/String;Ljava/lang/String;Lcom/google/android/exoplr2avp/drm/DrmInitData;)Lcom/google/android/exoplr2avp/Format;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplr2avp/extractor/ts/DtsReader;->format:Lcom/google/android/exoplr2avp/Format;

    .line 183
    iget-object v2, p0, Lcom/google/android/exoplr2avp/extractor/ts/DtsReader;->output:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    invoke-interface {v2, v1}, Lcom/google/android/exoplr2avp/extractor/TrackOutput;->format(Lcom/google/android/exoplr2avp/Format;)V

    .line 185
    :cond_0
    invoke-static {v0}, Lcom/google/android/exoplr2avp/audio/DtsUtil;->getDtsFrameSize([B)I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplr2avp/extractor/ts/DtsReader;->sampleSize:I

    const-wide/32 v1, 0xf4240

    .line 190
    invoke-static {v0}, Lcom/google/android/exoplr2avp/audio/DtsUtil;->parseDtsAudioSampleCount([B)I

    move-result v0

    int-to-long v3, v0

    mul-long v3, v3, v1

    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/DtsReader;->format:Lcom/google/android/exoplr2avp/Format;

    iget v0, v0, Lcom/google/android/exoplr2avp/Format;->sampleRate:I

    int-to-long v0, v0

    div-long/2addr v3, v0

    long-to-int v0, v3

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/DtsReader;->sampleDurationUs:J

    return-void
.end method

.method private skipToNextSync(Lcom/google/android/exoplr2avp/util/ParsableByteArray;)Z
    .locals 5

    .line 160
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 161
    iget v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/DtsReader;->syncBytes:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/DtsReader;->syncBytes:I

    .line 162
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/DtsReader;->syncBytes:I

    .line 163
    invoke-static {v0}, Lcom/google/android/exoplr2avp/audio/DtsUtil;->isSyncWord(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object p1, p0, Lcom/google/android/exoplr2avp/extractor/ts/DtsReader;->headerScratchBytes:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object p1

    .line 165
    iget v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/DtsReader;->syncBytes:I

    shr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    shr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x1

    .line 166
    aput-byte v2, p1, v3

    const/4 v2, 0x2

    shr-int/lit8 v4, v0, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 167
    aput-byte v4, p1, v2

    const/4 v2, 0x3

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 168
    aput-byte v0, p1, v2

    const/4 p1, 0x4

    .line 169
    iput p1, p0, Lcom/google/android/exoplr2avp/extractor/ts/DtsReader;->bytesRead:I

    .line 170
    iput v1, p0, Lcom/google/android/exoplr2avp/extractor/ts/DtsReader;->syncBytes:I

    return v3

    :cond_1
    return v1
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplr2avp/util/ParsableByteArray;)V
    .locals 10

    .line 97
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/DtsReader;->output:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_5

    .line 99
    iget v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/DtsReader;->state:I

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v0, v1, :cond_3

    if-ne v0, v3, :cond_2

    .line 114
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplr2avp/extractor/ts/DtsReader;->sampleSize:I

    iget v3, p0, Lcom/google/android/exoplr2avp/extractor/ts/DtsReader;->bytesRead:I

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 115
    iget-object v1, p0, Lcom/google/android/exoplr2avp/extractor/ts/DtsReader;->output:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    invoke-interface {v1, p1, v0}, Lcom/google/android/exoplr2avp/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplr2avp/util/ParsableByteArray;I)V

    .line 116
    iget v1, p0, Lcom/google/android/exoplr2avp/extractor/ts/DtsReader;->bytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplr2avp/extractor/ts/DtsReader;->bytesRead:I

    .line 117
    iget v7, p0, Lcom/google/android/exoplr2avp/extractor/ts/DtsReader;->sampleSize:I

    if-ne v1, v7, :cond_0

    .line 118
    iget-wide v4, p0, Lcom/google/android/exoplr2avp/extractor/ts/DtsReader;->timeUs:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v4, v0

    if-eqz v3, :cond_1

    .line 119
    iget-object v3, p0, Lcom/google/android/exoplr2avp/extractor/ts/DtsReader;->output:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/google/android/exoplr2avp/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplr2avp/extractor/TrackOutput$CryptoData;)V

    .line 120
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/DtsReader;->timeUs:J

    iget-wide v3, p0, Lcom/google/android/exoplr2avp/extractor/ts/DtsReader;->sampleDurationUs:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/DtsReader;->timeUs:J

    .line 122
    :cond_1
    iput v2, p0, Lcom/google/android/exoplr2avp/extractor/ts/DtsReader;->state:I

    goto :goto_0

    .line 126
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 106
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/DtsReader;->headerScratchBytes:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/16 v1, 0x12

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplr2avp/extractor/ts/DtsReader;->continueRead(Lcom/google/android/exoplr2avp/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/extractor/ts/DtsReader;->parseHeader()V

    .line 108
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/DtsReader;->headerScratchBytes:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->setPosition(I)V

    .line 109
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/DtsReader;->output:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/extractor/ts/DtsReader;->headerScratchBytes:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-interface {v0, v2, v1}, Lcom/google/android/exoplr2avp/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplr2avp/util/ParsableByteArray;I)V

    .line 110
    iput v3, p0, Lcom/google/android/exoplr2avp/extractor/ts/DtsReader;->state:I

    goto :goto_0

    .line 101
    :cond_4
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/extractor/ts/DtsReader;->skipToNextSync(Lcom/google/android/exoplr2avp/util/ParsableByteArray;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iput v1, p0, Lcom/google/android/exoplr2avp/extractor/ts/DtsReader;->state:I

    goto :goto_0

    :cond_5
    return-void
.end method

.method public createTracks(Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;Lcom/google/android/exoplr2avp/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 1

    .line 83
    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 84
    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/DtsReader;->formatId:Ljava/lang/String;

    .line 85
    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/extractor/ts/DtsReader;->output:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

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

    .line 91
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/extractor/ts/DtsReader;->timeUs:J

    :cond_0
    return-void
.end method

.method public seek()V
    .locals 2

    const/4 v0, 0x0

    .line 75
    iput v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/DtsReader;->state:I

    .line 76
    iput v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/DtsReader;->bytesRead:I

    .line 77
    iput v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/DtsReader;->syncBytes:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 78
    iput-wide v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/DtsReader;->timeUs:J

    return-void
.end method
