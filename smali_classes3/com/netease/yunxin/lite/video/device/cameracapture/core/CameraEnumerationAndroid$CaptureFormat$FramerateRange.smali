.class public Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat$FramerateRange;
.super Ljava/lang/Object;
.source "CameraEnumerationAndroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FramerateRange"
.end annotation


# instance fields
.field public max:I

.field public min:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "min",
            "max"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat$FramerateRange;->min:I

    .line 62
    iput p2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat$FramerateRange;->max:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 72
    instance-of v0, p1, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat$FramerateRange;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 75
    :cond_0
    check-cast p1, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat$FramerateRange;

    .line 76
    iget v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat$FramerateRange;->min:I

    iget v2, p1, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat$FramerateRange;->min:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat$FramerateRange;->max:I

    iget p1, p1, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat$FramerateRange;->max:I

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 82
    iget v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat$FramerateRange;->min:I

    const v1, 0x10001

    mul-int v0, v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat$FramerateRange;->max:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat$FramerateRange;->min:I

    int-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat$FramerateRange;->max:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
