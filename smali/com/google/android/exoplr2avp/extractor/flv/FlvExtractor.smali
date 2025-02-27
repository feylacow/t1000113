.class public final Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;
.super Ljava/lang/Object;
.source "FlvExtractor.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/extractor/Extractor;


# static fields
.field public static final FACTORY:Lcom/google/android/exoplr2avp/extractor/ExtractorsFactory;

.field private static final FLV_HEADER_SIZE:I = 0x9

.field private static final FLV_TAG:I = 0x464c56

.field private static final FLV_TAG_HEADER_SIZE:I = 0xb

.field private static final STATE_READING_FLV_HEADER:I = 0x1

.field private static final STATE_READING_TAG_DATA:I = 0x4

.field private static final STATE_READING_TAG_HEADER:I = 0x3

.field private static final STATE_SKIPPING_TO_TAG_HEADER:I = 0x2

.field private static final TAG_TYPE_AUDIO:I = 0x8

.field private static final TAG_TYPE_SCRIPT_DATA:I = 0x12

.field private static final TAG_TYPE_VIDEO:I = 0x9


# instance fields
.field private audioReader:Lcom/google/android/exoplr2avp/extractor/flv/AudioTagPayloadReader;

.field private bytesToNextTagHeader:I

.field private extractorOutput:Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;

.field private final headerBuffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

.field private mediaTagTimestampOffsetUs:J

.field private final metadataReader:Lcom/google/android/exoplr2avp/extractor/flv/ScriptTagPayloadReader;

.field private outputFirstSample:Z

.field private outputSeekMap:Z

.field private final scratch:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

.field private state:I

.field private final tagData:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

.field private tagDataSize:I

.field private final tagHeaderBuffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

.field private tagTimestampUs:J

.field private tagType:I

.field private videoReader:Lcom/google/android/exoplr2avp/extractor/flv/VideoTagPayloadReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    sget-object v0, Lcom/google/android/exoplr2avp/extractor/flv/-$$Lambda$FlvExtractor$18uPgEcKYZ_BGSRtNDirwTb2OoI;->INSTANCE:Lcom/google/android/exoplr2avp/extractor/flv/-$$Lambda$FlvExtractor$18uPgEcKYZ_BGSRtNDirwTb2OoI;

    sput-object v0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->FACTORY:Lcom/google/android/exoplr2avp/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    .line 95
    new-instance v0, Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->headerBuffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    .line 96
    new-instance v0, Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->tagHeaderBuffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    .line 97
    new-instance v0, Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->tagData:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    .line 98
    new-instance v0, Lcom/google/android/exoplr2avp/extractor/flv/ScriptTagPayloadReader;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/extractor/flv/ScriptTagPayloadReader;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->metadataReader:Lcom/google/android/exoplr2avp/extractor/flv/ScriptTagPayloadReader;

    const/4 v0, 0x1

    .line 99
    iput v0, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->state:I

    return-void
.end method

.method private ensureReadyForMediaOutput()V
    .locals 4
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "extractorOutput"
        }
    .end annotation

    .line 310
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->outputSeekMap:Z

    if-nez v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->extractorOutput:Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;

    new-instance v1, Lcom/google/android/exoplr2avp/extractor/SeekMap$Unseekable;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplr2avp/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplr2avp/extractor/SeekMap;)V

    const/4 v0, 0x1

    .line 312
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->outputSeekMap:Z

    :cond_0
    return-void
.end method

.method private getCurrentTimestampUs()J
    .locals 5

    .line 317
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->outputFirstSample:Z

    if-eqz v0, :cond_0

    .line 318
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->mediaTagTimestampOffsetUs:J

    iget-wide v2, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->tagTimestampUs:J

    add-long/2addr v0, v2

    goto :goto_0

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->metadataReader:Lcom/google/android/exoplr2avp/extractor/flv/ScriptTagPayloadReader;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/extractor/flv/ScriptTagPayloadReader;->getDurationUs()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->tagTimestampUs:J

    :goto_0
    return-wide v0
.end method

.method static synthetic lambda$static$0()[Lcom/google/android/exoplr2avp/extractor/Extractor;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplr2avp/extractor/Extractor;

    .line 44
    new-instance v1, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;

    invoke-direct {v1}, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private prepareTagData(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)Lcom/google/android/exoplr2avp/util/ParsableByteArray;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 298
    iget v0, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->tagDataSize:I

    iget-object v1, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->tagData:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->capacity()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 299
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->tagData:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iget v3, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->tagDataSize:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->reset([BI)V

    goto :goto_0

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->tagData:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->setPosition(I)V

    .line 303
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->tagData:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    iget v1, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->tagDataSize:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->setLimit(I)V

    .line 304
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->tagData:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->tagDataSize:I

    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->readFully([BII)V

    .line 305
    iget-object p1, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->tagData:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    return-object p1
.end method

.method private readFlvHeader(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "extractorOutput"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->headerBuffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x9

    const/4 v3, 0x1

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result p1

    if-nez p1, :cond_0

    return v1

    .line 198
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->headerBuffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->setPosition(I)V

    .line 199
    iget-object p1, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->headerBuffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->skipBytes(I)V

    .line 200
    iget-object p1, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->headerBuffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    and-int/lit8 v4, p1, 0x4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    and-int/2addr p1, v3

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eqz v4, :cond_3

    .line 203
    iget-object p1, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->audioReader:Lcom/google/android/exoplr2avp/extractor/flv/AudioTagPayloadReader;

    if-nez p1, :cond_3

    .line 204
    new-instance p1, Lcom/google/android/exoplr2avp/extractor/flv/AudioTagPayloadReader;

    iget-object v4, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->extractorOutput:Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;

    const/16 v5, 0x8

    .line 205
    invoke-interface {v4, v5, v3}, Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    move-result-object v4

    invoke-direct {p1, v4}, Lcom/google/android/exoplr2avp/extractor/flv/AudioTagPayloadReader;-><init>(Lcom/google/android/exoplr2avp/extractor/TrackOutput;)V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->audioReader:Lcom/google/android/exoplr2avp/extractor/flv/AudioTagPayloadReader;

    :cond_3
    const/4 p1, 0x2

    if-eqz v1, :cond_4

    .line 207
    iget-object v1, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->videoReader:Lcom/google/android/exoplr2avp/extractor/flv/VideoTagPayloadReader;

    if-nez v1, :cond_4

    .line 208
    new-instance v1, Lcom/google/android/exoplr2avp/extractor/flv/VideoTagPayloadReader;

    iget-object v4, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->extractorOutput:Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;

    .line 209
    invoke-interface {v4, v2, p1}, Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/google/android/exoplr2avp/extractor/flv/VideoTagPayloadReader;-><init>(Lcom/google/android/exoplr2avp/extractor/TrackOutput;)V

    iput-object v1, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->videoReader:Lcom/google/android/exoplr2avp/extractor/flv/VideoTagPayloadReader;

    .line 211
    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->extractorOutput:Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;

    invoke-interface {v1}, Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;->endTracks()V

    .line 214
    iget-object v1, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->headerBuffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readInt()I

    move-result v1

    sub-int/2addr v1, v2

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    .line 215
    iput p1, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->state:I

    return v3
.end method

.method private readTagData(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "extractorOutput"
        }
    .end annotation

    .line 265
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->getCurrentTimestampUs()J

    move-result-wide v0

    .line 266
    iget v2, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->tagType:I

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0x8

    if-ne v2, v7, :cond_1

    iget-object v7, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->audioReader:Lcom/google/android/exoplr2avp/extractor/flv/AudioTagPayloadReader;

    if-eqz v7, :cond_1

    .line 267
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->ensureReadyForMediaOutput()V

    .line 268
    iget-object v2, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->audioReader:Lcom/google/android/exoplr2avp/extractor/flv/AudioTagPayloadReader;

    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->prepareTagData(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    move-result-object p1

    invoke-virtual {v2, p1, v0, v1}, Lcom/google/android/exoplr2avp/extractor/flv/AudioTagPayloadReader;->consume(Lcom/google/android/exoplr2avp/util/ParsableByteArray;J)Z

    move-result v5

    :cond_0
    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/16 v7, 0x9

    if-ne v2, v7, :cond_2

    .line 269
    iget-object v7, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->videoReader:Lcom/google/android/exoplr2avp/extractor/flv/VideoTagPayloadReader;

    if-eqz v7, :cond_2

    .line 270
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->ensureReadyForMediaOutput()V

    .line 271
    iget-object v2, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->videoReader:Lcom/google/android/exoplr2avp/extractor/flv/VideoTagPayloadReader;

    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->prepareTagData(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    move-result-object p1

    invoke-virtual {v2, p1, v0, v1}, Lcom/google/android/exoplr2avp/extractor/flv/VideoTagPayloadReader;->consume(Lcom/google/android/exoplr2avp/util/ParsableByteArray;J)Z

    move-result v5

    goto :goto_0

    :cond_2
    const/16 v7, 0x12

    if-ne v2, v7, :cond_3

    .line 272
    iget-boolean v2, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->outputSeekMap:Z

    if-nez v2, :cond_3

    .line 273
    iget-object v2, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->metadataReader:Lcom/google/android/exoplr2avp/extractor/flv/ScriptTagPayloadReader;

    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->prepareTagData(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    move-result-object p1

    invoke-virtual {v2, p1, v0, v1}, Lcom/google/android/exoplr2avp/extractor/flv/ScriptTagPayloadReader;->consume(Lcom/google/android/exoplr2avp/util/ParsableByteArray;J)Z

    move-result v5

    .line 274
    iget-object p1, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->metadataReader:Lcom/google/android/exoplr2avp/extractor/flv/ScriptTagPayloadReader;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/extractor/flv/ScriptTagPayloadReader;->getDurationUs()J

    move-result-wide v0

    cmp-long p1, v0, v3

    if-eqz p1, :cond_0

    .line 276
    iget-object p1, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->extractorOutput:Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;

    new-instance v2, Lcom/google/android/exoplr2avp/extractor/IndexSeekMap;

    iget-object v7, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->metadataReader:Lcom/google/android/exoplr2avp/extractor/flv/ScriptTagPayloadReader;

    .line 278
    invoke-virtual {v7}, Lcom/google/android/exoplr2avp/extractor/flv/ScriptTagPayloadReader;->getKeyFrameTagPositions()[J

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->metadataReader:Lcom/google/android/exoplr2avp/extractor/flv/ScriptTagPayloadReader;

    .line 279
    invoke-virtual {v8}, Lcom/google/android/exoplr2avp/extractor/flv/ScriptTagPayloadReader;->getKeyFrameTimesUs()[J

    move-result-object v8

    invoke-direct {v2, v7, v8, v0, v1}, Lcom/google/android/exoplr2avp/extractor/IndexSeekMap;-><init>([J[JJ)V

    .line 276
    invoke-interface {p1, v2}, Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplr2avp/extractor/SeekMap;)V

    .line 281
    iput-boolean v6, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->outputSeekMap:Z

    goto :goto_0

    .line 284
    :cond_3
    iget v0, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->tagDataSize:I

    invoke-interface {p1, v0}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->skipFully(I)V

    const/4 p1, 0x0

    .line 287
    :goto_1
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->outputFirstSample:Z

    if-nez v0, :cond_5

    if-eqz v5, :cond_5

    .line 288
    iput-boolean v6, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->outputFirstSample:Z

    .line 290
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->metadataReader:Lcom/google/android/exoplr2avp/extractor/flv/ScriptTagPayloadReader;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/extractor/flv/ScriptTagPayloadReader;->getDurationUs()J

    move-result-wide v0

    cmp-long v2, v0, v3

    if-nez v2, :cond_4

    iget-wide v0, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->tagTimestampUs:J

    neg-long v0, v0

    goto :goto_2

    :cond_4
    const-wide/16 v0, 0x0

    :goto_2
    iput-wide v0, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->mediaTagTimestampOffsetUs:J

    :cond_5
    const/4 v0, 0x4

    .line 292
    iput v0, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    const/4 v0, 0x2

    .line 293
    iput v0, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->state:I

    return p1
.end method

.method private readTagHeader(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->tagHeaderBuffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result p1

    if-nez p1, :cond_0

    return v1

    .line 244
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->tagHeaderBuffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->setPosition(I)V

    .line 245
    iget-object p1, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->tagHeaderBuffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->tagType:I

    .line 246
    iget-object p1, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->tagHeaderBuffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readUnsignedInt24()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->tagDataSize:I

    .line 247
    iget-object p1, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->tagHeaderBuffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readUnsignedInt24()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->tagTimestampUs:J

    .line 248
    iget-object p1, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->tagHeaderBuffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    shl-int/lit8 p1, p1, 0x18

    int-to-long v0, p1

    iget-wide v4, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->tagTimestampUs:J

    or-long/2addr v0, v4

    const-wide/16 v4, 0x3e8

    mul-long v0, v0, v4

    iput-wide v0, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->tagTimestampUs:J

    .line 249
    iget-object p1, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->tagHeaderBuffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->skipBytes(I)V

    const/4 p1, 0x4

    .line 250
    iput p1, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->state:I

    return v3
.end method

.method private skipToTagHeader(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    iget v0, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    invoke-interface {p1, v0}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->skipFully(I)V

    const/4 p1, 0x0

    .line 227
    iput p1, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    const/4 p1, 0x3

    .line 228
    iput p1, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->state:I

    return-void
.end method


# virtual methods
.method public init(Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->extractorOutput:Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;

    return-void
.end method

.method public read(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;Lcom/google/android/exoplr2avp/extractor/PositionHolder;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    iget-object p2, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->extractorOutput:Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;

    invoke-static {p2}, Lcom/google/android/exoplr2avp/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    :cond_0
    :goto_0
    iget p2, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->state:I

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 173
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->readTagData(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 179
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 168
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->readTagHeader(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)Z

    move-result p2

    if-nez p2, :cond_0

    return v1

    .line 165
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->skipToTagHeader(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)V

    goto :goto_0

    .line 160
    :cond_4
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->readFlvHeader(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)Z

    move-result p2

    if-nez p2, :cond_0

    return v1
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 2

    const/4 p3, 0x0

    const-wide/16 v0, 0x0

    cmp-long p4, p1, v0

    if-nez p4, :cond_0

    const/4 p1, 0x1

    .line 141
    iput p1, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->state:I

    .line 142
    iput-boolean p3, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->outputFirstSample:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    .line 144
    iput p1, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->state:I

    .line 146
    :goto_0
    iput p3, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    return-void
.end method

.method public sniff(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->peekFully([BII)V

    .line 106
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->setPosition(I)V

    .line 107
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v0

    const v2, 0x464c56

    if-eq v0, v2, :cond_0

    return v1

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v2, 0x2

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->peekFully([BII)V

    .line 113
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->setPosition(I)V

    .line 114
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    and-int/lit16 v0, v0, 0xfa

    if-eqz v0, :cond_1

    return v1

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v2, 0x4

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->peekFully([BII)V

    .line 120
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->setPosition(I)V

    .line 121
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 123
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->resetPeekPosition()V

    .line 124
    invoke-interface {p1, v0}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 127
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->peekFully([BII)V

    .line 128
    iget-object p1, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->setPosition(I)V

    .line 130
    iget-object p1, p0, Lcom/google/android/exoplr2avp/extractor/flv/FlvExtractor;->scratch:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readInt()I

    move-result p1

    if-nez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method
