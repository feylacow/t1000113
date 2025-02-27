.class public Lnet/aihelp/core/ui/loading/indicator/BallPulseIndicator;
.super Ljava/lang/Object;
.source "BallPulseIndicator.java"


# static fields
.field public static final SCALE:F = 1.0f


# instance fields
.field private mTarget:Landroid/view/View;

.field private scaleFloats:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 37
    fill-array-data v0, :array_0

    iput-object v0, p0, Lnet/aihelp/core/ui/loading/indicator/BallPulseIndicator;->scaleFloats:[F

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lnet/aihelp/core/ui/loading/indicator/BallPulseIndicator;)[F
    .locals 0

    .line 10
    iget-object p0, p0, Lnet/aihelp/core/ui/loading/indicator/BallPulseIndicator;->scaleFloats:[F

    return-object p0
.end method


# virtual methods
.method public createAnimation()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x3

    new-array v2, v1, [I

    .line 58
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    new-array v4, v1, [F

    .line 62
    fill-array-data v4, :array_1

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    const-wide/16 v5, 0x2ee

    .line 64
    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v5, -0x1

    .line 65
    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 66
    aget v5, v2, v3

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 68
    new-instance v5, Lnet/aihelp/core/ui/loading/indicator/BallPulseIndicator$1;

    invoke-direct {v5, p0, v3}, Lnet/aihelp/core/ui/loading/indicator/BallPulseIndicator$1;-><init>(Lnet/aihelp/core/ui/loading/indicator/BallPulseIndicator;I)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 76
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 78
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :array_0
    .array-data 4
        0x78
        0xf0
        0x168
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 8

    .line 43
    invoke-virtual {p0}, Lnet/aihelp/core/ui/loading/indicator/BallPulseIndicator;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lnet/aihelp/core/ui/loading/indicator/BallPulseIndicator;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41000000    # 8.0f

    sub-float/2addr v0, v1

    const/high16 v1, 0x40c00000    # 6.0f

    div-float/2addr v0, v1

    .line 44
    invoke-virtual {p0}, Lnet/aihelp/core/ui/loading/indicator/BallPulseIndicator;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v2, v2, v0

    const/high16 v3, 0x40800000    # 4.0f

    add-float v4, v2, v3

    sub-float/2addr v1, v4

    .line 45
    invoke-virtual {p0}, Lnet/aihelp/core/ui/loading/indicator/BallPulseIndicator;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x3

    if-ge v5, v6, :cond_0

    .line 47
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v6, v5

    mul-float v7, v2, v6

    add-float/2addr v7, v1

    mul-float v6, v6, v3

    add-float/2addr v7, v6

    .line 49
    invoke-virtual {p1, v7, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 50
    iget-object v6, p0, Lnet/aihelp/core/ui/loading/indicator/BallPulseIndicator;->scaleFloats:[F

    aget v7, v6, v5

    aget v6, v6, v5

    invoke-virtual {p1, v7, v6}, Landroid/graphics/Canvas;->scale(FF)V

    const/4 v6, 0x0

    .line 51
    invoke-virtual {p1, v6, v6, v0, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 52
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getHeight()I
    .locals 1

    .line 27
    iget-object v0, p0, Lnet/aihelp/core/ui/loading/indicator/BallPulseIndicator;->mTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public getTarget()Landroid/view/View;
    .locals 1

    .line 19
    iget-object v0, p0, Lnet/aihelp/core/ui/loading/indicator/BallPulseIndicator;->mTarget:Landroid/view/View;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 23
    iget-object v0, p0, Lnet/aihelp/core/ui/loading/indicator/BallPulseIndicator;->mTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public postInvalidate()V
    .locals 1

    .line 31
    iget-object v0, p0, Lnet/aihelp/core/ui/loading/indicator/BallPulseIndicator;->mTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setTarget(Landroid/view/View;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lnet/aihelp/core/ui/loading/indicator/BallPulseIndicator;->mTarget:Landroid/view/View;

    return-void
.end method
