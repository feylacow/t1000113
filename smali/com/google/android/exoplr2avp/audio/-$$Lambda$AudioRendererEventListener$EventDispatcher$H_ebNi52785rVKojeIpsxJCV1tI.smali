.class public final synthetic Lcom/google/android/exoplr2avp/audio/-$$Lambda$AudioRendererEventListener$EventDispatcher$H_ebNi52785rVKojeIpsxJCV1tI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/audio/-$$Lambda$AudioRendererEventListener$EventDispatcher$H_ebNi52785rVKojeIpsxJCV1tI;->f$0:Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;

    iput-boolean p2, p0, Lcom/google/android/exoplr2avp/audio/-$$Lambda$AudioRendererEventListener$EventDispatcher$H_ebNi52785rVKojeIpsxJCV1tI;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/-$$Lambda$AudioRendererEventListener$EventDispatcher$H_ebNi52785rVKojeIpsxJCV1tI;->f$0:Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;

    iget-boolean v1, p0, Lcom/google/android/exoplr2avp/audio/-$$Lambda$AudioRendererEventListener$EventDispatcher$H_ebNi52785rVKojeIpsxJCV1tI;->f$1:Z

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;->lambda$skipSilenceEnabledChanged$7$AudioRendererEventListener$EventDispatcher(Z)V

    return-void
.end method
