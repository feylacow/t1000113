.class public final synthetic Lcom/netease/lava/nertc/pstn/-$$Lambda$NERtcLinkSinkWrapper$cYiUsLxeDYHvsR4BYFpG0ZpBnkQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/lava/nertc/sdk/NERtcLinkEngineCallback;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/netease/lava/nertc/sdk/NERtcLinkEngineCallback;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/nertc/pstn/-$$Lambda$NERtcLinkSinkWrapper$cYiUsLxeDYHvsR4BYFpG0ZpBnkQ;->f$0:Lcom/netease/lava/nertc/sdk/NERtcLinkEngineCallback;

    iput p2, p0, Lcom/netease/lava/nertc/pstn/-$$Lambda$NERtcLinkSinkWrapper$cYiUsLxeDYHvsR4BYFpG0ZpBnkQ;->f$1:I

    iput p3, p0, Lcom/netease/lava/nertc/pstn/-$$Lambda$NERtcLinkSinkWrapper$cYiUsLxeDYHvsR4BYFpG0ZpBnkQ;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/netease/lava/nertc/pstn/-$$Lambda$NERtcLinkSinkWrapper$cYiUsLxeDYHvsR4BYFpG0ZpBnkQ;->f$0:Lcom/netease/lava/nertc/sdk/NERtcLinkEngineCallback;

    iget v1, p0, Lcom/netease/lava/nertc/pstn/-$$Lambda$NERtcLinkSinkWrapper$cYiUsLxeDYHvsR4BYFpG0ZpBnkQ;->f$1:I

    iget v2, p0, Lcom/netease/lava/nertc/pstn/-$$Lambda$NERtcLinkSinkWrapper$cYiUsLxeDYHvsR4BYFpG0ZpBnkQ;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/netease/lava/nertc/pstn/NERtcLinkSinkWrapper;->lambda$onLinkDirectCallAccept$4(Lcom/netease/lava/nertc/sdk/NERtcLinkEngineCallback;II)V

    return-void
.end method
