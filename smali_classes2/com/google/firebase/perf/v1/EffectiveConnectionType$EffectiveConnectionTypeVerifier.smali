.class final Lcom/google/firebase/perf/v1/EffectiveConnectionType$EffectiveConnectionTypeVerifier;
.super Ljava/lang/Object;
.source "EffectiveConnectionType.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/perf/v1/EffectiveConnectionType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EffectiveConnectionTypeVerifier"
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 138
    new-instance v0, Lcom/google/firebase/perf/v1/EffectiveConnectionType$EffectiveConnectionTypeVerifier;

    invoke-direct {v0}, Lcom/google/firebase/perf/v1/EffectiveConnectionType$EffectiveConnectionTypeVerifier;-><init>()V

    sput-object v0, Lcom/google/firebase/perf/v1/EffectiveConnectionType$EffectiveConnectionTypeVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInRange(I)Z
    .locals 0

    .line 141
    invoke-static {p1}, Lcom/google/firebase/perf/v1/EffectiveConnectionType;->forNumber(I)Lcom/google/firebase/perf/v1/EffectiveConnectionType;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
