.class Lcom/netease/lava/webrtc/NetworkMonitor$InstanceHolder;
.super Ljava/lang/Object;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/webrtc/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field static final instance:Lcom/netease/lava/webrtc/NetworkMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Lcom/netease/lava/webrtc/NetworkMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netease/lava/webrtc/NetworkMonitor;-><init>(Lcom/netease/lava/webrtc/NetworkMonitor$1;)V

    sput-object v0, Lcom/netease/lava/webrtc/NetworkMonitor$InstanceHolder;->instance:Lcom/netease/lava/webrtc/NetworkMonitor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
