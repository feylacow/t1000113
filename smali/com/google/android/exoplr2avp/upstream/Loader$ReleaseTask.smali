.class final Lcom/google/android/exoplr2avp/upstream/Loader$ReleaseTask;
.super Ljava/lang/Object;
.source "Loader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/upstream/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReleaseTask"
.end annotation


# instance fields
.field private final callback:Lcom/google/android/exoplr2avp/upstream/Loader$ReleaseCallback;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/upstream/Loader$ReleaseCallback;)V
    .locals 0

    .line 526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 527
    iput-object p1, p0, Lcom/google/android/exoplr2avp/upstream/Loader$ReleaseTask;->callback:Lcom/google/android/exoplr2avp/upstream/Loader$ReleaseCallback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/Loader$ReleaseTask;->callback:Lcom/google/android/exoplr2avp/upstream/Loader$ReleaseCallback;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/upstream/Loader$ReleaseCallback;->onLoaderReleased()V

    return-void
.end method
