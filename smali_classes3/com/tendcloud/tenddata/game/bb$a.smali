.class public Lcom/tendcloud/tenddata/game/bb$a;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/game/bb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private lock:Ljava/lang/Object;

.field private receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Landroid/content/BroadcastReceiver;)V
    .locals 0

    .line 1782
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1783
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/bb$a;->context:Landroid/content/Context;

    .line 1784
    iput-object p2, p0, Lcom/tendcloud/tenddata/game/bb$a;->lock:Ljava/lang/Object;

    .line 1785
    iput-object p3, p0, Lcom/tendcloud/tenddata/game/bb$a;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1804
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bb$a;->lock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1806
    :try_start_1
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/bb$a;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1812
    :try_start_2
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/bb$a;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/bb$a;->receiver:Landroid/content/BroadcastReceiver;

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_1

    :catchall_0
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/bb$a;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/bb$a;->receiver:Landroid/content/BroadcastReceiver;

    goto :goto_0

    .line 1814
    :goto_1
    monitor-exit v0

    goto :goto_2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    :goto_2
    return-void
.end method

.method public unRegisterReceiver()V
    .locals 2

    .line 1789
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bb$a;->receiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1791
    :try_start_0
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/bb$a;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
