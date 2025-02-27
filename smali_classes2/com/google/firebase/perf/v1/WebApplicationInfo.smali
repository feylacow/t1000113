.class public final Lcom/google/firebase/perf/v1/WebApplicationInfo;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "WebApplicationInfo.java"

# interfaces
.implements Lcom/google/firebase/perf/v1/WebApplicationInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/perf/v1/WebApplicationInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firebase/perf/v1/WebApplicationInfo;",
        "Lcom/google/firebase/perf/v1/WebApplicationInfo$Builder;",
        ">;",
        "Lcom/google/firebase/perf/v1/WebApplicationInfoOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/WebApplicationInfo;

.field public static final EFFECTIVE_CONNECTION_TYPE_FIELD_NUMBER:I = 0x5

.field public static final PAGE_URL_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/perf/v1/WebApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final SDK_VERSION_FIELD_NUMBER:I = 0x1

.field public static final SERVICE_WORKER_STATUS_FIELD_NUMBER:I = 0x3

.field public static final VISIBILITY_STATE_FIELD_NUMBER:I = 0x4


# instance fields
.field private bitField0_:I

.field private effectiveConnectionType_:I

.field private pageUrl_:Ljava/lang/String;

.field private sdkVersion_:Ljava/lang/String;

.field private serviceWorkerStatus_:I

.field private visibilityState_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 817
    new-instance v0, Lcom/google/firebase/perf/v1/WebApplicationInfo;

    invoke-direct {v0}, Lcom/google/firebase/perf/v1/WebApplicationInfo;-><init>()V

    .line 820
    sput-object v0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/WebApplicationInfo;

    .line 821
    const-class v1, Lcom/google/firebase/perf/v1/WebApplicationInfo;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 21
    iput-object v0, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->sdkVersion_:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->pageUrl_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/google/firebase/perf/v1/WebApplicationInfo;
    .locals 1

    .line 15
    sget-object v0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/WebApplicationInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firebase/perf/v1/WebApplicationInfo;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/WebApplicationInfo;->setSdkVersion(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/firebase/perf/v1/WebApplicationInfo;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/WebApplicationInfo;->clearVisibilityState()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/firebase/perf/v1/WebApplicationInfo;Lcom/google/firebase/perf/v1/EffectiveConnectionType;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/WebApplicationInfo;->setEffectiveConnectionType(Lcom/google/firebase/perf/v1/EffectiveConnectionType;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/firebase/perf/v1/WebApplicationInfo;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/WebApplicationInfo;->clearEffectiveConnectionType()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firebase/perf/v1/WebApplicationInfo;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/WebApplicationInfo;->clearSdkVersion()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firebase/perf/v1/WebApplicationInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/WebApplicationInfo;->setSdkVersionBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firebase/perf/v1/WebApplicationInfo;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/WebApplicationInfo;->setPageUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firebase/perf/v1/WebApplicationInfo;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/WebApplicationInfo;->clearPageUrl()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firebase/perf/v1/WebApplicationInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/WebApplicationInfo;->setPageUrlBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/firebase/perf/v1/WebApplicationInfo;Lcom/google/firebase/perf/v1/ServiceWorkerStatus;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/WebApplicationInfo;->setServiceWorkerStatus(Lcom/google/firebase/perf/v1/ServiceWorkerStatus;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/firebase/perf/v1/WebApplicationInfo;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/WebApplicationInfo;->clearServiceWorkerStatus()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/firebase/perf/v1/WebApplicationInfo;Lcom/google/firebase/perf/v1/VisibilityState;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/v1/WebApplicationInfo;->setVisibilityState(Lcom/google/firebase/perf/v1/VisibilityState;)V

    return-void
.end method

.method private clearEffectiveConnectionType()V
    .locals 1

    .line 330
    iget v0, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->bitField0_:I

    const/4 v0, 0x0

    .line 331
    iput v0, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->effectiveConnectionType_:I

    return-void
.end method

.method private clearPageUrl()V
    .locals 1

    .line 164
    iget v0, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->bitField0_:I

    .line 165
    invoke-static {}, Lcom/google/firebase/perf/v1/WebApplicationInfo;->getDefaultInstance()Lcom/google/firebase/perf/v1/WebApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/WebApplicationInfo;->getPageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->pageUrl_:Ljava/lang/String;

    return-void
.end method

.method private clearSdkVersion()V
    .locals 1

    .line 86
    iget v0, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->bitField0_:I

    .line 87
    invoke-static {}, Lcom/google/firebase/perf/v1/WebApplicationInfo;->getDefaultInstance()Lcom/google/firebase/perf/v1/WebApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/WebApplicationInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->sdkVersion_:Ljava/lang/String;

    return-void
.end method

.method private clearServiceWorkerStatus()V
    .locals 1

    .line 228
    iget v0, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->bitField0_:I

    const/4 v0, 0x0

    .line 229
    iput v0, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->serviceWorkerStatus_:I

    return-void
.end method

.method private clearVisibilityState()V
    .locals 1

    .line 279
    iget v0, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->bitField0_:I

    const/4 v0, 0x0

    .line 280
    iput v0, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->visibilityState_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firebase/perf/v1/WebApplicationInfo;
    .locals 1

    .line 826
    sget-object v0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/WebApplicationInfo;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firebase/perf/v1/WebApplicationInfo$Builder;
    .locals 1

    .line 409
    sget-object v0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/WebApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/WebApplicationInfo;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/v1/WebApplicationInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firebase/perf/v1/WebApplicationInfo;)Lcom/google/firebase/perf/v1/WebApplicationInfo$Builder;
    .locals 1

    .line 412
    sget-object v0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/WebApplicationInfo;

    invoke-virtual {v0, p0}, Lcom/google/firebase/perf/v1/WebApplicationInfo;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/WebApplicationInfo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firebase/perf/v1/WebApplicationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 386
    sget-object v0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/WebApplicationInfo;

    invoke-static {v0, p0}, Lcom/google/firebase/perf/v1/WebApplicationInfo;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/WebApplicationInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/perf/v1/WebApplicationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 392
    sget-object v0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/WebApplicationInfo;

    invoke-static {v0, p0, p1}, Lcom/google/firebase/perf/v1/WebApplicationInfo;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/WebApplicationInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/perf/v1/WebApplicationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 350
    sget-object v0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/WebApplicationInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/WebApplicationInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/perf/v1/WebApplicationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 357
    sget-object v0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/WebApplicationInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/WebApplicationInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firebase/perf/v1/WebApplicationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 397
    sget-object v0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/WebApplicationInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/WebApplicationInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/perf/v1/WebApplicationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 404
    sget-object v0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/WebApplicationInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/WebApplicationInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firebase/perf/v1/WebApplicationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 374
    sget-object v0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/WebApplicationInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/WebApplicationInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/perf/v1/WebApplicationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 381
    sget-object v0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/WebApplicationInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/WebApplicationInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firebase/perf/v1/WebApplicationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 337
    sget-object v0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/WebApplicationInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/WebApplicationInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/perf/v1/WebApplicationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 344
    sget-object v0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/WebApplicationInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/WebApplicationInfo;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/firebase/perf/v1/WebApplicationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 362
    sget-object v0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/WebApplicationInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/WebApplicationInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/perf/v1/WebApplicationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 369
    sget-object v0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/WebApplicationInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/WebApplicationInfo;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/perf/v1/WebApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 832
    sget-object v0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/WebApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/WebApplicationInfo;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setEffectiveConnectionType(Lcom/google/firebase/perf/v1/EffectiveConnectionType;)V
    .locals 0

    .line 319
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/EffectiveConnectionType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->effectiveConnectionType_:I

    .line 320
    iget p1, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->bitField0_:I

    return-void
.end method

.method private setPageUrl(Ljava/lang/String;)V
    .locals 1

    .line 152
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    iget v0, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->bitField0_:I

    .line 154
    iput-object p1, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->pageUrl_:Ljava/lang/String;

    return-void
.end method

.method private setPageUrlBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 177
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->pageUrl_:Ljava/lang/String;

    .line 178
    iget p1, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->bitField0_:I

    return-void
.end method

.method private setSdkVersion(Ljava/lang/String;)V
    .locals 1

    .line 74
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    iget v0, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->bitField0_:I

    .line 76
    iput-object p1, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->sdkVersion_:Ljava/lang/String;

    return-void
.end method

.method private setSdkVersionBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 99
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->sdkVersion_:Ljava/lang/String;

    .line 100
    iget p1, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->bitField0_:I

    return-void
.end method

.method private setServiceWorkerStatus(Lcom/google/firebase/perf/v1/ServiceWorkerStatus;)V
    .locals 0

    .line 217
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/ServiceWorkerStatus;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->serviceWorkerStatus_:I

    .line 218
    iget p1, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->bitField0_:I

    return-void
.end method

.method private setVisibilityState(Lcom/google/firebase/perf/v1/VisibilityState;)V
    .locals 0

    .line 268
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/VisibilityState;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->visibilityState_:I

    .line 269
    iget p1, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->bitField0_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 760
    sget-object p2, Lcom/google/firebase/perf/v1/WebApplicationInfo$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 810
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 804
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 789
    :pswitch_2
    sget-object p1, Lcom/google/firebase/perf/v1/WebApplicationInfo;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 791
    const-class p2, Lcom/google/firebase/perf/v1/WebApplicationInfo;

    monitor-enter p2

    .line 792
    :try_start_0
    sget-object p1, Lcom/google/firebase/perf/v1/WebApplicationInfo;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 794
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firebase/perf/v1/WebApplicationInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/WebApplicationInfo;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 797
    sput-object p1, Lcom/google/firebase/perf/v1/WebApplicationInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 799
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

    .line 786
    :pswitch_3
    sget-object p1, Lcom/google/firebase/perf/v1/WebApplicationInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/WebApplicationInfo;

    return-object p1

    :pswitch_4
    const/16 p1, 0x9

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "bitField0_"

    aput-object v0, p1, p3

    const-string p3, "sdkVersion_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "pageUrl_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "serviceWorkerStatus_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    .line 773
    invoke-static {}, Lcom/google/firebase/perf/v1/ServiceWorkerStatus;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "visibilityState_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    .line 775
    invoke-static {}, Lcom/google/firebase/perf/v1/VisibilityState;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "effectiveConnectionType_"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    .line 777
    invoke-static {}, Lcom/google/firebase/perf/v1/EffectiveConnectionType;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u0008\u0000\u0002\u0008\u0001\u0003\u000c\u0002\u0004\u000c\u0003\u0005\u000c\u0004"

    .line 782
    sget-object p3, Lcom/google/firebase/perf/v1/WebApplicationInfo;->DEFAULT_INSTANCE:Lcom/google/firebase/perf/v1/WebApplicationInfo;

    invoke-static {p3, p2, p1}, Lcom/google/firebase/perf/v1/WebApplicationInfo;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 765
    :pswitch_5
    new-instance p1, Lcom/google/firebase/perf/v1/WebApplicationInfo$Builder;

    invoke-direct {p1, p3}, Lcom/google/firebase/perf/v1/WebApplicationInfo$Builder;-><init>(Lcom/google/firebase/perf/v1/WebApplicationInfo$1;)V

    return-object p1

    .line 762
    :pswitch_6
    new-instance p1, Lcom/google/firebase/perf/v1/WebApplicationInfo;

    invoke-direct {p1}, Lcom/google/firebase/perf/v1/WebApplicationInfo;-><init>()V

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

.method public getEffectiveConnectionType()Lcom/google/firebase/perf/v1/EffectiveConnectionType;
    .locals 1

    .line 307
    iget v0, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->effectiveConnectionType_:I

    invoke-static {v0}, Lcom/google/firebase/perf/v1/EffectiveConnectionType;->forNumber(I)Lcom/google/firebase/perf/v1/EffectiveConnectionType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 308
    sget-object v0, Lcom/google/firebase/perf/v1/EffectiveConnectionType;->EFFECTIVE_CONNECTION_TYPE_UNKNOWN:Lcom/google/firebase/perf/v1/EffectiveConnectionType;

    :cond_0
    return-object v0
.end method

.method public getPageUrl()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->pageUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getPageUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->pageUrl_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->sdkVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->sdkVersion_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getServiceWorkerStatus()Lcom/google/firebase/perf/v1/ServiceWorkerStatus;
    .locals 1

    .line 205
    iget v0, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->serviceWorkerStatus_:I

    invoke-static {v0}, Lcom/google/firebase/perf/v1/ServiceWorkerStatus;->forNumber(I)Lcom/google/firebase/perf/v1/ServiceWorkerStatus;

    move-result-object v0

    if-nez v0, :cond_0

    .line 206
    sget-object v0, Lcom/google/firebase/perf/v1/ServiceWorkerStatus;->SERVICE_WORKER_STATUS_UNKNOWN:Lcom/google/firebase/perf/v1/ServiceWorkerStatus;

    :cond_0
    return-object v0
.end method

.method public getVisibilityState()Lcom/google/firebase/perf/v1/VisibilityState;
    .locals 1

    .line 256
    iget v0, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->visibilityState_:I

    invoke-static {v0}, Lcom/google/firebase/perf/v1/VisibilityState;->forNumber(I)Lcom/google/firebase/perf/v1/VisibilityState;

    move-result-object v0

    if-nez v0, :cond_0

    .line 257
    sget-object v0, Lcom/google/firebase/perf/v1/VisibilityState;->VISIBILITY_STATE_UNKNOWN:Lcom/google/firebase/perf/v1/VisibilityState;

    :cond_0
    return-object v0
.end method

.method public hasEffectiveConnectionType()Z
    .locals 1

    .line 295
    iget v0, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPageUrl()Z
    .locals 1

    .line 115
    iget v0, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSdkVersion()Z
    .locals 2

    .line 37
    iget v0, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasServiceWorkerStatus()Z
    .locals 1

    .line 193
    iget v0, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasVisibilityState()Z
    .locals 1

    .line 244
    iget v0, p0, Lcom/google/firebase/perf/v1/WebApplicationInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
