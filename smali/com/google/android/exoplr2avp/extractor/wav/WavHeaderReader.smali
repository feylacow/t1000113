.class final Lcom/google/android/exoplr2avp/extractor/wav/WavHeaderReader;
.super Ljava/lang/Object;
.source "WavHeaderReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/extractor/wav/WavHeaderReader$ChunkHeader;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WavHeaderReader"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkFileType(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;-><init>(I)V

    .line 46
    invoke-static {p0, v0}, Lcom/google/android/exoplr2avp/extractor/wav/WavHeaderReader$ChunkHeader;->peek(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;Lcom/google/android/exoplr2avp/util/ParsableByteArray;)Lcom/google/android/exoplr2avp/extractor/wav/WavHeaderReader$ChunkHeader;

    move-result-object v1

    .line 47
    iget v2, v1, Lcom/google/android/exoplr2avp/extractor/wav/WavHeaderReader$ChunkHeader;->id:I

    const/4 v3, 0x0

    const v4, 0x52494646

    if-eq v2, v4, :cond_0

    iget v1, v1, Lcom/google/android/exoplr2avp/extractor/wav/WavHeaderReader$ChunkHeader;->id:I

    const v2, 0x52463634

    if-eq v1, v2, :cond_0

    return v3

    .line 51
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {p0, v1, v3, v2}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->peekFully([BII)V

    .line 52
    invoke-virtual {v0, v3}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->setPosition(I)V

    .line 53
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readInt()I

    move-result p0

    const v0, 0x57415645

    if-eq p0, v0, :cond_1

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported form type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WavHeaderReader"

    invoke-static {v0, p0}, Lcom/google/android/exoplr2avp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static readFormat(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)Lcom/google/android/exoplr2avp/extractor/wav/WavFormat;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    new-instance v0, Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;-><init>(I)V

    const v2, 0x666d7420

    .line 99
    invoke-static {v2, p0, v0}, Lcom/google/android/exoplr2avp/extractor/wav/WavHeaderReader;->skipToChunk(ILcom/google/android/exoplr2avp/extractor/ExtractorInput;Lcom/google/android/exoplr2avp/util/ParsableByteArray;)Lcom/google/android/exoplr2avp/extractor/wav/WavHeaderReader$ChunkHeader;

    move-result-object v2

    .line 100
    iget-wide v3, v2, Lcom/google/android/exoplr2avp/extractor/wav/WavHeaderReader$ChunkHeader;->size:J

    const/4 v5, 0x0

    const-wide/16 v6, 0x10

    cmp-long v8, v3, v6

    if-ltz v8, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 101
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object v3

    invoke-interface {p0, v3, v5, v1}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->peekFully([BII)V

    .line 102
    invoke-virtual {v0, v5}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->setPosition(I)V

    .line 103
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v7

    .line 104
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v8

    .line 105
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readLittleEndianUnsignedIntToInt()I

    move-result v9

    .line 106
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readLittleEndianUnsignedIntToInt()I

    move-result v10

    .line 107
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v11

    .line 108
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v12

    .line 110
    iget-wide v2, v2, Lcom/google/android/exoplr2avp/extractor/wav/WavHeaderReader$ChunkHeader;->size:J

    long-to-int v0, v2

    sub-int/2addr v0, v1

    if-lez v0, :cond_1

    .line 113
    new-array v1, v0, [B

    .line 114
    invoke-interface {p0, v1, v5, v0}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->peekFully([BII)V

    move-object v13, v1

    goto :goto_1

    .line 116
    :cond_1
    sget-object v0, Lcom/google/android/exoplr2avp/util/Util;->EMPTY_BYTE_ARRAY:[B

    move-object v13, v0

    .line 119
    :goto_1
    invoke-interface {p0}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v0

    invoke-interface {p0}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v1, v0

    invoke-interface {p0, v1}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->skipFully(I)V

    .line 120
    new-instance p0, Lcom/google/android/exoplr2avp/extractor/wav/WavFormat;

    move-object v6, p0

    invoke-direct/range {v6 .. v13}, Lcom/google/android/exoplr2avp/extractor/wav/WavFormat;-><init>(IIIIII[B)V

    return-object p0
.end method

.method public static readRf64SampleDataSize(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    new-instance v0, Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;-><init>(I)V

    .line 74
    invoke-static {p0, v0}, Lcom/google/android/exoplr2avp/extractor/wav/WavHeaderReader$ChunkHeader;->peek(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;Lcom/google/android/exoplr2avp/util/ParsableByteArray;)Lcom/google/android/exoplr2avp/extractor/wav/WavHeaderReader$ChunkHeader;

    move-result-object v2

    .line 75
    iget v3, v2, Lcom/google/android/exoplr2avp/extractor/wav/WavHeaderReader$ChunkHeader;->id:I

    const v4, 0x64733634

    if-eq v3, v4, :cond_0

    .line 76
    invoke-interface {p0}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->resetPeekPosition()V

    const-wide/16 v0, -0x1

    return-wide v0

    .line 79
    :cond_0
    invoke-interface {p0, v1}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->advancePeekPosition(I)V

    const/4 v3, 0x0

    .line 80
    invoke-virtual {v0, v3}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->setPosition(I)V

    .line 81
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object v4

    invoke-interface {p0, v4, v3, v1}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->peekFully([BII)V

    .line 82
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readLittleEndianLong()J

    move-result-wide v3

    .line 83
    iget-wide v5, v2, Lcom/google/android/exoplr2avp/extractor/wav/WavHeaderReader$ChunkHeader;->size:J

    long-to-int v0, v5

    add-int/2addr v0, v1

    invoke-interface {p0, v0}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->skipFully(I)V

    return-wide v3
.end method

.method private static skipToChunk(ILcom/google/android/exoplr2avp/extractor/ExtractorInput;Lcom/google/android/exoplr2avp/util/ParsableByteArray;)Lcom/google/android/exoplr2avp/extractor/wav/WavHeaderReader$ChunkHeader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    invoke-static {p1, p2}, Lcom/google/android/exoplr2avp/extractor/wav/WavHeaderReader$ChunkHeader;->peek(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;Lcom/google/android/exoplr2avp/util/ParsableByteArray;)Lcom/google/android/exoplr2avp/extractor/wav/WavHeaderReader$ChunkHeader;

    move-result-object v0

    .line 172
    :goto_0
    iget v1, v0, Lcom/google/android/exoplr2avp/extractor/wav/WavHeaderReader$ChunkHeader;->id:I

    if-eq v1, p0, :cond_1

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring unknown WAV chunk: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/google/android/exoplr2avp/extractor/wav/WavHeaderReader$ChunkHeader;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WavHeaderReader"

    invoke-static {v2, v1}, Lcom/google/android/exoplr2avp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x8

    .line 174
    iget-wide v3, v0, Lcom/google/android/exoplr2avp/extractor/wav/WavHeaderReader$ChunkHeader;->size:J

    add-long/2addr v3, v1

    const-wide/32 v1, 0x7fffffff

    cmp-long v5, v3, v1

    if-gtz v5, :cond_0

    long-to-int v0, v3

    .line 179
    invoke-interface {p1, v0}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->skipFully(I)V

    .line 180
    invoke-static {p1, p2}, Lcom/google/android/exoplr2avp/extractor/wav/WavHeaderReader$ChunkHeader;->peek(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;Lcom/google/android/exoplr2avp/util/ParsableByteArray;)Lcom/google/android/exoplr2avp/extractor/wav/WavHeaderReader$ChunkHeader;

    move-result-object v0

    goto :goto_0

    .line 176
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Chunk is too large (~2GB+) to skip; id: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Lcom/google/android/exoplr2avp/extractor/wav/WavHeaderReader$ChunkHeader;->id:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/exoplr2avp/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lcom/google/android/exoplr2avp/ParserException;

    move-result-object p0

    throw p0

    :cond_1
    return-object v0
.end method

.method public static skipToSampleData(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/extractor/ExtractorInput;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    invoke-interface {p0}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->resetPeekPosition()V

    .line 146
    new-instance v0, Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;-><init>(I)V

    const v2, 0x64617461

    .line 148
    invoke-static {v2, p0, v0}, Lcom/google/android/exoplr2avp/extractor/wav/WavHeaderReader;->skipToChunk(ILcom/google/android/exoplr2avp/extractor/ExtractorInput;Lcom/google/android/exoplr2avp/util/ParsableByteArray;)Lcom/google/android/exoplr2avp/extractor/wav/WavHeaderReader$ChunkHeader;

    move-result-object v0

    .line 150
    invoke-interface {p0, v1}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->skipFully(I)V

    .line 152
    invoke-interface {p0}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    .line 153
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iget-wide v0, v0, Lcom/google/android/exoplr2avp/extractor/wav/WavHeaderReader$ChunkHeader;->size:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method
