.class public final synthetic Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$nwWZxdjqpPZ7XqMdsJmGVmwCHlY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

.field public final synthetic f$1:J

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$nwWZxdjqpPZ7XqMdsJmGVmwCHlY;->f$0:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    iput-wide p2, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$nwWZxdjqpPZ7XqMdsJmGVmwCHlY;->f$1:J

    iput-wide p4, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$nwWZxdjqpPZ7XqMdsJmGVmwCHlY;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$nwWZxdjqpPZ7XqMdsJmGVmwCHlY;->f$0:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    iget-wide v1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$nwWZxdjqpPZ7XqMdsJmGVmwCHlY;->f$1:J

    iget-wide v3, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$nwWZxdjqpPZ7XqMdsJmGVmwCHlY;->f$2:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->lambda$onUserDataBufferedAmountChanged$110(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;JJ)V

    return-void
.end method
