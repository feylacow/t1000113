.class Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor$ChunkHeaderHolder;
.super Ljava/lang/Object;
.source "AviExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChunkHeaderHolder"
.end annotation


# instance fields
.field public chunkType:I

.field public listType:I

.field public size:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor$1;)V
    .locals 0

    .line 535
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor$ChunkHeaderHolder;-><init>()V

    return-void
.end method


# virtual methods
.method public populateFrom(Lcom/google/android/exoplr2avp/util/ParsableByteArray;)V
    .locals 1

    .line 550
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor$ChunkHeaderHolder;->chunkType:I

    .line 551
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readLittleEndianInt()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor$ChunkHeaderHolder;->size:I

    const/4 p1, 0x0

    .line 552
    iput p1, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor$ChunkHeaderHolder;->listType:I

    return-void
.end method

.method public populateWithListHeaderFrom(Lcom/google/android/exoplr2avp/util/ParsableByteArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ParserException;
        }
    .end annotation

    .line 541
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor$ChunkHeaderHolder;->populateFrom(Lcom/google/android/exoplr2avp/util/ParsableByteArray;)V

    .line 542
    iget v0, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor$ChunkHeaderHolder;->chunkType:I

    const v1, 0x5453494c

    if-ne v0, v1, :cond_0

    .line 546
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readLittleEndianInt()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor$ChunkHeaderHolder;->listType:I

    return-void

    .line 543
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "LIST expected, found: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/android/exoplr2avp/extractor/avi/AviExtractor$ChunkHeaderHolder;->chunkType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/exoplr2avp/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplr2avp/ParserException;

    move-result-object p1

    throw p1
.end method
