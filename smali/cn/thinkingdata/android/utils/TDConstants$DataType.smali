.class public final enum Lcn/thinkingdata/android/utils/TDConstants$DataType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/thinkingdata/android/utils/TDConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/thinkingdata/android/utils/TDConstants$DataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/thinkingdata/android/utils/TDConstants$DataType;

.field public static final enum TRACK:Lcn/thinkingdata/android/utils/TDConstants$DataType;

.field public static final enum TRACK_OVERWRITE:Lcn/thinkingdata/android/utils/TDConstants$DataType;

.field public static final enum TRACK_UPDATE:Lcn/thinkingdata/android/utils/TDConstants$DataType;

.field public static final enum USER_ADD:Lcn/thinkingdata/android/utils/TDConstants$DataType;

.field public static final enum USER_APPEND:Lcn/thinkingdata/android/utils/TDConstants$DataType;

.field public static final enum USER_DEL:Lcn/thinkingdata/android/utils/TDConstants$DataType;

.field public static final enum USER_SET:Lcn/thinkingdata/android/utils/TDConstants$DataType;

.field public static final enum USER_SET_ONCE:Lcn/thinkingdata/android/utils/TDConstants$DataType;

.field public static final enum USER_UNSET:Lcn/thinkingdata/android/utils/TDConstants$DataType;

.field private static final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcn/thinkingdata/android/utils/TDConstants$DataType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcn/thinkingdata/android/utils/TDConstants$DataType;

    const-string v1, "TRACK"

    const/4 v2, 0x0

    const-string/jumbo v3, "track"

    invoke-direct {v0, v1, v2, v3}, Lcn/thinkingdata/android/utils/TDConstants$DataType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcn/thinkingdata/android/utils/TDConstants$DataType;->TRACK:Lcn/thinkingdata/android/utils/TDConstants$DataType;

    new-instance v1, Lcn/thinkingdata/android/utils/TDConstants$DataType;

    const-string v3, "TRACK_UPDATE"

    const/4 v4, 0x1

    const-string/jumbo v5, "track_update"

    invoke-direct {v1, v3, v4, v5}, Lcn/thinkingdata/android/utils/TDConstants$DataType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcn/thinkingdata/android/utils/TDConstants$DataType;->TRACK_UPDATE:Lcn/thinkingdata/android/utils/TDConstants$DataType;

    new-instance v3, Lcn/thinkingdata/android/utils/TDConstants$DataType;

    const-string v5, "TRACK_OVERWRITE"

    const/4 v6, 0x2

    const-string/jumbo v7, "track_overwrite"

    invoke-direct {v3, v5, v6, v7}, Lcn/thinkingdata/android/utils/TDConstants$DataType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcn/thinkingdata/android/utils/TDConstants$DataType;->TRACK_OVERWRITE:Lcn/thinkingdata/android/utils/TDConstants$DataType;

    new-instance v5, Lcn/thinkingdata/android/utils/TDConstants$DataType;

    const-string v7, "USER_ADD"

    const/4 v8, 0x3

    const-string/jumbo v9, "user_add"

    invoke-direct {v5, v7, v8, v9}, Lcn/thinkingdata/android/utils/TDConstants$DataType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcn/thinkingdata/android/utils/TDConstants$DataType;->USER_ADD:Lcn/thinkingdata/android/utils/TDConstants$DataType;

    new-instance v7, Lcn/thinkingdata/android/utils/TDConstants$DataType;

    const-string v9, "USER_SET"

    const/4 v10, 0x4

    const-string/jumbo v11, "user_set"

    invoke-direct {v7, v9, v10, v11}, Lcn/thinkingdata/android/utils/TDConstants$DataType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcn/thinkingdata/android/utils/TDConstants$DataType;->USER_SET:Lcn/thinkingdata/android/utils/TDConstants$DataType;

    new-instance v9, Lcn/thinkingdata/android/utils/TDConstants$DataType;

    const-string v11, "USER_SET_ONCE"

    const/4 v12, 0x5

    const-string/jumbo v13, "user_setOnce"

    invoke-direct {v9, v11, v12, v13}, Lcn/thinkingdata/android/utils/TDConstants$DataType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcn/thinkingdata/android/utils/TDConstants$DataType;->USER_SET_ONCE:Lcn/thinkingdata/android/utils/TDConstants$DataType;

    new-instance v11, Lcn/thinkingdata/android/utils/TDConstants$DataType;

    const-string v13, "USER_UNSET"

    const/4 v14, 0x6

    const-string/jumbo v15, "user_unset"

    invoke-direct {v11, v13, v14, v15}, Lcn/thinkingdata/android/utils/TDConstants$DataType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcn/thinkingdata/android/utils/TDConstants$DataType;->USER_UNSET:Lcn/thinkingdata/android/utils/TDConstants$DataType;

    new-instance v13, Lcn/thinkingdata/android/utils/TDConstants$DataType;

    const-string v15, "USER_APPEND"

    const/4 v14, 0x7

    const-string/jumbo v12, "user_append"

    invoke-direct {v13, v15, v14, v12}, Lcn/thinkingdata/android/utils/TDConstants$DataType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcn/thinkingdata/android/utils/TDConstants$DataType;->USER_APPEND:Lcn/thinkingdata/android/utils/TDConstants$DataType;

    new-instance v12, Lcn/thinkingdata/android/utils/TDConstants$DataType;

    const-string v15, "USER_DEL"

    const/16 v14, 0x8

    const-string/jumbo v10, "user_del"

    invoke-direct {v12, v15, v14, v10}, Lcn/thinkingdata/android/utils/TDConstants$DataType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcn/thinkingdata/android/utils/TDConstants$DataType;->USER_DEL:Lcn/thinkingdata/android/utils/TDConstants$DataType;

    const/16 v10, 0x9

    new-array v10, v10, [Lcn/thinkingdata/android/utils/TDConstants$DataType;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    aput-object v5, v10, v8

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    aput-object v12, v10, v14

    sput-object v10, Lcn/thinkingdata/android/utils/TDConstants$DataType;->$VALUES:[Lcn/thinkingdata/android/utils/TDConstants$DataType;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/thinkingdata/android/utils/TDConstants$DataType;->lookup:Ljava/util/Map;

    invoke-static {}, Lcn/thinkingdata/android/utils/TDConstants$DataType;->values()[Lcn/thinkingdata/android/utils/TDConstants$DataType;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lcn/thinkingdata/android/utils/TDConstants$DataType;->lookup:Ljava/util/Map;

    invoke-virtual {v3}, Lcn/thinkingdata/android/utils/TDConstants$DataType;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
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

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcn/thinkingdata/android/utils/TDConstants$DataType;->type:Ljava/lang/String;

    return-void
.end method

.method public static get(Ljava/lang/String;)Lcn/thinkingdata/android/utils/TDConstants$DataType;
    .locals 1

    sget-object v0, Lcn/thinkingdata/android/utils/TDConstants$DataType;->lookup:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/thinkingdata/android/utils/TDConstants$DataType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/thinkingdata/android/utils/TDConstants$DataType;
    .locals 1

    const-class v0, Lcn/thinkingdata/android/utils/TDConstants$DataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/thinkingdata/android/utils/TDConstants$DataType;

    return-object p0
.end method

.method public static values()[Lcn/thinkingdata/android/utils/TDConstants$DataType;
    .locals 1

    sget-object v0, Lcn/thinkingdata/android/utils/TDConstants$DataType;->$VALUES:[Lcn/thinkingdata/android/utils/TDConstants$DataType;

    invoke-virtual {v0}, [Lcn/thinkingdata/android/utils/TDConstants$DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/thinkingdata/android/utils/TDConstants$DataType;

    return-object v0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/thinkingdata/android/utils/TDConstants$DataType;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isTrack()Z
    .locals 1

    sget-object v0, Lcn/thinkingdata/android/utils/TDConstants$DataType;->TRACK:Lcn/thinkingdata/android/utils/TDConstants$DataType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcn/thinkingdata/android/utils/TDConstants$DataType;->TRACK_OVERWRITE:Lcn/thinkingdata/android/utils/TDConstants$DataType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcn/thinkingdata/android/utils/TDConstants$DataType;->TRACK_UPDATE:Lcn/thinkingdata/android/utils/TDConstants$DataType;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
