.class Lcom/netease/lava/webrtc/WebRtcClassLoader;
.super Ljava/lang/Object;
.source "WebRtcClassLoader.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getClassLoader()Ljava/lang/Object;
    .locals 1

    .line 21
    const-class v0, Lcom/netease/lava/webrtc/WebRtcClassLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method
