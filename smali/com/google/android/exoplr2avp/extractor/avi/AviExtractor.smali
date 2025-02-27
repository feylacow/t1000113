.class public final Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;
.super Ljava/lang/Object;
.source "AviExtractor.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor$ChunkHeaderHolder;,
        Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor$AviSeekMap;
    }
.end annotation


# static fields
.field private static final AVIIF_KEYFRAME:I = 0x10

.field public static final FOURCC_AVI_:I = 0x20495641

.field public static final FOURCC_JUNK:I = 0x4b4e554a

.field public static final FOURCC_LIST:I = 0x5453494c

.field public static final FOURCC_RIFF:I = 0x46464952

.field public static final FOURCC_auds:I = 0x73647561

.field public static final FOURCC_avih:I = 0x68697661

.field public static final FOURCC_hdrl:I = 0x6c726468

.field public static final FOURCC_idx1:I = 0x31786469

.field public static final FOURCC_movi:I = 0x69766f6d

.field public static final FOURCC_strf:I = 0x66727473

.field public static final FOURCC_strh:I = 0x68727473

.field public static final FOURCC_strl:I = 0x6c727473

.field public static final FOURCC_strn:I = 0x6e727473

.field public static final FOURCC_txts:I = 0x73747874

.field public static final FOURCC_vids:I = 0x73646976

.field private static final RELOAD_MINIMUM_SEEK_DISTANCE:J = 0x40000L

.field private static final STATE_FINDING_IDX1_HEADER:I = 0x4

.field private static final STATE_FINDING_MOVI_HEADER:I = 0x3

.field private static final STATE_READING_HDRL_BODY:I = 0x2

.field private static final STATE_READING_HDRL_HEADER:I = 0x1

.field private static final STATE_READING_IDX1_BODY:I = 0x5

.field private static final STATE_READING_SAMPLES:I = 0x6

.field private static final STATE_SKIPPING_TO_HDRL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AviExtractor"


# instance fields
.field private aviHeader:Lcom/google/android/exoplr2avp/extractor/avi/AviMainHeaderChunk;

.field private final chunkHeaderHolder:Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor$ChunkHeaderHolder;

.field private chunkReaders:[Lcom/google/android/exoplr2avp/extractor/avi/ChunkReader;

.field private currentChunkReader:Lcom/google/android/exoplr2avp/extractor/avi/ChunkReader;

.field private durationUs:J

.field private extractorOutput:Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;

.field private hdrlSize:I

.field private idx1BodySize:I

.field private moviEnd:J

.field private moviStart:J

.field private pendingReposition:J

.field private final scratch:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

.field private seekMapHasBeenOutput:Z

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    .line 142
    new-instance v0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor$ChunkHeaderHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor$ChunkHeaderHolder;-><init>(Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor$1;)V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->chunkHeaderHolder:Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor$ChunkHeaderHolder;

    .line 143
    new-instance v0, Lcom/google/android/exoplr2avp/extractor/DummyExtractorOutput;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/extractor/DummyExtractorOutput;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->extractorOutput:Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/exoplr2avp/extractor/avi/ChunkReader;

    .line 144
    iput-object v0, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->chunkReaders:[Lcom/google/android/exoplr2avp/extractor/avi/ChunkReader;

    const-wide/16 v0, -0x1

    .line 145
    iput-wide v0, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->moviStart:J

    .line 146
    iput-wide v0, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->moviEnd:J

    const/4 v0, -0x1

    .line 147
    iput v0, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->hdrlSize:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 148
    iput-wide v0, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->durationUs:J

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;)[Lcom/google/android/exoplr2avp/extractor/avi/ChunkReader;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->chunkReaders:[Lcom/google/android/exoplr2avp/extractor/avi/ChunkReader;

    return-object p0
.end method

.method private static alignInputToEvenPosition(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 497
    invoke-interface {p0}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    .line 498
    invoke-interface {p0, v0}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->skipFully(I)V

    :cond_0
    return-void
.end method

.method private getChunkReader(I)Lcom/google/android/exoplr2avp/extractor/avi/ChunkReader;
    .locals 5

    .line 404
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->chunkReaders:[Lcom/google/android/exoplr2avp/extractor/avi/ChunkReader;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 405
    invoke-virtual {v3, p1}, Lcom/google/android/exoplr2avp/extractor/avi/ChunkReader;->handlesChunkId(I)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private parseHdrlBody(Lcom/google/android/exoplr2avp/util/ParsableByteArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0x6c726468

    .line 326
    invoke-static {v0, p1}, Lcom/google/android/exoplr2avp/extractor/avi/ListChunk;->parseFrom(ILcom/google/android/exoplr2avp/util/ParsableByteArray;)Lcom/google/android/exoplr2avp/extractor/avi/ListChunk;

    move-result-object p1

    .line 327
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/extractor/avi/ListChunk;->getType()I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_4

    .line 331
    const-class v0, Lcom/google/android/exoplr2avp/extractor/avi/AviMainHeaderChunk;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/extractor/avi/ListChunk;->getChild(Ljava/lang/Class;)Lcom/google/android/exoplr2avp/extractor/avi/AviChunk;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/extractor/avi/AviMainHeaderChunk;

    if-eqz v0, :cond_3

    .line 336
    iput-object v0, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->aviHeader:Lcom/google/android/exoplr2avp/extractor/avi/AviMainHeaderChunk;

    .line 338
    iget v1, v0, Lcom/google/android/exoplr2avp/extractor/avi/AviMainHeaderChunk;->totalFrames:I

    int-to-long v1, v1

    iget v0, v0, Lcom/google/android/exoplr2avp/extractor/avi/AviMainHeaderChunk;->frameDurationUs:I

    int-to-long v3, v0

    mul-long v1, v1, v3

    iput-wide v1, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->durationUs:J

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 341
    iget-object p1, p1, Lcom/google/android/exoplr2avp/extractor/avi/ListChunk;->children:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplr2avp/extractor/avi/AviChunk;

    .line 342
    invoke-interface {v3}, Lcom/google/android/exoplr2avp/extractor/avi/AviChunk;->getType()I

    move-result v4

    const v5, 0x6c727473

    if-ne v4, v5, :cond_0

    .line 343
    check-cast v3, Lcom/google/android/exoplr2avp/extractor/avi/ListChunk;

    add-int/lit8 v4, v2, 0x1

    .line 347
    invoke-direct {p0, v3, v2}, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->processStreamList(Lcom/google/android/exoplr2avp/extractor/avi/ListChunk;I)Lcom/google/android/exoplr2avp/extractor/avi/ChunkReader;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 349
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    new-array p1, v1, [Lcom/google/android/exoplr2avp/extractor/avi/ChunkReader;

    .line 353
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/exoplr2avp/extractor/avi/ChunkReader;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->chunkReaders:[Lcom/google/android/exoplr2avp/extractor/avi/ChunkReader;

    .line 354
    iget-object p1, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->extractorOutput:Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;

    invoke-interface {p1}, Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;->endTracks()V

    return-void

    :cond_3
    const-string p1, "AviHeader not found"

    .line 333
    invoke-static {p1, v2}, Lcom/google/android/exoplr2avp/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplr2avp/ParserException;

    move-result-object p1

    throw p1

    .line 328
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected header list type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/extractor/avi/ListChunk;->getType()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 328
    invoke-static {p1, v2}, Lcom/google/android/exoplr2avp/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplr2avp/ParserException;

    move-result-object p1

    throw p1
.end method

.method private parseIdx1Body(Lcom/google/android/exoplr2avp/util/ParsableByteArray;)V
    .locals 7

    .line 359
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->peekSeekOffset(Lcom/google/android/exoplr2avp/util/ParsableByteArray;)J

    move-result-wide v0

    .line 360
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    const/16 v3, 0x10

    if-lt v2, v3, :cond_2

    .line 361
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v2

    .line 362
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v4

    .line 363
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v5, v0

    .line 364
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readLittleEndianInt()I

    .line 365
    invoke-direct {p0, v2}, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->getChunkReader(I)Lcom/google/android/exoplr2avp/extractor/avi/ChunkReader;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    and-int/2addr v4, v3

    if-ne v4, v3, :cond_1

    .line 371
    invoke-virtual {v2, v5, v6}, Lcom/google/android/exoplr2avp/extractor/avi/ChunkReader;->appendKeyFrameToIndex(J)V

    .line 373
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/extractor/avi/ChunkReader;->incrementIndexChunkCount()V

    goto :goto_0

    .line 375
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->chunkReaders:[Lcom/google/android/exoplr2avp/extractor/avi/ChunkReader;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 376
    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/extractor/avi/ChunkReader;->compactIndex()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    .line 378
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->seekMapHasBeenOutput:Z

    .line 379
    iget-object p1, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->extractorOutput:Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;

    new-instance v0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor$AviSeekMap;

    iget-wide v1, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->durationUs:J

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor$AviSeekMap;-><init>(Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;J)V

    invoke-interface {p1, v0}, Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplr2avp/extractor/SeekMap;)V

    return-void
.end method

.method private peekSeekOffset(Lcom/google/android/exoplr2avp/util/ParsableByteArray;)J
    .locals 8

    .line 387
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const-wide/16 v1, 0x0

    const/16 v3, 0x10

    if-ge v0, v3, :cond_0

    return-wide v1

    .line 391
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getPosition()I

    move-result v0

    const/16 v3, 0x8

    .line 392
    invoke-virtual {p1, v3}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->skipBytes(I)V

    .line 393
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v3

    int-to-long v3, v3

    .line 397
    iget-wide v5, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->moviStart:J

    cmp-long v7, v3, v5

    if-lez v7, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x8

    add-long/2addr v1, v5

    .line 398
    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->setPosition(I)V

    return-wide v1
.end method

.method private processStreamList(Lcom/google/android/exoplr2avp/extractor/avi/ListChunk;I)Lcom/google/android/exoplr2avp/extractor/avi/ChunkReader;
    .locals 13

    .line 453
    const-class v0, Lcom/google/android/exoplr2avp/extractor/avi/AviStreamHeaderChunk;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/extractor/avi/ListChunk;->getChild(Ljava/lang/Class;)Lcom/google/android/exoplr2avp/extractor/avi/AviChunk;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/extractor/avi/AviStreamHeaderChunk;

    .line 454
    const-class v1, Lcom/google/android/exoplr2avp/extractor/avi/StreamFormatChunk;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplr2avp/extractor/avi/ListChunk;->getChild(Ljava/lang/Class;)Lcom/google/android/exoplr2avp/extractor/avi/AviChunk;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/extractor/avi/StreamFormatChunk;

    const-string v2, "AviExtractor"

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const-string p1, "Missing Stream Header"

    .line 456
    invoke-static {v2, p1}, Lcom/google/android/exoplr2avp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_0
    if-nez v1, :cond_1

    const-string p1, "Missing Stream Format"

    .line 460
    invoke-static {v2, p1}, Lcom/google/android/exoplr2avp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 463
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/extractor/avi/AviStreamHeaderChunk;->getDurationUs()J

    move-result-wide v11

    .line 464
    iget-object v1, v1, Lcom/google/android/exoplr2avp/extractor/avi/StreamFormatChunk;->format:Lcom/google/android/exoplr2avp/Format;

    .line 465
    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/Format;->buildUpon()Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object v2

    .line 466
    invoke-virtual {v2, p2}, Lcom/google/android/exoplr2avp/Format$Builder;->setId(I)Lcom/google/android/exoplr2avp/Format$Builder;

    .line 467
    iget v4, v0, Lcom/google/android/exoplr2avp/extractor/avi/AviStreamHeaderChunk;->suggestedBufferSize:I

    if-eqz v4, :cond_2

    .line 469
    invoke-virtual {v2, v4}, Lcom/google/android/exoplr2avp/Format$Builder;->setMaxInputSize(I)Lcom/google/android/exoplr2avp/Format$Builder;

    .line 471
    :cond_2
    const-class v4, Lcom/google/android/exoplr2avp/extractor/avi/StreamNameChunk;

    invoke-virtual {p1, v4}, Lcom/google/android/exoplr2avp/extractor/avi/ListChunk;->getChild(Ljava/lang/Class;)Lcom/google/android/exoplr2avp/extractor/avi/AviChunk;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/extractor/avi/StreamNameChunk;

    if-eqz p1, :cond_3

    .line 473
    iget-object p1, p1, Lcom/google/android/exoplr2avp/extractor/avi/StreamNameChunk;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/google/android/exoplr2avp/Format$Builder;->setLabel(Ljava/lang/String;)Lcom/google/android/exoplr2avp/Format$Builder;

    .line 475
    :cond_3
    iget-object p1, v1, Lcom/google/android/exoplr2avp/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v6

    const/4 p1, 0x1

    if-eq v6, p1, :cond_5

    const/4 p1, 0x2

    if-ne v6, p1, :cond_4

    goto :goto_0

    :cond_4
    return-object v3

    .line 477
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->extractorOutput:Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;

    invoke-interface {p1, p2, v6}, Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    move-result-object v10

    .line 478
    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/Format$Builder;->build()Lcom/google/android/exoplr2avp/Format;

    move-result-object p1

    invoke-interface {v10, p1}, Lcom/google/android/exoplr2avp/extractor/TrackOutput;->format(Lcom/google/android/exoplr2avp/Format;)V

    .line 479
    new-instance p1, Lcom/google/android/exoplr2avp/extractor/avi/ChunkReader;

    iget v9, v0, Lcom/google/android/exoplr2avp/extractor/avi/AviStreamHeaderChunk;->length:I

    move-object v4, p1

    move v5, p2

    move-wide v7, v11

    invoke-direct/range {v4 .. v10}, Lcom/google/android/exoplr2avp/extractor/avi/ChunkReader;-><init>(IIJILcom/google/android/exoplr2avp/extractor/TrackOutput;)V

    .line 482
    iput-wide v11, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->durationUs:J

    return-object p1
.end method

.method private readMoviChunks(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 413
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->moviEnd:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 p1, -0x1

    return p1

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->currentChunkReader:Lcom/google/android/exoplr2avp/extractor/avi/ChunkReader;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 416
    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/extractor/avi/ChunkReader;->onChunkData(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    .line 417
    iput-object p1, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->currentChunkReader:Lcom/google/android/exoplr2avp/extractor/avi/ChunkReader;

    goto :goto_1

    .line 420
    :cond_1
    invoke-static {p1}, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->alignInputToEvenPosition(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)V

    .line 421
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/16 v2, 0xc

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->peekFully([BII)V

    .line 422
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->setPosition(I)V

    .line 423
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v0

    const v3, 0x5453494c

    const/16 v4, 0x8

    if-ne v0, v3, :cond_3

    .line 425
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v0, v4}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->setPosition(I)V

    .line 426
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v0

    const v3, 0x69766f6d

    if-ne v0, v3, :cond_2

    goto :goto_0

    :cond_2
    const/16 v2, 0x8

    .line 427
    :goto_0
    invoke-interface {p1, v2}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->skipFully(I)V

    .line 428
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->resetPeekPosition()V

    return v1

    .line 431
    :cond_3
    iget-object v2, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v2

    const v3, 0x4b4e554a    # 1.352225E7f

    if-ne v0, v3, :cond_4

    .line 433
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    int-to-long v5, v2

    add-long/2addr v3, v5

    const-wide/16 v5, 0x8

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->pendingReposition:J

    return v1

    .line 436
    :cond_4
    invoke-interface {p1, v4}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->skipFully(I)V

    .line 437
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->resetPeekPosition()V

    .line 438
    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->getChunkReader(I)Lcom/google/android/exoplr2avp/extractor/avi/ChunkReader;

    move-result-object v0

    if-nez v0, :cond_5

    .line 441
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->pendingReposition:J

    return v1

    .line 444
    :cond_5
    invoke-virtual {v0, v2}, Lcom/google/android/exoplr2avp/extractor/avi/ChunkReader;->onChunkStart(I)V

    .line 445
    iput-object v0, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->currentChunkReader:Lcom/google/android/exoplr2avp/extractor/avi/ChunkReader;

    :cond_6
    :goto_1
    return v1
.end method

.method private resolvePendingReposition(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;Lcom/google/android/exoplr2avp/extractor/PositionHolder;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->pendingReposition:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 310
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    .line 311
    iget-wide v4, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->pendingReposition:J

    cmp-long v6, v4, v0

    if-ltz v6, :cond_1

    const-wide/32 v6, 0x40000

    add-long/2addr v6, v0

    cmp-long v8, v4, v6

    if-lez v8, :cond_0

    goto :goto_0

    :cond_0
    sub-long/2addr v4, v0

    long-to-int p2, v4

    .line 318
    invoke-interface {p1, p2}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_1

    .line 313
    :cond_1
    :goto_0
    iput-wide v4, p2, Lcom/google/android/exoplr2avp/extractor/PositionHolder;->position:J

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x0

    .line 321
    :goto_2
    iput-wide v2, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->pendingReposition:J

    return p1
.end method


# virtual methods
.method public init(Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;)V
    .locals 2

    const/4 v0, 0x0

    .line 155
    iput v0, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->state:I

    .line 156
    iput-object p1, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->extractorOutput:Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;

    const-wide/16 v0, -0x1

    .line 157
    iput-wide v0, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->pendingReposition:J

    return-void
.end method

.method public read(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;Lcom/google/android/exoplr2avp/extractor/PositionHolder;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->resolvePendingReposition(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;Lcom/google/android/exoplr2avp/extractor/PositionHolder;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    .line 176
    :cond_0
    iget p2, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->state:I

    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x4

    const/16 v4, 0xc

    const/4 v5, 0x0

    packed-switch p2, :pswitch_data_0

    .line 270
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 268
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->readMoviChunks(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)I

    move-result p1

    return p1

    .line 261
    :pswitch_1
    new-instance p2, Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    iget v0, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->idx1BodySize:I

    invoke-direct {p2, v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;-><init>(I)V

    .line 262
    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->idx1BodySize:I

    invoke-interface {p1, v0, v5, v1}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->readFully([BII)V

    .line 263
    invoke-direct {p0, p2}, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->parseIdx1Body(Lcom/google/android/exoplr2avp/util/ParsableByteArray;)V

    .line 264
    iput v2, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->state:I

    .line 265
    iget-wide p1, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->moviStart:J

    iput-wide p1, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->pendingReposition:J

    return v5

    .line 248
    :pswitch_2
    iget-object p2, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object p2

    const/16 v0, 0x8

    invoke-interface {p1, p2, v5, v0}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->readFully([BII)V

    .line 249
    iget-object p2, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {p2, v5}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->setPosition(I)V

    .line 250
    iget-object p2, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readLittleEndianInt()I

    move-result p2

    .line 251
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v0

    const v1, 0x31786469

    if-ne p2, v1, :cond_1

    const/4 p1, 0x5

    .line 253
    iput p1, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->state:I

    .line 254
    iput v0, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->idx1BodySize:I

    goto :goto_0

    .line 257
    :cond_1
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->getPosition()J

    move-result-wide p1

    int-to-long v0, v0

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->pendingReposition:J

    :goto_0
    return v5

    .line 209
    :pswitch_3
    iget-wide v6, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->moviStart:J

    const-wide/16 v8, -0x1

    cmp-long p2, v6, v8

    if-eqz p2, :cond_2

    invoke-interface {p1}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->moviStart:J

    cmp-long p2, v6, v8

    if-eqz p2, :cond_2

    .line 210
    iput-wide v8, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->pendingReposition:J

    return v5

    .line 213
    :cond_2
    iget-object p2, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object p2

    invoke-interface {p1, p2, v5, v4}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->peekFully([BII)V

    .line 214
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->resetPeekPosition()V

    .line 215
    iget-object p2, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {p2, v5}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->setPosition(I)V

    .line 216
    iget-object p2, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->chunkHeaderHolder:Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor$ChunkHeaderHolder;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {p2, v1}, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor$ChunkHeaderHolder;->populateFrom(Lcom/google/android/exoplr2avp/util/ParsableByteArray;)V

    .line 217
    iget-object p2, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readLittleEndianInt()I

    move-result p2

    .line 218
    iget-object v1, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->chunkHeaderHolder:Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor$ChunkHeaderHolder;

    iget v1, v1, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor$ChunkHeaderHolder;->chunkType:I

    const v6, 0x46464952

    if-ne v1, v6, :cond_3

    .line 221
    invoke-interface {p1, v4}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->skipFully(I)V

    return v5

    .line 224
    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->chunkHeaderHolder:Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor$ChunkHeaderHolder;

    iget v1, v1, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor$ChunkHeaderHolder;->chunkType:I

    const v4, 0x5453494c

    const-wide/16 v6, 0x8

    if-ne v1, v4, :cond_7

    const v1, 0x69766f6d

    if-eq p2, v1, :cond_4

    goto :goto_1

    .line 229
    :cond_4
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->getPosition()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->moviStart:J

    .line 231
    iget-object p2, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->chunkHeaderHolder:Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor$ChunkHeaderHolder;

    iget p2, p2, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor$ChunkHeaderHolder;->size:I

    int-to-long v10, p2

    add-long/2addr v8, v10

    add-long/2addr v8, v6

    iput-wide v8, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->moviEnd:J

    .line 232
    iget-boolean p2, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->seekMapHasBeenOutput:Z

    if-nez p2, :cond_6

    .line 233
    iget-object p2, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->aviHeader:Lcom/google/android/exoplr2avp/extractor/avi/AviMainHeaderChunk;

    invoke-static {p2}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplr2avp/extractor/avi/AviMainHeaderChunk;

    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/extractor/avi/AviMainHeaderChunk;->hasIndex()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 234
    iput v3, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->state:I

    .line 235
    iget-wide p1, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->moviEnd:J

    iput-wide p1, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->pendingReposition:J

    return v5

    .line 238
    :cond_5
    iget-object p2, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->extractorOutput:Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;

    new-instance v1, Lcom/google/android/exoplr2avp/extractor/SeekMap$Unseekable;

    iget-wide v3, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->durationUs:J

    invoke-direct {v1, v3, v4}, Lcom/google/android/exoplr2avp/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {p2, v1}, Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplr2avp/extractor/SeekMap;)V

    .line 239
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->seekMapHasBeenOutput:Z

    .line 244
    :cond_6
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->getPosition()J

    move-result-wide p1

    const-wide/16 v0, 0xc

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->pendingReposition:J

    .line 245
    iput v2, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->state:I

    return v5

    .line 226
    :cond_7
    :goto_1
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->getPosition()J

    move-result-wide p1

    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->chunkHeaderHolder:Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor$ChunkHeaderHolder;

    iget v0, v0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor$ChunkHeaderHolder;->size:I

    int-to-long v0, v0

    add-long/2addr p1, v0

    add-long/2addr p1, v6

    iput-wide p1, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->pendingReposition:J

    return v5

    .line 202
    :pswitch_4
    iget p2, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->hdrlSize:I

    sub-int/2addr p2, v3

    .line 203
    new-instance v0, Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-direct {v0, p2}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;-><init>(I)V

    .line 204
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object v1

    invoke-interface {p1, v1, v5, p2}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->readFully([BII)V

    .line 205
    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->parseHdrlBody(Lcom/google/android/exoplr2avp/util/ParsableByteArray;)V

    const/4 p1, 0x3

    .line 206
    iput p1, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->state:I

    return v5

    .line 189
    :pswitch_5
    iget-object p2, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object p2

    invoke-interface {p1, p2, v5, v4}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->readFully([BII)V

    .line 190
    iget-object p1, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {p1, v5}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->setPosition(I)V

    .line 191
    iget-object p1, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->chunkHeaderHolder:Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor$ChunkHeaderHolder;

    iget-object p2, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor$ChunkHeaderHolder;->populateWithListHeaderFrom(Lcom/google/android/exoplr2avp/util/ParsableByteArray;)V

    .line 192
    iget-object p1, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->chunkHeaderHolder:Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor$ChunkHeaderHolder;

    iget p1, p1, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor$ChunkHeaderHolder;->listType:I

    const p2, 0x6c726468

    if-ne p1, p2, :cond_8

    .line 197
    iget-object p1, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->chunkHeaderHolder:Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor$ChunkHeaderHolder;

    iget p1, p1, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor$ChunkHeaderHolder;->size:I

    iput p1, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->hdrlSize:I

    const/4 p1, 0x2

    .line 198
    iput p1, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->state:I

    return v5

    .line 193
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "hdrl expected, found: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->chunkHeaderHolder:Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor$ChunkHeaderHolder;

    iget p2, p2, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor$ChunkHeaderHolder;->listType:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/google/android/exoplr2avp/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplr2avp/ParserException;

    move-result-object p1

    throw p1

    .line 180
    :pswitch_6
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->sniff(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 181
    invoke-interface {p1, v4}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->skipFully(I)V

    .line 186
    iput v0, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->state:I

    return v5

    :cond_9
    const-string p1, "AVI Header List not found"

    .line 183
    invoke-static {p1, v1}, Lcom/google/android/exoplr2avp/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplr2avp/ParserException;

    move-result-object p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 3

    const-wide/16 p3, -0x1

    .line 276
    iput-wide p3, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->pendingReposition:J

    const/4 p3, 0x0

    .line 277
    iput-object p3, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->currentChunkReader:Lcom/google/android/exoplr2avp/extractor/avi/ChunkReader;

    .line 278
    iget-object p3, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->chunkReaders:[Lcom/google/android/exoplr2avp/extractor/avi/ChunkReader;

    array-length p4, p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p4, :cond_0

    aget-object v2, p3, v1

    .line 279
    invoke-virtual {v2, p1, p2}, Lcom/google/android/exoplr2avp/extractor/avi/ChunkReader;->seekToPosition(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 p3, 0x0

    cmp-long v1, p1, p3

    if-nez v1, :cond_2

    .line 282
    iget-object p1, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->chunkReaders:[Lcom/google/android/exoplr2avp/extractor/avi/ChunkReader;

    array-length p1, p1

    if-nez p1, :cond_1

    .line 284
    iput v0, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->state:I

    goto :goto_1

    :cond_1
    const/4 p1, 0x3

    .line 286
    iput p1, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->state:I

    :goto_1
    return-void

    :cond_2
    const/4 p1, 0x6

    .line 290
    iput p1, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->state:I

    return-void
.end method

.method public sniff(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->peekFully([BII)V

    .line 163
    iget-object p1, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->setPosition(I)V

    .line 164
    iget-object p1, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readLittleEndianInt()I

    move-result p1

    const v0, 0x46464952

    if-eq p1, v0, :cond_0

    return v1

    .line 167
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->skipBytes(I)V

    .line 168
    iget-object p1, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;->scratch:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readLittleEndianInt()I

    move-result p1

    const v0, 0x20495641

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
