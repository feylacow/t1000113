.class public Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$IPAddress;
.super Ljava/lang/Object;
.source "NetworkMonitorAutoDetect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IPAddress"
.end annotation


# instance fields
.field public final address:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$IPAddress;->address:[B

    return-void
.end method

.method private getAddress()[B
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$IPAddress;->address:[B

    return-object v0
.end method
