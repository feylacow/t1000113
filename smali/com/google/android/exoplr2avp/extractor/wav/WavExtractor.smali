.class public final Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor;
.super Ljava/lang/Object;
.source "WavExtractor.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;,
        Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor$PassthroughOutputWriter;,
        Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor$OutputWriter;
    }
.end annotation


# static fields
.field public static final FACTORY:Lcom/google/android/exoplr2avp/extractor/ExtractorsFactory;

.field private static final STATE_READING_FILE_TYPE:I = 0x0

.field private static final STATE_READING_FORMAT:I = 0x2

.field private static final STATE_READING_RF64_SAMPLE_DATA_SIZE:I = 0x1

.field private static final STATE_READING_SAMPLE_DATA:I = 0x4

.field private static final STATE_SKIPPING_TO_SAMPLE_DATA:I = 0x3

.field private static final TAG:Ljava/lang/String; = "WavExtractor"

.field private static final TARGET_SAMPLES_PER_SECOND:I = 0xa


# instance fields
.field private dataEndPosition:J

.field private dataStartPosition:I

.field private extractorOutput:Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;

.field private outputWriter:Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor$OutputWriter;

.field private rf64SampleDataSize:J

.field private state:I

.field private trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    sget-object v0, Lcom/google/android/exoplr2avp/extractor/wav/-$$Lambda$WavExtractor$dPdK5GxwdTznJ1eSzNtuLi9dHFQ;->INSTANCE:Lcom/google/android/exoplr2avp/extractor/wav/-$$Lambda$WavExtractor$dPdK5GxwdTznJ1eSzNtuLi9dHFQ;

    sput-object v0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor;->FACTORY:Lcom/google/android/exoplr2avp/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 91
    iput v0, p0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor;->state:I

    const-wide/16 v0, -0x1

    .line 92
    iput-wide v0, p0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor;->rf64SampleDataSize:J

    const/4 v2, -0x1

    .line 93
    iput v2, p0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor;->dataStartPosition:I

    .line 94
    iput-wide v0, p0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor;->dataEndPosition:J

    return-void
.end method

.method private assertInitialized()V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "extractorOutput",
            "trackOutput"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor;->trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor;->extractorOutput:Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic lambda$static$0()[Lcom/google/android/exoplr2avp/extractor/Extractor;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplr2avp/extractor/Extractor;

    .line 61
    new-instance v1, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor;

    invoke-direct {v1}, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private readFileType(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 154
    iget v0, p0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor;->dataStartPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 155
    invoke-interface {p1, v0}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->skipFully(I)V

    const/4 p1, 0x4

    .line 156
    iput p1, p0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor;->state:I

    return-void

    .line 159
    :cond_1
    invoke-static {p1}, Lcom/google/android/exoplr2avp/extractor/wav/WavHeaderReader;->checkFileType(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 164
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    sub-long/2addr v0, v3

    long-to-int v1, v0

    invoke-interface {p1, v1}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->skipFully(I)V

    .line 165
    iput v2, p0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor;->state:I

    return-void

    :cond_2
    const/4 p1, 0x0

    const-string v0, "Unsupported or unrecognized wav file type."

    .line 161
    invoke-static {v0, p1}, Lcom/google/android/exoplr2avp/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplr2avp/ParserException;

    move-result-object p1

    throw p1
.end method

.method private readFormat(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "extractorOutput",
            "trackOutput"
        }
    .end annotation

    .line 175
    invoke-static {p1}, Lcom/google/android/exoplr2avp/extractor/wav/WavHeaderReader;->readFormat(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)Lcom/google/android/exoplr2avp/extractor/wav/WavFormat;

    move-result-object v3

    .line 176
    iget p1, v3, Lcom/google/android/exoplr2avp/extractor/wav/WavFormat;->formatType:I

    const/16 v0, 0x11

    if-ne p1, v0, :cond_0

    .line 177
    new-instance p1, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;

    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor;->extractorOutput:Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor;->trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    invoke-direct {p1, v0, v1, v3}, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor$ImaAdPcmOutputWriter;-><init>(Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;Lcom/google/android/exoplr2avp/extractor/TrackOutput;Lcom/google/android/exoplr2avp/extractor/wav/WavFormat;)V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor;->outputWriter:Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor$OutputWriter;

    goto :goto_0

    .line 178
    :cond_0
    iget p1, v3, Lcom/google/android/exoplr2avp/extractor/wav/WavFormat;->formatType:I

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    .line 179
    new-instance p1, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor$PassthroughOutputWriter;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor;->extractorOutput:Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor;->trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    const/4 v5, -0x1

    const-string v4, "audio/g711-alaw"

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor$PassthroughOutputWriter;-><init>(Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;Lcom/google/android/exoplr2avp/extractor/TrackOutput;Lcom/google/android/exoplr2avp/extractor/wav/WavFormat;Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor;->outputWriter:Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor$OutputWriter;

    goto :goto_0

    .line 186
    :cond_1
    iget p1, v3, Lcom/google/android/exoplr2avp/extractor/wav/WavFormat;->formatType:I

    const/4 v0, 0x7

    if-ne p1, v0, :cond_2

    .line 187
    new-instance p1, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor$PassthroughOutputWriter;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor;->extractorOutput:Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor;->trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    const/4 v5, -0x1

    const-string v4, "audio/g711-mlaw"

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor$PassthroughOutputWriter;-><init>(Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;Lcom/google/android/exoplr2avp/extractor/TrackOutput;Lcom/google/android/exoplr2avp/extractor/wav/WavFormat;Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor;->outputWriter:Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor$OutputWriter;

    goto :goto_0

    .line 196
    :cond_2
    iget p1, v3, Lcom/google/android/exoplr2avp/extractor/wav/WavFormat;->formatType:I

    iget v0, v3, Lcom/google/android/exoplr2avp/extractor/wav/WavFormat;->bitsPerSample:I

    .line 197
    invoke-static {p1, v0}, Lcom/google/android/exoplr2avp/audio/WavUtil;->getPcmEncodingForType(II)I

    move-result v5

    if-eqz v5, :cond_3

    .line 202
    new-instance p1, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor$PassthroughOutputWriter;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor;->extractorOutput:Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor;->trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    const-string v4, "audio/raw"

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor$PassthroughOutputWriter;-><init>(Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;Lcom/google/android/exoplr2avp/extractor/TrackOutput;Lcom/google/android/exoplr2avp/extractor/wav/WavFormat;Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor;->outputWriter:Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor$OutputWriter;

    :goto_0
    const/4 p1, 0x3

    .line 206
    iput p1, p0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor;->state:I

    return-void

    .line 199
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported WAV format type: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v3, Lcom/google/android/exoplr2avp/extractor/wav/WavFormat;->formatType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplr2avp/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lcom/google/android/exoplr2avp/ParserException;

    move-result-object p1

    throw p1
.end method

.method private readRf64SampleDataSize(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    invoke-static {p1}, Lcom/google/android/exoplr2avp/extractor/wav/WavHeaderReader;->readRf64SampleDataSize(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor;->rf64SampleDataSize:J

    const/4 p1, 0x2

    .line 170
    iput p1, p0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor;->state:I

    return-void
.end method

.method private readSampleData(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor;->dataEndPosition:J

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 230
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor;->dataEndPosition:J

    invoke-interface {p1}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    sub-long/2addr v0, v3

    .line 231
    iget-object v3, p0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor;->outputWriter:Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor$OutputWriter;

    invoke-static {v3}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor$OutputWriter;

    invoke-interface {v3, p1, v0, v1}, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor$OutputWriter;->sampleData(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;J)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v2, -0x1

    :cond_1
    return v2
.end method

.method private skipToSampleData(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    invoke-static {p1}, Lcom/google/android/exoplr2avp/extractor/wav/WavHeaderReader;->skipToSampleData(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)Landroid/util/Pair;

    move-result-object v0

    .line 211
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor;->dataStartPosition:I

    .line 212
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 213
    iget-wide v2, p0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor;->rf64SampleDataSize:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    const-wide v6, 0xffffffffL

    cmp-long v8, v0, v6

    if-nez v8, :cond_0

    move-wide v0, v2

    .line 218
    :cond_0
    iget v2, p0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor;->dataStartPosition:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor;->dataEndPosition:J

    .line 219
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    cmp-long p1, v0, v4

    if-eqz p1, :cond_1

    .line 220
    iget-wide v2, p0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor;->dataEndPosition:J

    cmp-long p1, v2, v0

    if-lez p1, :cond_1

    .line 221
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data exceeds input length: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor;->dataEndPosition:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "WavExtractor"

    invoke-static {v2, p1}, Lcom/google/android/exoplr2avp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iput-wide v0, p0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor;->dataEndPosition:J

    .line 224
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor;->outputWriter:Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor$OutputWriter;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor$OutputWriter;

    iget v0, p0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor;->dataStartPosition:I

    iget-wide v1, p0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor;->dataEndPosition:J

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor$OutputWriter;->init(IJ)V

    const/4 p1, 0x4

    .line 225
    iput p1, p0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor;->state:I

    return-void
.end method


# virtual methods
.method public init(Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;)V
    .locals 2

    .line 104
    iput-object p1, p0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor;->extractorOutput:Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 105
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor;->trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    .line 106
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;->endTracks()V

    return-void
.end method

.method public read(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;Lcom/google/android/exoplr2avp/extractor/PositionHolder;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor;->assertInitialized()V

    .line 126
    iget p2, p0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor;->state:I

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    const/4 v1, 0x1

    if-eq p2, v1, :cond_3

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 140
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor;->readSampleData(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)I

    move-result p1

    return p1

    .line 142
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 137
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor;->skipToSampleData(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)V

    return v0

    .line 134
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor;->readFormat(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)V

    return v0

    .line 131
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor;->readRf64SampleDataSize(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)V

    return v0

    .line 128
    :cond_4
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor;->readFileType(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)V

    return v0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 111
    :goto_0
    iput p1, p0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor;->state:I

    .line 112
    iget-object p1, p0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor;->outputWriter:Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor$OutputWriter;

    if-eqz p1, :cond_1

    .line 113
    invoke-interface {p1, p3, p4}, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor$OutputWriter;->reset(J)V

    :cond_1
    return-void
.end method

.method public sniff(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    invoke-static {p1}, Lcom/google/android/exoplr2avp/extractor/wav/WavHeaderReader;->checkFileType(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)Z

    move-result p1

    return p1
.end method
