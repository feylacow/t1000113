.class Lcom/google/android/exoplr2avp/extractor/ts/TsExtractor$PatReader;
.super Ljava/lang/Object;
.source "TsExtractor.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/extractor/ts/SectionPayloadReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/extractor/ts/TsExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PatReader"
.end annotation


# instance fields
.field private final patScratch:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

.field final synthetic this$0:Lcom/google/android/exoplr2avp/extractor/ts/TsExtractor;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/extractor/ts/TsExtractor;)V
    .locals 1

    .line 494
    iput-object p1, p0, Lcom/google/android/exoplr2avp/extractor/ts/TsExtractor$PatReader;->this$0:Lcom/google/android/exoplr2avp/extractor/ts/TsExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 495
    new-instance p1, Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/extractor/ts/TsExtractor$PatReader;->patScratch:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    return-void
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplr2avp/util/ParsableByteArray;)V
    .locals 9

    .line 508
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 514
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x6

    .line 521
    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->skipBytes(I)V

    .line 523
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x4

    div-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    .line 525
    iget-object v4, p0, Lcom/google/android/exoplr2avp/extractor/ts/TsExtractor$PatReader;->patScratch:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    invoke-virtual {p1, v4, v1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readBytes(Lcom/google/android/exoplr2avp/util/ParsableBitArray;I)V

    .line 526
    iget-object v4, p0, Lcom/google/android/exoplr2avp/extractor/ts/TsExtractor$PatReader;->patScratch:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 527
    iget-object v5, p0, Lcom/google/android/exoplr2avp/extractor/ts/TsExtractor$PatReader;->patScratch:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    const/16 v5, 0xd

    if-nez v4, :cond_2

    .line 529
    iget-object v4, p0, Lcom/google/android/exoplr2avp/extractor/ts/TsExtractor$PatReader;->patScratch:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    invoke-virtual {v4, v5}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    goto :goto_1

    .line 531
    :cond_2
    iget-object v4, p0, Lcom/google/android/exoplr2avp/extractor/ts/TsExtractor$PatReader;->patScratch:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    invoke-virtual {v4, v5}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 532
    iget-object v5, p0, Lcom/google/android/exoplr2avp/extractor/ts/TsExtractor$PatReader;->this$0:Lcom/google/android/exoplr2avp/extractor/ts/TsExtractor;

    invoke-static {v5}, Lcom/google/android/exoplr2avp/extractor/ts/TsExtractor;->access$000(Lcom/google/android/exoplr2avp/extractor/ts/TsExtractor;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    .line 533
    iget-object v5, p0, Lcom/google/android/exoplr2avp/extractor/ts/TsExtractor$PatReader;->this$0:Lcom/google/android/exoplr2avp/extractor/ts/TsExtractor;

    invoke-static {v5}, Lcom/google/android/exoplr2avp/extractor/ts/TsExtractor;->access$000(Lcom/google/android/exoplr2avp/extractor/ts/TsExtractor;)Landroid/util/SparseArray;

    move-result-object v5

    new-instance v6, Lcom/google/android/exoplr2avp/extractor/ts/SectionReader;

    new-instance v7, Lcom/google/android/exoplr2avp/extractor/ts/TsExtractor$PmtReader;

    iget-object v8, p0, Lcom/google/android/exoplr2avp/extractor/ts/TsExtractor$PatReader;->this$0:Lcom/google/android/exoplr2avp/extractor/ts/TsExtractor;

    invoke-direct {v7, v8, v4}, Lcom/google/android/exoplr2avp/extractor/ts/TsExtractor$PmtReader;-><init>(Lcom/google/android/exoplr2avp/extractor/ts/TsExtractor;I)V

    invoke-direct {v6, v7}, Lcom/google/android/exoplr2avp/extractor/ts/SectionReader;-><init>(Lcom/google/android/exoplr2avp/extractor/ts/SectionPayloadReader;)V

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 534
    iget-object v4, p0, Lcom/google/android/exoplr2avp/extractor/ts/TsExtractor$PatReader;->this$0:Lcom/google/android/exoplr2avp/extractor/ts/TsExtractor;

    invoke-static {v4}, Lcom/google/android/exoplr2avp/extractor/ts/TsExtractor;->access$108(Lcom/google/android/exoplr2avp/extractor/ts/TsExtractor;)I

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 538
    :cond_4
    iget-object p1, p0, Lcom/google/android/exoplr2avp/extractor/ts/TsExtractor$PatReader;->this$0:Lcom/google/android/exoplr2avp/extractor/ts/TsExtractor;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/extractor/ts/TsExtractor;->access$200(Lcom/google/android/exoplr2avp/extractor/ts/TsExtractor;)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    .line 539
    iget-object p1, p0, Lcom/google/android/exoplr2avp/extractor/ts/TsExtractor$PatReader;->this$0:Lcom/google/android/exoplr2avp/extractor/ts/TsExtractor;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/extractor/ts/TsExtractor;->access$000(Lcom/google/android/exoplr2avp/extractor/ts/TsExtractor;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->remove(I)V

    :cond_5
    return-void
.end method

.method public init(Lcom/google/android/exoplr2avp/util/TimestampAdjuster;Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;Lcom/google/android/exoplr2avp/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 0

    return-void
.end method
