.class public final Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EnumDescriptorProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;,
        Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;,
        Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRangeOrBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;",
        "Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;",
        ">;",
        "Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProtoOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final OPTIONS_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESERVED_NAME_FIELD_NUMBER:I = 0x5

.field public static final RESERVED_RANGE_FIELD_NUMBER:I = 0x4

.field public static final VALUE_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private name_:Ljava/lang/String;

.field private options_:Lcom/google/protobuf/DescriptorProtos$EnumOptions;

.field private reservedName_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private reservedRange_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;",
            ">;"
        }
    .end annotation
.end field

.field private value_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11617
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;-><init>()V

    .line 11620
    sput-object v0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    .line 11621
    const-class v1, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 9996
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x2

    .line 11554
    iput-byte v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->memoizedIsInitialized:B

    const-string v0, ""

    .line 9997
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->name_:Ljava/lang/String;

    .line 9998
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 9999
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->reservedRange_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 10000
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->reservedName_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$18400()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 1

    .line 9991
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    return-object v0
.end method

.method static synthetic access$18500(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;Ljava/lang/String;)V
    .locals 0

    .line 9991
    invoke-direct {p0, p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$18600(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)V
    .locals 0

    .line 9991
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->clearName()V

    return-void
.end method

.method static synthetic access$18700(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 9991
    invoke-direct {p0, p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->setNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$18800(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;ILcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;)V
    .locals 0

    .line 9991
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->setValue(ILcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;)V

    return-void
.end method

.method static synthetic access$18900(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;)V
    .locals 0

    .line 9991
    invoke-direct {p0, p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->addValue(Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;)V

    return-void
.end method

.method static synthetic access$19000(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;ILcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;)V
    .locals 0

    .line 9991
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->addValue(ILcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;)V

    return-void
.end method

.method static synthetic access$19100(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;Ljava/lang/Iterable;)V
    .locals 0

    .line 9991
    invoke-direct {p0, p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->addAllValue(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$19200(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)V
    .locals 0

    .line 9991
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->clearValue()V

    return-void
.end method

.method static synthetic access$19300(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;I)V
    .locals 0

    .line 9991
    invoke-direct {p0, p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->removeValue(I)V

    return-void
.end method

.method static synthetic access$19400(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/google/protobuf/DescriptorProtos$EnumOptions;)V
    .locals 0

    .line 9991
    invoke-direct {p0, p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->setOptions(Lcom/google/protobuf/DescriptorProtos$EnumOptions;)V

    return-void
.end method

.method static synthetic access$19500(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/google/protobuf/DescriptorProtos$EnumOptions;)V
    .locals 0

    .line 9991
    invoke-direct {p0, p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->mergeOptions(Lcom/google/protobuf/DescriptorProtos$EnumOptions;)V

    return-void
.end method

.method static synthetic access$19600(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)V
    .locals 0

    .line 9991
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->clearOptions()V

    return-void
.end method

.method static synthetic access$19700(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;ILcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;)V
    .locals 0

    .line 9991
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->setReservedRange(ILcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;)V

    return-void
.end method

.method static synthetic access$19800(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;)V
    .locals 0

    .line 9991
    invoke-direct {p0, p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->addReservedRange(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;)V

    return-void
.end method

.method static synthetic access$19900(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;ILcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;)V
    .locals 0

    .line 9991
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->addReservedRange(ILcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;)V

    return-void
.end method

.method static synthetic access$20000(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;Ljava/lang/Iterable;)V
    .locals 0

    .line 9991
    invoke-direct {p0, p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->addAllReservedRange(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$20100(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)V
    .locals 0

    .line 9991
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->clearReservedRange()V

    return-void
.end method

.method static synthetic access$20200(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;I)V
    .locals 0

    .line 9991
    invoke-direct {p0, p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->removeReservedRange(I)V

    return-void
.end method

.method static synthetic access$20300(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;ILjava/lang/String;)V
    .locals 0

    .line 9991
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->setReservedName(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$20400(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;Ljava/lang/String;)V
    .locals 0

    .line 9991
    invoke-direct {p0, p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->addReservedName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$20500(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;Ljava/lang/Iterable;)V
    .locals 0

    .line 9991
    invoke-direct {p0, p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->addAllReservedName(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$20600(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)V
    .locals 0

    .line 9991
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->clearReservedName()V

    return-void
.end method

.method static synthetic access$20700(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 9991
    invoke-direct {p0, p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->addReservedNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private addAllReservedName(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 10906
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->ensureReservedNameIsMutable()V

    .line 10907
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->reservedName_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllReservedRange(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;",
            ">;)V"
        }
    .end annotation

    .line 10770
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->ensureReservedRangeIsMutable()V

    .line 10771
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->reservedRange_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllValue(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;",
            ">;)V"
        }
    .end annotation

    .line 10577
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->ensureValueIsMutable()V

    .line 10578
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addReservedName(Ljava/lang/String;)V
    .locals 1

    .line 10891
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10892
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->ensureReservedNameIsMutable()V

    .line 10893
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->reservedName_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addReservedNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 10932
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->ensureReservedNameIsMutable()V

    .line 10933
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->reservedName_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addReservedRange(ILcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;)V
    .locals 1

    .line 10755
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10756
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->ensureReservedRangeIsMutable()V

    .line 10757
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->reservedRange_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addReservedRange(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;)V
    .locals 1

    .line 10740
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10741
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->ensureReservedRangeIsMutable()V

    .line 10742
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->reservedRange_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addValue(ILcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;)V
    .locals 1

    .line 10568
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10569
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->ensureValueIsMutable()V

    .line 10570
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addValue(Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;)V
    .locals 1

    .line 10559
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10560
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->ensureValueIsMutable()V

    .line 10561
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearName()V
    .locals 1

    .line 10489
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->bitField0_:I

    .line 10490
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->name_:Ljava/lang/String;

    return-void
.end method

.method private clearOptions()V
    .locals 1

    const/4 v0, 0x0

    .line 10637
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    .line 10638
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->bitField0_:I

    return-void
.end method

.method private clearReservedName()V
    .locals 1

    .line 10919
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->reservedName_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearReservedRange()V
    .locals 1

    .line 10784
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->reservedRange_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearValue()V
    .locals 1

    .line 10585
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureReservedNameIsMutable()V
    .locals 1

    .line 10859
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->reservedName_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10860
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->reservedName_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 10861
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->reservedName_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureReservedRangeIsMutable()V
    .locals 1

    .line 10709
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->reservedRange_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10710
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->reservedRange_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 10711
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->reservedRange_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureValueIsMutable()V
    .locals 1

    .line 10540
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10541
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 10542
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 1

    .line 11626
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    return-object v0
.end method

.method private mergeOptions(Lcom/google/protobuf/DescriptorProtos$EnumOptions;)V
    .locals 2

    .line 10624
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10625
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    if-eqz v0, :cond_0

    .line 10626
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$EnumOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 10627
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    .line 10628
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$EnumOptions;->newBuilder(Lcom/google/protobuf/DescriptorProtos$EnumOptions;)Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$EnumOptions$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    goto :goto_0

    .line 10630
    :cond_0
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    .line 10632
    :goto_0
    iget p1, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    .line 11011
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;
    .locals 1

    .line 11014
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10988
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10994
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10952
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10959
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10999
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11006
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10976
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10983
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10939
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10946
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10964
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10971
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;",
            ">;"
        }
    .end annotation

    .line 11632
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeReservedRange(I)V
    .locals 1

    .line 10796
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->ensureReservedRangeIsMutable()V

    .line 10797
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->reservedRange_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeValue(I)V
    .locals 1

    .line 10591
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->ensureValueIsMutable()V

    .line 10592
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 1

    .line 10481
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10482
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->bitField0_:I

    .line 10483
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->name_:Ljava/lang/String;

    return-void
.end method

.method private setNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 10498
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->name_:Ljava/lang/String;

    .line 10499
    iget p1, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->bitField0_:I

    return-void
.end method

.method private setOptions(Lcom/google/protobuf/DescriptorProtos$EnumOptions;)V
    .locals 0

    .line 10615
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10616
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    .line 10617
    iget p1, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->bitField0_:I

    return-void
.end method

.method private setReservedName(ILjava/lang/String;)V
    .locals 1

    .line 10876
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10877
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->ensureReservedNameIsMutable()V

    .line 10878
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->reservedName_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setReservedRange(ILcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;)V
    .locals 1

    .line 10726
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10727
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->ensureReservedRangeIsMutable()V

    .line 10728
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->reservedRange_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setValue(ILcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;)V
    .locals 1

    .line 10551
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10552
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->ensureValueIsMutable()V

    .line 10553
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 11560
    sget-object p3, Lcom/google/protobuf/DescriptorProtos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 11610
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    if-nez p2, :cond_0

    const/4 p3, 0x0

    :cond_0
    int-to-byte p1, p3

    .line 11606
    iput-byte p1, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->memoizedIsInitialized:B

    return-object v1

    .line 11603
    :pswitch_1
    iget-byte p1, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->memoizedIsInitialized:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 11588
    :pswitch_2
    sget-object p1, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_2

    .line 11590
    const-class p2, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    monitor-enter p2

    .line 11591
    :try_start_0
    sget-object p1, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 11593
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 11596
    sput-object p1, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 11598
    :cond_1
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return-object p1

    .line 11585
    :pswitch_3
    sget-object p1, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    return-object p1

    :pswitch_4
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "bitField0_"

    aput-object p2, p1, v0

    const-string p2, "name_"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "value_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 11568
    const-class p3, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "options_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "reservedRange_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-class p3, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "reservedName_"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0003\u0002\u0001\u0008\u0000\u0002\u041b\u0003\u0409\u0001\u0004\u001b\u0005\u001a"

    .line 11581
    sget-object p3, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 11565
    :pswitch_5
    new-instance p1, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;

    invoke-direct {p1, v1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$Builder;-><init>(Lcom/google/protobuf/DescriptorProtos$1;)V

    return-object p1

    .line 11562
    :pswitch_6
    new-instance p1, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;

    invoke-direct {p1}, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;-><init>()V

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

.method public getName()Ljava/lang/String;
    .locals 1

    .line 10464
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 10473
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->name_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Lcom/google/protobuf/DescriptorProtos$EnumOptions;
    .locals 1

    .line 10609
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$EnumOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getReservedName(I)Ljava/lang/String;
    .locals 1

    .line 10840
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->reservedName_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getReservedNameBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 10855
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->reservedName_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 10856
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 10855
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getReservedNameCount()I
    .locals 1

    .line 10826
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->reservedName_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getReservedNameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 10813
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->reservedName_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getReservedRange(I)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;
    .locals 1

    .line 10693
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->reservedRange_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;

    return-object p1
.end method

.method public getReservedRangeCount()I
    .locals 1

    .line 10680
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->reservedRange_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getReservedRangeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;",
            ">;"
        }
    .end annotation

    .line 10654
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->reservedRange_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getReservedRangeOrBuilder(I)Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRangeOrBuilder;
    .locals 1

    .line 10706
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->reservedRange_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRangeOrBuilder;

    return-object p1
.end method

.method public getReservedRangeOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRangeOrBuilder;",
            ">;"
        }
    .end annotation

    .line 10667
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->reservedRange_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getValue(I)Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    .locals 1

    .line 10530
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    return-object p1
.end method

.method public getValueCount()I
    .locals 1

    .line 10523
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;",
            ">;"
        }
    .end annotation

    .line 10509
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getValueOrBuilder(I)Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProtoOrBuilder;
    .locals 1

    .line 10537
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProtoOrBuilder;

    return-object p1
.end method

.method public getValueOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProtoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 10516
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->value_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public hasName()Z
    .locals 2

    .line 10456
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasOptions()Z
    .locals 1

    .line 10602
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumDescriptorProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
