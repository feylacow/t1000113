.class public final Lcom/google/android/exoplr2avp/source/hls/DefaultHlsExtractorFactory;
.super Ljava/lang/Object;
.source "DefaultHlsExtractorFactory.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/source/hls/HlsExtractorFactory;


# static fields
.field private static final DEFAULT_EXTRACTOR_ORDER:[I


# instance fields
.field private final exposeCea608WhenMissingDeclarations:Z

.field private final payloadReaderFactoryFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 52
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplr2avp/source/hls/DefaultHlsExtractorFactory;->DEFAULT_EXTRACTOR_ORDER:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x8
        0xd
        0xb
        0x2
        0x0
        0x1
        0x7
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 72
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplr2avp/source/hls/DefaultHlsExtractorFactory;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput p1, p0, Lcom/google/android/exoplr2avp/source/hls/DefaultHlsExtractorFactory;->payloadReaderFactoryFlags:I

    .line 89
    iput-boolean p2, p0, Lcom/google/android/exoplr2avp/source/hls/DefaultHlsExtractorFactory;->exposeCea608WhenMissingDeclarations:Z

    return-void
.end method

.method private static addFileTypeIfValidAndNotPresent(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 147
    sget-object v0, Lcom/google/android/exoplr2avp/source/hls/DefaultHlsExtractorFactory;->DEFAULT_EXTRACTOR_ORDER:[I

    invoke-static {v0, p0}, Lcom/google/common/primitives/Ints;->indexOf([II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private createExtractorByFileType(ILcom/google/android/exoplr2avp/Format;Ljava/util/List;Lcom/google/android/exoplr2avp/util/TimestampAdjuster;)Lcom/google/android/exoplr2avp/extractor/Extractor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/exoplr2avp/Format;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/Format;",
            ">;",
            "Lcom/google/android/exoplr2avp/util/TimestampAdjuster;",
            ")",
            "Lcom/google/android/exoplr2avp/extractor/Extractor;"
        }
    .end annotation

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x7

    if-eq p1, v0, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/16 v0, 0xb

    if-eq p1, v0, :cond_1

    const/16 p3, 0xd

    if-eq p1, p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 162
    :cond_0
    new-instance p1, Lcom/google/android/exoplr2avp/source/hls/WebvttExtractor;

    iget-object p2, p2, Lcom/google/android/exoplr2avp/Format;->language:Ljava/lang/String;

    invoke-direct {p1, p2, p4}, Lcom/google/android/exoplr2avp/source/hls/WebvttExtractor;-><init>(Ljava/lang/String;Lcom/google/android/exoplr2avp/util/TimestampAdjuster;)V

    return-object p1

    .line 174
    :cond_1
    iget p1, p0, Lcom/google/android/exoplr2avp/source/hls/DefaultHlsExtractorFactory;->payloadReaderFactoryFlags:I

    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/source/hls/DefaultHlsExtractorFactory;->exposeCea608WhenMissingDeclarations:Z

    invoke-static {p1, v0, p2, p3, p4}, Lcom/google/android/exoplr2avp/source/hls/DefaultHlsExtractorFactory;->createTsExtractor(IZLcom/google/android/exoplr2avp/Format;Ljava/util/List;Lcom/google/android/exoplr2avp/util/TimestampAdjuster;)Lcom/google/android/exoplr2avp/extractor/ts/TsExtractor;

    move-result-object p1

    return-object p1

    .line 172
    :cond_2
    invoke-static {p4, p2, p3}, Lcom/google/android/exoplr2avp/source/hls/DefaultHlsExtractorFactory;->createFragmentedMp4Extractor(Lcom/google/android/exoplr2avp/util/TimestampAdjuster;Lcom/google/android/exoplr2avp/Format;Ljava/util/List;)Lcom/google/android/exoplr2avp/extractor/mp4/FragmentedMp4Extractor;

    move-result-object p1

    return-object p1

    .line 170
    :cond_3
    new-instance p1, Lcom/google/android/exoplr2avp/extractor/mp3/Mp3Extractor;

    const/4 p2, 0x0

    const-wide/16 p3, 0x0

    invoke-direct {p1, p2, p3, p4}, Lcom/google/android/exoplr2avp/extractor/mp3/Mp3Extractor;-><init>(IJ)V

    return-object p1

    .line 164
    :cond_4
    new-instance p1, Lcom/google/android/exoplr2avp/extractor/ts/AdtsExtractor;

    invoke-direct {p1}, Lcom/google/android/exoplr2avp/extractor/ts/AdtsExtractor;-><init>()V

    return-object p1

    .line 168
    :cond_5
    new-instance p1, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Extractor;

    invoke-direct {p1}, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Extractor;-><init>()V

    return-object p1

    .line 166
    :cond_6
    new-instance p1, Lcom/google/android/exoplr2avp/extractor/ts/Ac3Extractor;

    invoke-direct {p1}, Lcom/google/android/exoplr2avp/extractor/ts/Ac3Extractor;-><init>()V

    return-object p1
.end method

.method private static createFragmentedMp4Extractor(Lcom/google/android/exoplr2avp/util/TimestampAdjuster;Lcom/google/android/exoplr2avp/Format;Ljava/util/List;)Lcom/google/android/exoplr2avp/extractor/mp4/FragmentedMp4Extractor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/util/TimestampAdjuster;",
            "Lcom/google/android/exoplr2avp/Format;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/Format;",
            ">;)",
            "Lcom/google/android/exoplr2avp/extractor/mp4/FragmentedMp4Extractor;"
        }
    .end annotation

    .line 232
    new-instance v0, Lcom/google/android/exoplr2avp/extractor/mp4/FragmentedMp4Extractor;

    .line 233
    invoke-static {p1}, Lcom/google/android/exoplr2avp/source/hls/DefaultHlsExtractorFactory;->isFmp4Variant(Lcom/google/android/exoplr2avp/Format;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    goto :goto_1

    .line 236
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    :goto_1
    invoke-direct {v0, p1, p0, v1, p2}, Lcom/google/android/exoplr2avp/extractor/mp4/FragmentedMp4Extractor;-><init>(ILcom/google/android/exoplr2avp/util/TimestampAdjuster;Lcom/google/android/exoplr2avp/extractor/mp4/Track;Ljava/util/List;)V

    return-object v0
.end method

.method private static createTsExtractor(IZLcom/google/android/exoplr2avp/Format;Ljava/util/List;Lcom/google/android/exoplr2avp/util/TimestampAdjuster;)Lcom/google/android/exoplr2avp/extractor/ts/TsExtractor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Lcom/google/android/exoplr2avp/Format;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/Format;",
            ">;",
            "Lcom/google/android/exoplr2avp/util/TimestampAdjuster;",
            ")",
            "Lcom/google/android/exoplr2avp/extractor/ts/TsExtractor;"
        }
    .end annotation

    or-int/lit8 p0, p0, 0x10

    if-eqz p3, :cond_0

    or-int/lit8 p0, p0, 0x20

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 201
    new-instance p1, Lcom/google/android/exoplr2avp/Format$Builder;

    invoke-direct {p1}, Lcom/google/android/exoplr2avp/Format$Builder;-><init>()V

    const-string p3, "application/cea-608"

    .line 203
    invoke-virtual {p1, p3}, Lcom/google/android/exoplr2avp/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/Format$Builder;->build()Lcom/google/android/exoplr2avp/Format;

    move-result-object p1

    .line 202
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    goto :goto_0

    .line 205
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    .line 207
    :goto_0
    iget-object p1, p2, Lcom/google/android/exoplr2avp/Format;->codecs:Ljava/lang/String;

    .line 208
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "audio/mp4a-latm"

    .line 212
    invoke-static {p1, p2}, Lcom/google/android/exoplr2avp/util/MimeTypes;->containsCodecsCorrespondingToMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    or-int/lit8 p0, p0, 0x2

    :cond_2
    const-string/jumbo p2, "video/avc"

    .line 215
    invoke-static {p1, p2}, Lcom/google/android/exoplr2avp/util/MimeTypes;->containsCodecsCorrespondingToMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    or-int/lit8 p0, p0, 0x4

    .line 220
    :cond_3
    new-instance p1, Lcom/google/android/exoplr2avp/extractor/ts/TsExtractor;

    new-instance p2, Lcom/google/android/exoplr2avp/extractor/ts/DefaultTsPayloadReaderFactory;

    invoke-direct {p2, p0, p3}, Lcom/google/android/exoplr2avp/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(ILjava/util/List;)V

    const/4 p0, 0x2

    invoke-direct {p1, p0, p4, p2}, Lcom/google/android/exoplr2avp/extractor/ts/TsExtractor;-><init>(ILcom/google/android/exoplr2avp/util/TimestampAdjuster;Lcom/google/android/exoplr2avp/extractor/ts/TsPayloadReader$Factory;)V

    return-object p1
.end method

.method private static isFmp4Variant(Lcom/google/android/exoplr2avp/Format;)Z
    .locals 4

    .line 241
    iget-object p0, p0, Lcom/google/android/exoplr2avp/Format;->metadata:Lcom/google/android/exoplr2avp/metadata/Metadata;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 245
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/metadata/Metadata;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 246
    invoke-virtual {p0, v1}, Lcom/google/android/exoplr2avp/metadata/Metadata;->get(I)Lcom/google/android/exoplr2avp/metadata/Metadata$Entry;

    move-result-object v2

    .line 247
    instance-of v3, v2, Lcom/google/android/exoplr2avp/source/hls/HlsTrackMetadataEntry;

    if-eqz v3, :cond_1

    .line 248
    check-cast v2, Lcom/google/android/exoplr2avp/source/hls/HlsTrackMetadataEntry;

    iget-object p0, v2, Lcom/google/android/exoplr2avp/source/hls/HlsTrackMetadataEntry;->variantInfos:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private static sniffQuietly(Lcom/google/android/exoplr2avp/extractor/Extractor;Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    :try_start_0
    invoke-interface {p0, p1}, Lcom/google/android/exoplr2avp/extractor/Extractor;->sniff(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->resetPeekPosition()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->resetPeekPosition()V

    .line 263
    throw p0

    .line 262
    :catch_0
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->resetPeekPosition()V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public createExtractor(Landroid/net/Uri;Lcom/google/android/exoplr2avp/Format;Ljava/util/List;Lcom/google/android/exoplr2avp/util/TimestampAdjuster;Ljava/util/Map;Lcom/google/android/exoplr2avp/extractor/ExtractorInput;Lcom/google/android/exoplr2avp/analytics/PlayerId;)Lcom/google/android/exoplr2avp/source/hls/BundledHlsMediaChunkExtractor;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/google/android/exoplr2avp/Format;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/Format;",
            ">;",
            "Lcom/google/android/exoplr2avp/util/TimestampAdjuster;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/google/android/exoplr2avp/extractor/ExtractorInput;",
            "Lcom/google/android/exoplr2avp/analytics/PlayerId;",
            ")",
            "Lcom/google/android/exoplr2avp/source/hls/BundledHlsMediaChunkExtractor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    iget-object p7, p2, Lcom/google/android/exoplr2avp/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {p7}, Lcom/google/android/exoplr2avp/util/FileTypes;->inferFileTypeFromMimeType(Ljava/lang/String;)I

    move-result p7

    .line 106
    invoke-static {p5}, Lcom/google/android/exoplr2avp/util/FileTypes;->inferFileTypeFromResponseHeaders(Ljava/util/Map;)I

    move-result p5

    .line 107
    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/FileTypes;->inferFileTypeFromUri(Landroid/net/Uri;)I

    move-result p1

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/google/android/exoplr2avp/source/hls/DefaultHlsExtractorFactory;->DEFAULT_EXTRACTOR_ORDER:[I

    array-length v2, v1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 112
    invoke-static {p7, v0}, Lcom/google/android/exoplr2avp/source/hls/DefaultHlsExtractorFactory;->addFileTypeIfValidAndNotPresent(ILjava/util/List;)V

    .line 113
    invoke-static {p5, v0}, Lcom/google/android/exoplr2avp/source/hls/DefaultHlsExtractorFactory;->addFileTypeIfValidAndNotPresent(ILjava/util/List;)V

    .line 114
    invoke-static {p1, v0}, Lcom/google/android/exoplr2avp/source/hls/DefaultHlsExtractorFactory;->addFileTypeIfValidAndNotPresent(ILjava/util/List;)V

    .line 115
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget v5, v1, v4

    .line 116
    invoke-static {v5, v0}, Lcom/google/android/exoplr2avp/source/hls/DefaultHlsExtractorFactory;->addFileTypeIfValidAndNotPresent(ILjava/util/List;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 121
    invoke-interface {p6}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->resetPeekPosition()V

    .line 122
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_4

    .line 123
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 126
    invoke-direct {p0, v2, p2, p3, p4}, Lcom/google/android/exoplr2avp/source/hls/DefaultHlsExtractorFactory;->createExtractorByFileType(ILcom/google/android/exoplr2avp/Format;Ljava/util/List;Lcom/google/android/exoplr2avp/util/TimestampAdjuster;)Lcom/google/android/exoplr2avp/extractor/Extractor;

    move-result-object v4

    .line 125
    invoke-static {v4}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplr2avp/extractor/Extractor;

    .line 127
    invoke-static {v4, p6}, Lcom/google/android/exoplr2avp/source/hls/DefaultHlsExtractorFactory;->sniffQuietly(Lcom/google/android/exoplr2avp/extractor/Extractor;Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 128
    new-instance p1, Lcom/google/android/exoplr2avp/source/hls/BundledHlsMediaChunkExtractor;

    invoke-direct {p1, v4, p2, p4}, Lcom/google/android/exoplr2avp/source/hls/BundledHlsMediaChunkExtractor;-><init>(Lcom/google/android/exoplr2avp/extractor/Extractor;Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/util/TimestampAdjuster;)V

    return-object p1

    :cond_1
    if-nez v1, :cond_3

    if-eq v2, p7, :cond_2

    if-eq v2, p5, :cond_2

    if-eq v2, p1, :cond_2

    const/16 v5, 0xb

    if-ne v2, v5, :cond_3

    :cond_2
    move-object v1, v4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 141
    :cond_4
    new-instance p1, Lcom/google/android/exoplr2avp/source/hls/BundledHlsMediaChunkExtractor;

    .line 142
    invoke-static {v1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/exoplr2avp/extractor/Extractor;

    invoke-direct {p1, p3, p2, p4}, Lcom/google/android/exoplr2avp/source/hls/BundledHlsMediaChunkExtractor;-><init>(Lcom/google/android/exoplr2avp/extractor/Extractor;Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/util/TimestampAdjuster;)V

    return-object p1
.end method

.method public bridge synthetic createExtractor(Landroid/net/Uri;Lcom/google/android/exoplr2avp/Format;Ljava/util/List;Lcom/google/android/exoplr2avp/util/TimestampAdjuster;Ljava/util/Map;Lcom/google/android/exoplr2avp/extractor/ExtractorInput;Lcom/google/android/exoplr2avp/analytics/PlayerId;)Lcom/google/android/exoplr2avp/source/hls/HlsMediaChunkExtractor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-virtual/range {p0 .. p7}, Lcom/google/android/exoplr2avp/source/hls/DefaultHlsExtractorFactory;->createExtractor(Landroid/net/Uri;Lcom/google/android/exoplr2avp/Format;Ljava/util/List;Lcom/google/android/exoplr2avp/util/TimestampAdjuster;Ljava/util/Map;Lcom/google/android/exoplr2avp/extractor/ExtractorInput;Lcom/google/android/exoplr2avp/analytics/PlayerId;)Lcom/google/android/exoplr2avp/source/hls/BundledHlsMediaChunkExtractor;

    move-result-object p1

    return-object p1
.end method
