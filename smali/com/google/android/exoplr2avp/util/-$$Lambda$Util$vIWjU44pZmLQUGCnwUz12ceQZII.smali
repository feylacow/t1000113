.class public final synthetic Lcom/google/android/exoplr2avp/util/-$$Lambda$Util$vIWjU44pZmLQUGCnwUz12ceQZII;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/util/-$$Lambda$Util$vIWjU44pZmLQUGCnwUz12ceQZII;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplr2avp/util/-$$Lambda$Util$vIWjU44pZmLQUGCnwUz12ceQZII;->f$0:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/exoplr2avp/util/Util;->lambda$newSingleThreadExecutor$0(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    return-object p1
.end method
