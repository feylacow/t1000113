.class final Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;
.super Ljava/lang/Object;
.source "H264Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/extractor/ts/H264Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SampleReader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader$SliceHeaderData;
    }
.end annotation


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x80


# instance fields
.field private final allowNonIdrKeyframes:Z

.field private final bitArray:Lcom/google/android/exoplr2avp/util/ParsableNalUnitBitArray;

.field private buffer:[B

.field private bufferLength:I

.field private final detectAccessUnits:Z

.field private isFilling:Z

.field private nalUnitStartPosition:J

.field private nalUnitTimeUs:J

.field private nalUnitType:I

.field private final output:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

.field private final pps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplr2avp/util/NalUnitUtil$PpsData;",
            ">;"
        }
    .end annotation
.end field

.field private previousSliceHeader:Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

.field private readingSample:Z

.field private sampleIsKeyframe:Z

.field private samplePosition:J

.field private sampleTimeUs:J

.field private sliceHeader:Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

.field private final sps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplr2avp/util/NalUnitUtil$SpsData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/extractor/TrackOutput;ZZ)V
    .locals 0

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    iput-object p1, p0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->output:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    .line 290
    iput-boolean p2, p0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->allowNonIdrKeyframes:Z

    .line 291
    iput-boolean p3, p0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    .line 292
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->sps:Landroid/util/SparseArray;

    .line 293
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->pps:Landroid/util/SparseArray;

    .line 294
    new-instance p1, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader$SliceHeaderData;-><init>(Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$1;)V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->previousSliceHeader:Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 295
    new-instance p1, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    invoke-direct {p1, p2}, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader$SliceHeaderData;-><init>(Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$1;)V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    const/16 p1, 0x80

    new-array p1, p1, [B

    .line 296
    iput-object p1, p0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->buffer:[B

    .line 297
    new-instance p2, Lcom/google/android/exoplr2avp/util/ParsableNalUnitBitArray;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3, p3}, Lcom/google/android/exoplr2avp/util/ParsableNalUnitBitArray;-><init>([BII)V

    iput-object p2, p0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplr2avp/util/ParsableNalUnitBitArray;

    .line 298
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->reset()V

    return-void
.end method

.method private outputSample(I)V
    .locals 8

    .line 493
    iget-wide v1, p0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->sampleTimeUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    return-void

    .line 496
    :cond_0
    iget-boolean v3, p0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->sampleIsKeyframe:Z

    .line 497
    iget-wide v4, p0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->nalUnitStartPosition:J

    iget-wide v6, p0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->samplePosition:J

    sub-long/2addr v4, v6

    long-to-int v4, v4

    .line 498
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->output:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    const/4 v6, 0x0

    move v5, p1

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplr2avp/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplr2avp/extractor/TrackOutput$CryptoData;)V

    return-void
.end method


# virtual methods
.method public appendToNalUnit([BII)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 346
    iget-boolean v2, v0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    sub-int v2, p3, v1

    .line 350
    iget-object v3, v0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->buffer:[B

    array-length v4, v3

    iget v5, v0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    add-int v6, v5, v2

    const/4 v7, 0x2

    if-ge v4, v6, :cond_1

    add-int/2addr v5, v2

    mul-int/lit8 v5, v5, 0x2

    .line 351
    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->buffer:[B

    .line 353
    :cond_1
    iget-object v3, v0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->buffer:[B

    iget v4, v0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    move-object/from16 v5, p1

    invoke-static {v5, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 354
    iget v1, v0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    .line 356
    iget-object v2, v0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplr2avp/util/ParsableNalUnitBitArray;

    iget-object v3, v0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->buffer:[B

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Lcom/google/android/exoplr2avp/util/ParsableNalUnitBitArray;->reset([BII)V

    .line 357
    iget-object v1, v0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplr2avp/util/ParsableNalUnitBitArray;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/google/android/exoplr2avp/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 360
    :cond_2
    iget-object v1, v0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplr2avp/util/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/util/ParsableNalUnitBitArray;->skipBit()V

    .line 361
    iget-object v1, v0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplr2avp/util/ParsableNalUnitBitArray;

    invoke-virtual {v1, v7}, Lcom/google/android/exoplr2avp/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v10

    .line 362
    iget-object v1, v0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplr2avp/util/ParsableNalUnitBitArray;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/google/android/exoplr2avp/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 366
    iget-object v1, v0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplr2avp/util/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    .line 369
    :cond_3
    iget-object v1, v0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplr2avp/util/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 370
    iget-object v1, v0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplr2avp/util/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v1

    if-nez v1, :cond_4

    return-void

    .line 373
    :cond_4
    iget-object v1, v0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplr2avp/util/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v11

    .line 374
    iget-boolean v1, v0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    if-nez v1, :cond_5

    .line 376
    iput-boolean v4, v0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    .line 377
    iget-object v1, v0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    invoke-virtual {v1, v11}, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->setSliceType(I)V

    return-void

    .line 380
    :cond_5
    iget-object v1, v0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplr2avp/util/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v1

    if-nez v1, :cond_6

    return-void

    .line 383
    :cond_6
    iget-object v1, v0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplr2avp/util/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v13

    .line 384
    iget-object v1, v0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->pps:Landroid/util/SparseArray;

    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_7

    .line 386
    iput-boolean v4, v0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    return-void

    .line 389
    :cond_7
    iget-object v1, v0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->pps:Landroid/util/SparseArray;

    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/util/NalUnitUtil$PpsData;

    .line 390
    iget-object v3, v0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->sps:Landroid/util/SparseArray;

    iget v5, v1, Lcom/google/android/exoplr2avp/util/NalUnitUtil$PpsData;->seqParameterSetId:I

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/google/android/exoplr2avp/util/NalUnitUtil$SpsData;

    .line 391
    iget-boolean v3, v9, Lcom/google/android/exoplr2avp/util/NalUnitUtil$SpsData;->separateColorPlaneFlag:Z

    if-eqz v3, :cond_9

    .line 392
    iget-object v3, v0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplr2avp/util/ParsableNalUnitBitArray;

    invoke-virtual {v3, v7}, Lcom/google/android/exoplr2avp/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v3

    if-nez v3, :cond_8

    return-void

    .line 395
    :cond_8
    iget-object v3, v0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplr2avp/util/ParsableNalUnitBitArray;

    invoke-virtual {v3, v7}, Lcom/google/android/exoplr2avp/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 397
    :cond_9
    iget-object v3, v0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplr2avp/util/ParsableNalUnitBitArray;

    iget v5, v9, Lcom/google/android/exoplr2avp/util/NalUnitUtil$SpsData;->frameNumLength:I

    invoke-virtual {v3, v5}, Lcom/google/android/exoplr2avp/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v3

    if-nez v3, :cond_a

    return-void

    .line 403
    :cond_a
    iget-object v3, v0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplr2avp/util/ParsableNalUnitBitArray;

    iget v5, v9, Lcom/google/android/exoplr2avp/util/NalUnitUtil$SpsData;->frameNumLength:I

    invoke-virtual {v3, v5}, Lcom/google/android/exoplr2avp/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v12

    .line 404
    iget-boolean v3, v9, Lcom/google/android/exoplr2avp/util/NalUnitUtil$SpsData;->frameMbsOnlyFlag:Z

    const/4 v5, 0x1

    if-nez v3, :cond_e

    .line 405
    iget-object v3, v0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplr2avp/util/ParsableNalUnitBitArray;

    invoke-virtual {v3, v5}, Lcom/google/android/exoplr2avp/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v3

    if-nez v3, :cond_b

    return-void

    .line 408
    :cond_b
    iget-object v3, v0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplr2avp/util/ParsableNalUnitBitArray;

    invoke-virtual {v3}, Lcom/google/android/exoplr2avp/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 410
    iget-object v6, v0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplr2avp/util/ParsableNalUnitBitArray;

    invoke-virtual {v6, v5}, Lcom/google/android/exoplr2avp/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v6

    if-nez v6, :cond_c

    return-void

    .line 413
    :cond_c
    iget-object v6, v0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplr2avp/util/ParsableNalUnitBitArray;

    invoke-virtual {v6}, Lcom/google/android/exoplr2avp/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v6

    move v14, v3

    move/from16 v16, v6

    const/4 v15, 0x1

    goto :goto_1

    :cond_d
    move v14, v3

    goto :goto_0

    :cond_e
    const/4 v14, 0x0

    :goto_0
    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 417
    :goto_1
    iget v3, v0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    if-ne v3, v2, :cond_f

    const/16 v17, 0x1

    goto :goto_2

    :cond_f
    const/16 v17, 0x0

    :goto_2
    if-eqz v17, :cond_11

    .line 420
    iget-object v2, v0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplr2avp/util/ParsableNalUnitBitArray;

    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v2

    if-nez v2, :cond_10

    return-void

    .line 423
    :cond_10
    iget-object v2, v0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplr2avp/util/ParsableNalUnitBitArray;

    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    move/from16 v18, v2

    goto :goto_3

    :cond_11
    const/16 v18, 0x0

    .line 429
    :goto_3
    iget v2, v9, Lcom/google/android/exoplr2avp/util/NalUnitUtil$SpsData;->picOrderCountType:I

    if-nez v2, :cond_15

    .line 430
    iget-object v2, v0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplr2avp/util/ParsableNalUnitBitArray;

    iget v3, v9, Lcom/google/android/exoplr2avp/util/NalUnitUtil$SpsData;->picOrderCntLsbLength:I

    invoke-virtual {v2, v3}, Lcom/google/android/exoplr2avp/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v2

    if-nez v2, :cond_12

    return-void

    .line 433
    :cond_12
    iget-object v2, v0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplr2avp/util/ParsableNalUnitBitArray;

    iget v3, v9, Lcom/google/android/exoplr2avp/util/NalUnitUtil$SpsData;->picOrderCntLsbLength:I

    invoke-virtual {v2, v3}, Lcom/google/android/exoplr2avp/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v2

    .line 434
    iget-boolean v1, v1, Lcom/google/android/exoplr2avp/util/NalUnitUtil$PpsData;->bottomFieldPicOrderInFramePresentFlag:Z

    if-eqz v1, :cond_14

    if-nez v14, :cond_14

    .line 435
    iget-object v1, v0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplr2avp/util/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    .line 438
    :cond_13
    iget-object v1, v0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplr2avp/util/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v1

    move/from16 v20, v1

    move/from16 v19, v2

    goto :goto_5

    :cond_14
    move/from16 v19, v2

    goto :goto_4

    .line 440
    :cond_15
    iget v2, v9, Lcom/google/android/exoplr2avp/util/NalUnitUtil$SpsData;->picOrderCountType:I

    if-ne v2, v5, :cond_19

    iget-boolean v2, v9, Lcom/google/android/exoplr2avp/util/NalUnitUtil$SpsData;->deltaPicOrderAlwaysZeroFlag:Z

    if-nez v2, :cond_19

    .line 441
    iget-object v2, v0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplr2avp/util/ParsableNalUnitBitArray;

    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v2

    if-nez v2, :cond_16

    return-void

    .line 444
    :cond_16
    iget-object v2, v0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplr2avp/util/ParsableNalUnitBitArray;

    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v2

    .line 445
    iget-boolean v1, v1, Lcom/google/android/exoplr2avp/util/NalUnitUtil$PpsData;->bottomFieldPicOrderInFramePresentFlag:Z

    if-eqz v1, :cond_18

    if-nez v14, :cond_18

    .line 446
    iget-object v1, v0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplr2avp/util/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/util/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v1

    if-nez v1, :cond_17

    return-void

    .line 449
    :cond_17
    iget-object v1, v0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->bitArray:Lcom/google/android/exoplr2avp/util/ParsableNalUnitBitArray;

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v1

    move/from16 v22, v1

    move/from16 v21, v2

    const/16 v19, 0x0

    const/16 v20, 0x0

    goto :goto_7

    :cond_18
    move/from16 v21, v2

    const/16 v19, 0x0

    const/16 v20, 0x0

    goto :goto_6

    :cond_19
    const/16 v19, 0x0

    :goto_4
    const/16 v20, 0x0

    :goto_5
    const/16 v21, 0x0

    :goto_6
    const/16 v22, 0x0

    .line 452
    :goto_7
    iget-object v8, v0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    invoke-virtual/range {v8 .. v22}, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->setAll(Lcom/google/android/exoplr2avp/util/NalUnitUtil$SpsData;IIIIZZZZIIIII)V

    .line 467
    iput-boolean v4, v0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    return-void
.end method

.method public endNalUnit(JIZZ)Z
    .locals 5

    .line 472
    iget v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x9

    if-eq v0, v3, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    iget-object v3, p0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->previousSliceHeader:Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 473
    invoke-static {v0, v3}, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->access$100(Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader$SliceHeaderData;Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader$SliceHeaderData;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p4, :cond_1

    .line 475
    iget-boolean p4, p0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->readingSample:Z

    if-eqz p4, :cond_1

    .line 476
    iget-wide v3, p0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->nalUnitStartPosition:J

    sub-long/2addr p1, v3

    long-to-int p2, p1

    add-int/2addr p3, p2

    .line 477
    invoke-direct {p0, p3}, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->outputSample(I)V

    .line 479
    :cond_1
    iget-wide p1, p0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->nalUnitStartPosition:J

    iput-wide p1, p0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->samplePosition:J

    .line 480
    iget-wide p1, p0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->nalUnitTimeUs:J

    iput-wide p1, p0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->sampleTimeUs:J

    .line 481
    iput-boolean v1, p0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->sampleIsKeyframe:Z

    .line 482
    iput-boolean v2, p0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->readingSample:Z

    .line 485
    :cond_2
    iget-boolean p1, p0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->allowNonIdrKeyframes:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->isISlice()Z

    move-result p5

    .line 486
    :cond_3
    iget-boolean p1, p0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->sampleIsKeyframe:Z

    iget p2, p0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    const/4 p3, 0x5

    if-eq p2, p3, :cond_4

    if-eqz p5, :cond_5

    if-ne p2, v2, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    or-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->sampleIsKeyframe:Z

    return p1
.end method

.method public needsSpsPps()Z
    .locals 1

    .line 302
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    return v0
.end method

.method public putPps(Lcom/google/android/exoplr2avp/util/NalUnitUtil$PpsData;)V
    .locals 2

    .line 310
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->pps:Landroid/util/SparseArray;

    iget v1, p1, Lcom/google/android/exoplr2avp/util/NalUnitUtil$PpsData;->picParameterSetId:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public putSps(Lcom/google/android/exoplr2avp/util/NalUnitUtil$SpsData;)V
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->sps:Landroid/util/SparseArray;

    iget v1, p1, Lcom/google/android/exoplr2avp/util/NalUnitUtil$SpsData;->seqParameterSetId:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 314
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    .line 315
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->readingSample:Z

    .line 316
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->clear()V

    return-void
.end method

.method public startNalUnit(JIJ)V
    .locals 0

    .line 320
    iput p3, p0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    .line 321
    iput-wide p4, p0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->nalUnitTimeUs:J

    .line 322
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->nalUnitStartPosition:J

    .line 323
    iget-boolean p1, p0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->allowNonIdrKeyframes:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    if-eq p3, p2, :cond_1

    :cond_0
    iget-boolean p1, p0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x5

    if-eq p3, p1, :cond_1

    if-eq p3, p2, :cond_1

    const/4 p1, 0x2

    if-ne p3, p1, :cond_2

    .line 329
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->previousSliceHeader:Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 330
    iget-object p3, p0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    iput-object p3, p0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->previousSliceHeader:Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 331
    iput-object p1, p0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->sliceHeader:Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 332
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->clear()V

    const/4 p1, 0x0

    .line 333
    iput p1, p0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    .line 334
    iput-boolean p2, p0, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    :cond_2
    return-void
.end method
