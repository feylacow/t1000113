.class public final Lcom/google/android/exoplr2avp/source/hls/BundledHlsMediaChunkExtractor;
.super Ljava/lang/Object;
.source "BundledHlsMediaChunkExtractor.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/source/hls/HlsMediaChunkExtractor;


# static fields
.field private static final POSITION_HOLDER:Lcom/google/android/exoplr2avp/extractor/PositionHolder;


# instance fields
.field final extractor:Lcom/google/android/exoplr2avp/extractor/Extractor;

.field private final multivariantPlaylistFormat:Lcom/google/android/exoplr2avp/Format;

.field private final timestampAdjuster:Lcom/google/android/exoplr2avp/util/TimestampAdjuster;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lcom/google/android/exoplr2avp/extractor/PositionHolder;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/extractor/PositionHolder;-><init>()V

    sput-object v0, Lcom/google/android/exoplr2avp/source/hls/BundledHlsMediaChunkExtractor;->POSITION_HOLDER:Lcom/google/android/exoplr2avp/extractor/PositionHolder;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplr2avp/extractor/Extractor;Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/util/TimestampAdjuster;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/hls/BundledHlsMediaChunkExtractor;->extractor:Lcom/google/android/exoplr2avp/extractor/Extractor;

    .line 56
    iput-object p2, p0, Lcom/google/android/exoplr2avp/source/hls/BundledHlsMediaChunkExtractor;->multivariantPlaylistFormat:Lcom/google/android/exoplr2avp/Format;

    .line 57
    iput-object p3, p0, Lcom/google/android/exoplr2avp/source/hls/BundledHlsMediaChunkExtractor;->timestampAdjuster:Lcom/google/android/exoplr2avp/util/TimestampAdjuster;

    return-void
.end method


# virtual methods
.method public init(Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/hls/BundledHlsMediaChunkExtractor;->extractor:Lcom/google/android/exoplr2avp/extractor/Extractor;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/extractor/Extractor;->init(Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;)V

    return-void
.end method

.method public isPackedAudioExtractor()Z
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/hls/BundledHlsMediaChunkExtractor;->extractor:Lcom/google/android/exoplr2avp/extractor/Extractor;

    instance-of v1, v0, Lcom/google/android/exoplr2avp/extractor/ts/AdtsExtractor;

    if-nez v1, :cond_1

    instance-of v1, v0, Lcom/google/android/exoplr2avp/extractor/ts/Ac3Extractor;

    if-nez v1, :cond_1

    instance-of v1, v0, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Extractor;

    if-nez v1, :cond_1

    instance-of v0, v0, Lcom/google/android/exoplr2avp/extractor/mp3/Mp3Extractor;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isReusable()Z
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/hls/BundledHlsMediaChunkExtractor;->extractor:Lcom/google/android/exoplr2avp/extractor/Extractor;

    instance-of v1, v0, Lcom/google/android/exoplr2avp/extractor/ts/TsExtractor;

    if-nez v1, :cond_1

    instance-of v0, v0, Lcom/google/android/exoplr2avp/extractor/mp4/FragmentedMp4Extractor;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onTruncatedSegmentParsed()V
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/hls/BundledHlsMediaChunkExtractor;->extractor:Lcom/google/android/exoplr2avp/extractor/Extractor;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2, v1, v2}, Lcom/google/android/exoplr2avp/extractor/Extractor;->seek(JJ)V

    return-void
.end method

.method public read(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/hls/BundledHlsMediaChunkExtractor;->extractor:Lcom/google/android/exoplr2avp/extractor/Extractor;

    sget-object v1, Lcom/google/android/exoplr2avp/source/hls/BundledHlsMediaChunkExtractor;->POSITION_HOLDER:Lcom/google/android/exoplr2avp/extractor/PositionHolder;

    invoke-interface {v0, p1, v1}, Lcom/google/android/exoplr2avp/extractor/Extractor;->read(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;Lcom/google/android/exoplr2avp/extractor/PositionHolder;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public recreate()Lcom/google/android/exoplr2avp/source/hls/HlsMediaChunkExtractor;
    .locals 4

    .line 85
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/source/hls/BundledHlsMediaChunkExtractor;->isReusable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 87
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/hls/BundledHlsMediaChunkExtractor;->extractor:Lcom/google/android/exoplr2avp/extractor/Extractor;

    instance-of v1, v0, Lcom/google/android/exoplr2avp/source/hls/WebvttExtractor;

    if-eqz v1, :cond_0

    .line 88
    new-instance v0, Lcom/google/android/exoplr2avp/source/hls/WebvttExtractor;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/hls/BundledHlsMediaChunkExtractor;->multivariantPlaylistFormat:Lcom/google/android/exoplr2avp/Format;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/Format;->language:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/hls/BundledHlsMediaChunkExtractor;->timestampAdjuster:Lcom/google/android/exoplr2avp/util/TimestampAdjuster;

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplr2avp/source/hls/WebvttExtractor;-><init>(Ljava/lang/String;Lcom/google/android/exoplr2avp/util/TimestampAdjuster;)V

    goto :goto_0

    .line 90
    :cond_0
    instance-of v1, v0, Lcom/google/android/exoplr2avp/extractor/ts/AdtsExtractor;

    if-eqz v1, :cond_1

    .line 91
    new-instance v0, Lcom/google/android/exoplr2avp/extractor/ts/AdtsExtractor;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/extractor/ts/AdtsExtractor;-><init>()V

    goto :goto_0

    .line 92
    :cond_1
    instance-of v1, v0, Lcom/google/android/exoplr2avp/extractor/ts/Ac3Extractor;

    if-eqz v1, :cond_2

    .line 93
    new-instance v0, Lcom/google/android/exoplr2avp/extractor/ts/Ac3Extractor;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/extractor/ts/Ac3Extractor;-><init>()V

    goto :goto_0

    .line 94
    :cond_2
    instance-of v1, v0, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Extractor;

    if-eqz v1, :cond_3

    .line 95
    new-instance v0, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Extractor;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/extractor/ts/Ac4Extractor;-><init>()V

    goto :goto_0

    .line 96
    :cond_3
    instance-of v0, v0, Lcom/google/android/exoplr2avp/extractor/mp3/Mp3Extractor;

    if-eqz v0, :cond_4

    .line 97
    new-instance v0, Lcom/google/android/exoplr2avp/extractor/mp3/Mp3Extractor;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/extractor/mp3/Mp3Extractor;-><init>()V

    .line 102
    :goto_0
    new-instance v1, Lcom/google/android/exoplr2avp/source/hls/BundledHlsMediaChunkExtractor;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/hls/BundledHlsMediaChunkExtractor;->multivariantPlaylistFormat:Lcom/google/android/exoplr2avp/Format;

    iget-object v3, p0, Lcom/google/android/exoplr2avp/source/hls/BundledHlsMediaChunkExtractor;->timestampAdjuster:Lcom/google/android/exoplr2avp/util/TimestampAdjuster;

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/exoplr2avp/source/hls/BundledHlsMediaChunkExtractor;-><init>(Lcom/google/android/exoplr2avp/extractor/Extractor;Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/util/TimestampAdjuster;)V

    return-object v1

    .line 99
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected extractor type for recreation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/hls/BundledHlsMediaChunkExtractor;->extractor:Lcom/google/android/exoplr2avp/extractor/Extractor;

    .line 100
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
