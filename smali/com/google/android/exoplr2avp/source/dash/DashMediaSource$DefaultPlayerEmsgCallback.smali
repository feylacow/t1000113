.class final Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$DefaultPlayerEmsgCallback;
.super Ljava/lang/Object;
.source "DashMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler$PlayerEmsgCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DefaultPlayerEmsgCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;)V
    .locals 0

    .line 1284
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$DefaultPlayerEmsgCallback;->this$0:Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$1;)V
    .locals 0

    .line 1284
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$DefaultPlayerEmsgCallback;-><init>(Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;)V

    return-void
.end method


# virtual methods
.method public onDashManifestPublishTimeExpired(J)V
    .locals 1

    .line 1293
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$DefaultPlayerEmsgCallback;->this$0:Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->onDashManifestPublishTimeExpired(J)V

    return-void
.end method

.method public onDashManifestRefreshRequested()V
    .locals 1

    .line 1288
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$DefaultPlayerEmsgCallback;->this$0:Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->onDashManifestRefreshRequested()V

    return-void
.end method
