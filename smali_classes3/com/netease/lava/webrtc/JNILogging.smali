.class Lcom/netease/lava/webrtc/JNILogging;
.super Ljava/lang/Object;
.source "JNILogging.java"


# instance fields
.field private final loggable:Lcom/netease/lava/webrtc/Loggable;


# direct methods
.method public constructor <init>(Lcom/netease/lava/webrtc/Loggable;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/netease/lava/webrtc/JNILogging;->loggable:Lcom/netease/lava/webrtc/Loggable;

    return-void
.end method


# virtual methods
.method public logToInjectable(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/netease/lava/webrtc/JNILogging;->loggable:Lcom/netease/lava/webrtc/Loggable;

    invoke-static {}, Lcom/netease/lava/webrtc/Logging$Severity;->values()[Lcom/netease/lava/webrtc/Logging$Severity;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aget-object p2, v1, p2

    invoke-interface {v0, p1, p2, p3}, Lcom/netease/lava/webrtc/Loggable;->onLogMessage(Ljava/lang/String;Lcom/netease/lava/webrtc/Logging$Severity;Ljava/lang/String;)V

    return-void
.end method
