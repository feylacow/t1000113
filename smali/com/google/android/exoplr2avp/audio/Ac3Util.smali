.class public final Lcom/google/android/exoplr2avp/audio/Ac3Util;
.super Ljava/lang/Object;
.source "Ac3Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/audio/Ac3Util$SyncFrameInfo;
    }
.end annotation


# static fields
.field public static final AC3_MAX_RATE_BYTES_PER_SECOND:I = 0x13880

.field private static final AC3_SYNCFRAME_AUDIO_SAMPLE_COUNT:I = 0x600

.field private static final AUDIO_SAMPLES_PER_AUDIO_BLOCK:I = 0x100

.field private static final BITRATE_BY_HALF_FRMSIZECOD:[I

.field private static final BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

.field private static final CHANNEL_COUNT_BY_ACMOD:[I

.field public static final E_AC3_MAX_RATE_BYTES_PER_SECOND:I = 0xbb800

.field private static final SAMPLE_RATE_BY_FSCOD:[I

.field private static final SAMPLE_RATE_BY_FSCOD2:[I

.field private static final SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1:[I

.field public static final TRUEHD_MAX_RATE_BYTES_PER_SECOND:I = 0x2ebae4

.field public static final TRUEHD_RECHUNK_SAMPLE_COUNT:I = 0x10

.field public static final TRUEHD_SYNCFRAME_PREFIX_LENGTH:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 121
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplr2avp/audio/Ac3Util;->BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 123
    fill-array-data v1, :array_1

    sput-object v1, Lcom/google/android/exoplr2avp/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    new-array v0, v0, [I

    .line 125
    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/exoplr2avp/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD2:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 127
    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/android/exoplr2avp/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    const/16 v0, 0x13

    new-array v1, v0, [I

    .line 129
    fill-array-data v1, :array_4

    sput-object v1, Lcom/google/android/exoplr2avp/audio/Ac3Util;->BITRATE_BY_HALF_FRMSIZECOD:[I

    new-array v0, v0, [I

    .line 134
    fill-array-data v0, :array_5

    sput-object v0, Lcom/google/android/exoplr2avp/audio/Ac3Util;->SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x6
    .end array-data

    :array_1
    .array-data 4
        0xbb80
        0xac44
        0x7d00
    .end array-data

    :array_2
    .array-data 4
        0x5dc0
        0x5622
        0x3e80
    .end array-data

    :array_3
    .array-data 4
        0x2
        0x1
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
    .end array-data

    :array_4
    .array-data 4
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x140
        0x180
        0x1c0
        0x200
        0x240
        0x280
    .end array-data

    :array_5
    .array-data 4
        0x45
        0x57
        0x68
        0x79
        0x8b
        0xae
        0xd0
        0xf3
        0x116
        0x15c
        0x1a1
        0x1e7
        0x22d
        0x2b8
        0x343
        0x3cf
        0x45a
        0x4e5
        0x571
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findTrueHdSyncframeOffset(Ljava/nio/ByteBuffer;)I
    .locals 5

    .line 501
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 502
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    move v2, v0

    :goto_0
    if-gt v2, v1, :cond_1

    add-int/lit8 v3, v2, 0x4

    .line 505
    invoke-static {p0, v3}, Lcom/google/android/exoplr2avp/util/Util;->getBigEndianInt(Ljava/nio/ByteBuffer;I)I

    move-result v3

    and-int/lit8 v3, v3, -0x2

    const v4, -0x78d9046

    if-ne v3, v4, :cond_0

    sub-int/2addr v2, v0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private static getAc3SyncframeSize(II)I
    .locals 4

    .line 549
    div-int/lit8 v0, p1, 0x2

    if-ltz p0, :cond_3

    .line 550
    sget-object v1, Lcom/google/android/exoplr2avp/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    array-length v2, v1

    if-ge p0, v2, :cond_3

    if-ltz p1, :cond_3

    sget-object v2, Lcom/google/android/exoplr2avp/audio/Ac3Util;->SYNCFRAME_SIZE_WORDS_BY_HALF_FRMSIZECOD_44_1:[I

    array-length v3, v2

    if-lt v0, v3, :cond_0

    goto :goto_0

    .line 557
    :cond_0
    aget p0, v1, p0

    const v1, 0xac44

    if-ne p0, v1, :cond_1

    .line 559
    aget p0, v2, v0

    rem-int/lit8 p1, p1, 0x2

    add-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0x2

    return p0

    .line 561
    :cond_1
    sget-object p1, Lcom/google/android/exoplr2avp/audio/Ac3Util;->BITRATE_BY_HALF_FRMSIZECOD:[I

    aget p1, p1, v0

    const/16 v0, 0x7d00

    if-ne p0, v0, :cond_2

    mul-int/lit8 p1, p1, 0x6

    return p1

    :cond_2
    mul-int/lit8 p1, p1, 0x4

    return p1

    :cond_3
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public static parseAc3AnnexFFormat(Lcom/google/android/exoplr2avp/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplr2avp/drm/DrmInitData;)Lcom/google/android/exoplr2avp/Format;
    .locals 3

    .line 152
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    .line 153
    sget-object v1, Lcom/google/android/exoplr2avp/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v0, v1, v0

    .line 154
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    .line 155
    sget-object v1, Lcom/google/android/exoplr2avp/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    and-int/lit8 v2, p0, 0x38

    shr-int/lit8 v2, v2, 0x3

    aget v1, v1, v2

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 159
    :cond_0
    new-instance p0, Lcom/google/android/exoplr2avp/Format$Builder;

    invoke-direct {p0}, Lcom/google/android/exoplr2avp/Format$Builder;-><init>()V

    .line 160
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/Format$Builder;->setId(Ljava/lang/String;)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object p0

    const-string p1, "audio/ac3"

    .line 161
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object p0

    .line 162
    invoke-virtual {p0, v1}, Lcom/google/android/exoplr2avp/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object p0

    .line 163
    invoke-virtual {p0, v0}, Lcom/google/android/exoplr2avp/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object p0

    .line 164
    invoke-virtual {p0, p3}, Lcom/google/android/exoplr2avp/Format$Builder;->setDrmInitData(Lcom/google/android/exoplr2avp/drm/DrmInitData;)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object p0

    .line 165
    invoke-virtual {p0, p2}, Lcom/google/android/exoplr2avp/Format$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object p0

    .line 166
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/Format$Builder;->build()Lcom/google/android/exoplr2avp/Format;

    move-result-object p0

    return-object p0
.end method

.method public static parseAc3SyncframeAudioSampleCount(Ljava/nio/ByteBuffer;)I
    .locals 3

    .line 482
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xf8

    const/4 v1, 0x3

    shr-int/2addr v0, v1

    const/16 v2, 0xa

    if-le v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 484
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 485
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    and-int/lit8 p0, p0, 0x30

    shr-int/lit8 v1, p0, 0x4

    .line 486
    :goto_1
    sget-object p0, Lcom/google/android/exoplr2avp/audio/Ac3Util;->BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

    aget p0, p0, v1

    mul-int/lit16 p0, p0, 0x100

    return p0

    :cond_2
    const/16 p0, 0x600

    return p0
.end method

.method public static parseAc3SyncframeInfo(Lcom/google/android/exoplr2avp/util/ParsableBitArray;)Lcom/google/android/exoplr2avp/audio/Ac3Util$SyncFrameInfo;
    .locals 27

    move-object/from16 v0, p0

    .line 228
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->getPosition()I

    move-result v1

    const/16 v2, 0x28

    .line 229
    invoke-virtual {v0, v2}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    const/4 v2, 0x5

    .line 231
    invoke-virtual {v0, v2}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBits(I)I

    move-result v3

    const/16 v4, 0xa

    const/4 v6, 0x1

    if-le v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 232
    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->setPosition(I)V

    const/4 v1, -0x1

    const/16 v7, 0x8

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eqz v3, :cond_2a

    const/16 v3, 0x10

    .line 243
    invoke-virtual {v0, v3}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    .line 244
    invoke-virtual {v0, v10}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBits(I)I

    move-result v11

    if-eqz v11, :cond_3

    if-eq v11, v6, :cond_2

    if-eq v11, v10, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 258
    :goto_1
    invoke-virtual {v0, v9}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    const/16 v11, 0xb

    .line 259
    invoke-virtual {v0, v11}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBits(I)I

    move-result v11

    add-int/2addr v11, v6

    mul-int/lit8 v11, v11, 0x2

    .line 260
    invoke-virtual {v0, v10}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBits(I)I

    move-result v12

    if-ne v12, v9, :cond_4

    .line 265
    sget-object v13, Lcom/google/android/exoplr2avp/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD2:[I

    invoke-virtual {v0, v10}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBits(I)I

    move-result v14

    aget v13, v13, v14

    move v15, v13

    const/4 v13, 0x3

    const/4 v14, 0x6

    goto :goto_2

    .line 268
    :cond_4
    invoke-virtual {v0, v10}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBits(I)I

    move-result v13

    .line 269
    sget-object v14, Lcom/google/android/exoplr2avp/audio/Ac3Util;->BLOCKS_PER_SYNCFRAME_BY_NUMBLKSCOD:[I

    aget v14, v14, v13

    .line 270
    sget-object v15, Lcom/google/android/exoplr2avp/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v15, v15, v12

    :goto_2
    mul-int/lit16 v5, v14, 0x100

    .line 273
    invoke-virtual {v0, v9}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 274
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBit()Z

    move-result v17

    .line 275
    sget-object v18, Lcom/google/android/exoplr2avp/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    aget v18, v18, v8

    add-int v18, v18, v17

    .line 276
    invoke-virtual {v0, v4}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    .line 277
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 278
    invoke-virtual {v0, v7}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    :cond_5
    if-nez v8, :cond_6

    .line 281
    invoke-virtual {v0, v2}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    .line 282
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 283
    invoke-virtual {v0, v7}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    :cond_6
    if-ne v1, v6, :cond_7

    .line 286
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 287
    invoke-virtual {v0, v3}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    .line 289
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBit()Z

    move-result v3

    const/4 v4, 0x4

    if-eqz v3, :cond_20

    if-le v8, v10, :cond_8

    .line 291
    invoke-virtual {v0, v10}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    :cond_8
    and-int/lit8 v3, v8, 0x1

    if-eqz v3, :cond_9

    if-le v8, v10, :cond_9

    const/4 v3, 0x6

    .line 294
    invoke-virtual {v0, v3}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    goto :goto_3

    :cond_9
    const/4 v3, 0x6

    :goto_3
    and-int/lit8 v16, v8, 0x4

    if-eqz v16, :cond_a

    .line 297
    invoke-virtual {v0, v3}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    :cond_a
    if-eqz v17, :cond_b

    .line 299
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 300
    invoke-virtual {v0, v2}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    :cond_b
    if-nez v1, :cond_20

    .line 303
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v3, 0x6

    .line 304
    invoke-virtual {v0, v3}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    goto :goto_4

    :cond_c
    const/4 v3, 0x6

    :goto_4
    if-nez v8, :cond_d

    .line 306
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBit()Z

    move-result v16

    if-eqz v16, :cond_d

    .line 307
    invoke-virtual {v0, v3}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    .line 309
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBit()Z

    move-result v16

    if-eqz v16, :cond_e

    .line 310
    invoke-virtual {v0, v3}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    .line 312
    :cond_e
    invoke-virtual {v0, v10}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBits(I)I

    move-result v3

    if-ne v3, v6, :cond_f

    .line 314
    invoke-virtual {v0, v2}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_5

    :cond_f
    if-ne v3, v10, :cond_10

    const/16 v3, 0xc

    .line 316
    invoke-virtual {v0, v3}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_5

    :cond_10
    if-ne v3, v9, :cond_1b

    .line 318
    invoke-virtual {v0, v2}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 319
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBit()Z

    move-result v17

    if-eqz v17, :cond_19

    .line 320
    invoke-virtual {v0, v2}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    .line 321
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBit()Z

    move-result v17

    if-eqz v17, :cond_11

    .line 322
    invoke-virtual {v0, v4}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    .line 324
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBit()Z

    move-result v17

    if-eqz v17, :cond_12

    .line 325
    invoke-virtual {v0, v4}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    .line 327
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBit()Z

    move-result v17

    if-eqz v17, :cond_13

    .line 328
    invoke-virtual {v0, v4}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    .line 330
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBit()Z

    move-result v17

    if-eqz v17, :cond_14

    .line 331
    invoke-virtual {v0, v4}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    .line 333
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBit()Z

    move-result v17

    if-eqz v17, :cond_15

    .line 334
    invoke-virtual {v0, v4}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    .line 336
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBit()Z

    move-result v17

    if-eqz v17, :cond_16

    .line 337
    invoke-virtual {v0, v4}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    .line 339
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBit()Z

    move-result v17

    if-eqz v17, :cond_17

    .line 340
    invoke-virtual {v0, v4}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    .line 342
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBit()Z

    move-result v17

    if-eqz v17, :cond_19

    .line 343
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBit()Z

    move-result v17

    if-eqz v17, :cond_18

    .line 344
    invoke-virtual {v0, v4}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    .line 346
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBit()Z

    move-result v17

    if-eqz v17, :cond_19

    .line 347
    invoke-virtual {v0, v4}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    .line 351
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBit()Z

    move-result v17

    if-eqz v17, :cond_1a

    .line 352
    invoke-virtual {v0, v2}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    .line 353
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBit()Z

    move-result v17

    if-eqz v17, :cond_1a

    const/4 v6, 0x7

    .line 354
    invoke-virtual {v0, v6}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    .line 355
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 356
    invoke-virtual {v0, v7}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    :cond_1a
    add-int/2addr v3, v10

    mul-int/lit8 v3, v3, 0x8

    .line 360
    invoke-virtual {v0, v3}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    .line 361
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->byteAlign()V

    :cond_1b
    :goto_5
    if-ge v8, v10, :cond_1d

    .line 364
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBit()Z

    move-result v3

    const/16 v6, 0xe

    if-eqz v3, :cond_1c

    .line 365
    invoke-virtual {v0, v6}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    :cond_1c
    if-nez v8, :cond_1d

    .line 368
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 369
    invoke-virtual {v0, v6}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    .line 373
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_20

    if-nez v13, :cond_1e

    .line 375
    invoke-virtual {v0, v2}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    goto :goto_7

    :cond_1e
    const/4 v3, 0x0

    :goto_6
    if-ge v3, v14, :cond_20

    .line 378
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBit()Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 379
    invoke-virtual {v0, v2}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 386
    :cond_20
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 387
    invoke-virtual {v0, v2}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    if-ne v8, v10, :cond_21

    .line 389
    invoke-virtual {v0, v4}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    :cond_21
    const/4 v2, 0x6

    if-lt v8, v2, :cond_22

    .line 392
    invoke-virtual {v0, v10}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    .line 394
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 395
    invoke-virtual {v0, v7}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    :cond_23
    if-nez v8, :cond_24

    .line 397
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 398
    invoke-virtual {v0, v7}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    :cond_24
    if-ge v12, v9, :cond_25

    .line 401
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBit()V

    :cond_25
    if-nez v1, :cond_26

    if-eq v13, v9, :cond_26

    .line 405
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBit()V

    :cond_26
    if-ne v1, v10, :cond_28

    if-eq v13, v9, :cond_27

    .line 408
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_28

    :cond_27
    const/4 v2, 0x6

    .line 409
    invoke-virtual {v0, v2}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    goto :goto_8

    :cond_28
    const/4 v2, 0x6

    .line 412
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 413
    invoke-virtual {v0, v2}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBits(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_29

    .line 414
    invoke-virtual {v0, v7}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBits(I)I

    move-result v0

    if-ne v0, v3, :cond_29

    const-string v0, "audio/eac3-joc"

    goto :goto_9

    :cond_29
    const-string v0, "audio/eac3"

    :goto_9
    move-object/from16 v20, v0

    move/from16 v21, v1

    move/from16 v25, v5

    move/from16 v24, v11

    move/from16 v23, v15

    move/from16 v22, v18

    goto :goto_c

    :cond_2a
    const/16 v2, 0x20

    .line 420
    invoke-virtual {v0, v2}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    .line 421
    invoke-virtual {v0, v10}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBits(I)I

    move-result v2

    if-ne v2, v9, :cond_2b

    const/4 v3, 0x0

    goto :goto_a

    :cond_2b
    const-string v3, "audio/ac3"

    :goto_a
    const/4 v4, 0x6

    .line 427
    invoke-virtual {v0, v4}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 428
    invoke-static {v2, v4}, Lcom/google/android/exoplr2avp/audio/Ac3Util;->getAc3SyncframeSize(II)I

    move-result v11

    .line 429
    invoke-virtual {v0, v7}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    .line 430
    invoke-virtual {v0, v9}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBits(I)I

    move-result v4

    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_2c

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2c

    .line 432
    invoke-virtual {v0, v10}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    :cond_2c
    and-int/lit8 v5, v4, 0x4

    if-eqz v5, :cond_2d

    .line 435
    invoke-virtual {v0, v10}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    :cond_2d
    if-ne v4, v10, :cond_2e

    .line 438
    invoke-virtual {v0, v10}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    .line 441
    :cond_2e
    sget-object v5, Lcom/google/android/exoplr2avp/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    array-length v6, v5

    if-ge v2, v6, :cond_2f

    aget v2, v5, v2

    move v15, v2

    goto :goto_b

    :cond_2f
    const/4 v15, -0x1

    :goto_b
    const/16 v5, 0x600

    .line 443
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBit()Z

    move-result v0

    .line 444
    sget-object v2, Lcom/google/android/exoplr2avp/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    aget v2, v2, v4

    add-int v18, v2, v0

    move-object/from16 v20, v3

    move/from16 v24, v11

    move/from16 v23, v15

    move/from16 v22, v18

    const/16 v21, -0x1

    const/16 v25, 0x600

    .line 446
    :goto_c
    new-instance v0, Lcom/google/android/exoplr2avp/audio/Ac3Util$SyncFrameInfo;

    const/16 v26, 0x0

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v26}, Lcom/google/android/exoplr2avp/audio/Ac3Util$SyncFrameInfo;-><init>(Ljava/lang/String;IIIIILcom/google/android/exoplr2avp/audio/Ac3Util$1;)V

    return-object v0
.end method

.method public static parseAc3SyncframeSize([B)I
    .locals 5

    .line 457
    array-length v0, p0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 v0, 0x5

    .line 461
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xf8

    const/4 v2, 0x3

    shr-int/2addr v0, v2

    const/16 v3, 0xa

    const/4 v4, 0x1

    if-le v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const/4 v0, 0x2

    .line 463
    aget-byte v1, p0, v0

    and-int/lit8 v1, v1, 0x7

    shl-int/lit8 v1, v1, 0x8

    .line 464
    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v1

    add-int/2addr p0, v4

    mul-int/lit8 p0, p0, 0x2

    return p0

    :cond_2
    const/4 v0, 0x4

    .line 467
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xc0

    shr-int/lit8 v1, v2, 0x6

    .line 468
    aget-byte p0, p0, v0

    and-int/lit8 p0, p0, 0x3f

    .line 469
    invoke-static {v1, p0}, Lcom/google/android/exoplr2avp/audio/Ac3Util;->getAc3SyncframeSize(II)I

    move-result p0

    return p0
.end method

.method public static parseEAc3AnnexFFormat(Lcom/google/android/exoplr2avp/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplr2avp/drm/DrmInitData;)Lcom/google/android/exoplr2avp/Format;
    .locals 5

    const/4 v0, 0x2

    .line 181
    invoke-virtual {p0, v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->skipBytes(I)V

    .line 184
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    and-int/lit16 v1, v1, 0xc0

    shr-int/lit8 v1, v1, 0x6

    .line 185
    sget-object v2, Lcom/google/android/exoplr2avp/audio/Ac3Util;->SAMPLE_RATE_BY_FSCOD:[I

    aget v1, v2, v1

    .line 186
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 187
    sget-object v3, Lcom/google/android/exoplr2avp/audio/Ac3Util;->CHANNEL_COUNT_BY_ACMOD:[I

    and-int/lit8 v4, v2, 0xe

    shr-int/lit8 v4, v4, 0x1

    aget v3, v3, v4

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    add-int/lit8 v3, v3, 0x1

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    and-int/lit8 v2, v2, 0x1e

    shr-int/lit8 v2, v2, 0x1

    if-lez v2, :cond_1

    .line 196
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    add-int/lit8 v3, v3, 0x2

    .line 204
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_2

    .line 205
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    and-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_2

    const-string p0, "audio/eac3-joc"

    goto :goto_0

    :cond_2
    const-string p0, "audio/eac3"

    .line 210
    :goto_0
    new-instance v0, Lcom/google/android/exoplr2avp/Format$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/Format$Builder;-><init>()V

    .line 211
    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/Format$Builder;->setId(Ljava/lang/String;)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object p1

    .line 212
    invoke-virtual {p1, p0}, Lcom/google/android/exoplr2avp/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object p0

    .line 213
    invoke-virtual {p0, v3}, Lcom/google/android/exoplr2avp/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object p0

    .line 214
    invoke-virtual {p0, v1}, Lcom/google/android/exoplr2avp/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object p0

    .line 215
    invoke-virtual {p0, p3}, Lcom/google/android/exoplr2avp/Format$Builder;->setDrmInitData(Lcom/google/android/exoplr2avp/drm/DrmInitData;)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object p0

    .line 216
    invoke-virtual {p0, p2}, Lcom/google/android/exoplr2avp/Format$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object p0

    .line 217
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/Format$Builder;->build()Lcom/google/android/exoplr2avp/Format;

    move-result-object p0

    return-object p0
.end method

.method public static parseTrueHdSyncframeAudioSampleCount(Ljava/nio/ByteBuffer;I)I
    .locals 3

    .line 544
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xbb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x28

    .line 545
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, p1

    if-eqz v0, :cond_1

    const/16 p1, 0x9

    goto :goto_1

    :cond_1
    const/16 p1, 0x8

    :goto_1
    add-int/2addr v2, p1

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    shr-int/lit8 p0, p0, 0x4

    and-int/lit8 p0, p0, 0x7

    shl-int p0, v1, p0

    return p0
.end method

.method public static parseTrueHdSyncframeAudioSampleCount([B)I
    .locals 5

    const/4 v0, 0x4

    .line 524
    aget-byte v1, p0, v0

    const/4 v2, 0x0

    const/4 v3, -0x8

    if-ne v1, v3, :cond_3

    const/4 v1, 0x5

    aget-byte v1, p0, v1

    const/16 v3, 0x72

    if-ne v1, v3, :cond_3

    const/4 v1, 0x6

    aget-byte v1, p0, v1

    const/16 v3, 0x6f

    if-ne v1, v3, :cond_3

    const/4 v1, 0x7

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xfe

    const/16 v4, 0xba

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 530
    :cond_0
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xbb

    if-ne v3, v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    const/16 v3, 0x28

    if-eqz v2, :cond_2

    const/16 v2, 0x9

    goto :goto_0

    :cond_2
    const/16 v2, 0x8

    .line 531
    :goto_0
    aget-byte p0, p0, v2

    shr-int/2addr p0, v0

    and-int/2addr p0, v1

    shl-int p0, v3, p0

    return p0

    :cond_3
    :goto_1
    return v2
.end method
