.class public final Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentList;
.super Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$MultiSegmentBase;
.source "SegmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SegmentList"
.end annotation


# instance fields
.field final mediaSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;JJJJLjava/util/List;JLjava/util/List;JJ)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;",
            "JJJJ",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentTimelineElement;",
            ">;J",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;",
            ">;JJ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-object/from16 v10, p10

    move-wide/from16 v11, p11

    move-wide/from16 v13, p14

    move-wide/from16 v15, p16

    .line 334
    invoke-direct/range {v0 .. v16}, Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$MultiSegmentBase;-><init>(Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;JJJJLjava/util/List;JJJ)V

    move-object/from16 v1, p13

    .line 344
    iput-object v1, v0, Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentList;->mediaSegments:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getSegmentCount(J)J
    .locals 0

    .line 354
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentList;->mediaSegments:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method

.method public getSegmentUrl(Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;J)Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;
    .locals 2

    .line 349
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentList;->mediaSegments:Ljava/util/List;

    iget-wide v0, p0, Lcom/google/android/exoplr2avp/source/dash/manifest/SegmentBase$SegmentList;->startNumber:J

    sub-long/2addr p2, v0

    long-to-int p3, p2

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;

    return-object p1
.end method

.method public isExplicit()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
