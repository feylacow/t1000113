.class Lcom/google/firebase/perf/util/Timer$1;
.super Ljava/lang/Object;
.source "Timer.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/perf/util/Timer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/firebase/perf/util/Timer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/firebase/perf/util/Timer;
    .locals 2

    .line 146
    new-instance v0, Lcom/google/firebase/perf/util/Timer;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/firebase/perf/util/Timer;-><init>(Landroid/os/Parcel;Lcom/google/firebase/perf/util/Timer$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 144
    invoke-virtual {p0, p1}, Lcom/google/firebase/perf/util/Timer$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/firebase/perf/util/Timer;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/google/firebase/perf/util/Timer;
    .locals 0

    .line 150
    new-array p1, p1, [Lcom/google/firebase/perf/util/Timer;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 144
    invoke-virtual {p0, p1}, Lcom/google/firebase/perf/util/Timer$1;->newArray(I)[Lcom/google/firebase/perf/util/Timer;

    move-result-object p1

    return-object p1
.end method
