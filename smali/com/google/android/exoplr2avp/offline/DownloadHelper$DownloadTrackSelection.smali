.class final Lcom/google/android/exoplr2avp/offline/DownloadHelper$DownloadTrackSelection;
.super Lcom/google/android/exoplr2avp/trackselection/BaseTrackSelection;
.source "DownloadHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/offline/DownloadHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DownloadTrackSelection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/offline/DownloadHelper$DownloadTrackSelection$Factory;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/source/TrackGroup;[I)V
    .locals 0

    .line 1161
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplr2avp/trackselection/BaseTrackSelection;-><init>(Lcom/google/android/exoplr2avp/source/TrackGroup;[I)V

    return-void
.end method


# virtual methods
.method public getSelectedIndex()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSelectionData()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectionReason()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public updateSelectedTrack(JJJLjava/util/List;[Lcom/google/android/exoplr2avp/source/chunk/MediaChunkIterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/exoplr2avp/source/chunk/MediaChunk;",
            ">;[",
            "Lcom/google/android/exoplr2avp/source/chunk/MediaChunkIterator;",
            ")V"
        }
    .end annotation

    return-void
.end method
