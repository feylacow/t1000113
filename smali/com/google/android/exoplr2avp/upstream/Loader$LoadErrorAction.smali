.class public final Lcom/google/android/exoplr2avp/upstream/Loader$LoadErrorAction;
.super Ljava/lang/Object;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/upstream/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LoadErrorAction"
.end annotation


# instance fields
.field private final retryDelayMillis:J

.field private final type:I


# direct methods
.method private constructor <init>(IJ)V
    .locals 0

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput p1, p0, Lcom/google/android/exoplr2avp/upstream/Loader$LoadErrorAction;->type:I

    .line 189
    iput-wide p2, p0, Lcom/google/android/exoplr2avp/upstream/Loader$LoadErrorAction;->retryDelayMillis:J

    return-void
.end method

.method synthetic constructor <init>(IJLcom/google/android/exoplr2avp/upstream/Loader$1;)V
    .locals 0

    .line 182
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/upstream/Loader$LoadErrorAction;-><init>(IJ)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/exoplr2avp/upstream/Loader$LoadErrorAction;)I
    .locals 0

    .line 182
    iget p0, p0, Lcom/google/android/exoplr2avp/upstream/Loader$LoadErrorAction;->type:I

    return p0
.end method

.method static synthetic access$400(Lcom/google/android/exoplr2avp/upstream/Loader$LoadErrorAction;)J
    .locals 2

    .line 182
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/upstream/Loader$LoadErrorAction;->retryDelayMillis:J

    return-wide v0
.end method


# virtual methods
.method public isRetry()Z
    .locals 2

    .line 194
    iget v0, p0, Lcom/google/android/exoplr2avp/upstream/Loader$LoadErrorAction;->type:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method
