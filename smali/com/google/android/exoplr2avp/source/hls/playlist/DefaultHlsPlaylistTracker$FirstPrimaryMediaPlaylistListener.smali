.class Lcom/google/android/exoplr2avp/source/hls/playlist/DefaultHlsPlaylistTracker$FirstPrimaryMediaPlaylistListener;
.super Ljava/lang/Object;
.source "DefaultHlsPlaylistTracker.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/source/hls/playlist/HlsPlaylistTracker$PlaylistEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/source/hls/playlist/DefaultHlsPlaylistTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FirstPrimaryMediaPlaylistListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplr2avp/source/hls/playlist/DefaultHlsPlaylistTracker;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplr2avp/source/hls/playlist/DefaultHlsPlaylistTracker;)V
    .locals 0

    .line 820
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/hls/playlist/DefaultHlsPlaylistTracker$FirstPrimaryMediaPlaylistListener;->this$0:Lcom/google/android/exoplr2avp/source/hls/playlist/DefaultHlsPlaylistTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplr2avp/source/hls/playlist/DefaultHlsPlaylistTracker;Lcom/google/android/exoplr2avp/source/hls/playlist/DefaultHlsPlaylistTracker$1;)V
    .locals 0

    .line 820
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/source/hls/playlist/DefaultHlsPlaylistTracker$FirstPrimaryMediaPlaylistListener;-><init>(Lcom/google/android/exoplr2avp/source/hls/playlist/DefaultHlsPlaylistTracker;)V

    return-void
.end method


# virtual methods
.method public onPlaylistChanged()V
    .locals 1

    .line 825
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/hls/playlist/DefaultHlsPlaylistTracker$FirstPrimaryMediaPlaylistListener;->this$0:Lcom/google/android/exoplr2avp/source/hls/playlist/DefaultHlsPlaylistTracker;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/source/hls/playlist/DefaultHlsPlaylistTracker;->access$1900(Lcom/google/android/exoplr2avp/source/hls/playlist/DefaultHlsPlaylistTracker;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onPlaylistError(Landroid/net/Uri;Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;Z)Z
    .locals 8

    .line 830
    iget-object p3, p0, Lcom/google/android/exoplr2avp/source/hls/playlist/DefaultHlsPlaylistTracker$FirstPrimaryMediaPlaylistListener;->this$0:Lcom/google/android/exoplr2avp/source/hls/playlist/DefaultHlsPlaylistTracker;

    invoke-static {p3}, Lcom/google/android/exoplr2avp/source/hls/playlist/DefaultHlsPlaylistTracker;->access$2000(Lcom/google/android/exoplr2avp/source/hls/playlist/DefaultHlsPlaylistTracker;)Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;

    move-result-object p3

    const/4 v0, 0x0

    if-nez p3, :cond_2

    .line 831
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 833
    iget-object p3, p0, Lcom/google/android/exoplr2avp/source/hls/playlist/DefaultHlsPlaylistTracker$FirstPrimaryMediaPlaylistListener;->this$0:Lcom/google/android/exoplr2avp/source/hls/playlist/DefaultHlsPlaylistTracker;

    invoke-static {p3}, Lcom/google/android/exoplr2avp/source/hls/playlist/DefaultHlsPlaylistTracker;->access$1200(Lcom/google/android/exoplr2avp/source/hls/playlist/DefaultHlsPlaylistTracker;)Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMultivariantPlaylist;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/exoplr2avp/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMultivariantPlaylist;

    iget-object p3, p3, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMultivariantPlaylist;->variants:Ljava/util/List;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 834
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 836
    iget-object v5, p0, Lcom/google/android/exoplr2avp/source/hls/playlist/DefaultHlsPlaylistTracker$FirstPrimaryMediaPlaylistListener;->this$0:Lcom/google/android/exoplr2avp/source/hls/playlist/DefaultHlsPlaylistTracker;

    invoke-static {v5}, Lcom/google/android/exoplr2avp/source/hls/playlist/DefaultHlsPlaylistTracker;->access$2100(Lcom/google/android/exoplr2avp/source/hls/playlist/DefaultHlsPlaylistTracker;)Ljava/util/HashMap;

    move-result-object v5

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMultivariantPlaylist$Variant;

    iget-object v6, v6, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMultivariantPlaylist$Variant;->url:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplr2avp/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;

    if-eqz v5, :cond_0

    .line 837
    invoke-static {v5}, Lcom/google/android/exoplr2avp/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->access$300(Lcom/google/android/exoplr2avp/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;)J

    move-result-wide v5

    cmp-long v7, v1, v5

    if-gez v7, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 841
    :cond_1
    new-instance p3, Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy$FallbackOptions;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/hls/playlist/DefaultHlsPlaylistTracker$FirstPrimaryMediaPlaylistListener;->this$0:Lcom/google/android/exoplr2avp/source/hls/playlist/DefaultHlsPlaylistTracker;

    .line 845
    invoke-static {v1}, Lcom/google/android/exoplr2avp/source/hls/playlist/DefaultHlsPlaylistTracker;->access$1200(Lcom/google/android/exoplr2avp/source/hls/playlist/DefaultHlsPlaylistTracker;)Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMultivariantPlaylist;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMultivariantPlaylist;->variants:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p3, v2, v0, v1, v4}, Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy$FallbackOptions;-><init>(IIII)V

    .line 848
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/hls/playlist/DefaultHlsPlaylistTracker$FirstPrimaryMediaPlaylistListener;->this$0:Lcom/google/android/exoplr2avp/source/hls/playlist/DefaultHlsPlaylistTracker;

    .line 849
    invoke-static {v1}, Lcom/google/android/exoplr2avp/source/hls/playlist/DefaultHlsPlaylistTracker;->access$900(Lcom/google/android/exoplr2avp/source/hls/playlist/DefaultHlsPlaylistTracker;)Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

    move-result-object v1

    invoke-interface {v1, p3, p2}, Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;->getFallbackSelectionFor(Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy$FallbackOptions;Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;)Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy$FallbackSelection;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 850
    iget p3, p2, Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy$FallbackSelection;->type:I

    const/4 v1, 0x2

    if-ne p3, v1, :cond_2

    .line 852
    iget-object p3, p0, Lcom/google/android/exoplr2avp/source/hls/playlist/DefaultHlsPlaylistTracker$FirstPrimaryMediaPlaylistListener;->this$0:Lcom/google/android/exoplr2avp/source/hls/playlist/DefaultHlsPlaylistTracker;

    invoke-static {p3}, Lcom/google/android/exoplr2avp/source/hls/playlist/DefaultHlsPlaylistTracker;->access$2100(Lcom/google/android/exoplr2avp/source/hls/playlist/DefaultHlsPlaylistTracker;)Ljava/util/HashMap;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;

    if-eqz p1, :cond_2

    .line 854
    iget-wide p2, p2, Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy$FallbackSelection;->exclusionDurationMs:J

    invoke-static {p1, p2, p3}, Lcom/google/android/exoplr2avp/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;->access$000(Lcom/google/android/exoplr2avp/source/hls/playlist/DefaultHlsPlaylistTracker$MediaPlaylistBundle;J)Z

    :cond_2
    return v0
.end method
