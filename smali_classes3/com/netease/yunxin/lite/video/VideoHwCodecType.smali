.class public final enum Lcom/netease/yunxin/lite/video/VideoHwCodecType;
.super Ljava/lang/Enum;
.source "VideoHwCodecType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/yunxin/lite/video/VideoHwCodecType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/yunxin/lite/video/VideoHwCodecType;

.field public static final enum H264:Lcom/netease/yunxin/lite/video/VideoHwCodecType;

.field public static final enum H265:Lcom/netease/yunxin/lite/video/VideoHwCodecType;

.field public static final enum VP8:Lcom/netease/yunxin/lite/video/VideoHwCodecType;

.field public static final enum VP9:Lcom/netease/yunxin/lite/video/VideoHwCodecType;


# instance fields
.field private final mimeType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 10
    new-instance v0, Lcom/netease/yunxin/lite/video/VideoHwCodecType;

    const-string v1, "VP8"

    const/4 v2, 0x0

    const-string v3, "video/x-vnd.on2.vp8"

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/yunxin/lite/video/VideoHwCodecType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netease/yunxin/lite/video/VideoHwCodecType;->VP8:Lcom/netease/yunxin/lite/video/VideoHwCodecType;

    .line 11
    new-instance v1, Lcom/netease/yunxin/lite/video/VideoHwCodecType;

    const-string v3, "VP9"

    const/4 v4, 0x1

    const-string v5, "video/x-vnd.on2.vp9"

    invoke-direct {v1, v3, v4, v5}, Lcom/netease/yunxin/lite/video/VideoHwCodecType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/netease/yunxin/lite/video/VideoHwCodecType;->VP9:Lcom/netease/yunxin/lite/video/VideoHwCodecType;

    .line 12
    new-instance v3, Lcom/netease/yunxin/lite/video/VideoHwCodecType;

    const-string v5, "H264"

    const/4 v6, 0x2

    const-string v7, "video/avc"

    invoke-direct {v3, v5, v6, v7}, Lcom/netease/yunxin/lite/video/VideoHwCodecType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/netease/yunxin/lite/video/VideoHwCodecType;->H264:Lcom/netease/yunxin/lite/video/VideoHwCodecType;

    .line 13
    new-instance v5, Lcom/netease/yunxin/lite/video/VideoHwCodecType;

    const-string v7, "H265"

    const/4 v8, 0x3

    const-string v9, "video/hevc"

    invoke-direct {v5, v7, v8, v9}, Lcom/netease/yunxin/lite/video/VideoHwCodecType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/netease/yunxin/lite/video/VideoHwCodecType;->H265:Lcom/netease/yunxin/lite/video/VideoHwCodecType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/netease/yunxin/lite/video/VideoHwCodecType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 8
    sput-object v7, Lcom/netease/yunxin/lite/video/VideoHwCodecType;->$VALUES:[Lcom/netease/yunxin/lite/video/VideoHwCodecType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "mimeType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput-object p3, p0, Lcom/netease/yunxin/lite/video/VideoHwCodecType;->mimeType:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/yunxin/lite/video/VideoHwCodecType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 8
    const-class v0, Lcom/netease/yunxin/lite/video/VideoHwCodecType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/yunxin/lite/video/VideoHwCodecType;

    return-object p0
.end method

.method public static values()[Lcom/netease/yunxin/lite/video/VideoHwCodecType;
    .locals 1

    .line 8
    sget-object v0, Lcom/netease/yunxin/lite/video/VideoHwCodecType;->$VALUES:[Lcom/netease/yunxin/lite/video/VideoHwCodecType;

    invoke-virtual {v0}, [Lcom/netease/yunxin/lite/video/VideoHwCodecType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/yunxin/lite/video/VideoHwCodecType;

    return-object v0
.end method


# virtual methods
.method mimeType()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/VideoHwCodecType;->mimeType:Ljava/lang/String;

    return-object v0
.end method
