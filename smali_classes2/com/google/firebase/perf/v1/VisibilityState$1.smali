.class Lcom/google/firebase/perf/v1/VisibilityState$1;
.super Ljava/lang/Object;
.source "VisibilityState.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/perf/v1/VisibilityState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "Lcom/google/firebase/perf/v1/VisibilityState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findValueByNumber(I)Lcom/google/firebase/perf/v1/VisibilityState;
    .locals 0

    .line 136
    invoke-static {p1}, Lcom/google/firebase/perf/v1/VisibilityState;->forNumber(I)Lcom/google/firebase/perf/v1/VisibilityState;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 0

    .line 133
    invoke-virtual {p0, p1}, Lcom/google/firebase/perf/v1/VisibilityState$1;->findValueByNumber(I)Lcom/google/firebase/perf/v1/VisibilityState;

    move-result-object p1

    return-object p1
.end method
