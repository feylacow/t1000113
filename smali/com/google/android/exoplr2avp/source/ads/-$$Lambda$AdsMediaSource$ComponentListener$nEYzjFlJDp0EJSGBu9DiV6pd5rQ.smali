.class public final synthetic Lcom/google/android/exoplr2avp/source/ads/-$$Lambda$AdsMediaSource$ComponentListener$nEYzjFlJDp0EJSGBu9DiV6pd5rQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource$ComponentListener;

.field public final synthetic f$1:Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource$ComponentListener;Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/ads/-$$Lambda$AdsMediaSource$ComponentListener$nEYzjFlJDp0EJSGBu9DiV6pd5rQ;->f$0:Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource$ComponentListener;

    iput-object p2, p0, Lcom/google/android/exoplr2avp/source/ads/-$$Lambda$AdsMediaSource$ComponentListener$nEYzjFlJDp0EJSGBu9DiV6pd5rQ;->f$1:Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ads/-$$Lambda$AdsMediaSource$ComponentListener$nEYzjFlJDp0EJSGBu9DiV6pd5rQ;->f$0:Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource$ComponentListener;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/ads/-$$Lambda$AdsMediaSource$ComponentListener$nEYzjFlJDp0EJSGBu9DiV6pd5rQ;->f$1:Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource$ComponentListener;->lambda$onAdPlaybackState$0$AdsMediaSource$ComponentListener(Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;)V

    return-void
.end method
