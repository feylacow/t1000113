.class public Lcom/google/android/exoplr2avp/source/MediaPeriodId;
.super Ljava/lang/Object;
.source "MediaPeriodId.java"


# instance fields
.field public final adGroupIndex:I

.field public final adIndexInAdGroup:I

.field public final nextAdGroupIndex:I

.field public final periodUid:Ljava/lang/Object;

.field public final windowSequenceNumber:J


# direct methods
.method protected constructor <init>(Lcom/google/android/exoplr2avp/source/MediaPeriodId;)V
    .locals 2

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iget-object v0, p1, Lcom/google/android/exoplr2avp/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/exoplr2avp/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 128
    iget v0, p1, Lcom/google/android/exoplr2avp/source/MediaPeriodId;->adGroupIndex:I

    iput v0, p0, Lcom/google/android/exoplr2avp/source/MediaPeriodId;->adGroupIndex:I

    .line 129
    iget v0, p1, Lcom/google/android/exoplr2avp/source/MediaPeriodId;->adIndexInAdGroup:I

    iput v0, p0, Lcom/google/android/exoplr2avp/source/MediaPeriodId;->adIndexInAdGroup:I

    .line 130
    iget-wide v0, p1, Lcom/google/android/exoplr2avp/source/MediaPeriodId;->windowSequenceNumber:J

    iput-wide v0, p0, Lcom/google/android/exoplr2avp/source/MediaPeriodId;->windowSequenceNumber:J

    .line 131
    iget p1, p1, Lcom/google/android/exoplr2avp/source/MediaPeriodId;->nextAdGroupIndex:I

    iput p1, p0, Lcom/google/android/exoplr2avp/source/MediaPeriodId;->nextAdGroupIndex:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    const-wide/16 v0, -0x1

    .line 67
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplr2avp/source/MediaPeriodId;-><init>(Ljava/lang/Object;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;IIJ)V
    .locals 7

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    .line 116
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplr2avp/source/MediaPeriodId;-><init>(Ljava/lang/Object;IIJI)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;IIJI)V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 141
    iput p2, p0, Lcom/google/android/exoplr2avp/source/MediaPeriodId;->adGroupIndex:I

    .line 142
    iput p3, p0, Lcom/google/android/exoplr2avp/source/MediaPeriodId;->adIndexInAdGroup:I

    .line 143
    iput-wide p4, p0, Lcom/google/android/exoplr2avp/source/MediaPeriodId;->windowSequenceNumber:J

    .line 144
    iput p6, p0, Lcom/google/android/exoplr2avp/source/MediaPeriodId;->nextAdGroupIndex:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;J)V
    .locals 7

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    .line 78
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplr2avp/source/MediaPeriodId;-><init>(Ljava/lang/Object;IIJI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;JI)V
    .locals 7

    const/4 v2, -0x1

    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move v6, p4

    .line 96
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplr2avp/source/MediaPeriodId;-><init>(Ljava/lang/Object;IIJI)V

    return-void
.end method


# virtual methods
.method public copyWithPeriodUid(Ljava/lang/Object;)Lcom/google/android/exoplr2avp/source/MediaPeriodId;
    .locals 8

    .line 149
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    .line 151
    :cond_0
    new-instance v0, Lcom/google/android/exoplr2avp/source/MediaPeriodId;

    iget v3, p0, Lcom/google/android/exoplr2avp/source/MediaPeriodId;->adGroupIndex:I

    iget v4, p0, Lcom/google/android/exoplr2avp/source/MediaPeriodId;->adIndexInAdGroup:I

    iget-wide v5, p0, Lcom/google/android/exoplr2avp/source/MediaPeriodId;->windowSequenceNumber:J

    iget v7, p0, Lcom/google/android/exoplr2avp/source/MediaPeriodId;->nextAdGroupIndex:I

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplr2avp/source/MediaPeriodId;-><init>(Ljava/lang/Object;IIJI)V

    :goto_0
    return-object v0
.end method

.method public copyWithWindowSequenceNumber(J)Lcom/google/android/exoplr2avp/source/MediaPeriodId;
    .locals 10

    .line 157
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/source/MediaPeriodId;->windowSequenceNumber:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    move-object v0, p0

    goto :goto_0

    .line 159
    :cond_0
    new-instance v0, Lcom/google/android/exoplr2avp/source/MediaPeriodId;

    iget-object v4, p0, Lcom/google/android/exoplr2avp/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget v5, p0, Lcom/google/android/exoplr2avp/source/MediaPeriodId;->adGroupIndex:I

    iget v6, p0, Lcom/google/android/exoplr2avp/source/MediaPeriodId;->adIndexInAdGroup:I

    iget v9, p0, Lcom/google/android/exoplr2avp/source/MediaPeriodId;->nextAdGroupIndex:I

    move-object v3, v0

    move-wide v7, p1

    invoke-direct/range {v3 .. v9}, Lcom/google/android/exoplr2avp/source/MediaPeriodId;-><init>(Ljava/lang/Object;IIJI)V

    :goto_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 173
    :cond_0
    instance-of v1, p1, Lcom/google/android/exoplr2avp/source/MediaPeriodId;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 177
    :cond_1
    check-cast p1, Lcom/google/android/exoplr2avp/source/MediaPeriodId;

    .line 178
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/android/exoplr2avp/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/android/exoplr2avp/source/MediaPeriodId;->adGroupIndex:I

    iget v3, p1, Lcom/google/android/exoplr2avp/source/MediaPeriodId;->adGroupIndex:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/android/exoplr2avp/source/MediaPeriodId;->adIndexInAdGroup:I

    iget v3, p1, Lcom/google/android/exoplr2avp/source/MediaPeriodId;->adIndexInAdGroup:I

    if-ne v1, v3, :cond_2

    iget-wide v3, p0, Lcom/google/android/exoplr2avp/source/MediaPeriodId;->windowSequenceNumber:J

    iget-wide v5, p1, Lcom/google/android/exoplr2avp/source/MediaPeriodId;->windowSequenceNumber:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/exoplr2avp/source/MediaPeriodId;->nextAdGroupIndex:I

    iget p1, p1, Lcom/google/android/exoplr2avp/source/MediaPeriodId;->nextAdGroupIndex:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 188
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 189
    iget v0, p0, Lcom/google/android/exoplr2avp/source/MediaPeriodId;->adGroupIndex:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 190
    iget v0, p0, Lcom/google/android/exoplr2avp/source/MediaPeriodId;->adIndexInAdGroup:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 191
    iget-wide v2, p0, Lcom/google/android/exoplr2avp/source/MediaPeriodId;->windowSequenceNumber:J

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 192
    iget v0, p0, Lcom/google/android/exoplr2avp/source/MediaPeriodId;->nextAdGroupIndex:I

    add-int/2addr v1, v0

    return v1
.end method

.method public isAd()Z
    .locals 2

    .line 165
    iget v0, p0, Lcom/google/android/exoplr2avp/source/MediaPeriodId;->adGroupIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
