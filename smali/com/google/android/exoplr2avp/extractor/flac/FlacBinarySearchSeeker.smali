.class final Lcom/google/android/exoplr2avp/extractor/flac/FlacBinarySearchSeeker;
.super Lcom/google/android/exoplr2avp/extractor/BinarySearchSeeker;
.source "FlacBinarySearchSeeker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/extractor/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/extractor/FlacStreamMetadata;IJJ)V
    .locals 16

    move-object/from16 v0, p1

    .line 51
    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/exoplr2avp/extractor/flac/-$$Lambda$S6Xt47kt2e_PpwHw-7t98_QTUYA;

    invoke-direct {v1, v0}, Lcom/google/android/exoplr2avp/extractor/flac/-$$Lambda$S6Xt47kt2e_PpwHw-7t98_QTUYA;-><init>(Lcom/google/android/exoplr2avp/extractor/FlacStreamMetadata;)V

    new-instance v2, Lcom/google/android/exoplr2avp/extractor/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;

    const/4 v3, 0x0

    move/from16 v4, p2

    invoke-direct {v2, v0, v4, v3}, Lcom/google/android/exoplr2avp/extractor/flac/FlacBinarySearchSeeker$FlacTimestampSeeker;-><init>(Lcom/google/android/exoplr2avp/extractor/FlacStreamMetadata;ILcom/google/android/exoplr2avp/extractor/flac/FlacBinarySearchSeeker$1;)V

    .line 53
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplr2avp/extractor/FlacStreamMetadata;->getDurationUs()J

    move-result-wide v3

    iget-wide v7, v0, Lcom/google/android/exoplr2avp/extractor/FlacStreamMetadata;->totalSamples:J

    .line 58
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplr2avp/extractor/FlacStreamMetadata;->getApproxBytesPerFrame()J

    move-result-wide v13

    iget v0, v0, Lcom/google/android/exoplr2avp/extractor/FlacStreamMetadata;->minFrameSize:I

    const/4 v5, 0x6

    .line 59
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    const-wide/16 v5, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    .line 50
    invoke-direct/range {v0 .. v15}, Lcom/google/android/exoplr2avp/extractor/BinarySearchSeeker;-><init>(Lcom/google/android/exoplr2avp/extractor/BinarySearchSeeker$SeekTimestampConverter;Lcom/google/android/exoplr2avp/extractor/BinarySearchSeeker$TimestampSeeker;JJJJJJI)V

    return-void
.end method
