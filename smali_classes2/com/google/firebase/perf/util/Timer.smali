.class public Lcom/google/firebase/perf/util/Timer;
.super Ljava/lang/Object;
.source "Timer.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/perf/util/Timer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHighResTime:J

.field private mTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 143
    new-instance v0, Lcom/google/firebase/perf/util/Timer$1;

    invoke-direct {v0}, Lcom/google/firebase/perf/util/Timer$1;-><init>()V

    sput-object v0, Lcom/google/firebase/perf/util/Timer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/firebase/perf/util/Timer;->mTime:J

    .line 39
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/firebase/perf/util/Timer;->mHighResTime:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-wide p1, p0, Lcom/google/firebase/perf/util/Timer;->mTime:J

    .line 51
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/firebase/perf/util/Timer;->mHighResTime:J

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-wide p1, p0, Lcom/google/firebase/perf/util/Timer;->mTime:J

    .line 63
    iput-wide p3, p0, Lcom/google/firebase/perf/util/Timer;->mHighResTime:J

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/firebase/perf/util/Timer;->mTime:J

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/firebase/perf/util/Timer;->mHighResTime:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/firebase/perf/util/Timer$1;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/util/Timer;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentTimestampMicros()J
    .locals 4

    .line 113
    iget-wide v0, p0, Lcom/google/firebase/perf/util/Timer;->mTime:J

    invoke-virtual {p0}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getDurationMicros()J
    .locals 5

    .line 90
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/firebase/perf/util/Timer;->mHighResTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDurationMicros(Lcom/google/firebase/perf/util/Timer;)J
    .locals 5

    .line 101
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p1, Lcom/google/firebase/perf/util/Timer;->mHighResTime:J

    iget-wide v3, p0, Lcom/google/firebase/perf/util/Timer;->mHighResTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHighResTime()J
    .locals 3

    .line 123
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lcom/google/firebase/perf/util/Timer;->mHighResTime:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMicros()J
    .locals 2

    .line 79
    iget-wide v0, p0, Lcom/google/firebase/perf/util/Timer;->mTime:J

    return-wide v0
.end method

.method public reset()V
    .locals 3

    .line 73
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/firebase/perf/util/Timer;->mTime:J

    .line 74
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/firebase/perf/util/Timer;->mHighResTime:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 134
    iget-wide v0, p0, Lcom/google/firebase/perf/util/Timer;->mTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 135
    iget-wide v0, p0, Lcom/google/firebase/perf/util/Timer;->mHighResTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
