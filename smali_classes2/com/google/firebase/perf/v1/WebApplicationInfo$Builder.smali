.class public final Lcom/google/firebase/perf/v1/WebApplicationInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "WebApplicationInfo.java"

# interfaces
.implements Lcom/google/firebase/perf/v1/WebApplicationInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/perf/v1/WebApplicationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firebase/perf/v1/WebApplicationInfo;",
        "Lcom/google/firebase/perf/v1/WebApplicationInfo$Builder;",
        ">;",
        "Lcom/google/firebase/perf/v1/WebApplicationInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 431
    invoke-static {}, Lcom/google/firebase/perf/v1/WebApplicationInfo;->access$000()Lcom/google/firebase/perf/v1/WebApplicationInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/perf/v1/WebApplicationInfo$1;)V
    .locals 0

    .line 424
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/WebApplicationInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearEffectiveConnectionType()Lcom/google/firebase/perf/v1/WebApplicationInfo$Builder;
    .locals 1

    .line 748
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/WebApplicationInfo$Builder;->copyOnWrite()V

    .line 749
    iget-object v0, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/WebApplicationInfo;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/WebApplicationInfo;->access$1200(Lcom/google/firebase/perf/v1/WebApplicationInfo;)V

    return-object p0
.end method

.method public clearPageUrl()Lcom/google/firebase/perf/v1/WebApplicationInfo$Builder;
    .locals 1

    .line 577
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/WebApplicationInfo$Builder;->copyOnWrite()V

    .line 578
    iget-object v0, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/WebApplicationInfo;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/WebApplicationInfo;->access$500(Lcom/google/firebase/perf/v1/WebApplicationInfo;)V

    return-object p0
.end method

.method public clearSdkVersion()Lcom/google/firebase/perf/v1/WebApplicationInfo$Builder;
    .locals 1

    .line 496
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/WebApplicationInfo$Builder;->copyOnWrite()V

    .line 497
    iget-object v0, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/WebApplicationInfo;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/WebApplicationInfo;->access$200(Lcom/google/firebase/perf/v1/WebApplicationInfo;)V

    return-object p0
.end method

.method public clearServiceWorkerStatus()Lcom/google/firebase/perf/v1/WebApplicationInfo$Builder;
    .locals 1

    .line 644
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/WebApplicationInfo$Builder;->copyOnWrite()V

    .line 645
    iget-object v0, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/WebApplicationInfo;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/WebApplicationInfo;->access$800(Lcom/google/firebase/perf/v1/WebApplicationInfo;)V

    return-object p0
.end method

.method public clearVisibilityState()Lcom/google/firebase/perf/v1/WebApplicationInfo$Builder;
    .locals 1

    .line 696
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/WebApplicationInfo$Builder;->copyOnWrite()V

    .line 697
    iget-object v0, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/WebApplicationInfo;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/WebApplicationInfo;->access$1000(Lcom/google/firebase/perf/v1/WebApplicationInfo;)V

    return-object p0
.end method

.method public getEffectiveConnectionType()Lcom/google/firebase/perf/v1/EffectiveConnectionType;
    .locals 1

    .line 723
    iget-object v0, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/WebApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/WebApplicationInfo;->getEffectiveConnectionType()Lcom/google/firebase/perf/v1/EffectiveConnectionType;

    move-result-object v0

    return-object v0
.end method

.method public getPageUrl()Ljava/lang/String;
    .locals 1

    .line 538
    iget-object v0, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/WebApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/WebApplicationInfo;->getPageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPageUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 551
    iget-object v0, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/WebApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/WebApplicationInfo;->getPageUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/WebApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/WebApplicationInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSdkVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/WebApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/WebApplicationInfo;->getSdkVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getServiceWorkerStatus()Lcom/google/firebase/perf/v1/ServiceWorkerStatus;
    .locals 1

    .line 619
    iget-object v0, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/WebApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/WebApplicationInfo;->getServiceWorkerStatus()Lcom/google/firebase/perf/v1/ServiceWorkerStatus;

    move-result-object v0

    return-object v0
.end method

.method public getVisibilityState()Lcom/google/firebase/perf/v1/VisibilityState;
    .locals 1

    .line 671
    iget-object v0, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/WebApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/WebApplicationInfo;->getVisibilityState()Lcom/google/firebase/perf/v1/VisibilityState;

    move-result-object v0

    return-object v0
.end method

.method public hasEffectiveConnectionType()Z
    .locals 1

    .line 711
    iget-object v0, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/WebApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/WebApplicationInfo;->hasEffectiveConnectionType()Z

    move-result v0

    return v0
.end method

.method public hasPageUrl()Z
    .locals 1

    .line 526
    iget-object v0, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/WebApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/WebApplicationInfo;->hasPageUrl()Z

    move-result v0

    return v0
.end method

.method public hasSdkVersion()Z
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/WebApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/WebApplicationInfo;->hasSdkVersion()Z

    move-result v0

    return v0
.end method

.method public hasServiceWorkerStatus()Z
    .locals 1

    .line 607
    iget-object v0, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/WebApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/WebApplicationInfo;->hasServiceWorkerStatus()Z

    move-result v0

    return v0
.end method

.method public hasVisibilityState()Z
    .locals 1

    .line 659
    iget-object v0, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/WebApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/WebApplicationInfo;->hasVisibilityState()Z

    move-result v0

    return v0
.end method

.method public setEffectiveConnectionType(Lcom/google/firebase/perf/v1/EffectiveConnectionType;)Lcom/google/firebase/perf/v1/WebApplicationInfo$Builder;
    .locals 1

    .line 735
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/WebApplicationInfo$Builder;->copyOnWrite()V

    .line 736
    iget-object v0, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/WebApplicationInfo;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/WebApplicationInfo;->access$1100(Lcom/google/firebase/perf/v1/WebApplicationInfo;Lcom/google/firebase/perf/v1/EffectiveConnectionType;)V

    return-object p0
.end method

.method public setPageUrl(Ljava/lang/String;)Lcom/google/firebase/perf/v1/WebApplicationInfo$Builder;
    .locals 1

    .line 564
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/WebApplicationInfo$Builder;->copyOnWrite()V

    .line 565
    iget-object v0, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/WebApplicationInfo;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/WebApplicationInfo;->access$400(Lcom/google/firebase/perf/v1/WebApplicationInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPageUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/perf/v1/WebApplicationInfo$Builder;
    .locals 1

    .line 592
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/WebApplicationInfo$Builder;->copyOnWrite()V

    .line 593
    iget-object v0, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/WebApplicationInfo;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/WebApplicationInfo;->access$600(Lcom/google/firebase/perf/v1/WebApplicationInfo;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSdkVersion(Ljava/lang/String;)Lcom/google/firebase/perf/v1/WebApplicationInfo$Builder;
    .locals 1

    .line 483
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/WebApplicationInfo$Builder;->copyOnWrite()V

    .line 484
    iget-object v0, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/WebApplicationInfo;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/WebApplicationInfo;->access$100(Lcom/google/firebase/perf/v1/WebApplicationInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSdkVersionBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/perf/v1/WebApplicationInfo$Builder;
    .locals 1

    .line 511
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/WebApplicationInfo$Builder;->copyOnWrite()V

    .line 512
    iget-object v0, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/WebApplicationInfo;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/WebApplicationInfo;->access$300(Lcom/google/firebase/perf/v1/WebApplicationInfo;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setServiceWorkerStatus(Lcom/google/firebase/perf/v1/ServiceWorkerStatus;)Lcom/google/firebase/perf/v1/WebApplicationInfo$Builder;
    .locals 1

    .line 631
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/WebApplicationInfo$Builder;->copyOnWrite()V

    .line 632
    iget-object v0, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/WebApplicationInfo;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/WebApplicationInfo;->access$700(Lcom/google/firebase/perf/v1/WebApplicationInfo;Lcom/google/firebase/perf/v1/ServiceWorkerStatus;)V

    return-object p0
.end method

.method public setVisibilityState(Lcom/google/firebase/perf/v1/VisibilityState;)Lcom/google/firebase/perf/v1/WebApplicationInfo$Builder;
    .locals 1

    .line 683
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/WebApplicationInfo$Builder;->copyOnWrite()V

    .line 684
    iget-object v0, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/WebApplicationInfo;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/WebApplicationInfo;->access$900(Lcom/google/firebase/perf/v1/WebApplicationInfo;Lcom/google/firebase/perf/v1/VisibilityState;)V

    return-object p0
.end method
