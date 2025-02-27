.class public final Lcom/google/api/SystemParameters;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SystemParameters.java"

# interfaces
.implements Lcom/google/api/SystemParametersOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/SystemParameters$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/api/SystemParameters;",
        "Lcom/google/api/SystemParameters$Builder;",
        ">;",
        "Lcom/google/api/SystemParametersOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/api/SystemParameters;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/SystemParameters;",
            ">;"
        }
    .end annotation
.end field

.field public static final RULES_FIELD_NUMBER:I = 0x1


# instance fields
.field private rules_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/api/SystemParameterRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 954
    new-instance v0, Lcom/google/api/SystemParameters;

    invoke-direct {v0}, Lcom/google/api/SystemParameters;-><init>()V

    .line 957
    sput-object v0, Lcom/google/api/SystemParameters;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameters;

    .line 958
    const-class v1, Lcom/google/api/SystemParameters;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 23
    invoke-static {}, Lcom/google/api/SystemParameters;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/SystemParameters;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$000()Lcom/google/api/SystemParameters;
    .locals 1

    .line 17
    sget-object v0, Lcom/google/api/SystemParameters;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameters;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/api/SystemParameters;ILcom/google/api/SystemParameterRule;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/google/api/SystemParameters;->setRules(ILcom/google/api/SystemParameterRule;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/api/SystemParameters;Lcom/google/api/SystemParameterRule;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/google/api/SystemParameters;->addRules(Lcom/google/api/SystemParameterRule;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/api/SystemParameters;ILcom/google/api/SystemParameterRule;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/google/api/SystemParameters;->addRules(ILcom/google/api/SystemParameterRule;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/api/SystemParameters;Ljava/lang/Iterable;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/google/api/SystemParameters;->addAllRules(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/api/SystemParameters;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/google/api/SystemParameters;->clearRules()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/api/SystemParameters;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/google/api/SystemParameters;->removeRules(I)V

    return-void
.end method

.method private addAllRules(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/SystemParameterRule;",
            ">;)V"
        }
    .end annotation

    .line 325
    invoke-direct {p0}, Lcom/google/api/SystemParameters;->ensureRulesIsMutable()V

    .line 326
    iget-object v0, p0, Lcom/google/api/SystemParameters;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addRules(ILcom/google/api/SystemParameterRule;)V
    .locals 1

    .line 291
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 292
    invoke-direct {p0}, Lcom/google/api/SystemParameters;->ensureRulesIsMutable()V

    .line 293
    iget-object v0, p0, Lcom/google/api/SystemParameters;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addRules(Lcom/google/api/SystemParameterRule;)V
    .locals 1

    .line 257
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 258
    invoke-direct {p0}, Lcom/google/api/SystemParameters;->ensureRulesIsMutable()V

    .line 259
    iget-object v0, p0, Lcom/google/api/SystemParameters;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearRules()V
    .locals 1

    .line 358
    invoke-static {}, Lcom/google/api/SystemParameters;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/SystemParameters;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureRulesIsMutable()V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/google/api/SystemParameters;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/google/api/SystemParameters;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 190
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/SystemParameters;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/api/SystemParameters;
    .locals 1

    .line 963
    sget-object v0, Lcom/google/api/SystemParameters;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameters;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/api/SystemParameters$Builder;
    .locals 1

    .line 468
    sget-object v0, Lcom/google/api/SystemParameters;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameters;

    invoke-virtual {v0}, Lcom/google/api/SystemParameters;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/api/SystemParameters$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/api/SystemParameters;)Lcom/google/api/SystemParameters$Builder;
    .locals 1

    .line 471
    sget-object v0, Lcom/google/api/SystemParameters;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameters;

    invoke-virtual {v0, p0}, Lcom/google/api/SystemParameters;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/api/SystemParameters$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/api/SystemParameters;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 445
    sget-object v0, Lcom/google/api/SystemParameters;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameters;

    invoke-static {v0, p0}, Lcom/google/api/SystemParameters;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/SystemParameters;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/SystemParameters;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 451
    sget-object v0, Lcom/google/api/SystemParameters;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameters;

    invoke-static {v0, p0, p1}, Lcom/google/api/SystemParameters;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/SystemParameters;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/api/SystemParameters;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 409
    sget-object v0, Lcom/google/api/SystemParameters;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameters;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/SystemParameters;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/SystemParameters;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 416
    sget-object v0, Lcom/google/api/SystemParameters;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameters;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/SystemParameters;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/api/SystemParameters;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 456
    sget-object v0, Lcom/google/api/SystemParameters;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameters;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/SystemParameters;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/SystemParameters;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 463
    sget-object v0, Lcom/google/api/SystemParameters;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameters;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/SystemParameters;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/api/SystemParameters;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 433
    sget-object v0, Lcom/google/api/SystemParameters;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameters;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/SystemParameters;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/SystemParameters;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 440
    sget-object v0, Lcom/google/api/SystemParameters;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameters;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/SystemParameters;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/api/SystemParameters;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 396
    sget-object v0, Lcom/google/api/SystemParameters;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameters;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/SystemParameters;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/SystemParameters;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 403
    sget-object v0, Lcom/google/api/SystemParameters;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameters;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/SystemParameters;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/api/SystemParameters;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 421
    sget-object v0, Lcom/google/api/SystemParameters;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameters;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/SystemParameters;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/api/SystemParameters;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 428
    sget-object v0, Lcom/google/api/SystemParameters;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameters;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/api/SystemParameters;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/api/SystemParameters;",
            ">;"
        }
    .end annotation

    .line 969
    sget-object v0, Lcom/google/api/SystemParameters;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameters;

    invoke-virtual {v0}, Lcom/google/api/SystemParameters;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeRules(I)V
    .locals 1

    .line 389
    invoke-direct {p0}, Lcom/google/api/SystemParameters;->ensureRulesIsMutable()V

    .line 390
    iget-object v0, p0, Lcom/google/api/SystemParameters;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setRules(ILcom/google/api/SystemParameterRule;)V
    .locals 1

    .line 224
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    invoke-direct {p0}, Lcom/google/api/SystemParameters;->ensureRulesIsMutable()V

    .line 226
    iget-object v0, p0, Lcom/google/api/SystemParameters;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 905
    sget-object p2, Lcom/google/api/SystemParameters$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 947
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 941
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 926
    :pswitch_2
    sget-object p1, Lcom/google/api/SystemParameters;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 928
    const-class p2, Lcom/google/api/SystemParameters;

    monitor-enter p2

    .line 929
    :try_start_0
    sget-object p1, Lcom/google/api/SystemParameters;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 931
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/api/SystemParameters;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameters;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 934
    sput-object p1, Lcom/google/api/SystemParameters;->PARSER:Lcom/google/protobuf/Parser;

    .line 936
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

    .line 923
    :pswitch_3
    sget-object p1, Lcom/google/api/SystemParameters;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameters;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "rules_"

    aput-object v0, p1, p3

    .line 913
    const-class p3, Lcom/google/api/SystemParameterRule;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    .line 919
    sget-object p3, Lcom/google/api/SystemParameters;->DEFAULT_INSTANCE:Lcom/google/api/SystemParameters;

    invoke-static {p3, p2, p1}, Lcom/google/api/SystemParameters;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 910
    :pswitch_5
    new-instance p1, Lcom/google/api/SystemParameters$Builder;

    invoke-direct {p1, p3}, Lcom/google/api/SystemParameters$Builder;-><init>(Lcom/google/api/SystemParameters$1;)V

    return-object p1

    .line 907
    :pswitch_6
    new-instance p1, Lcom/google/api/SystemParameters;

    invoke-direct {p1}, Lcom/google/api/SystemParameters;-><init>()V

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

.method public getRules(I)Lcom/google/api/SystemParameterRule;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/google/api/SystemParameters;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/SystemParameterRule;

    return-object p1
.end method

.method public getRulesCount()I
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/google/api/SystemParameters;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getRulesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/SystemParameterRule;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/google/api/SystemParameters;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getRulesOrBuilder(I)Lcom/google/api/SystemParameterRuleOrBuilder;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/google/api/SystemParameters;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/SystemParameterRuleOrBuilder;

    return-object p1
.end method

.method public getRulesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/api/SystemParameterRuleOrBuilder;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/google/api/SystemParameters;->rules_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method
