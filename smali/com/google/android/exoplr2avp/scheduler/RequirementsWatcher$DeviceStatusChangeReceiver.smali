.class Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher$DeviceStatusChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RequirementsWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceStatusChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher$DeviceStatusChangeReceiver;->this$0:Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher;Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher$1;)V
    .locals 0

    .line 172
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher$DeviceStatusChangeReceiver;-><init>(Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 175
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher$DeviceStatusChangeReceiver;->isInitialStickyBroadcast()Z

    move-result p1

    if-nez p1, :cond_0

    .line 176
    iget-object p1, p0, Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher$DeviceStatusChangeReceiver;->this$0:Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher;->access$200(Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher;)V

    :cond_0
    return-void
.end method
