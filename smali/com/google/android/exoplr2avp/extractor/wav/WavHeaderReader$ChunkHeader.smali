.class final Lcom/google/android/exoplr2avp/extractor/wav/WavHeaderReader$ChunkHeader;
.super Ljava/lang/Object;
.source "WavHeaderReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/extractor/wav/WavHeaderReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ChunkHeader"
.end annotation


# static fields
.field public static final SIZE_IN_BYTES:I = 0x8


# instance fields
.field public final id:I

.field public final size:J


# direct methods
.method private constructor <init>(IJ)V
    .locals 0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput p1, p0, Lcom/google/android/exoplr2avp/extractor/wav/WavHeaderReader$ChunkHeader;->id:I

    .line 202
    iput-wide p2, p0, Lcom/google/android/exoplr2avp/extractor/wav/WavHeaderReader$ChunkHeader;->size:J

    return-void
.end method

.method public static peek(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;Lcom/google/android/exoplr2avp/util/ParsableByteArray;)Lcom/google/android/exoplr2avp/extractor/wav/WavHeaderReader$ChunkHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-interface {p0, v0, v1, v2}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->peekFully([BII)V

    .line 216
    invoke-virtual {p1, v1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->setPosition(I)V

    .line 218
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readInt()I

    move-result p0

    .line 219
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v0

    .line 221
    new-instance p1, Lcom/google/android/exoplr2avp/extractor/wav/WavHeaderReader$ChunkHeader;

    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/exoplr2avp/extractor/wav/WavHeaderReader$ChunkHeader;-><init>(IJ)V

    return-object p1
.end method
