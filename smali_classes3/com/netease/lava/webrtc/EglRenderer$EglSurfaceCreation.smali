.class Lcom/netease/lava/webrtc/EglRenderer$EglSurfaceCreation;
.super Ljava/lang/Object;
.source "EglRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/webrtc/EglRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EglSurfaceCreation"
.end annotation


# instance fields
.field private surface:Ljava/lang/Object;

.field final synthetic this$0:Lcom/netease/lava/webrtc/EglRenderer;


# direct methods
.method private constructor <init>(Lcom/netease/lava/webrtc/EglRenderer;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/netease/lava/webrtc/EglRenderer$EglSurfaceCreation;->this$0:Lcom/netease/lava/webrtc/EglRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/lava/webrtc/EglRenderer;Lcom/netease/lava/webrtc/EglRenderer$1;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/netease/lava/webrtc/EglRenderer$EglSurfaceCreation;-><init>(Lcom/netease/lava/webrtc/EglRenderer;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 3

    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/netease/lava/webrtc/EglRenderer$EglSurfaceCreation;->this$0:Lcom/netease/lava/webrtc/EglRenderer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EglSurfaceCreation run: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/lava/webrtc/EglRenderer$EglSurfaceCreation;->surface:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/EglRenderer;->access$000(Lcom/netease/lava/webrtc/EglRenderer;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/netease/lava/webrtc/EglRenderer$EglSurfaceCreation;->surface:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/lava/webrtc/EglRenderer$EglSurfaceCreation;->this$0:Lcom/netease/lava/webrtc/EglRenderer;

    invoke-static {v0}, Lcom/netease/lava/webrtc/EglRenderer;->access$100(Lcom/netease/lava/webrtc/EglRenderer;)Lcom/netease/lava/webrtc/EglBase;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/lava/webrtc/EglRenderer$EglSurfaceCreation;->this$0:Lcom/netease/lava/webrtc/EglRenderer;

    invoke-static {v0}, Lcom/netease/lava/webrtc/EglRenderer;->access$100(Lcom/netease/lava/webrtc/EglRenderer;)Lcom/netease/lava/webrtc/EglBase;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/lava/webrtc/EglBase;->hasSurface()Z

    move-result v0

    if-nez v0, :cond_2

    .line 76
    iget-object v0, p0, Lcom/netease/lava/webrtc/EglRenderer$EglSurfaceCreation;->surface:Ljava/lang/Object;

    instance-of v1, v0, Landroid/view/Surface;

    if-eqz v1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/netease/lava/webrtc/EglRenderer$EglSurfaceCreation;->this$0:Lcom/netease/lava/webrtc/EglRenderer;

    invoke-static {v0}, Lcom/netease/lava/webrtc/EglRenderer;->access$100(Lcom/netease/lava/webrtc/EglRenderer;)Lcom/netease/lava/webrtc/EglBase;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/lava/webrtc/EglRenderer$EglSurfaceCreation;->surface:Ljava/lang/Object;

    check-cast v1, Landroid/view/Surface;

    invoke-interface {v0, v1}, Lcom/netease/lava/webrtc/EglBase;->createSurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 78
    :cond_0
    instance-of v0, v0, Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/netease/lava/webrtc/EglRenderer$EglSurfaceCreation;->this$0:Lcom/netease/lava/webrtc/EglRenderer;

    invoke-static {v0}, Lcom/netease/lava/webrtc/EglRenderer;->access$100(Lcom/netease/lava/webrtc/EglRenderer;)Lcom/netease/lava/webrtc/EglBase;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/lava/webrtc/EglRenderer$EglSurfaceCreation;->surface:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/SurfaceTexture;

    invoke-interface {v0, v1}, Lcom/netease/lava/webrtc/EglBase;->createSurface(Landroid/graphics/SurfaceTexture;)V

    .line 83
    :goto_0
    iget-object v0, p0, Lcom/netease/lava/webrtc/EglRenderer$EglSurfaceCreation;->this$0:Lcom/netease/lava/webrtc/EglRenderer;

    invoke-static {v0}, Lcom/netease/lava/webrtc/EglRenderer;->access$100(Lcom/netease/lava/webrtc/EglRenderer;)Lcom/netease/lava/webrtc/EglBase;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/lava/webrtc/EglBase;->makeCurrent()V

    const/16 v0, 0xcf5

    const/4 v1, 0x1

    .line 85
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    goto :goto_1

    .line 81
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid surface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/lava/webrtc/EglRenderer$EglSurfaceCreation;->surface:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSurface(Ljava/lang/Object;)V
    .locals 0

    monitor-enter p0

    .line 67
    :try_start_0
    iput-object p1, p0, Lcom/netease/lava/webrtc/EglRenderer$EglSurfaceCreation;->surface:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
