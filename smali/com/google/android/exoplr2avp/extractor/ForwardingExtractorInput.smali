.class public Lcom/google/android/exoplr2avp/extractor/ForwardingExtractorInput;
.super Ljava/lang/Object;
.source "ForwardingExtractorInput.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/extractor/ExtractorInput;


# instance fields
.field private final input:Lcom/google/android/exoplr2avp/extractor/ExtractorInput;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/google/android/exoplr2avp/extractor/ForwardingExtractorInput;->input:Lcom/google/android/exoplr2avp/extractor/ExtractorInput;

    return-void
.end method


# virtual methods
.method public advancePeekPosition(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/ForwardingExtractorInput;->input:Lcom/google/android/exoplr2avp/extractor/ExtractorInput;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->advancePeekPosition(I)V

    return-void
.end method

.method public advancePeekPosition(IZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/ForwardingExtractorInput;->input:Lcom/google/android/exoplr2avp/extractor/ExtractorInput;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->advancePeekPosition(IZ)Z

    move-result p1

    return p1
.end method

.method public getLength()J
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/ForwardingExtractorInput;->input:Lcom/google/android/exoplr2avp/extractor/ExtractorInput;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPeekPosition()J
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/ForwardingExtractorInput;->input:Lcom/google/android/exoplr2avp/extractor/ExtractorInput;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPosition()J
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/ForwardingExtractorInput;->input:Lcom/google/android/exoplr2avp/extractor/ExtractorInput;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public peek([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/ForwardingExtractorInput;->input:Lcom/google/android/exoplr2avp/extractor/ExtractorInput;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->peek([BII)I

    move-result p1

    return p1
.end method

.method public peekFully([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/ForwardingExtractorInput;->input:Lcom/google/android/exoplr2avp/extractor/ExtractorInput;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->peekFully([BII)V

    return-void
.end method

.method public peekFully([BIIZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/ForwardingExtractorInput;->input:Lcom/google/android/exoplr2avp/extractor/ExtractorInput;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/ForwardingExtractorInput;->input:Lcom/google/android/exoplr2avp/extractor/ExtractorInput;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->read([BII)I

    move-result p1

    return p1
.end method

.method public readFully([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/ForwardingExtractorInput;->input:Lcom/google/android/exoplr2avp/extractor/ExtractorInput;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->readFully([BII)V

    return-void
.end method

.method public readFully([BIIZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/ForwardingExtractorInput;->input:Lcom/google/android/exoplr2avp/extractor/ExtractorInput;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result p1

    return p1
.end method

.method public resetPeekPosition()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/ForwardingExtractorInput;->input:Lcom/google/android/exoplr2avp/extractor/ExtractorInput;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->resetPeekPosition()V

    return-void
.end method

.method public setRetryPosition(JLjava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(JTE;)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/ForwardingExtractorInput;->input:Lcom/google/android/exoplr2avp/extractor/ExtractorInput;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->setRetryPosition(JLjava/lang/Throwable;)V

    return-void
.end method

.method public skip(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/ForwardingExtractorInput;->input:Lcom/google/android/exoplr2avp/extractor/ExtractorInput;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->skip(I)I

    move-result p1

    return p1
.end method

.method public skipFully(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/ForwardingExtractorInput;->input:Lcom/google/android/exoplr2avp/extractor/ExtractorInput;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->skipFully(I)V

    return-void
.end method

.method public skipFully(IZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/ForwardingExtractorInput;->input:Lcom/google/android/exoplr2avp/extractor/ExtractorInput;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->skipFully(IZ)Z

    move-result p1

    return p1
.end method
