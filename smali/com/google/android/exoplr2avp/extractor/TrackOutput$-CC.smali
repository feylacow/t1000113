.class public final synthetic Lcom/google/android/exoplr2avp/extractor/TrackOutput$-CC;
.super Ljava/lang/Object;
.source "TrackOutput.java"


# direct methods
.method public static $default$sampleData(Lcom/google/android/exoplr2avp/extractor/TrackOutput;Lcom/google/android/exoplr2avp/upstream/DataReader;IZ)I
    .locals 1
    .param p0, "_this"    # Lcom/google/android/exoplr2avp/extractor/TrackOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 157
    invoke-interface {p0, p1, p2, p3, v0}, Lcom/google/android/exoplr2avp/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplr2avp/upstream/DataReader;IZI)I

    move-result p1

    return p1
.end method

.method public static $default$sampleData(Lcom/google/android/exoplr2avp/extractor/TrackOutput;Lcom/google/android/exoplr2avp/util/ParsableByteArray;I)V
    .locals 1
    .param p0, "_this"    # Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    const/4 v0, 0x0

    .line 165
    invoke-interface {p0, p1, p2, v0}, Lcom/google/android/exoplr2avp/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplr2avp/util/ParsableByteArray;II)V

    return-void
.end method
