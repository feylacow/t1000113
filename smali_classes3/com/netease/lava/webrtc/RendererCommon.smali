.class public Lcom/netease/lava/webrtc/RendererCommon;
.super Ljava/lang/Object;
.source "RendererCommon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/lava/webrtc/RendererCommon$ScalingType;,
        Lcom/netease/lava/webrtc/RendererCommon$VideoLayoutMeasure;,
        Lcom/netease/lava/webrtc/RendererCommon$GlDrawer;,
        Lcom/netease/lava/webrtc/RendererCommon$RendererEvents;
    }
.end annotation


# static fields
.field private static BALANCED_VISIBLE_FRACTION:F = 0.5625f


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static adjustOrigin([F)V
    .locals 6

    const/16 v0, 0xc

    .line 229
    aget v1, p0, v0

    const/4 v2, 0x0

    aget v2, p0, v2

    const/4 v3, 0x4

    aget v3, p0, v3

    add-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    aput v1, p0, v0

    const/16 v1, 0xd

    .line 230
    aget v2, p0, v1

    const/4 v4, 0x1

    aget v4, p0, v4

    const/4 v5, 0x5

    aget v5, p0, v5

    add-float/2addr v4, v5

    mul-float v4, v4, v3

    sub-float/2addr v2, v4

    aput v2, p0, v1

    .line 232
    aget v2, p0, v0

    add-float/2addr v2, v3

    aput v2, p0, v0

    .line 233
    aget v0, p0, v1

    add-float/2addr v0, v3

    aput v0, p0, v1

    return-void
.end method

.method public static convertMatrixFromAndroidGraphicsMatrix(Landroid/graphics/Matrix;)[F
    .locals 8

    const/16 v0, 0x9

    new-array v1, v0, [F

    .line 186
    invoke-virtual {p0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    const/16 p0, 0x10

    new-array p0, p0, [F

    const/4 v2, 0x0

    .line 203
    aget v3, v1, v2

    aput v3, p0, v2

    const/4 v2, 0x3

    aget v3, v1, v2

    const/4 v4, 0x1

    aput v3, p0, v4

    const/4 v3, 0x2

    const/4 v5, 0x0

    aput v5, p0, v3

    const/4 v6, 0x6

    aget v7, v1, v6

    aput v7, p0, v2

    aget v2, v1, v4

    const/4 v4, 0x4

    aput v2, p0, v4

    aget v2, v1, v4

    const/4 v4, 0x5

    aput v2, p0, v4

    aput v5, p0, v6

    const/4 v2, 0x7

    aget v6, v1, v2

    aput v6, p0, v2

    const/16 v2, 0x8

    aput v5, p0, v2

    aput v5, p0, v0

    const/16 v0, 0xa

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, p0, v0

    const/16 v0, 0xb

    aput v5, p0, v0

    aget v0, v1, v3

    const/16 v3, 0xc

    aput v0, p0, v3

    aget v0, v1, v4

    const/16 v3, 0xd

    aput v0, p0, v3

    const/16 v0, 0xe

    aput v5, p0, v0

    aget v0, v1, v2

    const/16 v1, 0xf

    aput v0, p0, v1

    return-object p0
.end method

.method public static convertMatrixToAndroidGraphicsMatrix([F)Landroid/graphics/Matrix;
    .locals 5

    const/16 v0, 0x9

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 171
    aget v2, p0, v1

    aput v2, v0, v1

    const/4 v1, 0x4

    aget v2, p0, v1

    const/4 v3, 0x1

    aput v2, v0, v3

    const/16 v2, 0xc

    aget v2, p0, v2

    const/4 v4, 0x2

    aput v2, v0, v4

    aget v2, p0, v3

    const/4 v3, 0x3

    aput v2, v0, v3

    const/4 v2, 0x5

    aget v4, p0, v2

    aput v4, v0, v1

    const/16 v1, 0xd

    aget v1, p0, v1

    aput v1, v0, v2

    aget v1, p0, v3

    const/4 v2, 0x6

    aput v1, v0, v2

    const/4 v1, 0x7

    aget v2, p0, v1

    aput v2, v0, v1

    const/16 v1, 0xf

    aget p0, p0, v1

    const/16 v1, 0x8

    aput p0, v0, v1

    .line 178
    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    .line 179
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->setValues([F)V

    return-object p0
.end method

.method private static convertScalingTypeToVisibleFraction(Lcom/netease/lava/webrtc/RendererCommon$ScalingType;)F
    .locals 1

    .line 241
    sget-object v0, Lcom/netease/lava/webrtc/RendererCommon$1;->$SwitchMap$com$netease$lava$webrtc$RendererCommon$ScalingType:[I

    invoke-virtual {p0}, Lcom/netease/lava/webrtc/RendererCommon$ScalingType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 247
    sget p0, Lcom/netease/lava/webrtc/RendererCommon;->BALANCED_VISIBLE_FRACTION:F

    return p0

    .line 249
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method private static getDisplaySize(FFII)Landroid/graphics/Point;
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p0, v0

    if-eqz v1, :cond_1

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    int-to-float v0, p3

    div-float/2addr v0, p0

    mul-float v0, v0, p1

    .line 265
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 264
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float p2, p2

    div-float/2addr p2, p0

    div-float/2addr p2, p1

    .line 267
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 266
    invoke-static {p3, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 268
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, v0, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object p1

    .line 261
    :cond_1
    :goto_0
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    return-object p0
.end method

.method public static getDisplaySize(Lcom/netease/lava/webrtc/RendererCommon$ScalingType;FII)Landroid/graphics/Point;
    .locals 0

    .line 218
    invoke-static {p0}, Lcom/netease/lava/webrtc/RendererCommon;->convertScalingTypeToVisibleFraction(Lcom/netease/lava/webrtc/RendererCommon$ScalingType;)F

    move-result p0

    invoke-static {p0, p1, p2, p3}, Lcom/netease/lava/webrtc/RendererCommon;->getDisplaySize(FFII)Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method public static getLayoutMatrix(ZFF)[F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p2, p1

    if-lez v1, :cond_0

    div-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    div-float/2addr p2, p1

    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    if-eqz p0, :cond_1

    const/high16 p0, -0x40800000    # -1.0f

    mul-float p2, p2, p0

    :cond_1
    const/16 p0, 0x10

    new-array p0, p0, [F

    const/4 v1, 0x0

    .line 162
    invoke-static {p0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 163
    invoke-static {p0, v1, p2, p1, v0}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 164
    invoke-static {p0}, Lcom/netease/lava/webrtc/RendererCommon;->adjustOrigin([F)V

    return-object p0
.end method
