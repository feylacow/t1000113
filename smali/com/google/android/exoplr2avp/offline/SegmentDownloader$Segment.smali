.class public Lcom/google/android/exoplr2avp/offline/SegmentDownloader$Segment;
.super Ljava/lang/Object;
.source "SegmentDownloader.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/offline/SegmentDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Segment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/exoplr2avp/offline/SegmentDownloader$Segment;",
        ">;"
    }
.end annotation


# instance fields
.field public final dataSpec:Lcom/google/android/exoplr2avp/upstream/DataSpec;

.field public final startTimeUs:J


# direct methods
.method public constructor <init>(JLcom/google/android/exoplr2avp/upstream/DataSpec;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/offline/SegmentDownloader$Segment;->startTimeUs:J

    .line 66
    iput-object p3, p0, Lcom/google/android/exoplr2avp/offline/SegmentDownloader$Segment;->dataSpec:Lcom/google/android/exoplr2avp/upstream/DataSpec;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/android/exoplr2avp/offline/SegmentDownloader$Segment;)I
    .locals 4

    .line 71
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/offline/SegmentDownloader$Segment;->startTimeUs:J

    iget-wide v2, p1, Lcom/google/android/exoplr2avp/offline/SegmentDownloader$Segment;->startTimeUs:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplr2avp/util/Util;->compareLong(JJ)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 55
    check-cast p1, Lcom/google/android/exoplr2avp/offline/SegmentDownloader$Segment;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/offline/SegmentDownloader$Segment;->compareTo(Lcom/google/android/exoplr2avp/offline/SegmentDownloader$Segment;)I

    move-result p1

    return p1
.end method
