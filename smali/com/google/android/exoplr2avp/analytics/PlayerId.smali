.class public final Lcom/google/android/exoplr2avp/analytics/PlayerId;
.super Ljava/lang/Object;
.source "PlayerId.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/analytics/PlayerId$LogSessionIdApi31;
    }
.end annotation


# static fields
.field public static final UNSET:Lcom/google/android/exoplr2avp/analytics/PlayerId;


# instance fields
.field private final logSessionIdApi31:Lcom/google/android/exoplr2avp/analytics/PlayerId$LogSessionIdApi31;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    sget v0, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    new-instance v0, Lcom/google/android/exoplr2avp/analytics/PlayerId;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/analytics/PlayerId;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/exoplr2avp/analytics/PlayerId;

    sget-object v1, Lcom/google/android/exoplr2avp/analytics/PlayerId$LogSessionIdApi31;->UNSET:Lcom/google/android/exoplr2avp/analytics/PlayerId$LogSessionIdApi31;

    invoke-direct {v0, v1}, Lcom/google/android/exoplr2avp/analytics/PlayerId;-><init>(Lcom/google/android/exoplr2avp/analytics/PlayerId$LogSessionIdApi31;)V

    :goto_0
    sput-object v0, Lcom/google/android/exoplr2avp/analytics/PlayerId;->UNSET:Lcom/google/android/exoplr2avp/analytics/PlayerId;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 39
    check-cast v0, Lcom/google/android/exoplr2avp/analytics/PlayerId$LogSessionIdApi31;

    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/analytics/PlayerId;-><init>(Lcom/google/android/exoplr2avp/analytics/PlayerId$LogSessionIdApi31;)V

    .line 40
    sget v0, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/media/metrics/LogSessionId;)V
    .locals 1

    .line 50
    new-instance v0, Lcom/google/android/exoplr2avp/analytics/PlayerId$LogSessionIdApi31;

    invoke-direct {v0, p1}, Lcom/google/android/exoplr2avp/analytics/PlayerId$LogSessionIdApi31;-><init>(Landroid/media/metrics/LogSessionId;)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/analytics/PlayerId;-><init>(Lcom/google/android/exoplr2avp/analytics/PlayerId$LogSessionIdApi31;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplr2avp/analytics/PlayerId$LogSessionIdApi31;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/google/android/exoplr2avp/analytics/PlayerId;->logSessionIdApi31:Lcom/google/android/exoplr2avp/analytics/PlayerId$LogSessionIdApi31;

    return-void
.end method


# virtual methods
.method public getLogSessionId()Landroid/media/metrics/LogSessionId;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/google/android/exoplr2avp/analytics/PlayerId;->logSessionIdApi31:Lcom/google/android/exoplr2avp/analytics/PlayerId$LogSessionIdApi31;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/analytics/PlayerId$LogSessionIdApi31;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/analytics/PlayerId$LogSessionIdApi31;->logSessionId:Landroid/media/metrics/LogSessionId;

    return-object v0
.end method
