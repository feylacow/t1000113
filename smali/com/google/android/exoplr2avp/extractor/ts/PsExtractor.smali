.class public final Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor;
.super Ljava/lang/Object;
.source "PsExtractor.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor$PesReader;
    }
.end annotation


# static fields
.field public static final AUDIO_STREAM:I = 0xc0

.field public static final AUDIO_STREAM_MASK:I = 0xe0

.field public static final FACTORY:Lcom/google/android/exoplr2avp/extractor/ExtractorsFactory;

.field private static final MAX_SEARCH_LENGTH:J = 0x100000L

.field private static final MAX_SEARCH_LENGTH_AFTER_AUDIO_AND_VIDEO_FOUND:J = 0x2000L

.field private static final MAX_STREAM_ID_PLUS_ONE:I = 0x100

.field static final MPEG_PROGRAM_END_CODE:I = 0x1b9

.field static final PACKET_START_CODE_PREFIX:I = 0x1

.field static final PACK_START_CODE:I = 0x1ba

.field public static final PRIVATE_STREAM_1:I = 0xbd

.field static final SYSTEM_HEADER_START_CODE:I = 0x1bb

.field public static final VIDEO_STREAM:I = 0xe0

.field public static final VIDEO_STREAM_MASK:I = 0xf0


# instance fields
.field private final durationReader:Lcom/google/android/exoplr2avp/extractor/ts/PsDurationReader;

.field private foundAllTracks:Z

.field private foundAudioTrack:Z

.field private foundVideoTrack:Z

.field private hasOutputSeekMap:Z

.field private lastTrackPosition:J

.field private output:Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;

.field private psBinarySearchSeeker:Lcom/google/android/exoplr2avp/extractor/ts/PsBinarySearchSeeker;

.field private final psPacketBuffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

.field private final psPayloadReaders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor$PesReader;",
            ">;"
        }
    .end annotation
.end field

.field private final timestampAdjuster:Lcom/google/android/exoplr2avp/util/TimestampAdjuster;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    sget-object v0, Lcom/google/android/exoplr2avp/extractor/ts/-$$Lambda$PsExtractor$xZTuRDuI0JzWXd-GFqblcY3yuBc;->INSTANCE:Lcom/google/android/exoplr2avp/extractor/ts/-$$Lambda$PsExtractor$xZTuRDuI0JzWXd-GFqblcY3yuBc;

    sput-object v0, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor;->FACTORY:Lcom/google/android/exoplr2avp/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 77
    new-instance v0, Lcom/google/android/exoplr2avp/util/TimestampAdjuster;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplr2avp/util/TimestampAdjuster;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor;-><init>(Lcom/google/android/exoplr2avp/util/TimestampAdjuster;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplr2avp/util/TimestampAdjuster;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor;->timestampAdjuster:Lcom/google/android/exoplr2avp/util/TimestampAdjuster;

    .line 82
    new-instance p1, Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    const/16 v0, 0x1000

    invoke-direct {p1, v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    .line 83
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    .line 84
    new-instance p1, Lcom/google/android/exoplr2avp/extractor/ts/PsDurationReader;

    invoke-direct {p1}, Lcom/google/android/exoplr2avp/extractor/ts/PsDurationReader;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor;->durationReader:Lcom/google/android/exoplr2avp/extractor/ts/PsDurationReader;

    return-void
.end method

.method static synthetic lambda$static$0()[Lcom/google/android/exoplr2avp/extractor/Extractor;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplr2avp/extractor/Extractor;

    .line 41
    new-instance v1, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor;

    invoke-direct {v1}, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private maybeOutputSeekMap(J)V
    .locals 11
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 294
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor;->hasOutputSeekMap:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 295
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor;->hasOutputSeekMap:Z

    .line 296
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor;->durationReader:Lcom/google/android/exoplr2avp/extractor/ts/PsDurationReader;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/extractor/ts/PsDurationReader;->getDurationUs()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 297
    new-instance v0, Lcom/google/android/exoplr2avp/extractor/ts/PsBinarySearchSeeker;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor;->durationReader:Lcom/google/android/exoplr2avp/extractor/ts/PsDurationReader;

    .line 299
    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/extractor/ts/PsDurationReader;->getScrTimestampAdjuster()Lcom/google/android/exoplr2avp/util/TimestampAdjuster;

    move-result-object v6

    iget-object v1, p0, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor;->durationReader:Lcom/google/android/exoplr2avp/extractor/ts/PsDurationReader;

    .line 300
    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/extractor/ts/PsDurationReader;->getDurationUs()J

    move-result-wide v7

    move-object v5, v0

    move-wide v9, p1

    invoke-direct/range {v5 .. v10}, Lcom/google/android/exoplr2avp/extractor/ts/PsBinarySearchSeeker;-><init>(Lcom/google/android/exoplr2avp/util/TimestampAdjuster;JJ)V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor;->psBinarySearchSeeker:Lcom/google/android/exoplr2avp/extractor/ts/PsBinarySearchSeeker;

    .line 302
    iget-object p1, p0, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor;->output:Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/extractor/ts/PsBinarySearchSeeker;->getSeekMap()Lcom/google/android/exoplr2avp/extractor/SeekMap;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplr2avp/extractor/SeekMap;)V

    goto :goto_0

    .line 304
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor;->output:Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;

    new-instance p2, Lcom/google/android/exoplr2avp/extractor/SeekMap$Unseekable;

    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor;->durationReader:Lcom/google/android/exoplr2avp/extractor/ts/PsDurationReader;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/extractor/ts/PsDurationReader;->getDurationUs()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Lcom/google/android/exoplr2avp/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {p1, p2}, Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplr2avp/extractor/SeekMap;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public init(Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor;->output:Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;

    return-void
.end method

.method public read(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;Lcom/google/android/exoplr2avp/extractor/PositionHolder;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor;->output:Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-eqz v6, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_1

    .line 177
    iget-object v7, p0, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor;->durationReader:Lcom/google/android/exoplr2avp/extractor/ts/PsDurationReader;

    invoke-virtual {v7}, Lcom/google/android/exoplr2avp/extractor/ts/PsDurationReader;->isDurationReadFinished()Z

    move-result v7

    if-nez v7, :cond_1

    .line 178
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor;->durationReader:Lcom/google/android/exoplr2avp/extractor/ts/PsDurationReader;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplr2avp/extractor/ts/PsDurationReader;->readDuration(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;Lcom/google/android/exoplr2avp/extractor/PositionHolder;)I

    move-result p1

    return p1

    .line 180
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor;->maybeOutputSeekMap(J)V

    .line 181
    iget-object v7, p0, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor;->psBinarySearchSeeker:Lcom/google/android/exoplr2avp/extractor/ts/PsBinarySearchSeeker;

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/google/android/exoplr2avp/extractor/ts/PsBinarySearchSeeker;->isSeeking()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 182
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor;->psBinarySearchSeeker:Lcom/google/android/exoplr2avp/extractor/ts/PsBinarySearchSeeker;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplr2avp/extractor/ts/PsBinarySearchSeeker;->handlePendingSeek(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;Lcom/google/android/exoplr2avp/extractor/PositionHolder;)I

    move-result p1

    return p1

    .line 185
    :cond_2
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->resetPeekPosition()V

    if-eqz v6, :cond_3

    .line 187
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v6

    sub-long/2addr v0, v6

    goto :goto_1

    :cond_3
    move-wide v0, v2

    :goto_1
    const/4 p2, -0x1

    cmp-long v6, v0, v2

    if-eqz v6, :cond_4

    const-wide/16 v2, 0x4

    cmp-long v6, v0, v2

    if-gez v6, :cond_4

    return p2

    .line 192
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {p1, v0, v5, v1, v4}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v0

    if-nez v0, :cond_5

    return p2

    .line 196
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v0, v5}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->setPosition(I)V

    .line 197
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readInt()I

    move-result v0

    const/16 v1, 0x1b9

    if-ne v0, v1, :cond_6

    return p2

    :cond_6
    const/16 p2, 0x1ba

    if-ne v0, p2, :cond_7

    .line 202
    iget-object p2, p0, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object p2

    const/16 v0, 0xa

    invoke-interface {p1, p2, v5, v0}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->peekFully([BII)V

    .line 205
    iget-object p2, p0, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    const/16 v0, 0x9

    invoke-virtual {p2, v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->setPosition(I)V

    .line 208
    iget-object p2, p0, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readUnsignedByte()I

    move-result p2

    and-int/lit8 p2, p2, 0x7

    add-int/lit8 p2, p2, 0xe

    .line 211
    invoke-interface {p1, p2}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->skipFully(I)V

    return v5

    :cond_7
    const/16 p2, 0x1bb

    const/4 v1, 0x2

    const/4 v2, 0x6

    if-ne v0, p2, :cond_8

    .line 215
    iget-object p2, p0, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object p2

    invoke-interface {p1, p2, v5, v1}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->peekFully([BII)V

    .line 218
    iget-object p2, p0, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {p2, v5}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->setPosition(I)V

    .line 219
    iget-object p2, p0, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readUnsignedShort()I

    move-result p2

    add-int/2addr p2, v2

    .line 220
    invoke-interface {p1, p2}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->skipFully(I)V

    return v5

    :cond_8
    and-int/lit16 p2, v0, -0x100

    shr-int/lit8 p2, p2, 0x8

    if-eq p2, v4, :cond_9

    .line 223
    invoke-interface {p1, v4}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->skipFully(I)V

    return v5

    :cond_9
    and-int/lit16 p2, v0, 0xff

    .line 232
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor$PesReader;

    .line 233
    iget-boolean v3, p0, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor;->foundAllTracks:Z

    if-nez v3, :cond_f

    if-nez v0, :cond_d

    const/4 v3, 0x0

    const/16 v6, 0xbd

    if-ne p2, v6, :cond_a

    .line 240
    new-instance v3, Lcom/google/android/exoplr2avp/extractor/ts/Ac3Reader;

    invoke-direct {v3}, Lcom/google/android/exoplr2avp/extractor/ts/Ac3Reader;-><init>()V

    .line 241
    iput-boolean v4, p0, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor;->foundAudioTrack:Z

    .line 242
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor;->lastTrackPosition:J

    goto :goto_2

    :cond_a
    and-int/lit16 v6, p2, 0xe0

    const/16 v7, 0xc0

    if-ne v6, v7, :cond_b

    .line 244
    new-instance v3, Lcom/google/android/exoplr2avp/extractor/ts/MpegAudioReader;

    invoke-direct {v3}, Lcom/google/android/exoplr2avp/extractor/ts/MpegAudioReader;-><init>()V

    .line 245
    iput-boolean v4, p0, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor;->foundAudioTrack:Z

    .line 246
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor;->lastTrackPosition:J

    goto :goto_2

    :cond_b
    and-int/lit16 v6, p2, 0xf0

    const/16 v7, 0xe0

    if-ne v6, v7, :cond_c

    .line 248
    new-instance v3, Lcom/google/android/exoplr2avp/extractor/ts/H262Reader;

    invoke-direct {v3}, Lcom/google/android/exoplr2avp/extractor/ts/H262Reader;-><init>()V

    .line 249
    iput-boolean v4, p0, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor;->foundVideoTrack:Z

    .line 250
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor;->lastTrackPosition:J

    :cond_c
    :goto_2
    if-eqz v3, :cond_d

    .line 253
    new-instance v0, Lcom/google/android/exoplr2avp/extractor/ts/TsPayloadReader$TrackIdGenerator;

    const/16 v6, 0x100

    invoke-direct {v0, p2, v6}, Lcom/google/android/exoplr2avp/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(II)V

    .line 254
    iget-object v6, p0, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor;->output:Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;

    invoke-interface {v3, v6, v0}, Lcom/google/android/exoplr2avp/extractor/ts/ElementaryStreamReader;->createTracks(Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;Lcom/google/android/exoplr2avp/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 255
    new-instance v0, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor$PesReader;

    iget-object v6, p0, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor;->timestampAdjuster:Lcom/google/android/exoplr2avp/util/TimestampAdjuster;

    invoke-direct {v0, v3, v6}, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor$PesReader;-><init>(Lcom/google/android/exoplr2avp/extractor/ts/ElementaryStreamReader;Lcom/google/android/exoplr2avp/util/TimestampAdjuster;)V

    .line 256
    iget-object v3, p0, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 260
    :cond_d
    iget-boolean p2, p0, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor;->foundAudioTrack:Z

    if-eqz p2, :cond_e

    iget-boolean p2, p0, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor;->foundVideoTrack:Z

    if-eqz p2, :cond_e

    .line 261
    iget-wide v6, p0, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor;->lastTrackPosition:J

    const-wide/16 v8, 0x2000

    add-long/2addr v6, v8

    goto :goto_3

    :cond_e
    const-wide/32 v6, 0x100000

    .line 263
    :goto_3
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->getPosition()J

    move-result-wide v8

    cmp-long p2, v8, v6

    if-lez p2, :cond_f

    .line 264
    iput-boolean v4, p0, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor;->foundAllTracks:Z

    .line 265
    iget-object p2, p0, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor;->output:Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;

    invoke-interface {p2}, Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;->endTracks()V

    .line 270
    :cond_f
    iget-object p2, p0, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object p2

    invoke-interface {p1, p2, v5, v1}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->peekFully([BII)V

    .line 271
    iget-object p2, p0, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {p2, v5}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->setPosition(I)V

    .line 272
    iget-object p2, p0, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readUnsignedShort()I

    move-result p2

    add-int/2addr p2, v2

    if-nez v0, :cond_10

    .line 277
    invoke-interface {p1, p2}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_4

    .line 279
    :cond_10
    iget-object v1, p0, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v1, p2}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->reset(I)V

    .line 281
    iget-object v1, p0, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object v1

    invoke-interface {p1, v1, v5, p2}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->readFully([BII)V

    .line 282
    iget-object p1, p0, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->setPosition(I)V

    .line 283
    iget-object p1, p0, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor$PesReader;->consume(Lcom/google/android/exoplr2avp/util/ParsableByteArray;)V

    .line 284
    iget-object p1, p0, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor;->psPacketBuffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->capacity()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->setLimit(I)V

    :goto_4
    return v5
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 5

    .line 143
    iget-object p1, p0, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor;->timestampAdjuster:Lcom/google/android/exoplr2avp/util/TimestampAdjuster;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/TimestampAdjuster;->getTimestampOffsetUs()J

    move-result-wide p1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, 0x1

    const/4 v3, 0x0

    cmp-long v4, p1, v0

    if-nez v4, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    .line 145
    iget-object p1, p0, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor;->timestampAdjuster:Lcom/google/android/exoplr2avp/util/TimestampAdjuster;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/TimestampAdjuster;->getFirstSampleTimestampUs()J

    move-result-wide p1

    cmp-long v4, p1, v0

    if-eqz v4, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v4, p1, v0

    if-eqz v4, :cond_1

    cmp-long v0, p1, p3

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    move p1, v2

    :cond_2
    if-eqz p1, :cond_3

    .line 155
    iget-object p1, p0, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor;->timestampAdjuster:Lcom/google/android/exoplr2avp/util/TimestampAdjuster;

    invoke-virtual {p1, p3, p4}, Lcom/google/android/exoplr2avp/util/TimestampAdjuster;->reset(J)V

    .line 158
    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor;->psBinarySearchSeeker:Lcom/google/android/exoplr2avp/extractor/ts/PsBinarySearchSeeker;

    if-eqz p1, :cond_4

    .line 159
    invoke-virtual {p1, p3, p4}, Lcom/google/android/exoplr2avp/extractor/ts/PsBinarySearchSeeker;->setSeekTargetUs(J)V

    .line 161
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v3, p1, :cond_5

    .line 162
    iget-object p1, p0, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor;->psPayloadReaders:Landroid/util/SparseArray;

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor$PesReader;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/extractor/ts/PsExtractor$PesReader;->seek()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public sniff(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xe

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 92
    invoke-interface {p1, v1, v2, v0}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->peekFully([BII)V

    .line 95
    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v3, 0x1

    aget-byte v4, v1, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v0, v4

    const/4 v4, 0x2

    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    or-int/2addr v0, v5

    const/4 v5, 0x3

    aget-byte v7, v1, v5

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v0, v7

    const/16 v7, 0x1ba

    if-eq v7, v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x4

    .line 103
    aget-byte v7, v1, v0

    and-int/lit16 v7, v7, 0xc4

    const/16 v8, 0x44

    if-eq v7, v8, :cond_1

    return v2

    :cond_1
    const/4 v7, 0x6

    .line 107
    aget-byte v7, v1, v7

    and-int/2addr v7, v0

    if-eq v7, v0, :cond_2

    return v2

    .line 111
    :cond_2
    aget-byte v7, v1, v6

    and-int/2addr v7, v0

    if-eq v7, v0, :cond_3

    return v2

    :cond_3
    const/16 v0, 0x9

    .line 115
    aget-byte v0, v1, v0

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_4

    return v2

    :cond_4
    const/16 v0, 0xc

    .line 119
    aget-byte v0, v1, v0

    and-int/2addr v0, v5

    if-eq v0, v5, :cond_5

    return v2

    :cond_5
    const/16 v0, 0xd

    .line 123
    aget-byte v0, v1, v0

    and-int/lit8 v0, v0, 0x7

    .line 124
    invoke-interface {p1, v0}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 126
    invoke-interface {p1, v1, v2, v5}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->peekFully([BII)V

    .line 127
    aget-byte p1, v1, v2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    aget-byte v0, v1, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v6

    or-int/2addr p1, v0

    aget-byte v0, v1, v4

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p1, v0

    if-ne v3, p1, :cond_6

    const/4 v2, 0x1

    :cond_6
    return v2
.end method
