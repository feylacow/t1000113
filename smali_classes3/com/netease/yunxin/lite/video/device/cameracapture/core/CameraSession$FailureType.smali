.class public final enum Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$FailureType;
.super Ljava/lang/Enum;
.source "CameraSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FailureType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$FailureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$FailureType;

.field public static final enum DISCONNECTED:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$FailureType;

.field public static final enum ERROR:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$FailureType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 28
    new-instance v0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$FailureType;

    const-string v1, "ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$FailureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$FailureType;->ERROR:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$FailureType;

    new-instance v1, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$FailureType;

    const-string v3, "DISCONNECTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$FailureType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$FailureType;->DISCONNECTED:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$FailureType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$FailureType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$FailureType;->$VALUES:[Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$FailureType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$FailureType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 28
    const-class v0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$FailureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$FailureType;

    return-object p0
.end method

.method public static values()[Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$FailureType;
    .locals 1

    .line 28
    sget-object v0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$FailureType;->$VALUES:[Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$FailureType;

    invoke-virtual {v0}, [Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$FailureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$FailureType;

    return-object v0
.end method
