.class Lcom/netease/lava/webrtc/EglBase10Impl$1FakeSurfaceHolder;
.super Ljava/lang/Object;
.source "EglBase10Impl.java"

# interfaces
.implements Landroid/view/SurfaceHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/lava/webrtc/EglBase10Impl;->createSurface(Landroid/view/Surface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "1FakeSurfaceHolder"
.end annotation


# instance fields
.field private final surface:Landroid/view/Surface;

.field final synthetic this$0:Lcom/netease/lava/webrtc/EglBase10Impl;


# direct methods
.method constructor <init>(Lcom/netease/lava/webrtc/EglBase10Impl;Landroid/view/Surface;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/netease/lava/webrtc/EglBase10Impl$1FakeSurfaceHolder;->this$0:Lcom/netease/lava/webrtc/EglBase10Impl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p2, p0, Lcom/netease/lava/webrtc/EglBase10Impl$1FakeSurfaceHolder;->surface:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public addCallback(Landroid/view/SurfaceHolder$Callback;)V
    .locals 0

    return-void
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/netease/lava/webrtc/EglBase10Impl$1FakeSurfaceHolder;->surface:Landroid/view/Surface;

    return-object v0
.end method

.method public getSurfaceFrame()Landroid/graphics/Rect;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public isCreating()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public lockCanvas()Landroid/graphics/Canvas;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .locals 0
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public removeCallback(Landroid/view/SurfaceHolder$Callback;)V
    .locals 0

    return-void
.end method

.method public setFixedSize(II)V
    .locals 0

    return-void
.end method

.method public setFormat(I)V
    .locals 0

    return-void
.end method

.method public setKeepScreenOn(Z)V
    .locals 0

    return-void
.end method

.method public setSizeFromLayout()V
    .locals 0

    return-void
.end method

.method public setType(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method
