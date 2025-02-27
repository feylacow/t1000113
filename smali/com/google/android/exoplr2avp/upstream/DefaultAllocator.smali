.class public final Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;
.super Ljava/lang/Object;
.source "DefaultAllocator.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/upstream/Allocator;


# static fields
.field private static final AVAILABLE_EXTRA_CAPACITY:I = 0x64


# instance fields
.field private allocatedCount:I

.field private availableAllocations:[Lcom/google/android/exoplr2avp/upstream/Allocation;

.field private availableCount:I

.field private final individualAllocationSize:I

.field private final initialAllocationBlock:[B

.field private targetBufferSize:I

.field private final trimOnReset:Z


# direct methods
.method public constructor <init>(ZI)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;-><init>(ZII)V

    return-void
.end method

.method public constructor <init>(ZII)V
    .locals 4

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 63
    :goto_0
    invoke-static {v2}, Lcom/google/android/exoplr2avp/util/Assertions;->checkArgument(Z)V

    if-ltz p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 64
    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkArgument(Z)V

    .line 65
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;->trimOnReset:Z

    .line 66
    iput p2, p0, Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;->individualAllocationSize:I

    .line 67
    iput p3, p0, Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;->availableCount:I

    add-int/lit8 p1, p3, 0x64

    .line 68
    new-array p1, p1, [Lcom/google/android/exoplr2avp/upstream/Allocation;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplr2avp/upstream/Allocation;

    if-lez p3, :cond_2

    mul-int p1, p3, p2

    .line 70
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;->initialAllocationBlock:[B

    :goto_2
    if-ge v1, p3, :cond_3

    mul-int p1, v1, p2

    .line 73
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplr2avp/upstream/Allocation;

    new-instance v2, Lcom/google/android/exoplr2avp/upstream/Allocation;

    iget-object v3, p0, Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;->initialAllocationBlock:[B

    invoke-direct {v2, v3, p1}, Lcom/google/android/exoplr2avp/upstream/Allocation;-><init>([BI)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    .line 76
    iput-object p1, p0, Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;->initialAllocationBlock:[B

    :cond_3
    return-void
.end method


# virtual methods
.method public declared-synchronized allocate()Lcom/google/android/exoplr2avp/upstream/Allocation;
    .locals 4

    monitor-enter p0

    .line 96
    :try_start_0
    iget v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;->allocatedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;->allocatedCount:I

    .line 98
    iget v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;->availableCount:I

    if-lez v0, :cond_0

    .line 99
    iget-object v1, p0, Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplr2avp/upstream/Allocation;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;->availableCount:I

    aget-object v0, v1, v0

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/upstream/Allocation;

    .line 100
    iget-object v1, p0, Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplr2avp/upstream/Allocation;

    iget v2, p0, Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;->availableCount:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    goto :goto_0

    .line 102
    :cond_0
    new-instance v0, Lcom/google/android/exoplr2avp/upstream/Allocation;

    iget v1, p0, Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;->individualAllocationSize:I

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplr2avp/upstream/Allocation;-><init>([BI)V

    .line 103
    iget v1, p0, Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;->allocatedCount:I

    iget-object v2, p0, Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplr2avp/upstream/Allocation;

    array-length v3, v2

    if-le v1, v3, :cond_1

    .line 107
    array-length v1, v2

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/exoplr2avp/upstream/Allocation;

    iput-object v1, p0, Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplr2avp/upstream/Allocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getIndividualAllocationLength()I
    .locals 1

    .line 181
    iget v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;->individualAllocationSize:I

    return v0
.end method

.method public declared-synchronized getTotalBytesAllocated()I
    .locals 2

    monitor-enter p0

    .line 176
    :try_start_0
    iget v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;->allocatedCount:I

    iget v1, p0, Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;->individualAllocationSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int v0, v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release(Lcom/google/android/exoplr2avp/upstream/Allocation;)V
    .locals 3

    monitor-enter p0

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplr2avp/upstream/Allocation;

    iget v1, p0, Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;->availableCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;->availableCount:I

    aput-object p1, v0, v1

    .line 116
    iget p1, p0, Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;->allocatedCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;->allocatedCount:I

    .line 118
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized release(Lcom/google/android/exoplr2avp/upstream/Allocator$AllocationNode;)V
    .locals 3

    monitor-enter p0

    :goto_0
    if-eqz p1, :cond_0

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplr2avp/upstream/Allocation;

    iget v1, p0, Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;->availableCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;->availableCount:I

    invoke-interface {p1}, Lcom/google/android/exoplr2avp/upstream/Allocator$AllocationNode;->getAllocation()Lcom/google/android/exoplr2avp/upstream/Allocation;

    move-result-object v2

    aput-object v2, v0, v1

    .line 125
    iget v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;->allocatedCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;->allocatedCount:I

    .line 126
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/upstream/Allocator$AllocationNode;->next()Lcom/google/android/exoplr2avp/upstream/Allocator$AllocationNode;

    move-result-object p1

    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    .line 81
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;->trimOnReset:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 82
    invoke-virtual {p0, v0}, Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;->setTargetBufferSize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTargetBufferSize(I)V
    .locals 1

    monitor-enter p0

    .line 87
    :try_start_0
    iget v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;->targetBufferSize:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 88
    :goto_0
    iput p1, p0, Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;->targetBufferSize:I

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;->trim()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized trim()V
    .locals 7

    monitor-enter p0

    .line 134
    :try_start_0
    iget v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;->targetBufferSize:I

    iget v1, p0, Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;->individualAllocationSize:I

    invoke-static {v0, v1}, Lcom/google/android/exoplr2avp/util/Util;->ceilDivide(II)I

    move-result v0

    .line 135
    iget v1, p0, Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;->allocatedCount:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 136
    iget v2, p0, Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;->availableCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v2, :cond_0

    .line 138
    monitor-exit p0

    return-void

    .line 141
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;->initialAllocationBlock:[B

    if-eqz v3, :cond_4

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-gt v1, v2, :cond_3

    .line 148
    iget-object v3, p0, Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplr2avp/upstream/Allocation;

    aget-object v3, v3, v1

    invoke-static {v3}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplr2avp/upstream/Allocation;

    .line 149
    iget-object v4, v3, Lcom/google/android/exoplr2avp/upstream/Allocation;->data:[B

    iget-object v5, p0, Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;->initialAllocationBlock:[B

    if-ne v4, v5, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    :cond_1
    iget-object v4, p0, Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplr2avp/upstream/Allocation;

    aget-object v4, v4, v2

    invoke-static {v4}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplr2avp/upstream/Allocation;

    .line 153
    iget-object v5, v4, Lcom/google/android/exoplr2avp/upstream/Allocation;->data:[B

    iget-object v6, p0, Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;->initialAllocationBlock:[B

    if-eq v5, v6, :cond_2

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 156
    :cond_2
    iget-object v5, p0, Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplr2avp/upstream/Allocation;

    add-int/lit8 v6, v1, 0x1

    aput-object v4, v5, v1

    add-int/lit8 v1, v2, -0x1

    .line 157
    aput-object v3, v5, v2

    move v2, v1

    move v1, v6

    goto :goto_0

    .line 162
    :cond_3
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 163
    iget v1, p0, Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;->availableCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt v0, v1, :cond_4

    .line 165
    monitor-exit p0

    return-void

    .line 170
    :cond_4
    :try_start_2
    iget-object v1, p0, Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplr2avp/upstream/Allocation;

    iget v2, p0, Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;->availableCount:I

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 171
    iput v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultAllocator;->availableCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 172
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
