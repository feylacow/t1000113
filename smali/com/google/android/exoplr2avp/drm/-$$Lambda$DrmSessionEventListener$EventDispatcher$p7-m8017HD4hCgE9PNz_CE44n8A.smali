.class public final synthetic Lcom/google/android/exoplr2avp/drm/-$$Lambda$DrmSessionEventListener$EventDispatcher$p7-m8017HD4hCgE9PNz_CE44n8A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;

.field public final synthetic f$1:Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/drm/-$$Lambda$DrmSessionEventListener$EventDispatcher$p7-m8017HD4hCgE9PNz_CE44n8A;->f$0:Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;

    iput-object p2, p0, Lcom/google/android/exoplr2avp/drm/-$$Lambda$DrmSessionEventListener$EventDispatcher$p7-m8017HD4hCgE9PNz_CE44n8A;->f$1:Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener;

    iput p3, p0, Lcom/google/android/exoplr2avp/drm/-$$Lambda$DrmSessionEventListener$EventDispatcher$p7-m8017HD4hCgE9PNz_CE44n8A;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplr2avp/drm/-$$Lambda$DrmSessionEventListener$EventDispatcher$p7-m8017HD4hCgE9PNz_CE44n8A;->f$0:Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/drm/-$$Lambda$DrmSessionEventListener$EventDispatcher$p7-m8017HD4hCgE9PNz_CE44n8A;->f$1:Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener;

    iget v2, p0, Lcom/google/android/exoplr2avp/drm/-$$Lambda$DrmSessionEventListener$EventDispatcher$p7-m8017HD4hCgE9PNz_CE44n8A;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;->lambda$drmSessionAcquired$0$DrmSessionEventListener$EventDispatcher(Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener;I)V

    return-void
.end method
