.class public Lcom/netease/lava/webrtc/RendererCommon$VideoLayoutMeasure;
.super Ljava/lang/Object;
.source "RendererCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/webrtc/RendererCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoLayoutMeasure"
.end annotation


# instance fields
.field private scalingTypeMatchOrientation:Lcom/netease/lava/webrtc/RendererCommon$ScalingType;

.field private scalingTypeMismatchOrientation:Lcom/netease/lava/webrtc/RendererCommon$ScalingType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    sget-object v0, Lcom/netease/lava/webrtc/RendererCommon$ScalingType;->SCALE_ASPECT_FIT:Lcom/netease/lava/webrtc/RendererCommon$ScalingType;

    iput-object v0, p0, Lcom/netease/lava/webrtc/RendererCommon$VideoLayoutMeasure;->scalingTypeMatchOrientation:Lcom/netease/lava/webrtc/RendererCommon$ScalingType;

    .line 89
    sget-object v0, Lcom/netease/lava/webrtc/RendererCommon$ScalingType;->SCALE_ASPECT_FIT:Lcom/netease/lava/webrtc/RendererCommon$ScalingType;

    iput-object v0, p0, Lcom/netease/lava/webrtc/RendererCommon$VideoLayoutMeasure;->scalingTypeMismatchOrientation:Lcom/netease/lava/webrtc/RendererCommon$ScalingType;

    return-void
.end method


# virtual methods
.method public measure(IIII)Landroid/graphics/Point;
    .locals 6

    const v0, 0x7fffffff

    .line 104
    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result v1

    .line 105
    invoke-static {v0, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result v0

    if-eqz p3, :cond_6

    if-eqz p4, :cond_6

    if-eqz v1, :cond_6

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    int-to-float p3, p3

    int-to-float p4, p4

    div-float/2addr p3, p4

    int-to-float p4, v1

    int-to-float v2, v0

    div-float/2addr p4, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, p3, v4

    if-lez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    cmpl-float p4, p4, v4

    if-lez p4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-ne v5, v2, :cond_3

    .line 113
    iget-object p4, p0, Lcom/netease/lava/webrtc/RendererCommon$VideoLayoutMeasure;->scalingTypeMatchOrientation:Lcom/netease/lava/webrtc/RendererCommon$ScalingType;

    goto :goto_2

    :cond_3
    iget-object p4, p0, Lcom/netease/lava/webrtc/RendererCommon$VideoLayoutMeasure;->scalingTypeMismatchOrientation:Lcom/netease/lava/webrtc/RendererCommon$ScalingType;

    .line 116
    :goto_2
    invoke-static {p4, p3, v1, v0}, Lcom/netease/lava/webrtc/RendererCommon;->getDisplaySize(Lcom/netease/lava/webrtc/RendererCommon$ScalingType;FII)Landroid/graphics/Point;

    move-result-object p3

    .line 119
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    const/high16 p4, 0x40000000    # 2.0f

    if-ne p1, p4, :cond_4

    .line 120
    iput v1, p3, Landroid/graphics/Point;->x:I

    .line 122
    :cond_4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    if-ne p1, p4, :cond_5

    .line 123
    iput v0, p3, Landroid/graphics/Point;->y:I

    :cond_5
    return-object p3

    .line 107
    :cond_6
    :goto_3
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object p1
.end method

.method public setScalingType(Lcom/netease/lava/webrtc/RendererCommon$ScalingType;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/netease/lava/webrtc/RendererCommon$VideoLayoutMeasure;->scalingTypeMatchOrientation:Lcom/netease/lava/webrtc/RendererCommon$ScalingType;

    .line 93
    iput-object p1, p0, Lcom/netease/lava/webrtc/RendererCommon$VideoLayoutMeasure;->scalingTypeMismatchOrientation:Lcom/netease/lava/webrtc/RendererCommon$ScalingType;

    return-void
.end method

.method public setScalingType(Lcom/netease/lava/webrtc/RendererCommon$ScalingType;Lcom/netease/lava/webrtc/RendererCommon$ScalingType;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/netease/lava/webrtc/RendererCommon$VideoLayoutMeasure;->scalingTypeMatchOrientation:Lcom/netease/lava/webrtc/RendererCommon$ScalingType;

    .line 99
    iput-object p2, p0, Lcom/netease/lava/webrtc/RendererCommon$VideoLayoutMeasure;->scalingTypeMismatchOrientation:Lcom/netease/lava/webrtc/RendererCommon$ScalingType;

    return-void
.end method
