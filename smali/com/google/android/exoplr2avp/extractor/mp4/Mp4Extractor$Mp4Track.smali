.class final Lcom/google/android/exoplr2avp/extractor/mp4/Mp4Extractor$Mp4Track;
.super Ljava/lang/Object;
.source "Mp4Extractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/extractor/mp4/Mp4Extractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Mp4Track"
.end annotation


# instance fields
.field public sampleIndex:I

.field public final sampleTable:Lcom/google/android/exoplr2avp/extractor/mp4/TrackSampleTable;

.field public final track:Lcom/google/android/exoplr2avp/extractor/mp4/Track;

.field public final trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

.field public final trueHdSampleRechunker:Lcom/google/android/exoplr2avp/extractor/TrueHdSampleRechunker;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/extractor/mp4/Track;Lcom/google/android/exoplr2avp/extractor/mp4/TrackSampleTable;Lcom/google/android/exoplr2avp/extractor/TrackOutput;)V
    .locals 0

    .line 951
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 952
    iput-object p1, p0, Lcom/google/android/exoplr2avp/extractor/mp4/Mp4Extractor$Mp4Track;->track:Lcom/google/android/exoplr2avp/extractor/mp4/Track;

    .line 953
    iput-object p2, p0, Lcom/google/android/exoplr2avp/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Lcom/google/android/exoplr2avp/extractor/mp4/TrackSampleTable;

    .line 954
    iput-object p3, p0, Lcom/google/android/exoplr2avp/extractor/mp4/Mp4Extractor$Mp4Track;->trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    .line 956
    iget-object p1, p1, Lcom/google/android/exoplr2avp/extractor/mp4/Track;->format:Lcom/google/android/exoplr2avp/Format;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/Format;->sampleMimeType:Ljava/lang/String;

    const-string p2, "audio/true-hd"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 957
    new-instance p1, Lcom/google/android/exoplr2avp/extractor/TrueHdSampleRechunker;

    invoke-direct {p1}, Lcom/google/android/exoplr2avp/extractor/TrueHdSampleRechunker;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 958
    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplr2avp/extractor/mp4/Mp4Extractor$Mp4Track;->trueHdSampleRechunker:Lcom/google/android/exoplr2avp/extractor/TrueHdSampleRechunker;

    return-void
.end method
