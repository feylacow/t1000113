.class Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$MediaDrmHandler;
.super Landroid/os/Handler;
.source "DefaultDrmSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaDrmHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;Landroid/os/Looper;)V
    .locals 0

    .line 838
    iput-object p1, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$MediaDrmHandler;->this$0:Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;

    .line 839
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 844
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    if-nez v0, :cond_0

    return-void

    .line 849
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$MediaDrmHandler;->this$0:Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;

    invoke-static {v1}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->access$400(Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;

    .line 850
    invoke-virtual {v2, v0}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;->hasSessionId([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 851
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, p1}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;->onMediaDrmEvent(I)V

    :cond_2
    return-void
.end method
