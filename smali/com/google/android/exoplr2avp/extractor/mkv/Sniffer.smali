.class final Lcom/google/android/exoplr2avp/extractor/mkv/Sniffer;
.super Ljava/lang/Object;
.source "Sniffer.java"


# static fields
.field private static final ID_EBML:I = 0x1a45dfa3

.field private static final SEARCH_LENGTH:I = 0x400


# instance fields
.field private peekLength:I

.field private final scratch:Lcom/google/android/exoplr2avp/util/ParsableByteArray;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/extractor/mkv/Sniffer;->scratch:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    return-void
.end method

.method private readUint(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/mkv/Sniffer;->scratch:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->peekFully([BII)V

    .line 93
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/mkv/Sniffer;->scratch:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object v0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_0
    const/16 v3, 0x80

    const/4 v4, 0x0

    :goto_0
    and-int v5, v0, v3

    if-nez v5, :cond_1

    shr-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    not-int v3, v3

    and-int/2addr v0, v3

    .line 104
    iget-object v3, p0, Lcom/google/android/exoplr2avp/extractor/mkv/Sniffer;->scratch:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v3}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object v3

    invoke-interface {p1, v3, v2, v4}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->peekFully([BII)V

    :goto_1
    if-ge v1, v4, :cond_2

    shl-int/lit8 p1, v0, 0x8

    .line 107
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/mkv/Sniffer;->scratch:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v0, p1

    goto :goto_1

    .line 109
    :cond_2
    iget p1, p0, Lcom/google/android/exoplr2avp/extractor/mkv/Sniffer;->peekLength:I

    add-int/2addr v4, v2

    add-int/2addr p1, v4

    iput p1, p0, Lcom/google/android/exoplr2avp/extractor/mkv/Sniffer;->peekLength:I

    int-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method public sniff(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 44
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->getLength()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    const-wide/16 v6, -0x1

    cmp-long v8, v2, v6

    if-eqz v8, :cond_1

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :cond_1
    :goto_0
    long-to-int v5, v4

    .line 51
    iget-object v4, v0, Lcom/google/android/exoplr2avp/extractor/mkv/Sniffer;->scratch:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v4}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-interface {v1, v4, v6, v7}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->peekFully([BII)V

    .line 52
    iget-object v4, v0, Lcom/google/android/exoplr2avp/extractor/mkv/Sniffer;->scratch:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v4}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v9

    .line 53
    iput v7, v0, Lcom/google/android/exoplr2avp/extractor/mkv/Sniffer;->peekLength:I

    :goto_1
    const-wide/32 v11, 0x1a45dfa3

    const/4 v4, 0x1

    cmp-long v7, v9, v11

    if-eqz v7, :cond_3

    .line 55
    iget v7, v0, Lcom/google/android/exoplr2avp/extractor/mkv/Sniffer;->peekLength:I

    add-int/2addr v7, v4

    iput v7, v0, Lcom/google/android/exoplr2avp/extractor/mkv/Sniffer;->peekLength:I

    if-ne v7, v5, :cond_2

    return v6

    .line 58
    :cond_2
    iget-object v7, v0, Lcom/google/android/exoplr2avp/extractor/mkv/Sniffer;->scratch:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v7}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object v7

    invoke-interface {v1, v7, v6, v4}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->peekFully([BII)V

    const/16 v4, 0x8

    shl-long/2addr v9, v4

    const-wide/16 v11, -0x100

    and-long/2addr v9, v11

    .line 60
    iget-object v4, v0, Lcom/google/android/exoplr2avp/extractor/mkv/Sniffer;->scratch:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v4}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object v4

    aget-byte v4, v4, v6

    and-int/lit16 v4, v4, 0xff

    int-to-long v11, v4

    or-long/2addr v9, v11

    goto :goto_1

    .line 64
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplr2avp/extractor/mkv/Sniffer;->readUint(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)J

    move-result-wide v9

    .line 65
    iget v5, v0, Lcom/google/android/exoplr2avp/extractor/mkv/Sniffer;->peekLength:I

    int-to-long v11, v5

    const-wide/high16 v13, -0x8000000000000000L

    cmp-long v5, v9, v13

    if-eqz v5, :cond_9

    if-eqz v8, :cond_4

    add-long v7, v11, v9

    cmp-long v5, v7, v2

    if-ltz v5, :cond_4

    goto :goto_4

    .line 72
    :cond_4
    :goto_2
    iget v2, v0, Lcom/google/android/exoplr2avp/extractor/mkv/Sniffer;->peekLength:I

    int-to-long v7, v2

    add-long v15, v11, v9

    cmp-long v3, v7, v15

    if-gez v3, :cond_8

    .line 73
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplr2avp/extractor/mkv/Sniffer;->readUint(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)J

    move-result-wide v2

    cmp-long v5, v2, v13

    if-nez v5, :cond_5

    return v6

    .line 77
    :cond_5
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplr2avp/extractor/mkv/Sniffer;->readUint(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)J

    move-result-wide v2

    const-wide/16 v7, 0x0

    cmp-long v5, v2, v7

    if-ltz v5, :cond_7

    const-wide/32 v7, 0x7fffffff

    cmp-long v15, v2, v7

    if-lez v15, :cond_6

    goto :goto_3

    :cond_6
    if-eqz v5, :cond_4

    long-to-int v3, v2

    .line 83
    invoke-interface {v1, v3}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 84
    iget v2, v0, Lcom/google/android/exoplr2avp/extractor/mkv/Sniffer;->peekLength:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/google/android/exoplr2avp/extractor/mkv/Sniffer;->peekLength:I

    goto :goto_2

    :cond_7
    :goto_3
    return v6

    :cond_8
    int-to-long v1, v2

    cmp-long v3, v1, v15

    if-nez v3, :cond_9

    const/4 v6, 0x1

    :cond_9
    :goto_4
    return v6
.end method
