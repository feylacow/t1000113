.class public final enum Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;
.super Ljava/lang/Enum;
.source "AppEventsConversionsAPITransformer.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0015\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;",
        "",
        "rawValue",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getRawValue",
        "()Ljava/lang/String;",
        "VALUE_TO_SUM",
        "EVENT_TIME",
        "EVENT_NAME",
        "CONTENT_IDS",
        "CONTENTS",
        "CONTENT_TYPE",
        "DESCRIPTION",
        "LEVEL",
        "MAX_RATING_VALUE",
        "NUM_ITEMS",
        "PAYMENT_INFO_AVAILABLE",
        "REGISTRATION_METHOD",
        "SEARCH_STRING",
        "SUCCESS",
        "ORDER_ID",
        "AD_TYPE",
        "CURRENCY",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

.field public static final enum AD_TYPE:Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

.field public static final enum CONTENTS:Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

.field public static final enum CONTENT_IDS:Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

.field public static final enum CONTENT_TYPE:Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

.field public static final enum CURRENCY:Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

.field public static final enum DESCRIPTION:Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

.field public static final enum EVENT_NAME:Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

.field public static final enum EVENT_TIME:Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

.field public static final enum LEVEL:Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

.field public static final enum MAX_RATING_VALUE:Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

.field public static final enum NUM_ITEMS:Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

.field public static final enum ORDER_ID:Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

.field public static final enum PAYMENT_INFO_AVAILABLE:Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

.field public static final enum REGISTRATION_METHOD:Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

.field public static final enum SEARCH_STRING:Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

.field public static final enum SUCCESS:Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

.field public static final enum VALUE_TO_SUM:Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;


# instance fields
.field private final rawValue:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;
    .locals 3

    const/16 v0, 0x11

    new-array v0, v0, [Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

    sget-object v1, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;->VALUE_TO_SUM:Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;->EVENT_TIME:Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;->EVENT_NAME:Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;->CONTENT_IDS:Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;->CONTENTS:Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;->CONTENT_TYPE:Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;->DESCRIPTION:Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;->LEVEL:Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;->MAX_RATING_VALUE:Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;->NUM_ITEMS:Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;->PAYMENT_INFO_AVAILABLE:Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;->REGISTRATION_METHOD:Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;->SEARCH_STRING:Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;->SUCCESS:Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;->ORDER_ID:Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;->AD_TYPE:Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;->CURRENCY:Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 115
    new-instance v0, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

    const-string v1, "VALUE_TO_SUM"

    const/4 v2, 0x0

    const-string/jumbo v3, "value"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;->VALUE_TO_SUM:Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

    .line 116
    new-instance v0, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

    const-string v1, "EVENT_TIME"

    const/4 v2, 0x1

    const-string v3, "event_time"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;->EVENT_TIME:Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

    .line 117
    new-instance v0, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

    const-string v1, "EVENT_NAME"

    const/4 v2, 0x2

    const-string v3, "event_name"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;->EVENT_NAME:Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

    .line 118
    new-instance v0, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

    const-string v1, "CONTENT_IDS"

    const/4 v2, 0x3

    const-string v3, "content_ids"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;->CONTENT_IDS:Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

    .line 119
    new-instance v0, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

    const-string v1, "CONTENTS"

    const/4 v2, 0x4

    const-string v3, "contents"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;->CONTENTS:Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

    .line 120
    new-instance v0, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

    const-string v1, "CONTENT_TYPE"

    const/4 v2, 0x5

    const-string v3, "content_type"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;->CONTENT_TYPE:Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

    .line 121
    new-instance v0, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

    const-string v1, "DESCRIPTION"

    const/4 v2, 0x6

    const-string v3, "description"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;->DESCRIPTION:Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

    .line 122
    new-instance v0, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

    const-string v1, "LEVEL"

    const/4 v2, 0x7

    const-string v3, "level"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;->LEVEL:Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

    .line 123
    new-instance v0, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

    const-string v1, "MAX_RATING_VALUE"

    const/16 v2, 0x8

    const-string v3, "max_rating_value"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;->MAX_RATING_VALUE:Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

    .line 124
    new-instance v0, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

    const-string v1, "NUM_ITEMS"

    const/16 v2, 0x9

    const-string v3, "num_items"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;->NUM_ITEMS:Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

    .line 125
    new-instance v0, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

    const-string v1, "PAYMENT_INFO_AVAILABLE"

    const/16 v2, 0xa

    const-string v3, "payment_info_available"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;->PAYMENT_INFO_AVAILABLE:Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

    .line 126
    new-instance v0, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

    const-string v1, "REGISTRATION_METHOD"

    const/16 v2, 0xb

    const-string v3, "registration_method"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;->REGISTRATION_METHOD:Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

    .line 127
    new-instance v0, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

    const-string v1, "SEARCH_STRING"

    const/16 v2, 0xc

    const-string v3, "search_string"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;->SEARCH_STRING:Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

    .line 128
    new-instance v0, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

    const-string v1, "SUCCESS"

    const/16 v2, 0xd

    const-string/jumbo v3, "success"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;->SUCCESS:Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

    .line 129
    new-instance v0, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

    const-string v1, "ORDER_ID"

    const/16 v2, 0xe

    const-string v3, "order_id"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;->ORDER_ID:Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

    .line 130
    new-instance v0, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

    const-string v1, "AD_TYPE"

    const/16 v2, 0xf

    const-string v3, "ad_type"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;->AD_TYPE:Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

    .line 131
    new-instance v0, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

    const-string v1, "CURRENCY"

    const/16 v2, 0x10

    const-string v3, "currency"

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;->CURRENCY:Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

    invoke-static {}, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;->$values()[Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;->$VALUES:[Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 114
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;->rawValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 132
    check-cast p0, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

    return-object p0
.end method

.method public static values()[Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;
    .locals 2

    sget-object v0, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;->$VALUES:[Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 132
    check-cast v0, [Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;

    return-object v0
.end method


# virtual methods
.method public final getRawValue()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/facebook/appevents/cloudbridge/ConversionsAPICustomEventField;->rawValue:Ljava/lang/String;

    return-object v0
.end method
