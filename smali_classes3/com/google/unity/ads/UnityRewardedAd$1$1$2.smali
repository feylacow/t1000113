.class Lcom/google/unity/ads/UnityRewardedAd$1$1$2;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "UnityRewardedAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/unity/ads/UnityRewardedAd$1$1;->onAdLoaded(Lcom/google/android/gms/ads/rewarded/RewardedAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/unity/ads/UnityRewardedAd$1$1;


# direct methods
.method constructor <init>(Lcom/google/unity/ads/UnityRewardedAd$1$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lcom/google/unity/ads/UnityRewardedAd$1$1$2;->this$2:Lcom/google/unity/ads/UnityRewardedAd$1$1;

    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdDismissedFullScreenContent()V
    .locals 2

    .line 120
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/unity/ads/UnityRewardedAd$1$1$2$3;

    invoke-direct {v1, p0}, Lcom/google/unity/ads/UnityRewardedAd$1$1$2$3;-><init>(Lcom/google/unity/ads/UnityRewardedAd$1$1$2;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 129
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "error"
        }
    .end annotation

    .line 92
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/unity/ads/UnityRewardedAd$1$1$2$1;

    invoke-direct {v1, p0, p1}, Lcom/google/unity/ads/UnityRewardedAd$1$1$2$1;-><init>(Lcom/google/unity/ads/UnityRewardedAd$1$1$2;Lcom/google/android/gms/ads/AdError;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 101
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onAdImpression()V
    .locals 2

    .line 134
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/unity/ads/UnityRewardedAd$1$1$2$4;

    invoke-direct {v1, p0}, Lcom/google/unity/ads/UnityRewardedAd$1$1$2$4;-><init>(Lcom/google/unity/ads/UnityRewardedAd$1$1$2;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 143
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onAdShowedFullScreenContent()V
    .locals 2

    .line 106
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/unity/ads/UnityRewardedAd$1$1$2$2;

    invoke-direct {v1, p0}, Lcom/google/unity/ads/UnityRewardedAd$1$1$2$2;-><init>(Lcom/google/unity/ads/UnityRewardedAd$1$1$2;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 115
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
