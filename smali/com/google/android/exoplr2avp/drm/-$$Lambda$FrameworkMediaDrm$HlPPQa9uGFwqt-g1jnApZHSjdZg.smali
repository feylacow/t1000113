.class public final synthetic Lcom/google/android/exoplr2avp/drm/-$$Lambda$FrameworkMediaDrm$HlPPQa9uGFwqt-g1jnApZHSjdZg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/MediaDrm$OnEventListener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm;

.field public final synthetic f$1:Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$OnEventListener;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm;Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$OnEventListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/drm/-$$Lambda$FrameworkMediaDrm$HlPPQa9uGFwqt-g1jnApZHSjdZg;->f$0:Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm;

    iput-object p2, p0, Lcom/google/android/exoplr2avp/drm/-$$Lambda$FrameworkMediaDrm$HlPPQa9uGFwqt-g1jnApZHSjdZg;->f$1:Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$OnEventListener;

    return-void
.end method


# virtual methods
.method public final onEvent(Landroid/media/MediaDrm;[BII[B)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/exoplr2avp/drm/-$$Lambda$FrameworkMediaDrm$HlPPQa9uGFwqt-g1jnApZHSjdZg;->f$0:Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/drm/-$$Lambda$FrameworkMediaDrm$HlPPQa9uGFwqt-g1jnApZHSjdZg;->f$1:Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$OnEventListener;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm;->lambda$setOnEventListener$1$FrameworkMediaDrm(Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$OnEventListener;Landroid/media/MediaDrm;[BII[B)V

    return-void
.end method
