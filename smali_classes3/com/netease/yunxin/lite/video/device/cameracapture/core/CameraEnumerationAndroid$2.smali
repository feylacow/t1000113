.class final Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$2;
.super Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$ClosestComparator;
.source "CameraEnumerationAndroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid;->getClosestSupportedSize(Ljava/util/List;II)Lcom/netease/lava/webrtc/Size;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$ClosestComparator<",
        "Lcom/netease/lava/webrtc/Size;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$requestedHeight:I

.field final synthetic val$requestedWidth:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$requestedHeight",
            "val$requestedWidth"
        }
    .end annotation

    .line 226
    iput p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$2;->val$requestedWidth:I

    iput p2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$2;->val$requestedHeight:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$ClosestComparator;-><init>(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$1;)V

    return-void
.end method


# virtual methods
.method diff(Lcom/netease/lava/webrtc/Size;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 229
    iget v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$2;->val$requestedWidth:I

    iget v1, p1, Lcom/netease/lava/webrtc/Size;->width:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$2;->val$requestedHeight:I

    iget p1, p1, Lcom/netease/lava/webrtc/Size;->height:I

    sub-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

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
            "size"
        }
    .end annotation

    .line 226
    check-cast p1, Lcom/netease/lava/webrtc/Size;

    invoke-virtual {p0, p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$2;->diff(Lcom/netease/lava/webrtc/Size;)I

    move-result p1

    return p1
.end method
