.class Lcom/google/unity/ads/UnityAppOpenAd$1$1$3;
.super Ljava/lang/Object;
.source "UnityAppOpenAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/unity/ads/UnityAppOpenAd$1$1;->onAdLoaded(Lcom/google/android/gms/ads/appopen/AppOpenAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/unity/ads/UnityAppOpenAd$1$1;


# direct methods
.method constructor <init>(Lcom/google/unity/ads/UnityAppOpenAd$1$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    .line 152
    iput-object p1, p0, Lcom/google/unity/ads/UnityAppOpenAd$1$1$3;->this$2:Lcom/google/unity/ads/UnityAppOpenAd$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/google/unity/ads/UnityAppOpenAd$1$1$3;->this$2:Lcom/google/unity/ads/UnityAppOpenAd$1$1;

    iget-object v0, v0, Lcom/google/unity/ads/UnityAppOpenAd$1$1;->this$1:Lcom/google/unity/ads/UnityAppOpenAd$1;

    iget-object v0, v0, Lcom/google/unity/ads/UnityAppOpenAd$1;->this$0:Lcom/google/unity/ads/UnityAppOpenAd;

    invoke-static {v0}, Lcom/google/unity/ads/UnityAppOpenAd;->-$$Nest$fgetcallback(Lcom/google/unity/ads/UnityAppOpenAd;)Lcom/google/unity/ads/UnityAppOpenAdCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/google/unity/ads/UnityAppOpenAd$1$1$3;->this$2:Lcom/google/unity/ads/UnityAppOpenAd$1$1;

    iget-object v0, v0, Lcom/google/unity/ads/UnityAppOpenAd$1$1;->this$1:Lcom/google/unity/ads/UnityAppOpenAd$1;

    iget-object v0, v0, Lcom/google/unity/ads/UnityAppOpenAd$1;->this$0:Lcom/google/unity/ads/UnityAppOpenAd;

    invoke-static {v0}, Lcom/google/unity/ads/UnityAppOpenAd;->-$$Nest$fgetcallback(Lcom/google/unity/ads/UnityAppOpenAd;)Lcom/google/unity/ads/UnityAppOpenAdCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/unity/ads/UnityAppOpenAdCallback;->onAppOpenAdLoaded()V

    :cond_0
    return-void
.end method
