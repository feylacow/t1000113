.class public final Lcom/google/firebase/perf/v1/GaugeMetadata;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "GaugeMetadata.java"

# interfaces
.implements Lcom/google/firebase/perf/v1/GaugeMetadataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firebase/perf/v1/GaugeMetadata;",
        "Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;",
        ">;",
        "Lcom/google/firebase/perf/v1/GaugeMetadataOrBuilder;"
    }
.end annotation


# static fields
.field public static final CPU_CLOCK_RATE_KHZ_FIELD_NUMBER:I = 0x2

.field public static final CPU_PROCESSOR_COUNT_FIELD_NUMBER:I = 0x6

.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/GaugeMetadata;

.field public static final DEVICE_RAM_SIZE_KB_FIELD_NUMBER:I = 0x3

.field public static final MAX_APP_JAVA_HEAP_MEMORY_KB_FIELD_NUMBER:I = 0x4

.field public static final MAX_ENCOURAGED_APP_JAVA_HEAP_MEMORY_KB_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/perf/v1/GaugeMetadata;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROCESS_NAME_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private cpuClockRateKhz_:I

.field private cpuProcessorCount_:I

.field private deviceRamSizeKb_:I

.field private maxAppJavaHeapMemoryKb_:I

.field private maxEncouragedAppJavaHeapMemoryKb_:I

.field private processName_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 935
    new-instance v0, Lcom/google/firebase/perf/v1/GaugeMetadata;

    invoke-direct {v0}, Lcom/google/firebase/perf/v1/GaugeMetadata;-><init>()V

    .line 938
    sput-object v0, Lcom/google/firebase/perf/v1/GaugeMetadata;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/GaugeMetadata;

    .line 939
    const-class v1, Lcom/google/firebase/perf/v1/GaugeMetadata;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 26
    iput-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata;->processName_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/google/firebase/perf/v1/GaugeMetadata;
    .locals 1

    .line 20
    sget-object v0, Lcom/google/firebase/perf/v1/GaugeMetadata;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/GaugeMetadata;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firebase/perf/v1/GaugeMetadata;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/GaugeMetadata;->setProcessName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/firebase/perf/v1/GaugeMetadata;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/GaugeMetadata;->setMaxAppJavaHeapMemoryKb(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/firebase/perf/v1/GaugeMetadata;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/GaugeMetadata;->clearMaxAppJavaHeapMemoryKb()V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/firebase/perf/v1/GaugeMetadata;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/GaugeMetadata;->setMaxEncouragedAppJavaHeapMemoryKb(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/firebase/perf/v1/GaugeMetadata;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/GaugeMetadata;->clearMaxEncouragedAppJavaHeapMemoryKb()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firebase/perf/v1/GaugeMetadata;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/GaugeMetadata;->clearProcessName()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firebase/perf/v1/GaugeMetadata;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/GaugeMetadata;->setProcessNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firebase/perf/v1/GaugeMetadata;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/GaugeMetadata;->setCpuClockRateKhz(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firebase/perf/v1/GaugeMetadata;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/GaugeMetadata;->clearCpuClockRateKhz()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firebase/perf/v1/GaugeMetadata;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/GaugeMetadata;->setCpuProcessorCount(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/firebase/perf/v1/GaugeMetadata;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/GaugeMetadata;->clearCpuProcessorCount()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/firebase/perf/v1/GaugeMetadata;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/GaugeMetadata;->setDeviceRamSizeKb(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/firebase/perf/v1/GaugeMetadata;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/GaugeMetadata;->clearDeviceRamSizeKb()V

    return-void
.end method

.method private clearCpuClockRateKhz()V
    .locals 1

    .line 171
    iget v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata;->bitField0_:I

    const/4 v0, 0x0

    .line 172
    iput v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata;->cpuClockRateKhz_:I

    return-void
.end method

.method private clearCpuProcessorCount()V
    .locals 1

    .line 221
    iget v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata;->bitField0_:I

    const/4 v0, 0x0

    .line 222
    iput v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata;->cpuProcessorCount_:I

    return-void
.end method

.method private clearDeviceRamSizeKb()V
    .locals 1

    .line 271
    iget v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata;->bitField0_:I

    const/4 v0, 0x0

    .line 272
    iput v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata;->deviceRamSizeKb_:I

    return-void
.end method

.method private clearMaxAppJavaHeapMemoryKb()V
    .locals 1

    .line 329
    iget v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata;->bitField0_:I

    const/4 v0, 0x0

    .line 330
    iput v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata;->maxAppJavaHeapMemoryKb_:I

    return-void
.end method

.method private clearMaxEncouragedAppJavaHeapMemoryKb()V
    .locals 1

    .line 387
    iget v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata;->bitField0_:I

    const/4 v0, 0x0

    .line 388
    iput v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata;->maxEncouragedAppJavaHeapMemoryKb_:I

    return-void
.end method

.method private clearProcessName()V
    .locals 1

    .line 105
    iget v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata;->bitField0_:I

    .line 106
    invoke-static {}, Lcom/google/firebase/perf/v1/GaugeMetadata;->getDefaultInstance()Lcom/google/firebase/perf/v1/GaugeMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/GaugeMetadata;->getProcessName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata;->processName_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firebase/perf/v1/GaugeMetadata;
    .locals 1

    .line 944
    sget-object v0, Lcom/google/firebase/perf/v1/GaugeMetadata;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/GaugeMetadata;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;
    .locals 1

    .line 466
    sget-object v0, Lcom/google/firebase/perf/v1/GaugeMetadata;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/GaugeMetadata;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/GaugeMetadata;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firebase/perf/v1/GaugeMetadata;)Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;
    .locals 1

    .line 469
    sget-object v0, Lcom/google/firebase/perf/v1/GaugeMetadata;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/GaugeMetadata;

    invoke-virtual {v0, p0}, Lcom/google/firebase/perf/v1/GaugeMetadata;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firebase/perf/v1/GaugeMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 443
    sget-object v0, Lcom/google/firebase/perf/v1/GaugeMetadata;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/GaugeMetadata;

    invoke-static {v0, p0}, Lcom/google/firebase/perf/v1/GaugeMetadata;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/GaugeMetadata;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/perf/v1/GaugeMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 449
    sget-object v0, Lcom/google/firebase/perf/v1/GaugeMetadata;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/GaugeMetadata;

    invoke-static {v0, p0, p1}, Lcom/google/firebase/perf/v1/GaugeMetadata;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/GaugeMetadata;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/perf/v1/GaugeMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 407
    sget-object v0, Lcom/google/firebase/perf/v1/GaugeMetadata;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/GaugeMetadata;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/GaugeMetadata;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/perf/v1/GaugeMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 414
    sget-object v0, Lcom/google/firebase/perf/v1/GaugeMetadata;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/GaugeMetadata;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/GaugeMetadata;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firebase/perf/v1/GaugeMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 454
    sget-object v0, Lcom/google/firebase/perf/v1/GaugeMetadata;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/GaugeMetadata;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/GaugeMetadata;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/perf/v1/GaugeMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 461
    sget-object v0, Lcom/google/firebase/perf/v1/GaugeMetadata;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/GaugeMetadata;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/GaugeMetadata;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firebase/perf/v1/GaugeMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 431
    sget-object v0, Lcom/google/firebase/perf/v1/GaugeMetadata;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/GaugeMetadata;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/GaugeMetadata;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/perf/v1/GaugeMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 438
    sget-object v0, Lcom/google/firebase/perf/v1/GaugeMetadata;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/GaugeMetadata;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/GaugeMetadata;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firebase/perf/v1/GaugeMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 394
    sget-object v0, Lcom/google/firebase/perf/v1/GaugeMetadata;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/GaugeMetadata;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/GaugeMetadata;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/perf/v1/GaugeMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 401
    sget-object v0, Lcom/google/firebase/perf/v1/GaugeMetadata;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/GaugeMetadata;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/GaugeMetadata;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/firebase/perf/v1/GaugeMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 419
    sget-object v0, Lcom/google/firebase/perf/v1/GaugeMetadata;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/GaugeMetadata;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/GaugeMetadata;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/perf/v1/GaugeMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 426
    sget-object v0, Lcom/google/firebase/perf/v1/GaugeMetadata;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/GaugeMetadata;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/GaugeMetadata;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/perf/v1/GaugeMetadata;",
            ">;"
        }
    .end annotation

    .line 950
    sget-object v0, Lcom/google/firebase/perf/v1/GaugeMetadata;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/GaugeMetadata;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/GaugeMetadata;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCpuClockRateKhz(I)V
    .locals 1

    .line 160
    iget v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata;->bitField0_:I

    .line 161
    iput p1, p0, Lcom/google/firebase/perf/v1/GaugeMetadata;->cpuClockRateKhz_:I

    return-void
.end method

.method private setCpuProcessorCount(I)V
    .locals 1

    .line 210
    iget v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata;->bitField0_:I

    .line 211
    iput p1, p0, Lcom/google/firebase/perf/v1/GaugeMetadata;->cpuProcessorCount_:I

    return-void
.end method

.method private setDeviceRamSizeKb(I)V
    .locals 1

    .line 260
    iget v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata;->bitField0_:I

    .line 261
    iput p1, p0, Lcom/google/firebase/perf/v1/GaugeMetadata;->deviceRamSizeKb_:I

    return-void
.end method

.method private setMaxAppJavaHeapMemoryKb(I)V
    .locals 1

    .line 316
    iget v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata;->bitField0_:I

    .line 317
    iput p1, p0, Lcom/google/firebase/perf/v1/GaugeMetadata;->maxAppJavaHeapMemoryKb_:I

    return-void
.end method

.method private setMaxEncouragedAppJavaHeapMemoryKb(I)V
    .locals 1

    .line 374
    iget v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata;->bitField0_:I

    .line 375
    iput p1, p0, Lcom/google/firebase/perf/v1/GaugeMetadata;->maxEncouragedAppJavaHeapMemoryKb_:I

    return-void
.end method

.method private setProcessName(Ljava/lang/String;)V
    .locals 1

    .line 90
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    iget v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata;->bitField0_:I

    .line 92
    iput-object p1, p0, Lcom/google/firebase/perf/v1/GaugeMetadata;->processName_:Ljava/lang/String;

    return-void
.end method

.method private setProcessNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 121
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/v1/GaugeMetadata;->processName_:Ljava/lang/String;

    .line 122
    iget p1, p0, Lcom/google/firebase/perf/v1/GaugeMetadata;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/firebase/perf/v1/GaugeMetadata;->bitField0_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 879
    sget-object p2, Lcom/google/firebase/perf/v1/GaugeMetadata$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 928
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 922
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 907
    :pswitch_2
    sget-object p1, Lcom/google/firebase/perf/v1/GaugeMetadata;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 909
    const-class p2, Lcom/google/firebase/perf/v1/GaugeMetadata;

    monitor-enter p2

    .line 910
    :try_start_0
    sget-object p1, Lcom/google/firebase/perf/v1/GaugeMetadata;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 912
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firebase/perf/v1/GaugeMetadata;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/GaugeMetadata;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 915
    sput-object p1, Lcom/google/firebase/perf/v1/GaugeMetadata;->PARSER:Lcom/google/protobuf/Parser;

    .line 917
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 904
    :pswitch_3
    sget-object p1, Lcom/google/firebase/perf/v1/GaugeMetadata;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/GaugeMetadata;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "bitField0_"

    aput-object v0, p1, p3

    const-string p3, "processName_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "cpuClockRateKhz_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "deviceRamSizeKb_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "maxAppJavaHeapMemoryKb_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "maxEncouragedAppJavaHeapMemoryKb_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "cpuProcessorCount_"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u0008\u0000\u0002\u0004\u0001\u0003\u0004\u0003\u0004\u0004\u0004\u0005\u0004\u0005\u0006\u0004\u0002"

    .line 900
    sget-object p3, Lcom/google/firebase/perf/v1/GaugeMetadata;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/GaugeMetadata;

    invoke-static {p3, p2, p1}, Lcom/google/firebase/perf/v1/GaugeMetadata;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 884
    :pswitch_5
    new-instance p1, Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;

    invoke-direct {p1, p3}, Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;-><init>(Lcom/google/firebase/perf/v1/GaugeMetadata$1;)V

    return-object p1

    .line 881
    :pswitch_6
    new-instance p1, Lcom/google/firebase/perf/v1/GaugeMetadata;

    invoke-direct {p1}, Lcom/google/firebase/perf/v1/GaugeMetadata;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCpuClockRateKhz()I
    .locals 1

    .line 149
    iget v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata;->cpuClockRateKhz_:I

    return v0
.end method

.method public getCpuProcessorCount()I
    .locals 1

    .line 199
    iget v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata;->cpuProcessorCount_:I

    return v0
.end method

.method public getDeviceRamSizeKb()I
    .locals 1

    .line 249
    iget v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata;->deviceRamSizeKb_:I

    return v0
.end method

.method public getMaxAppJavaHeapMemoryKb()I
    .locals 1

    .line 303
    iget v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata;->maxAppJavaHeapMemoryKb_:I

    return v0
.end method

.method public getMaxEncouragedAppJavaHeapMemoryKb()I
    .locals 1

    .line 361
    iget v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata;->maxEncouragedAppJavaHeapMemoryKb_:I

    return v0
.end method

.method public getProcessName()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata;->processName_:Ljava/lang/String;

    return-object v0
.end method

.method public getProcessNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata;->processName_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasCpuClockRateKhz()Z
    .locals 1

    .line 137
    iget v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCpuProcessorCount()Z
    .locals 1

    .line 187
    iget v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDeviceRamSizeKb()Z
    .locals 1

    .line 237
    iget v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMaxAppJavaHeapMemoryKb()Z
    .locals 1

    .line 289
    iget v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMaxEncouragedAppJavaHeapMemoryKb()Z
    .locals 1

    .line 347
    iget v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasProcessName()Z
    .locals 2

    .line 44
    iget v0, p0, Lcom/google/firebase/perf/v1/GaugeMetadata;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
