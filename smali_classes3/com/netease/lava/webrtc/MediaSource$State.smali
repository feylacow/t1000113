.class public final enum Lcom/netease/lava/webrtc/MediaSource$State;
.super Ljava/lang/Enum;
.source "MediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/webrtc/MediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/lava/webrtc/MediaSource$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/lava/webrtc/MediaSource$State;

.field public static final enum ENDED:Lcom/netease/lava/webrtc/MediaSource$State;

.field public static final enum INITIALIZING:Lcom/netease/lava/webrtc/MediaSource$State;

.field public static final enum LIVE:Lcom/netease/lava/webrtc/MediaSource$State;

.field public static final enum MUTED:Lcom/netease/lava/webrtc/MediaSource$State;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 17
    new-instance v0, Lcom/netease/lava/webrtc/MediaSource$State;

    const-string v1, "INITIALIZING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/lava/webrtc/MediaSource$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/lava/webrtc/MediaSource$State;->INITIALIZING:Lcom/netease/lava/webrtc/MediaSource$State;

    .line 18
    new-instance v1, Lcom/netease/lava/webrtc/MediaSource$State;

    const-string v3, "LIVE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/netease/lava/webrtc/MediaSource$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netease/lava/webrtc/MediaSource$State;->LIVE:Lcom/netease/lava/webrtc/MediaSource$State;

    .line 19
    new-instance v3, Lcom/netease/lava/webrtc/MediaSource$State;

    const-string v5, "ENDED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/netease/lava/webrtc/MediaSource$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/netease/lava/webrtc/MediaSource$State;->ENDED:Lcom/netease/lava/webrtc/MediaSource$State;

    .line 20
    new-instance v5, Lcom/netease/lava/webrtc/MediaSource$State;

    const-string v7, "MUTED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/netease/lava/webrtc/MediaSource$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/netease/lava/webrtc/MediaSource$State;->MUTED:Lcom/netease/lava/webrtc/MediaSource$State;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/netease/lava/webrtc/MediaSource$State;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 16
    sput-object v7, Lcom/netease/lava/webrtc/MediaSource$State;->$VALUES:[Lcom/netease/lava/webrtc/MediaSource$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static fromNativeIndex(I)Lcom/netease/lava/webrtc/MediaSource$State;
    .locals 1

    .line 24
    invoke-static {}, Lcom/netease/lava/webrtc/MediaSource$State;->values()[Lcom/netease/lava/webrtc/MediaSource$State;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/lava/webrtc/MediaSource$State;
    .locals 1

    .line 16
    const-class v0, Lcom/netease/lava/webrtc/MediaSource$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/lava/webrtc/MediaSource$State;

    return-object p0
.end method

.method public static values()[Lcom/netease/lava/webrtc/MediaSource$State;
    .locals 1

    .line 16
    sget-object v0, Lcom/netease/lava/webrtc/MediaSource$State;->$VALUES:[Lcom/netease/lava/webrtc/MediaSource$State;

    invoke-virtual {v0}, [Lcom/netease/lava/webrtc/MediaSource$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/lava/webrtc/MediaSource$State;

    return-object v0
.end method
