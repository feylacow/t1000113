.class public final synthetic Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$OXKkVAMxn2ZbpOa95rAPMXQSDSA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$OXKkVAMxn2ZbpOa95rAPMXQSDSA;->f$0:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    iput-object p2, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$OXKkVAMxn2ZbpOa95rAPMXQSDSA;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$OXKkVAMxn2ZbpOa95rAPMXQSDSA;->f$2:I

    iput-object p4, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$OXKkVAMxn2ZbpOa95rAPMXQSDSA;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$OXKkVAMxn2ZbpOa95rAPMXQSDSA;->f$0:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    iget-object v1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$OXKkVAMxn2ZbpOa95rAPMXQSDSA;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$OXKkVAMxn2ZbpOa95rAPMXQSDSA;->f$2:I

    iget-object v3, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$OXKkVAMxn2ZbpOa95rAPMXQSDSA;->f$3:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->lambda$onApiCallExecuted$81(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
