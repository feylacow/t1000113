.class final Lcom/google/android/exoplr2avp/source/ClippingMediaPeriod$ClippingSampleStream;
.super Ljava/lang/Object;
.source "ClippingMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/source/SampleStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/source/ClippingMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ClippingSampleStream"
.end annotation


# instance fields
.field public final childStream:Lcom/google/android/exoplr2avp/source/SampleStream;

.field private sentEos:Z

.field final synthetic this$0:Lcom/google/android/exoplr2avp/source/ClippingMediaPeriod;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/source/ClippingMediaPeriod;Lcom/google/android/exoplr2avp/source/SampleStream;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Lcom/google/android/exoplr2avp/source/ClippingMediaPeriod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    iput-object p2, p0, Lcom/google/android/exoplr2avp/source/ClippingMediaPeriod$ClippingSampleStream;->childStream:Lcom/google/android/exoplr2avp/source/SampleStream;

    return-void
.end method


# virtual methods
.method public clearSentEos()V
    .locals 1

    const/4 v0, 0x0

    .line 305
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/source/ClippingMediaPeriod$ClippingSampleStream;->sentEos:Z

    return-void
.end method

.method public isReady()Z
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Lcom/google/android/exoplr2avp/source/ClippingMediaPeriod;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/source/ClippingMediaPeriod;->isPendingInitialDiscontinuity()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ClippingMediaPeriod$ClippingSampleStream;->childStream:Lcom/google/android/exoplr2avp/source/SampleStream;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/source/SampleStream;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public maybeThrowError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 315
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ClippingMediaPeriod$ClippingSampleStream;->childStream:Lcom/google/android/exoplr2avp/source/SampleStream;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/source/SampleStream;->maybeThrowError()V

    return-void
.end method

.method public readData(Lcom/google/android/exoplr2avp/FormatHolder;Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;I)I
    .locals 10

    .line 321
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Lcom/google/android/exoplr2avp/source/ClippingMediaPeriod;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/source/ClippingMediaPeriod;->isPendingInitialDiscontinuity()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_0

    return v1

    .line 324
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/source/ClippingMediaPeriod$ClippingSampleStream;->sentEos:Z

    const/4 v2, 0x4

    const/4 v3, -0x4

    if-eqz v0, :cond_1

    .line 325
    invoke-virtual {p2, v2}, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->setFlags(I)V

    return v3

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ClippingMediaPeriod$ClippingSampleStream;->childStream:Lcom/google/android/exoplr2avp/source/SampleStream;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplr2avp/source/SampleStream;->readData(Lcom/google/android/exoplr2avp/FormatHolder;Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;I)I

    move-result p3

    const/4 v0, -0x5

    const-wide/high16 v4, -0x8000000000000000L

    if-ne p3, v0, :cond_6

    .line 330
    iget-object p2, p1, Lcom/google/android/exoplr2avp/FormatHolder;->format:Lcom/google/android/exoplr2avp/Format;

    invoke-static {p2}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplr2avp/Format;

    .line 331
    iget p3, p2, Lcom/google/android/exoplr2avp/Format;->encoderDelay:I

    if-nez p3, :cond_2

    iget p3, p2, Lcom/google/android/exoplr2avp/Format;->encoderPadding:I

    if-eqz p3, :cond_5

    .line 333
    :cond_2
    iget-object p3, p0, Lcom/google/android/exoplr2avp/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Lcom/google/android/exoplr2avp/source/ClippingMediaPeriod;

    iget-wide v1, p3, Lcom/google/android/exoplr2avp/source/ClippingMediaPeriod;->startUs:J

    const-wide/16 v6, 0x0

    const/4 p3, 0x0

    cmp-long v3, v1, v6

    if-eqz v3, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    iget v1, p2, Lcom/google/android/exoplr2avp/Format;->encoderDelay:I

    .line 334
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Lcom/google/android/exoplr2avp/source/ClippingMediaPeriod;

    iget-wide v2, v2, Lcom/google/android/exoplr2avp/source/ClippingMediaPeriod;->endUs:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_4
    iget p3, p2, Lcom/google/android/exoplr2avp/Format;->encoderPadding:I

    .line 337
    :goto_1
    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/Format;->buildUpon()Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object p2

    .line 338
    invoke-virtual {p2, v1}, Lcom/google/android/exoplr2avp/Format$Builder;->setEncoderDelay(I)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object p2

    .line 339
    invoke-virtual {p2, p3}, Lcom/google/android/exoplr2avp/Format$Builder;->setEncoderPadding(I)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object p2

    .line 340
    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/Format$Builder;->build()Lcom/google/android/exoplr2avp/Format;

    move-result-object p2

    iput-object p2, p1, Lcom/google/android/exoplr2avp/FormatHolder;->format:Lcom/google/android/exoplr2avp/Format;

    :cond_5
    return v0

    .line 344
    :cond_6
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Lcom/google/android/exoplr2avp/source/ClippingMediaPeriod;

    iget-wide v6, p1, Lcom/google/android/exoplr2avp/source/ClippingMediaPeriod;->endUs:J

    cmp-long p1, v6, v4

    if-eqz p1, :cond_9

    if-ne p3, v3, :cond_7

    iget-wide v6, p2, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->timeUs:J

    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Lcom/google/android/exoplr2avp/source/ClippingMediaPeriod;

    iget-wide v8, p1, Lcom/google/android/exoplr2avp/source/ClippingMediaPeriod;->endUs:J

    cmp-long p1, v6, v8

    if-gez p1, :cond_8

    :cond_7
    if-ne p3, v1, :cond_9

    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Lcom/google/android/exoplr2avp/source/ClippingMediaPeriod;

    .line 347
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/source/ClippingMediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    cmp-long p1, v0, v4

    if-nez p1, :cond_9

    iget-boolean p1, p2, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->waitingForKeys:Z

    if-nez p1, :cond_9

    .line 349
    :cond_8
    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->clear()V

    .line 350
    invoke-virtual {p2, v2}, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->setFlags(I)V

    const/4 p1, 0x1

    .line 351
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/source/ClippingMediaPeriod$ClippingSampleStream;->sentEos:Z

    return v3

    :cond_9
    return p3
.end method

.method public skipData(J)I
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ClippingMediaPeriod$ClippingSampleStream;->this$0:Lcom/google/android/exoplr2avp/source/ClippingMediaPeriod;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/source/ClippingMediaPeriod;->isPendingInitialDiscontinuity()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x3

    return p1

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ClippingMediaPeriod$ClippingSampleStream;->childStream:Lcom/google/android/exoplr2avp/source/SampleStream;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplr2avp/source/SampleStream;->skipData(J)I

    move-result p1

    return p1
.end method
