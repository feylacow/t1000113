.class Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;
.super Ljava/lang/Object;
.source "DefaultDrmSessionManager.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/drm/DefaultDrmSession$ReferenceCountListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReferenceCountListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;)V
    .locals 0

    .line 916
    iput-object p1, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$1;)V
    .locals 0

    .line 916
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;-><init>(Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;)V

    return-void
.end method

.method static synthetic lambda$onReferenceCountDecremented$0(Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;)V
    .locals 1

    const/4 v0, 0x0

    .line 936
    invoke-virtual {p0, v0}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;->release(Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;)V

    return-void
.end method


# virtual methods
.method public onReferenceCountDecremented(Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;I)V
    .locals 5

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    .line 929
    iget-object v2, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;

    invoke-static {v2}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->access$800(Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;)I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;

    invoke-static {v2}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->access$500(Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    .line 933
    iget-object p2, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;

    invoke-static {p2}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->access$600(Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 934
    iget-object p2, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;

    invoke-static {p2}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->access$700(Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    new-instance v0, Lcom/google/android/exoplr2avp/drm/-$$Lambda$DefaultDrmSessionManager$ReferenceCountListenerImpl$oJYflanzcA4Q-AiaKL8m-zEpfHw;

    invoke-direct {v0, p1}, Lcom/google/android/exoplr2avp/drm/-$$Lambda$DefaultDrmSessionManager$ReferenceCountListenerImpl$oJYflanzcA4Q-AiaKL8m-zEpfHw;-><init>(Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;)V

    .line 938
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;

    invoke-static {v3}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->access$500(Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;)J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 935
    invoke-virtual {p2, v0, p1, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto :goto_0

    :cond_0
    if-nez p2, :cond_3

    .line 941
    iget-object p2, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;

    invoke-static {p2}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->access$400(Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 942
    iget-object p2, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;

    invoke-static {p2}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->access$900(Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;)Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;

    move-result-object p2

    const/4 v2, 0x0

    if-ne p2, p1, :cond_1

    .line 943
    iget-object p2, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;

    invoke-static {p2, v2}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->access$902(Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;)Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;

    .line 945
    :cond_1
    iget-object p2, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;

    invoke-static {p2}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->access$1000(Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;)Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;

    move-result-object p2

    if-ne p2, p1, :cond_2

    .line 946
    iget-object p2, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;

    invoke-static {p2, v2}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->access$1002(Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;)Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;

    .line 948
    :cond_2
    iget-object p2, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;

    invoke-static {p2}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->access$1100(Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;)Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$ProvisioningManagerImpl;->onSessionFullyReleased(Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;)V

    .line 949
    iget-object p2, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;

    invoke-static {p2}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->access$500(Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;)J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-eqz p2, :cond_3

    .line 950
    iget-object p2, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;

    invoke-static {p2}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->access$700(Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 951
    iget-object p2, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;

    invoke-static {p2}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->access$600(Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 954
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->access$1200(Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;)V

    return-void
.end method

.method public onReferenceCountIncremented(Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;I)V
    .locals 4

    .line 920
    iget-object p2, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;

    invoke-static {p2}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->access$500(Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;)J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v0, v2

    if-eqz p2, :cond_0

    .line 922
    iget-object p2, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;

    invoke-static {p2}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->access$600(Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 923
    iget-object p2, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->this$0:Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;

    invoke-static {p2}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;->access$700(Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;)Landroid/os/Handler;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
