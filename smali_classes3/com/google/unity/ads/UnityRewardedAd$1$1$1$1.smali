.class Lcom/google/unity/ads/UnityRewardedAd$1$1$1$1;
.super Ljava/lang/Object;
.source "UnityRewardedAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/unity/ads/UnityRewardedAd$1$1$1;->onPaidEvent(Lcom/google/android/gms/ads/AdValue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/google/unity/ads/UnityRewardedAd$1$1$1;

.field final synthetic val$adValue:Lcom/google/android/gms/ads/AdValue;


# direct methods
.method constructor <init>(Lcom/google/unity/ads/UnityRewardedAd$1$1$1;Lcom/google/android/gms/ads/AdValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$3",
            "val$adValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcom/google/unity/ads/UnityRewardedAd$1$1$1$1;->this$3:Lcom/google/unity/ads/UnityRewardedAd$1$1$1;

    iput-object p2, p0, Lcom/google/unity/ads/UnityRewardedAd$1$1$1$1;->val$adValue:Lcom/google/android/gms/ads/AdValue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 76
    iget-object v0, p0, Lcom/google/unity/ads/UnityRewardedAd$1$1$1$1;->this$3:Lcom/google/unity/ads/UnityRewardedAd$1$1$1;

    iget-object v0, v0, Lcom/google/unity/ads/UnityRewardedAd$1$1$1;->this$2:Lcom/google/unity/ads/UnityRewardedAd$1$1;

    iget-object v0, v0, Lcom/google/unity/ads/UnityRewardedAd$1$1;->this$1:Lcom/google/unity/ads/UnityRewardedAd$1;

    iget-object v0, v0, Lcom/google/unity/ads/UnityRewardedAd$1;->this$0:Lcom/google/unity/ads/UnityRewardedAd;

    invoke-static {v0}, Lcom/google/unity/ads/UnityRewardedAd;->-$$Nest$fgetcallback(Lcom/google/unity/ads/UnityRewardedAd;)Lcom/google/unity/ads/UnityRewardedAdCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/google/unity/ads/UnityRewardedAd$1$1$1$1;->this$3:Lcom/google/unity/ads/UnityRewardedAd$1$1$1;

    iget-object v0, v0, Lcom/google/unity/ads/UnityRewardedAd$1$1$1;->this$2:Lcom/google/unity/ads/UnityRewardedAd$1$1;

    iget-object v0, v0, Lcom/google/unity/ads/UnityRewardedAd$1$1;->this$1:Lcom/google/unity/ads/UnityRewardedAd$1;

    iget-object v0, v0, Lcom/google/unity/ads/UnityRewardedAd$1;->this$0:Lcom/google/unity/ads/UnityRewardedAd;

    invoke-static {v0}, Lcom/google/unity/ads/UnityRewardedAd;->-$$Nest$fgetcallback(Lcom/google/unity/ads/UnityRewardedAd;)Lcom/google/unity/ads/UnityRewardedAdCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/google/unity/ads/UnityRewardedAd$1$1$1$1;->val$adValue:Lcom/google/android/gms/ads/AdValue;

    .line 78
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdValue;->getPrecisionType()I

    move-result v1

    iget-object v2, p0, Lcom/google/unity/ads/UnityRewardedAd$1$1$1$1;->val$adValue:Lcom/google/android/gms/ads/AdValue;

    .line 79
    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdValue;->getValueMicros()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/unity/ads/UnityRewardedAd$1$1$1$1;->val$adValue:Lcom/google/android/gms/ads/AdValue;

    .line 80
    invoke-virtual {v4}, Lcom/google/android/gms/ads/AdValue;->getCurrencyCode()Ljava/lang/String;

    move-result-object v4

    .line 77
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/unity/ads/UnityRewardedAdCallback;->onPaidEvent(IJLjava/lang/String;)V

    :cond_0
    return-void
.end method
