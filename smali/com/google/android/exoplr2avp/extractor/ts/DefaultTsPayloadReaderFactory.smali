.class public final Lcom/google/android/exoplr2avp/extractor/ts/DefaultTsPayloadReaderFactory;
.super Ljava/lang/Object;
.source "DefaultTsPayloadReaderFactory.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/extractor/ts/TsPayloadReader$Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/extractor/ts/DefaultTsPayloadReaderFactory$Flags;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR_TAG_CAPTION_SERVICE:I = 0x86

.field public static final FLAG_ALLOW_NON_IDR_KEYFRAMES:I = 0x1

.field public static final FLAG_DETECT_ACCESS_UNITS:I = 0x8

.field public static final FLAG_ENABLE_HDMV_DTS_AUDIO_STREAMS:I = 0x40

.field public static final FLAG_IGNORE_AAC_STREAM:I = 0x2

.field public static final FLAG_IGNORE_H264_STREAM:I = 0x4

.field public static final FLAG_IGNORE_SPLICE_INFO_STREAM:I = 0x10

.field public static final FLAG_OVERRIDE_CAPTION_DESCRIPTORS:I = 0x20


# instance fields
.field private final closedCaptionFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/Format;",
            ">;"
        }
    .end annotation
.end field

.field private final flags:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 117
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplr2avp/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(ILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/Format;",
            ">;)V"
        }
    .end annotation

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput p1, p0, Lcom/google/android/exoplr2avp/extractor/ts/DefaultTsPayloadReaderFactory;->flags:I

    .line 132
    iput-object p2, p0, Lcom/google/android/exoplr2avp/extractor/ts/DefaultTsPayloadReaderFactory;->closedCaptionFormats:Ljava/util/List;

    return-void
.end method

.method private buildSeiReader(Lcom/google/android/exoplr2avp/extractor/ts/TsPayloadReader$EsInfo;)Lcom/google/android/exoplr2avp/extractor/ts/SeiReader;
    .locals 1

    .line 207
    new-instance v0, Lcom/google/android/exoplr2avp/extractor/ts/SeiReader;

    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/extractor/ts/DefaultTsPayloadReaderFactory;->getClosedCaptionFormats(Lcom/google/android/exoplr2avp/extractor/ts/TsPayloadReader$EsInfo;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/exoplr2avp/extractor/ts/SeiReader;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private buildUserDataReader(Lcom/google/android/exoplr2avp/extractor/ts/TsPayloadReader$EsInfo;)Lcom/google/android/exoplr2avp/extractor/ts/UserDataReader;
    .locals 1

    .line 220
    new-instance v0, Lcom/google/android/exoplr2avp/extractor/ts/UserDataReader;

    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/extractor/ts/DefaultTsPayloadReaderFactory;->getClosedCaptionFormats(Lcom/google/android/exoplr2avp/extractor/ts/TsPayloadReader$EsInfo;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/exoplr2avp/extractor/ts/UserDataReader;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private getClosedCaptionFormats(Lcom/google/android/exoplr2avp/extractor/ts/TsPayloadReader$EsInfo;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/extractor/ts/TsPayloadReader$EsInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/Format;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x20

    .line 233
    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    iget-object p1, p0, Lcom/google/android/exoplr2avp/extractor/ts/DefaultTsPayloadReaderFactory;->closedCaptionFormats:Ljava/util/List;

    return-object p1

    .line 236
    :cond_0
    new-instance v0, Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/extractor/ts/TsPayloadReader$EsInfo;->descriptorBytes:[B

    invoke-direct {v0, p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;-><init>([B)V

    .line 237
    iget-object p1, p0, Lcom/google/android/exoplr2avp/extractor/ts/DefaultTsPayloadReaderFactory;->closedCaptionFormats:Ljava/util/List;

    .line 238
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-lez v1, :cond_6

    .line 239
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 240
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 241
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getPosition()I

    move-result v3

    add-int/2addr v3, v2

    const/16 v2, 0x86

    if-ne v1, v2, :cond_5

    .line 244
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 245
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    and-int/lit8 v1, v1, 0x1f

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_5

    const/4 v5, 0x3

    .line 247
    invoke-virtual {v0, v5}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v5

    .line 248
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    and-int/lit16 v7, v6, 0x80

    const/4 v8, 0x1

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_2

    and-int/lit8 v6, v6, 0x3f

    const-string v9, "application/cea-708"

    goto :goto_3

    :cond_2
    const-string v9, "application/cea-608"

    const/4 v6, 0x1

    .line 261
    :goto_3
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    int-to-byte v10, v10

    .line 263
    invoke-virtual {v0, v8}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->skipBytes(I)V

    const/4 v11, 0x0

    if-eqz v7, :cond_4

    and-int/lit8 v7, v10, 0x40

    if-eqz v7, :cond_3

    goto :goto_4

    :cond_3
    const/4 v8, 0x0

    .line 270
    :goto_4
    invoke-static {v8}, Lcom/google/android/exoplr2avp/util/CodecSpecificDataUtil;->buildCea708InitializationData(Z)Ljava/util/List;

    move-result-object v11

    .line 273
    :cond_4
    new-instance v7, Lcom/google/android/exoplr2avp/Format$Builder;

    invoke-direct {v7}, Lcom/google/android/exoplr2avp/Format$Builder;-><init>()V

    .line 275
    invoke-virtual {v7, v9}, Lcom/google/android/exoplr2avp/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object v7

    .line 276
    invoke-virtual {v7, v5}, Lcom/google/android/exoplr2avp/Format$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object v5

    .line 277
    invoke-virtual {v5, v6}, Lcom/google/android/exoplr2avp/Format$Builder;->setAccessibilityChannel(I)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object v5

    .line 278
    invoke-virtual {v5, v11}, Lcom/google/android/exoplr2avp/Format$Builder;->setInitializationData(Ljava/util/List;)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object v5

    .line 279
    invoke-virtual {v5}, Lcom/google/android/exoplr2avp/Format$Builder;->build()Lcom/google/android/exoplr2avp/Format;

    move-result-object v5

    .line 273
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 284
    :cond_5
    invoke-virtual {v0, v3}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->setPosition(I)V

    goto :goto_0

    :cond_6
    return-object p1
.end method

.method private isSet(I)Z
    .locals 1

    .line 291
    iget v0, p0, Lcom/google/android/exoplr2avp/extractor/ts/DefaultTsPayloadReaderFactory;->flags:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public createInitialPayloadReaders()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplr2avp/extractor/ts/TsPayloadReader;",
            ">;"
        }
    .end annotation

    .line 137
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    return-object v0
.end method

.method public createPayloadReader(ILcom/google/android/exoplr2avp/extractor/ts/TsPayloadReader$EsInfo;)Lcom/google/android/exoplr2avp/extractor/ts/TsPayloadReader;
    .locals 4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_e

    const/4 v1, 0x3

    if-eq p1, v1, :cond_d

    const/4 v1, 0x4

    if-eq p1, v1, :cond_d

    const/16 v2, 0x15

    if-eq p1, v2, :cond_c

    const/16 v2, 0x1b

    const/4 v3, 0x0

    if-eq p1, v2, :cond_a

    const/16 v1, 0x24

    if-eq p1, v1, :cond_9

    const/16 v1, 0x59

    if-eq p1, v1, :cond_8

    const/16 v1, 0x8a

    if-eq p1, v1, :cond_7

    const/16 v1, 0xac

    if-eq p1, v1, :cond_6

    const/16 v1, 0x101

    if-eq p1, v1, :cond_5

    const/16 v1, 0x86

    if-eq p1, v1, :cond_3

    const/16 v1, 0x87

    if-eq p1, v1, :cond_2

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    return-object v3

    :pswitch_0
    const/16 p1, 0x40

    .line 161
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result p1

    if-nez p1, :cond_7

    return-object v3

    .line 152
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    new-instance v3, Lcom/google/android/exoplr2avp/extractor/ts/PesReader;

    new-instance p1, Lcom/google/android/exoplr2avp/extractor/ts/LatmReader;

    iget-object p2, p2, Lcom/google/android/exoplr2avp/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/google/android/exoplr2avp/extractor/ts/LatmReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, p1}, Lcom/google/android/exoplr2avp/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplr2avp/extractor/ts/ElementaryStreamReader;)V

    :goto_0
    return-object v3

    .line 171
    :pswitch_2
    new-instance p1, Lcom/google/android/exoplr2avp/extractor/ts/PesReader;

    new-instance v0, Lcom/google/android/exoplr2avp/extractor/ts/H263Reader;

    invoke-direct {p0, p2}, Lcom/google/android/exoplr2avp/extractor/ts/DefaultTsPayloadReaderFactory;->buildUserDataReader(Lcom/google/android/exoplr2avp/extractor/ts/TsPayloadReader$EsInfo;)Lcom/google/android/exoplr2avp/extractor/ts/UserDataReader;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/google/android/exoplr2avp/extractor/ts/H263Reader;-><init>(Lcom/google/android/exoplr2avp/extractor/ts/UserDataReader;)V

    invoke-direct {p1, v0}, Lcom/google/android/exoplr2avp/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplr2avp/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 148
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 150
    :cond_1
    new-instance v3, Lcom/google/android/exoplr2avp/extractor/ts/PesReader;

    new-instance p1, Lcom/google/android/exoplr2avp/extractor/ts/AdtsReader;

    const/4 v0, 0x0

    iget-object p2, p2, Lcom/google/android/exoplr2avp/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {p1, v0, p2}, Lcom/google/android/exoplr2avp/extractor/ts/AdtsReader;-><init>(ZLjava/lang/String;)V

    invoke-direct {v3, p1}, Lcom/google/android/exoplr2avp/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplr2avp/extractor/ts/ElementaryStreamReader;)V

    :goto_1
    return-object v3

    .line 157
    :cond_2
    :pswitch_4
    new-instance p1, Lcom/google/android/exoplr2avp/extractor/ts/PesReader;

    new-instance v0, Lcom/google/android/exoplr2avp/extractor/ts/Ac3Reader;

    iget-object p2, p2, Lcom/google/android/exoplr2avp/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {v0, p2}, Lcom/google/android/exoplr2avp/extractor/ts/Ac3Reader;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/android/exoplr2avp/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplr2avp/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    :cond_3
    const/16 p1, 0x10

    .line 183
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    .line 185
    :cond_4
    new-instance v3, Lcom/google/android/exoplr2avp/extractor/ts/SectionReader;

    new-instance p1, Lcom/google/android/exoplr2avp/extractor/ts/PassthroughSectionPayloadReader;

    const-string p2, "application/x-scte35"

    invoke-direct {p1, p2}, Lcom/google/android/exoplr2avp/extractor/ts/PassthroughSectionPayloadReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, p1}, Lcom/google/android/exoplr2avp/extractor/ts/SectionReader;-><init>(Lcom/google/android/exoplr2avp/extractor/ts/SectionPayloadReader;)V

    :goto_2
    return-object v3

    .line 191
    :cond_5
    new-instance p1, Lcom/google/android/exoplr2avp/extractor/ts/SectionReader;

    new-instance p2, Lcom/google/android/exoplr2avp/extractor/ts/PassthroughSectionPayloadReader;

    const-string v0, "application/vnd.dvb.ait"

    invoke-direct {p2, v0}, Lcom/google/android/exoplr2avp/extractor/ts/PassthroughSectionPayloadReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/google/android/exoplr2avp/extractor/ts/SectionReader;-><init>(Lcom/google/android/exoplr2avp/extractor/ts/SectionPayloadReader;)V

    return-object p1

    .line 159
    :cond_6
    new-instance p1, Lcom/google/android/exoplr2avp/extractor/ts/PesReader;

    new-instance v0, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;

    iget-object p2, p2, Lcom/google/android/exoplr2avp/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {v0, p2}, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Reader;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/android/exoplr2avp/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplr2avp/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 166
    :cond_7
    new-instance p1, Lcom/google/android/exoplr2avp/extractor/ts/PesReader;

    new-instance v0, Lcom/google/android/exoplr2avp/extractor/ts/DtsReader;

    iget-object p2, p2, Lcom/google/android/exoplr2avp/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {v0, p2}, Lcom/google/android/exoplr2avp/extractor/ts/DtsReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/android/exoplr2avp/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplr2avp/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 189
    :cond_8
    new-instance p1, Lcom/google/android/exoplr2avp/extractor/ts/PesReader;

    new-instance v0, Lcom/google/android/exoplr2avp/extractor/ts/DvbSubtitleReader;

    iget-object p2, p2, Lcom/google/android/exoplr2avp/extractor/ts/TsPayloadReader$EsInfo;->dvbSubtitleInfos:Ljava/util/List;

    invoke-direct {v0, p2}, Lcom/google/android/exoplr2avp/extractor/ts/DvbSubtitleReader;-><init>(Ljava/util/List;)V

    invoke-direct {p1, v0}, Lcom/google/android/exoplr2avp/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplr2avp/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 181
    :cond_9
    new-instance p1, Lcom/google/android/exoplr2avp/extractor/ts/PesReader;

    new-instance v0, Lcom/google/android/exoplr2avp/extractor/ts/H265Reader;

    invoke-direct {p0, p2}, Lcom/google/android/exoplr2avp/extractor/ts/DefaultTsPayloadReaderFactory;->buildSeiReader(Lcom/google/android/exoplr2avp/extractor/ts/TsPayloadReader$EsInfo;)Lcom/google/android/exoplr2avp/extractor/ts/SeiReader;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/google/android/exoplr2avp/extractor/ts/H265Reader;-><init>(Lcom/google/android/exoplr2avp/extractor/ts/SeiReader;)V

    invoke-direct {p1, v0}, Lcom/google/android/exoplr2avp/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplr2avp/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 173
    :cond_a
    invoke-direct {p0, v1}, Lcom/google/android/exoplr2avp/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_3

    .line 175
    :cond_b
    new-instance v3, Lcom/google/android/exoplr2avp/extractor/ts/PesReader;

    new-instance p1, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader;

    .line 177
    invoke-direct {p0, p2}, Lcom/google/android/exoplr2avp/extractor/ts/DefaultTsPayloadReaderFactory;->buildSeiReader(Lcom/google/android/exoplr2avp/extractor/ts/TsPayloadReader$EsInfo;)Lcom/google/android/exoplr2avp/extractor/ts/SeiReader;

    move-result-object p2

    const/4 v0, 0x1

    .line 178
    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result v0

    const/16 v1, 0x8

    .line 179
    invoke-direct {p0, v1}, Lcom/google/android/exoplr2avp/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result v1

    invoke-direct {p1, p2, v0, v1}, Lcom/google/android/exoplr2avp/extractor/ts/H264Reader;-><init>(Lcom/google/android/exoplr2avp/extractor/ts/SeiReader;ZZ)V

    invoke-direct {v3, p1}, Lcom/google/android/exoplr2avp/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplr2avp/extractor/ts/ElementaryStreamReader;)V

    :goto_3
    return-object v3

    .line 187
    :cond_c
    new-instance p1, Lcom/google/android/exoplr2avp/extractor/ts/PesReader;

    new-instance p2, Lcom/google/android/exoplr2avp/extractor/ts/Id3Reader;

    invoke-direct {p2}, Lcom/google/android/exoplr2avp/extractor/ts/Id3Reader;-><init>()V

    invoke-direct {p1, p2}, Lcom/google/android/exoplr2avp/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplr2avp/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 146
    :cond_d
    new-instance p1, Lcom/google/android/exoplr2avp/extractor/ts/PesReader;

    new-instance v0, Lcom/google/android/exoplr2avp/extractor/ts/MpegAudioReader;

    iget-object p2, p2, Lcom/google/android/exoplr2avp/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {v0, p2}, Lcom/google/android/exoplr2avp/extractor/ts/MpegAudioReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/android/exoplr2avp/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplr2avp/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 169
    :cond_e
    :pswitch_5
    new-instance p1, Lcom/google/android/exoplr2avp/extractor/ts/PesReader;

    new-instance v0, Lcom/google/android/exoplr2avp/extractor/ts/H262Reader;

    invoke-direct {p0, p2}, Lcom/google/android/exoplr2avp/extractor/ts/DefaultTsPayloadReaderFactory;->buildUserDataReader(Lcom/google/android/exoplr2avp/extractor/ts/TsPayloadReader$EsInfo;)Lcom/google/android/exoplr2avp/extractor/ts/UserDataReader;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/google/android/exoplr2avp/extractor/ts/H262Reader;-><init>(Lcom/google/android/exoplr2avp/extractor/ts/UserDataReader;)V

    invoke-direct {p1, v0}, Lcom/google/android/exoplr2avp/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplr2avp/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x80
        :pswitch_5
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method
