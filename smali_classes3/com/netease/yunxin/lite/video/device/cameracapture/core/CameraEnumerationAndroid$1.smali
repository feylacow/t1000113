.class final Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$1;
.super Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$ClosestComparator;
.source "CameraEnumerationAndroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid;->getClosestSupportedFramerateRangeWebRTC(Ljava/util/List;I)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat$FramerateRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$ClosestComparator<",
        "Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat$FramerateRange;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_FPS_DIFF_THRESHOLD:I = 0x1388

.field private static final MAX_FPS_HIGH_DIFF_WEIGHT:I = 0x3

.field private static final MAX_FPS_LOW_DIFF_WEIGHT:I = 0x1

.field private static final MIN_FPS_HIGH_VALUE_WEIGHT:I = 0x4

.field private static final MIN_FPS_LOW_VALUE_WEIGHT:I = 0x1

.field private static final MIN_FPS_THRESHOLD:I = 0x1f40


# instance fields
.field final synthetic val$requestedFps:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$requestedFps"
        }
    .end annotation

    .line 163
    iput p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$1;->val$requestedFps:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$ClosestComparator;-><init>(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$1;)V

    return-void
.end method

.method private progressivePenalty(IIII)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "value",
            "threshold",
            "lowWeight",
            "highWeight"
        }
    .end annotation

    if-ge p1, p2, :cond_0

    mul-int p1, p1, p3

    goto :goto_0

    :cond_0
    mul-int p3, p3, p2

    sub-int/2addr p1, p2

    mul-int p1, p1, p4

    add-int/2addr p1, p3

    :goto_0
    return p1
.end method


# virtual methods
.method diff(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat$FramerateRange;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "range"
        }
    .end annotation

    .line 183
    iget v0, p1, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat$FramerateRange;->min:I

    const/16 v1, 0x1f40

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$1;->progressivePenalty(IIII)I

    move-result v0

    .line 185
    iget v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$1;->val$requestedFps:I

    mul-int/lit16 v1, v1, 0x3e8

    iget p1, p1, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat$FramerateRange;->max:I

    sub-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 v1, 0x1388

    const/4 v3, 0x3

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$1;->progressivePenalty(IIII)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method bridge synthetic diff(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "range"
        }
    .end annotation

    .line 163
    check-cast p1, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat$FramerateRange;

    invoke-virtual {p0, p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$1;->diff(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat$FramerateRange;)I

    move-result p1

    return p1
.end method
