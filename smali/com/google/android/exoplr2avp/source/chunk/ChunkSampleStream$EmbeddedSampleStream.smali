.class public final Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream$EmbeddedSampleStream;
.super Ljava/lang/Object;
.source "ChunkSampleStream.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/source/SampleStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "EmbeddedSampleStream"
.end annotation


# instance fields
.field private final index:I

.field private notifiedDownstreamFormat:Z

.field public final parent:Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final sampleQueue:Lcom/google/android/exoplr2avp/source/SampleQueue;

.field final synthetic this$0:Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream;Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream;Lcom/google/android/exoplr2avp/source/SampleQueue;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream<",
            "TT;>;",
            "Lcom/google/android/exoplr2avp/source/SampleQueue;",
            "I)V"
        }
    .end annotation

    .line 816
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 817
    iput-object p2, p0, Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->parent:Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream;

    .line 818
    iput-object p3, p0, Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->sampleQueue:Lcom/google/android/exoplr2avp/source/SampleQueue;

    .line 819
    iput p4, p0, Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->index:I

    return-void
.end method

.method private maybeNotifyDownstreamFormat()V
    .locals 8

    .line 876
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->notifiedDownstreamFormat:Z

    if-nez v0, :cond_0

    .line 877
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream;->access$500(Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream;)Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream;

    .line 878
    invoke-static {v0}, Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream;->access$200(Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream;)[I

    move-result-object v0

    iget v2, p0, Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->index:I

    aget v2, v0, v2

    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream;

    .line 879
    invoke-static {v0}, Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream;->access$300(Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream;)[Lcom/google/android/exoplr2avp/Format;

    move-result-object v0

    iget v3, p0, Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->index:I

    aget-object v3, v0, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream;

    .line 882
    invoke-static {v0}, Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream;->access$400(Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream;)J

    move-result-wide v6

    .line 877
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->downstreamFormatChanged(ILcom/google/android/exoplr2avp/Format;ILjava/lang/Object;J)V

    const/4 v0, 0x1

    .line 883
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->notifiedDownstreamFormat:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public isReady()Z
    .locals 2

    .line 824
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->sampleQueue:Lcom/google/android/exoplr2avp/source/SampleQueue;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream;

    iget-boolean v1, v1, Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream;->loadingFinished:Z

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/source/SampleQueue;->isReady(Z)Z

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
    .locals 0

    return-void
.end method

.method public readData(Lcom/google/android/exoplr2avp/FormatHolder;Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;I)I
    .locals 3

    .line 856
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_0

    return v1

    .line 859
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream;->access$000(Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream;)Lcom/google/android/exoplr2avp/source/chunk/BaseMediaChunk;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream;

    .line 860
    invoke-static {v0}, Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream;->access$000(Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream;)Lcom/google/android/exoplr2avp/source/chunk/BaseMediaChunk;

    move-result-object v0

    iget v2, p0, Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->index:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/exoplr2avp/source/chunk/BaseMediaChunk;->getFirstSampleIndex(I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->sampleQueue:Lcom/google/android/exoplr2avp/source/SampleQueue;

    .line 861
    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/source/SampleQueue;->getReadIndex()I

    move-result v2

    if-gt v0, v2, :cond_1

    return v1

    .line 866
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->maybeNotifyDownstreamFormat()V

    .line 867
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->sampleQueue:Lcom/google/android/exoplr2avp/source/SampleQueue;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream;

    iget-boolean v1, v1, Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream;->loadingFinished:Z

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/exoplr2avp/source/SampleQueue;->read(Lcom/google/android/exoplr2avp/FormatHolder;Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;IZ)I

    move-result p1

    return p1
.end method

.method public release()V
    .locals 3

    .line 871
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream;->access$100(Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream;)[Z

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->index:I

    aget-boolean v0, v0, v1

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 872
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream;->access$100(Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream;)[Z

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->index:I

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    return-void
.end method

.method public skipData(J)I
    .locals 2

    .line 829
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 832
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->sampleQueue:Lcom/google/android/exoplr2avp/source/SampleQueue;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream;

    iget-boolean v1, v1, Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream;->loadingFinished:Z

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/exoplr2avp/source/SampleQueue;->getSkipCount(JZ)I

    move-result p1

    .line 833
    iget-object p2, p0, Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream;

    invoke-static {p2}, Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream;->access$000(Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream;)Lcom/google/android/exoplr2avp/source/chunk/BaseMediaChunk;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 836
    iget-object p2, p0, Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->this$0:Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream;

    .line 837
    invoke-static {p2}, Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream;->access$000(Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream;)Lcom/google/android/exoplr2avp/source/chunk/BaseMediaChunk;

    move-result-object p2

    iget v0, p0, Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->index:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Lcom/google/android/exoplr2avp/source/chunk/BaseMediaChunk;->getFirstSampleIndex(I)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->sampleQueue:Lcom/google/android/exoplr2avp/source/SampleQueue;

    .line 838
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/source/SampleQueue;->getReadIndex()I

    move-result v0

    sub-int/2addr p2, v0

    .line 839
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 841
    :cond_1
    iget-object p2, p0, Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->sampleQueue:Lcom/google/android/exoplr2avp/source/SampleQueue;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplr2avp/source/SampleQueue;->skip(I)V

    if-lez p1, :cond_2

    .line 843
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream$EmbeddedSampleStream;->maybeNotifyDownstreamFormat()V

    :cond_2
    return p1
.end method
