.class public interface abstract Lcom/google/android/exoplr2avp/source/ShuffleOrder;
.super Ljava/lang/Object;
.source "ShuffleOrder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/source/ShuffleOrder$UnshuffledShuffleOrder;,
        Lcom/google/android/exoplr2avp/source/ShuffleOrder$DefaultShuffleOrder;
    }
.end annotation


# virtual methods
.method public abstract cloneAndClear()Lcom/google/android/exoplr2avp/source/ShuffleOrder;
.end method

.method public abstract cloneAndInsert(II)Lcom/google/android/exoplr2avp/source/ShuffleOrder;
.end method

.method public abstract cloneAndRemove(II)Lcom/google/android/exoplr2avp/source/ShuffleOrder;
.end method

.method public abstract getFirstIndex()I
.end method

.method public abstract getLastIndex()I
.end method

.method public abstract getLength()I
.end method

.method public abstract getNextIndex(I)I
.end method

.method public abstract getPreviousIndex(I)I
.end method
