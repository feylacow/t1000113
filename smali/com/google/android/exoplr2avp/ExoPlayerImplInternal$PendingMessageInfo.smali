.class final Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PendingMessageInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final message:Lcom/google/android/exoplr2avp/PlayerMessage;

.field public resolvedPeriodIndex:I

.field public resolvedPeriodTimeUs:J

.field public resolvedPeriodUid:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/PlayerMessage;)V
    .locals 0

    .line 3020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3021
    iput-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;->message:Lcom/google/android/exoplr2avp/PlayerMessage;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;)I
    .locals 5

    .line 3032
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v4, p1, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eq v3, v4, :cond_3

    if-eqz v0, :cond_2

    const/4 v1, -0x1

    :cond_2
    return v1

    :cond_3
    if-nez v0, :cond_4

    return v2

    .line 3041
    :cond_4
    iget v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    iget v1, p1, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_5

    return v0

    .line 3045
    :cond_5
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    iget-wide v2, p1, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplr2avp/util/Util;->compareLong(JJ)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 3012
    check-cast p1, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;->compareTo(Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;)I

    move-result p1

    return p1
.end method

.method public setResolvedPosition(IJLjava/lang/Object;)V
    .locals 0

    .line 3025
    iput p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    .line 3026
    iput-wide p2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    .line 3027
    iput-object p4, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    return-void
.end method
