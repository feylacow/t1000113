.class final Lcom/google/android/exoplr2avp/source/SampleDataQueue$AllocationNode;
.super Ljava/lang/Object;
.source "SampleDataQueue.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/upstream/Allocator$AllocationNode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/source/SampleDataQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AllocationNode"
.end annotation


# instance fields
.field public allocation:Lcom/google/android/exoplr2avp/upstream/Allocation;

.field public endPosition:J

.field public next:Lcom/google/android/exoplr2avp/source/SampleDataQueue$AllocationNode;

.field public startPosition:J


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    .line 483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 484
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/source/SampleDataQueue$AllocationNode;->reset(JI)V

    return-void
.end method


# virtual methods
.method public clear()Lcom/google/android/exoplr2avp/source/SampleDataQueue$AllocationNode;
    .locals 2

    const/4 v0, 0x0

    .line 527
    iput-object v0, p0, Lcom/google/android/exoplr2avp/source/SampleDataQueue$AllocationNode;->allocation:Lcom/google/android/exoplr2avp/upstream/Allocation;

    .line 528
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/SampleDataQueue$AllocationNode;->next:Lcom/google/android/exoplr2avp/source/SampleDataQueue$AllocationNode;

    .line 529
    iput-object v0, p0, Lcom/google/android/exoplr2avp/source/SampleDataQueue$AllocationNode;->next:Lcom/google/android/exoplr2avp/source/SampleDataQueue$AllocationNode;

    return-object v1
.end method

.method public getAllocation()Lcom/google/android/exoplr2avp/upstream/Allocation;
    .locals 1

    .line 537
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/SampleDataQueue$AllocationNode;->allocation:Lcom/google/android/exoplr2avp/upstream/Allocation;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/upstream/Allocation;

    return-object v0
.end method

.method public initialize(Lcom/google/android/exoplr2avp/upstream/Allocation;Lcom/google/android/exoplr2avp/source/SampleDataQueue$AllocationNode;)V
    .locals 0

    .line 506
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/SampleDataQueue$AllocationNode;->allocation:Lcom/google/android/exoplr2avp/upstream/Allocation;

    .line 507
    iput-object p2, p0, Lcom/google/android/exoplr2avp/source/SampleDataQueue$AllocationNode;->next:Lcom/google/android/exoplr2avp/source/SampleDataQueue$AllocationNode;

    return-void
.end method

.method public next()Lcom/google/android/exoplr2avp/upstream/Allocator$AllocationNode;
    .locals 2

    .line 543
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/SampleDataQueue$AllocationNode;->next:Lcom/google/android/exoplr2avp/source/SampleDataQueue$AllocationNode;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/google/android/exoplr2avp/source/SampleDataQueue$AllocationNode;->allocation:Lcom/google/android/exoplr2avp/upstream/Allocation;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public reset(JI)V
    .locals 2

    .line 494
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/SampleDataQueue$AllocationNode;->allocation:Lcom/google/android/exoplr2avp/upstream/Allocation;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 495
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/source/SampleDataQueue$AllocationNode;->startPosition:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    .line 496
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/source/SampleDataQueue$AllocationNode;->endPosition:J

    return-void
.end method

.method public translateOffset(J)I
    .locals 2

    .line 518
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/source/SampleDataQueue$AllocationNode;->startPosition:J

    sub-long/2addr p1, v0

    long-to-int p2, p1

    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/SampleDataQueue$AllocationNode;->allocation:Lcom/google/android/exoplr2avp/upstream/Allocation;

    iget p1, p1, Lcom/google/android/exoplr2avp/upstream/Allocation;->offset:I

    add-int/2addr p2, p1

    return p2
.end method
