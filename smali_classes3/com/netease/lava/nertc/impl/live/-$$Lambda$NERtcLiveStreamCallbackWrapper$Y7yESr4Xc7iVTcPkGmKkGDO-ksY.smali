.class public final synthetic Lcom/netease/lava/nertc/impl/live/-$$Lambda$NERtcLiveStreamCallbackWrapper$Y7yESr4Xc7iVTcPkGmKkGDO-ksY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/lava/nertc/impl/live/NERtcLiveStreamCallbackWrapper;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/netease/lava/nertc/impl/live/NERtcLiveStreamCallbackWrapper;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/nertc/impl/live/-$$Lambda$NERtcLiveStreamCallbackWrapper$Y7yESr4Xc7iVTcPkGmKkGDO-ksY;->f$0:Lcom/netease/lava/nertc/impl/live/NERtcLiveStreamCallbackWrapper;

    iput-object p2, p0, Lcom/netease/lava/nertc/impl/live/-$$Lambda$NERtcLiveStreamCallbackWrapper$Y7yESr4Xc7iVTcPkGmKkGDO-ksY;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/netease/lava/nertc/impl/live/-$$Lambda$NERtcLiveStreamCallbackWrapper$Y7yESr4Xc7iVTcPkGmKkGDO-ksY;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/netease/lava/nertc/impl/live/-$$Lambda$NERtcLiveStreamCallbackWrapper$Y7yESr4Xc7iVTcPkGmKkGDO-ksY;->f$0:Lcom/netease/lava/nertc/impl/live/NERtcLiveStreamCallbackWrapper;

    iget-object v1, p0, Lcom/netease/lava/nertc/impl/live/-$$Lambda$NERtcLiveStreamCallbackWrapper$Y7yESr4Xc7iVTcPkGmKkGDO-ksY;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/netease/lava/nertc/impl/live/-$$Lambda$NERtcLiveStreamCallbackWrapper$Y7yESr4Xc7iVTcPkGmKkGDO-ksY;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/netease/lava/nertc/impl/live/NERtcLiveStreamCallbackWrapper;->lambda$onLiveStreamTaskCallback$0$NERtcLiveStreamCallbackWrapper(Ljava/lang/String;I)V

    return-void
.end method
