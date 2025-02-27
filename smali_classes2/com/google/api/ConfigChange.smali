.class public final Lcom/google/api/ConfigChange;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ConfigChange.java"

# interfaces
.implements Lcom/google/api/ConfigChangeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/ConfigChange$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/api/ConfigChange;",
        "Lcom/google/api/ConfigChange$Builder;",
        ">;",
        "Lcom/google/api/ConfigChangeOrBuilder;"
    }
.end annotation


# static fields
.field public static final ADVICES_FIELD_NUMBER:I = 0x5

.field public static final CHANGE_TYPE_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lcom/google/api/ConfigChange;

.field public static final ELEMENT_FIELD_NUMBER:I = 0x1

.field public static final NEW_VALUE_FIELD_NUMBER:I = 0x3

.field public static final OLD_VALUE_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/ConfigChange;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private advices_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/api/Advice;",
            ">;"
        }
    .end annotation
.end field

.field private changeType_:I

.field private element_:Ljava/lang/String;

.field private newValue_:Ljava/lang/String;

.field private oldValue_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1138
    new-instance v0, Lcom/google/api/ConfigChange;

    invoke-direct {v0}, Lcom/google/api/ConfigChange;-><init>()V

    .line 1141
    sput-object v0, Lcom/google/api/ConfigChange;->DEFAULT_INSTANCE:Lcom/google/api/ConfigChange;

    .line 1142
    const-class v1, Lcom/google/api/ConfigChange;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 23
    iput-object v0, p0, Lcom/google/api/ConfigChange;->element_:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/google/api/ConfigChange;->oldValue_:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/google/api/ConfigChange;->newValue_:Ljava/lang/String;

    .line 26
    invoke-static {}, Lcom/google/api/ConfigChange;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ConfigChange;->advices_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$000()Lcom/google/api/ConfigChange;
    .locals 1

    .line 17
    sget-object v0, Lcom/google/api/ConfigChange;->DEFAULT_INSTANCE:Lcom/google/api/ConfigChange;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/api/ConfigChange;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/google/api/ConfigChange;->setElement(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/api/ConfigChange;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/google/api/ConfigChange;->setChangeTypeValue(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/api/ConfigChange;Lcom/google/api/ChangeType;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/google/api/ConfigChange;->setChangeType(Lcom/google/api/ChangeType;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/api/ConfigChange;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/google/api/ConfigChange;->clearChangeType()V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/api/ConfigChange;ILcom/google/api/Advice;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/google/api/ConfigChange;->setAdvices(ILcom/google/api/Advice;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/api/ConfigChange;Lcom/google/api/Advice;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/google/api/ConfigChange;->addAdvices(Lcom/google/api/Advice;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/api/ConfigChange;ILcom/google/api/Advice;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/google/api/ConfigChange;->addAdvices(ILcom/google/api/Advice;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/api/ConfigChange;Ljava/lang/Iterable;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/google/api/ConfigChange;->addAllAdvices(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/api/ConfigChange;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/google/api/ConfigChange;->clearAdvices()V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/api/ConfigChange;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/google/api/ConfigChange;->removeAdvices(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/api/ConfigChange;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/google/api/ConfigChange;->clearElement()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/api/ConfigChange;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/google/api/ConfigChange;->setElementBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/api/ConfigChange;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/google/api/ConfigChange;->setOldValue(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/api/ConfigChange;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/google/api/ConfigChange;->clearOldValue()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/api/ConfigChange;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/google/api/ConfigChange;->setOldValueBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/api/ConfigChange;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/google/api/ConfigChange;->setNewValue(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/api/ConfigChange;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/google/api/ConfigChange;->clearNewValue()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/api/ConfigChange;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/google/api/ConfigChange;->setNewValueBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private addAdvices(ILcom/google/api/Advice;)V
    .locals 1

    .line 447
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 448
    invoke-direct {p0}, Lcom/google/api/ConfigChange;->ensureAdvicesIsMutable()V

    .line 449
    iget-object v0, p0, Lcom/google/api/ConfigChange;->advices_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addAdvices(Lcom/google/api/Advice;)V
    .locals 1

    .line 433
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 434
    invoke-direct {p0}, Lcom/google/api/ConfigChange;->ensureAdvicesIsMutable()V

    .line 435
    iget-object v0, p0, Lcom/google/api/ConfigChange;->advices_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addAllAdvices(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/Advice;",
            ">;)V"
        }
    .end annotation

    .line 461
    invoke-direct {p0}, Lcom/google/api/ConfigChange;->ensureAdvicesIsMutable()V

    .line 462
    iget-object v0, p0, Lcom/google/api/ConfigChange;->advices_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private clearAdvices()V
    .locals 1

    .line 474
    invoke-static {}, Lcom/google/api/ConfigChange;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ConfigChange;->advices_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearChangeType()V
    .locals 1

    const/4 v0, 0x0

    .line 338
    iput v0, p0, Lcom/google/api/ConfigChange;->changeType_:I

    return-void
.end method

.method private clearElement()V
    .locals 1

    .line 110
    invoke-static {}, Lcom/google/api/ConfigChange;->getDefaultInstance()Lcom/google/api/ConfigChange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/ConfigChange;->getElement()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ConfigChange;->element_:Ljava/lang/String;

    return-void
.end method

.method private clearNewValue()V
    .locals 1

    .line 261
    invoke-static {}, Lcom/google/api/ConfigChange;->getDefaultInstance()Lcom/google/api/ConfigChange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/ConfigChange;->getNewValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ConfigChange;->newValue_:Ljava/lang/String;

    return-void
.end method

.method private clearOldValue()V
    .locals 1

    .line 189
    invoke-static {}, Lcom/google/api/ConfigChange;->getDefaultInstance()Lcom/google/api/ConfigChange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/ConfigChange;->getOldValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ConfigChange;->oldValue_:Ljava/lang/String;

    return-void
.end method

.method private ensureAdvicesIsMutable()V
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/google/api/ConfigChange;->advices_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/google/api/ConfigChange;->advices_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 406
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/ConfigChange;->advices_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/api/ConfigChange;
    .locals 1

    .line 1147
    sget-object v0, Lcom/google/api/ConfigChange;->DEFAULT_INSTANCE:Lcom/google/api/ConfigChange;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/api/ConfigChange$Builder;
    .locals 1

    .line 564
    sget-object v0, Lcom/google/api/ConfigChange;->DEFAULT_INSTANCE:Lcom/google/api/ConfigChange;

    invoke-virtual {v0}, Lcom/google/api/ConfigChange;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/ConfigChange$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/api/ConfigChange;)Lcom/google/api/ConfigChange$Builder;
    .locals 1

    .line 567
    sget-object v0, Lcom/google/api/ConfigChange;->DEFAULT_INSTANCE:Lcom/google/api/ConfigChange;

    invoke-virtual {v0, p0}, Lcom/google/api/ConfigChange;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/api/ConfigChange$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/ConfigChange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 541
    sget-object v0, Lcom/google/api/ConfigChange;->DEFAULT_INSTANCE:Lcom/google/api/ConfigChange;

    invoke-static {v0, p0}, Lcom/google/api/ConfigChange;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/ConfigChange;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/ConfigChange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 547
    sget-object v0, Lcom/google/api/ConfigChange;->DEFAULT_INSTANCE:Lcom/google/api/ConfigChange;

    invoke-static {v0, p0, p1}, Lcom/google/api/ConfigChange;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/ConfigChange;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/api/ConfigChange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 505
    sget-object v0, Lcom/google/api/ConfigChange;->DEFAULT_INSTANCE:Lcom/google/api/ConfigChange;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/ConfigChange;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/ConfigChange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 512
    sget-object v0, Lcom/google/api/ConfigChange;->DEFAULT_INSTANCE:Lcom/google/api/ConfigChange;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/ConfigChange;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/api/ConfigChange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 552
    sget-object v0, Lcom/google/api/ConfigChange;->DEFAULT_INSTANCE:Lcom/google/api/ConfigChange;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/ConfigChange;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/ConfigChange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 559
    sget-object v0, Lcom/google/api/ConfigChange;->DEFAULT_INSTANCE:Lcom/google/api/ConfigChange;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/ConfigChange;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/ConfigChange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 529
    sget-object v0, Lcom/google/api/ConfigChange;->DEFAULT_INSTANCE:Lcom/google/api/ConfigChange;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/ConfigChange;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/ConfigChange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 536
    sget-object v0, Lcom/google/api/ConfigChange;->DEFAULT_INSTANCE:Lcom/google/api/ConfigChange;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/ConfigChange;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/ConfigChange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 492
    sget-object v0, Lcom/google/api/ConfigChange;->DEFAULT_INSTANCE:Lcom/google/api/ConfigChange;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/ConfigChange;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/ConfigChange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 499
    sget-object v0, Lcom/google/api/ConfigChange;->DEFAULT_INSTANCE:Lcom/google/api/ConfigChange;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/ConfigChange;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/api/ConfigChange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 517
    sget-object v0, Lcom/google/api/ConfigChange;->DEFAULT_INSTANCE:Lcom/google/api/ConfigChange;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/ConfigChange;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/ConfigChange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 524
    sget-object v0, Lcom/google/api/ConfigChange;->DEFAULT_INSTANCE:Lcom/google/api/ConfigChange;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/ConfigChange;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/ConfigChange;",
            ">;"
        }
    .end annotation

    .line 1153
    sget-object v0, Lcom/google/api/ConfigChange;->DEFAULT_INSTANCE:Lcom/google/api/ConfigChange;

    invoke-virtual {v0}, Lcom/google/api/ConfigChange;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeAdvices(I)V
    .locals 1

    .line 485
    invoke-direct {p0}, Lcom/google/api/ConfigChange;->ensureAdvicesIsMutable()V

    .line 486
    iget-object v0, p0, Lcom/google/api/ConfigChange;->advices_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setAdvices(ILcom/google/api/Advice;)V
    .locals 1

    .line 420
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 421
    invoke-direct {p0}, Lcom/google/api/ConfigChange;->ensureAdvicesIsMutable()V

    .line 422
    iget-object v0, p0, Lcom/google/api/ConfigChange;->advices_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setChangeType(Lcom/google/api/ChangeType;)V
    .locals 0

    .line 326
    invoke-virtual {p1}, Lcom/google/api/ChangeType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/api/ConfigChange;->changeType_:I

    return-void
.end method

.method private setChangeTypeValue(I)V
    .locals 0

    .line 315
    iput p1, p0, Lcom/google/api/ConfigChange;->changeType_:I

    return-void
.end method

.method private setElement(Ljava/lang/String;)V
    .locals 0

    .line 89
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    iput-object p1, p0, Lcom/google/api/ConfigChange;->element_:Ljava/lang/String;

    return-void
.end method

.method private setElementBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 130
    invoke-static {p1}, Lcom/google/api/ConfigChange;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 131
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/ConfigChange;->element_:Ljava/lang/String;

    return-void
.end method

.method private setNewValue(Ljava/lang/String;)V
    .locals 0

    .line 247
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 249
    iput-object p1, p0, Lcom/google/api/ConfigChange;->newValue_:Ljava/lang/String;

    return-void
.end method

.method private setNewValueBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 274
    invoke-static {p1}, Lcom/google/api/ConfigChange;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 275
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/ConfigChange;->newValue_:Ljava/lang/String;

    return-void
.end method

.method private setOldValue(Ljava/lang/String;)V
    .locals 0

    .line 175
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    iput-object p1, p0, Lcom/google/api/ConfigChange;->oldValue_:Ljava/lang/String;

    return-void
.end method

.method private setOldValueBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 202
    invoke-static {p1}, Lcom/google/api/ConfigChange;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 203
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/ConfigChange;->oldValue_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1084
    sget-object p2, Lcom/google/api/ConfigChange$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1131
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 1125
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1110
    :pswitch_2
    sget-object p1, Lcom/google/api/ConfigChange;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1112
    const-class p2, Lcom/google/api/ConfigChange;

    monitor-enter p2

    .line 1113
    :try_start_0
    sget-object p1, Lcom/google/api/ConfigChange;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1115
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/api/ConfigChange;->DEFAULT_INSTANCE:Lcom/google/api/ConfigChange;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1118
    sput-object p1, Lcom/google/api/ConfigChange;->PARSER:Lcom/google/protobuf/Parser;

    .line 1120
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

    .line 1107
    :pswitch_3
    sget-object p1, Lcom/google/api/ConfigChange;->DEFAULT_INSTANCE:Lcom/google/api/ConfigChange;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "element_"

    aput-object v0, p1, p3

    const-string p3, "oldValue_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "newValue_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "changeType_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "advices_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    .line 1092
    const-class p3, Lcom/google/api/Advice;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0001\u0000\u0001\u0208\u0002\u0208\u0003\u0208\u0004\u000c\u0005\u001b"

    .line 1103
    sget-object p3, Lcom/google/api/ConfigChange;->DEFAULT_INSTANCE:Lcom/google/api/ConfigChange;

    invoke-static {p3, p2, p1}, Lcom/google/api/ConfigChange;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1089
    :pswitch_5
    new-instance p1, Lcom/google/api/ConfigChange$Builder;

    invoke-direct {p1, p3}, Lcom/google/api/ConfigChange$Builder;-><init>(Lcom/google/api/ConfigChange$1;)V

    return-object p1

    .line 1086
    :pswitch_6
    new-instance p1, Lcom/google/api/ConfigChange;

    invoke-direct {p1}, Lcom/google/api/ConfigChange;-><init>()V

    return-object p1

    nop

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

.method public getAdvices(I)Lcom/google/api/Advice;
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/google/api/ConfigChange;->advices_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/Advice;

    return-object p1
.end method

.method public getAdvicesCount()I
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/google/api/ConfigChange;->advices_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getAdvicesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/Advice;",
            ">;"
        }
    .end annotation

    .line 353
    iget-object v0, p0, Lcom/google/api/ConfigChange;->advices_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getAdvicesOrBuilder(I)Lcom/google/api/AdviceOrBuilder;
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/google/api/ConfigChange;->advices_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/AdviceOrBuilder;

    return-object p1
.end method

.method public getAdvicesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/api/AdviceOrBuilder;",
            ">;"
        }
    .end annotation

    .line 365
    iget-object v0, p0, Lcom/google/api/ConfigChange;->advices_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getChangeType()Lcom/google/api/ChangeType;
    .locals 1

    .line 303
    iget v0, p0, Lcom/google/api/ConfigChange;->changeType_:I

    invoke-static {v0}, Lcom/google/api/ChangeType;->forNumber(I)Lcom/google/api/ChangeType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 304
    sget-object v0, Lcom/google/api/ChangeType;->UNRECOGNIZED:Lcom/google/api/ChangeType;

    :cond_0
    return-object v0
.end method

.method public getChangeTypeValue()I
    .locals 1

    .line 291
    iget v0, p0, Lcom/google/api/ConfigChange;->changeType_:I

    return v0
.end method

.method public getElement()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/google/api/ConfigChange;->element_:Ljava/lang/String;

    return-object v0
.end method

.method public getElementBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/google/api/ConfigChange;->element_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNewValue()Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/google/api/ConfigChange;->newValue_:Ljava/lang/String;

    return-object v0
.end method

.method public getNewValueBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/google/api/ConfigChange;->newValue_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOldValue()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/google/api/ConfigChange;->oldValue_:Ljava/lang/String;

    return-object v0
.end method

.method public getOldValueBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/google/api/ConfigChange;->oldValue_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
