.class public final Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "GaugeMetadata.java"

# interfaces
.implements Lcom/google/firebase/perf/v1/GaugeMetadataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/perf/v1/GaugeMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firebase/perf/v1/GaugeMetadata;",
        "Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;",
        ">;",
        "Lcom/google/firebase/perf/v1/GaugeMetadataOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 493
    invoke-static {}, Lcom/google/firebase/perf/v1/GaugeMetadata;->access$000()Lcom/google/firebase/perf/v1/GaugeMetadata;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/perf/v1/GaugeMetadata$1;)V
    .locals 0

    .line 486
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCpuClockRateKhz()Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;
    .locals 1

    .line 643
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;->copyOnWrite()V

    .line 644
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetadata;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/GaugeMetadata;->access$500(Lcom/google/firebase/perf/v1/GaugeMetadata;)V

    return-object p0
.end method

.method public clearCpuProcessorCount()Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;
    .locals 1

    .line 695
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;->copyOnWrite()V

    .line 696
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetadata;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/GaugeMetadata;->access$700(Lcom/google/firebase/perf/v1/GaugeMetadata;)V

    return-object p0
.end method

.method public clearDeviceRamSizeKb()Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;
    .locals 1

    .line 747
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;->copyOnWrite()V

    .line 748
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetadata;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/GaugeMetadata;->access$900(Lcom/google/firebase/perf/v1/GaugeMetadata;)V

    return-object p0
.end method

.method public clearMaxAppJavaHeapMemoryKb()Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;
    .locals 1

    .line 807
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;->copyOnWrite()V

    .line 808
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetadata;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/GaugeMetadata;->access$1100(Lcom/google/firebase/perf/v1/GaugeMetadata;)V

    return-object p0
.end method

.method public clearMaxEncouragedAppJavaHeapMemoryKb()Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;
    .locals 1

    .line 867
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;->copyOnWrite()V

    .line 868
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetadata;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/GaugeMetadata;->access$1300(Lcom/google/firebase/perf/v1/GaugeMetadata;)V

    return-object p0
.end method

.method public clearProcessName()Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;
    .locals 1

    .line 573
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;->copyOnWrite()V

    .line 574
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetadata;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/GaugeMetadata;->access$200(Lcom/google/firebase/perf/v1/GaugeMetadata;)V

    return-object p0
.end method

.method public getCpuClockRateKhz()I
    .locals 1

    .line 618
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetadata;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/GaugeMetadata;->getCpuClockRateKhz()I

    move-result v0

    return v0
.end method

.method public getCpuProcessorCount()I
    .locals 1

    .line 670
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetadata;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/GaugeMetadata;->getCpuProcessorCount()I

    move-result v0

    return v0
.end method

.method public getDeviceRamSizeKb()I
    .locals 1

    .line 722
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetadata;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/GaugeMetadata;->getDeviceRamSizeKb()I

    move-result v0

    return v0
.end method

.method public getMaxAppJavaHeapMemoryKb()I
    .locals 1

    .line 778
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetadata;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/GaugeMetadata;->getMaxAppJavaHeapMemoryKb()I

    move-result v0

    return v0
.end method

.method public getMaxEncouragedAppJavaHeapMemoryKb()I
    .locals 1

    .line 838
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetadata;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/GaugeMetadata;->getMaxEncouragedAppJavaHeapMemoryKb()I

    move-result v0

    return v0
.end method

.method public getProcessName()Ljava/lang/String;
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetadata;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/GaugeMetadata;->getProcessName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProcessNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetadata;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/GaugeMetadata;->getProcessNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasCpuClockRateKhz()Z
    .locals 1

    .line 606
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetadata;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/GaugeMetadata;->hasCpuClockRateKhz()Z

    move-result v0

    return v0
.end method

.method public hasCpuProcessorCount()Z
    .locals 1

    .line 658
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetadata;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/GaugeMetadata;->hasCpuProcessorCount()Z

    move-result v0

    return v0
.end method

.method public hasDeviceRamSizeKb()Z
    .locals 1

    .line 710
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetadata;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/GaugeMetadata;->hasDeviceRamSizeKb()Z

    move-result v0

    return v0
.end method

.method public hasMaxAppJavaHeapMemoryKb()Z
    .locals 1

    .line 764
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetadata;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/GaugeMetadata;->hasMaxAppJavaHeapMemoryKb()Z

    move-result v0

    return v0
.end method

.method public hasMaxEncouragedAppJavaHeapMemoryKb()Z
    .locals 1

    .line 824
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetadata;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/GaugeMetadata;->hasMaxEncouragedAppJavaHeapMemoryKb()Z

    move-result v0

    return v0
.end method

.method public hasProcessName()Z
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetadata;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/GaugeMetadata;->hasProcessName()Z

    move-result v0

    return v0
.end method

.method public setCpuClockRateKhz(I)Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;
    .locals 1

    .line 630
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;->copyOnWrite()V

    .line 631
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetadata;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/GaugeMetadata;->access$400(Lcom/google/firebase/perf/v1/GaugeMetadata;I)V

    return-object p0
.end method

.method public setCpuProcessorCount(I)Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;
    .locals 1

    .line 682
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;->copyOnWrite()V

    .line 683
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetadata;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/GaugeMetadata;->access$600(Lcom/google/firebase/perf/v1/GaugeMetadata;I)V

    return-object p0
.end method

.method public setDeviceRamSizeKb(I)Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;
    .locals 1

    .line 734
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;->copyOnWrite()V

    .line 735
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetadata;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/GaugeMetadata;->access$800(Lcom/google/firebase/perf/v1/GaugeMetadata;I)V

    return-object p0
.end method

.method public setMaxAppJavaHeapMemoryKb(I)Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;
    .locals 1

    .line 792
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;->copyOnWrite()V

    .line 793
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetadata;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/GaugeMetadata;->access$1000(Lcom/google/firebase/perf/v1/GaugeMetadata;I)V

    return-object p0
.end method

.method public setMaxEncouragedAppJavaHeapMemoryKb(I)Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;
    .locals 1

    .line 852
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;->copyOnWrite()V

    .line 853
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetadata;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/GaugeMetadata;->access$1200(Lcom/google/firebase/perf/v1/GaugeMetadata;I)V

    return-object p0
.end method

.method public setProcessName(Ljava/lang/String;)Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;
    .locals 1

    .line 557
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;->copyOnWrite()V

    .line 558
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetadata;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/GaugeMetadata;->access$100(Lcom/google/firebase/perf/v1/GaugeMetadata;Ljava/lang/String;)V

    return-object p0
.end method

.method public setProcessNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;
    .locals 1

    .line 591
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;->copyOnWrite()V

    .line 592
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetadata;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/GaugeMetadata;->access$300(Lcom/google/firebase/perf/v1/GaugeMetadata;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
