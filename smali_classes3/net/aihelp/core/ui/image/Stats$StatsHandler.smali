.class Lnet/aihelp/core/ui/image/Stats$StatsHandler;
.super Landroid/os/Handler;
.source "Stats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/ui/image/Stats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StatsHandler"
.end annotation


# instance fields
.field private final stats:Lnet/aihelp/core/ui/image/Stats;


# direct methods
.method constructor <init>(Landroid/os/Looper;Lnet/aihelp/core/ui/image/Stats;)V
    .locals 0

    .line 131
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 132
    iput-object p2, p0, Lnet/aihelp/core/ui/image/Stats$StatsHandler;->stats:Lnet/aihelp/core/ui/image/Stats;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 136
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 153
    sget-object v0, Lnet/aihelp/core/ui/image/Picasso;->HANDLER:Landroid/os/Handler;

    new-instance v1, Lnet/aihelp/core/ui/image/Stats$StatsHandler$1;

    invoke-direct {v1, p0, p1}, Lnet/aihelp/core/ui/image/Stats$StatsHandler$1;-><init>(Lnet/aihelp/core/ui/image/Stats$StatsHandler;Landroid/os/Message;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Stats$StatsHandler;->stats:Lnet/aihelp/core/ui/image/Stats;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {v0, p1}, Lnet/aihelp/core/ui/image/Stats;->performDownloadFinished(Ljava/lang/Long;)V

    goto :goto_0

    .line 147
    :cond_1
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Stats$StatsHandler;->stats:Lnet/aihelp/core/ui/image/Stats;

    iget p1, p1, Landroid/os/Message;->arg1:I

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lnet/aihelp/core/ui/image/Stats;->performBitmapTransformed(J)V

    goto :goto_0

    .line 144
    :cond_2
    iget-object v0, p0, Lnet/aihelp/core/ui/image/Stats$StatsHandler;->stats:Lnet/aihelp/core/ui/image/Stats;

    iget p1, p1, Landroid/os/Message;->arg1:I

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lnet/aihelp/core/ui/image/Stats;->performBitmapDecoded(J)V

    goto :goto_0

    .line 141
    :cond_3
    iget-object p1, p0, Lnet/aihelp/core/ui/image/Stats$StatsHandler;->stats:Lnet/aihelp/core/ui/image/Stats;

    invoke-virtual {p1}, Lnet/aihelp/core/ui/image/Stats;->performCacheMiss()V

    goto :goto_0

    .line 138
    :cond_4
    iget-object p1, p0, Lnet/aihelp/core/ui/image/Stats$StatsHandler;->stats:Lnet/aihelp/core/ui/image/Stats;

    invoke-virtual {p1}, Lnet/aihelp/core/ui/image/Stats;->performCacheHit()V

    :goto_0
    return-void
.end method
