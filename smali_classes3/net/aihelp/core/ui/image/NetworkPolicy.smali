.class public final enum Lnet/aihelp/core/ui/image/NetworkPolicy;
.super Ljava/lang/Enum;
.source "NetworkPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/aihelp/core/ui/image/NetworkPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/aihelp/core/ui/image/NetworkPolicy;

.field public static final enum NO_CACHE:Lnet/aihelp/core/ui/image/NetworkPolicy;

.field public static final enum NO_STORE:Lnet/aihelp/core/ui/image/NetworkPolicy;

.field public static final enum OFFLINE:Lnet/aihelp/core/ui/image/NetworkPolicy;


# instance fields
.field final index:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 23
    new-instance v0, Lnet/aihelp/core/ui/image/NetworkPolicy;

    const-string v1, "NO_CACHE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/aihelp/core/ui/image/NetworkPolicy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/aihelp/core/ui/image/NetworkPolicy;->NO_CACHE:Lnet/aihelp/core/ui/image/NetworkPolicy;

    .line 28
    new-instance v1, Lnet/aihelp/core/ui/image/NetworkPolicy;

    const-string v4, "NO_STORE"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lnet/aihelp/core/ui/image/NetworkPolicy;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnet/aihelp/core/ui/image/NetworkPolicy;->NO_STORE:Lnet/aihelp/core/ui/image/NetworkPolicy;

    .line 31
    new-instance v4, Lnet/aihelp/core/ui/image/NetworkPolicy;

    const-string v6, "OFFLINE"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v5, v7}, Lnet/aihelp/core/ui/image/NetworkPolicy;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lnet/aihelp/core/ui/image/NetworkPolicy;->OFFLINE:Lnet/aihelp/core/ui/image/NetworkPolicy;

    const/4 v6, 0x3

    new-array v6, v6, [Lnet/aihelp/core/ui/image/NetworkPolicy;

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    aput-object v4, v6, v5

    .line 19
    sput-object v6, Lnet/aihelp/core/ui/image/NetworkPolicy;->$VALUES:[Lnet/aihelp/core/ui/image/NetworkPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput p3, p0, Lnet/aihelp/core/ui/image/NetworkPolicy;->index:I

    return-void
.end method

.method public static isOfflineOnly(I)Z
    .locals 1

    .line 42
    sget-object v0, Lnet/aihelp/core/ui/image/NetworkPolicy;->OFFLINE:Lnet/aihelp/core/ui/image/NetworkPolicy;

    iget v0, v0, Lnet/aihelp/core/ui/image/NetworkPolicy;->index:I

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static shouldReadFromDiskCache(I)Z
    .locals 1

    .line 34
    sget-object v0, Lnet/aihelp/core/ui/image/NetworkPolicy;->NO_CACHE:Lnet/aihelp/core/ui/image/NetworkPolicy;

    iget v0, v0, Lnet/aihelp/core/ui/image/NetworkPolicy;->index:I

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static shouldWriteToDiskCache(I)Z
    .locals 1

    .line 38
    sget-object v0, Lnet/aihelp/core/ui/image/NetworkPolicy;->NO_STORE:Lnet/aihelp/core/ui/image/NetworkPolicy;

    iget v0, v0, Lnet/aihelp/core/ui/image/NetworkPolicy;->index:I

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/aihelp/core/ui/image/NetworkPolicy;
    .locals 1

    .line 19
    const-class v0, Lnet/aihelp/core/ui/image/NetworkPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/aihelp/core/ui/image/NetworkPolicy;

    return-object p0
.end method

.method public static values()[Lnet/aihelp/core/ui/image/NetworkPolicy;
    .locals 1

    .line 19
    sget-object v0, Lnet/aihelp/core/ui/image/NetworkPolicy;->$VALUES:[Lnet/aihelp/core/ui/image/NetworkPolicy;

    invoke-virtual {v0}, [Lnet/aihelp/core/ui/image/NetworkPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/aihelp/core/ui/image/NetworkPolicy;

    return-object v0
.end method
