.class public final Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher;
.super Ljava/lang/Object;
.source "RequirementsWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher$NetworkCallback;,
        Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher$DeviceStatusChangeReceiver;,
        Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher$Listener;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final handler:Landroid/os/Handler;

.field private final listener:Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher$Listener;

.field private networkCallback:Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher$NetworkCallback;

.field private notMetRequirements:I

.field private receiver:Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher$DeviceStatusChangeReceiver;

.field private final requirements:Lcom/google/android/exoplr2avp/scheduler/Requirements;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher$Listener;Lcom/google/android/exoplr2avp/scheduler/Requirements;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher;->context:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher;->listener:Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher$Listener;

    .line 74
    iput-object p3, p0, Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher;->requirements:Lcom/google/android/exoplr2avp/scheduler/Requirements;

    .line 75
    invoke-static {}, Lcom/google/android/exoplr2avp/util/Util;->createHandlerForCurrentOrMainLooper()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher;->checkRequirements()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher;)Landroid/os/Handler;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher;)Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher$NetworkCallback;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher;->networkCallback:Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher$NetworkCallback;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher;->recheckNotMetNetworkRequirements()V

    return-void
.end method

.method private checkRequirements()V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher;->requirements:Lcom/google/android/exoplr2avp/scheduler/Requirements;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/scheduler/Requirements;->getNotMetRequirements(Landroid/content/Context;)I

    move-result v0

    .line 149
    iget v1, p0, Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher;->notMetRequirements:I

    if-eq v1, v0, :cond_0

    .line 150
    iput v0, p0, Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher;->notMetRequirements:I

    .line 151
    iget-object v1, p0, Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher;->listener:Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher$Listener;

    invoke-interface {v1, p0, v0}, Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher$Listener;->onRequirementsStateChanged(Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher;I)V

    :cond_0
    return-void
.end method

.method private recheckNotMetNetworkRequirements()V
    .locals 1

    .line 165
    iget v0, p0, Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher;->notMetRequirements:I

    and-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_0

    return-void

    .line 169
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher;->checkRequirements()V

    return-void
.end method

.method private registerNetworkCallbackV24()V
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher;->context:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 133
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 134
    new-instance v1, Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher$NetworkCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher$NetworkCallback;-><init>(Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher;Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher$1;)V

    iput-object v1, p0, Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher;->networkCallback:Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher$NetworkCallback;

    .line 135
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method private unregisterNetworkCallbackV24()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher;->context:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 141
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 142
    iget-object v1, p0, Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher;->networkCallback:Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher$NetworkCallback;

    invoke-static {v1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher;->networkCallback:Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher$NetworkCallback;

    return-void
.end method


# virtual methods
.method public getRequirements()Lcom/google/android/exoplr2avp/scheduler/Requirements;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher;->requirements:Lcom/google/android/exoplr2avp/scheduler/Requirements;

    return-object v0
.end method

.method public start()I
    .locals 5

    .line 85
    iget-object v0, p0, Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher;->requirements:Lcom/google/android/exoplr2avp/scheduler/Requirements;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/scheduler/Requirements;->getNotMetRequirements(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher;->notMetRequirements:I

    .line 87
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 88
    iget-object v1, p0, Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher;->requirements:Lcom/google/android/exoplr2avp/scheduler/Requirements;

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/scheduler/Requirements;->isNetworkRequired()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    sget v1, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 90
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher;->registerNetworkCallbackV24()V

    goto :goto_0

    :cond_0
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 92
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher;->requirements:Lcom/google/android/exoplr2avp/scheduler/Requirements;

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/scheduler/Requirements;->isChargingRequired()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 96
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 97
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher;->requirements:Lcom/google/android/exoplr2avp/scheduler/Requirements;

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/scheduler/Requirements;->isIdleRequired()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 100
    sget v1, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_3

    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    .line 101
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v1, "android.intent.action.SCREEN_ON"

    .line 103
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 104
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher;->requirements:Lcom/google/android/exoplr2avp/scheduler/Requirements;

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/scheduler/Requirements;->isStorageNotLowRequired()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    .line 108
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DEVICE_STORAGE_OK"

    .line 109
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    :cond_5
    new-instance v1, Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher$DeviceStatusChangeReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher$DeviceStatusChangeReceiver;-><init>(Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher;Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher$1;)V

    iput-object v1, p0, Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher;->receiver:Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher$DeviceStatusChangeReceiver;

    .line 112
    iget-object v3, p0, Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v1, v0, v2, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 113
    iget v0, p0, Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher;->notMetRequirements:I

    return v0
.end method

.method public stop()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher;->receiver:Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher$DeviceStatusChangeReceiver;

    invoke-static {v1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher;->receiver:Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher$DeviceStatusChangeReceiver;

    .line 120
    sget v0, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher;->networkCallback:Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher$NetworkCallback;

    if-eqz v0, :cond_0

    .line 121
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/scheduler/RequirementsWatcher;->unregisterNetworkCallbackV24()V

    :cond_0
    return-void
.end method
