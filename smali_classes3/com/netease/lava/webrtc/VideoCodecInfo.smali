.class public Lcom/netease/lava/webrtc/VideoCodecInfo;
.super Ljava/lang/Object;
.source "VideoCodecInfo.java"


# static fields
.field public static final H264_CONSTRAINED_BASELINE_3_1:Ljava/lang/String; = "42e01f"

.field public static final H264_CONSTRAINED_HIGH_3_1:Ljava/lang/String; = "640c1f"

.field public static final H264_FMTP_LEVEL_ASYMMETRY_ALLOWED:Ljava/lang/String; = "level-asymmetry-allowed"

.field public static final H264_FMTP_LEVEL_ID:Ljava/lang/String; = "level-id"

.field public static final H264_FMTP_PACKETIZATION_MODE:Ljava/lang/String; = "packetization-mode"

.field public static final H264_FMTP_PROFILE_ID:Ljava/lang/String; = "profile-id"

.field public static final H264_FMTP_PROFILE_LEVEL_ID:Ljava/lang/String; = "profile-level-id"

.field public static final H264_LEVEL_3_1:Ljava/lang/String; = "1f"

.field public static final H264_PROFILE_CONSTRAINED_BASELINE:Ljava/lang/String; = "42e0"

.field public static final H264_PROFILE_CONSTRAINED_HIGH:Ljava/lang/String; = "640c"


# instance fields
.field public compatInfo:Lcom/netease/lava/webrtc/CompatVideoCodecInfo;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final name:Ljava/lang/String;

.field public final params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final payload:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lcom/netease/lava/webrtc/VideoCodecInfo;->payload:I

    .line 54
    iput-object p2, p0, Lcom/netease/lava/webrtc/VideoCodecInfo;->name:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/netease/lava/webrtc/VideoCodecInfo;->params:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/netease/lava/webrtc/VideoCodecInfo;->payload:I

    .line 47
    iput-object p1, p0, Lcom/netease/lava/webrtc/VideoCodecInfo;->name:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/netease/lava/webrtc/VideoCodecInfo;->params:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    .line 74
    :cond_1
    instance-of v2, p1, Lcom/netease/lava/webrtc/VideoCodecInfo;

    if-nez v2, :cond_2

    return v0

    .line 77
    :cond_2
    check-cast p1, Lcom/netease/lava/webrtc/VideoCodecInfo;

    .line 78
    iget-object v2, p0, Lcom/netease/lava/webrtc/VideoCodecInfo;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/netease/lava/webrtc/VideoCodecInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/netease/lava/webrtc/VideoCodecInfo;->params:Ljava/util/Map;

    iget-object p1, p1, Lcom/netease/lava/webrtc/VideoCodecInfo;->params:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public getCompatInfo()Lcom/netease/lava/webrtc/CompatVideoCodecInfo;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/netease/lava/webrtc/VideoCodecInfo;->compatInfo:Lcom/netease/lava/webrtc/CompatVideoCodecInfo;

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/netease/lava/webrtc/VideoCodecInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method getParams()Ljava/util/Map;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/netease/lava/webrtc/VideoCodecInfo;->params:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 83
    iget-object v1, p0, Lcom/netease/lava/webrtc/VideoCodecInfo;->name:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/netease/lava/webrtc/VideoCodecInfo;->params:Ljava/util/Map;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 84
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setCompatInfo(Lcom/netease/lava/webrtc/CompatVideoCodecInfo;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/netease/lava/webrtc/VideoCodecInfo;->compatInfo:Lcom/netease/lava/webrtc/CompatVideoCodecInfo;

    return-void
.end method
