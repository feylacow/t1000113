.class public final synthetic Lcom/facebook/login/-$$Lambda$GetTokenLoginMethodHandler$hr5IWwwdQv2ft83hs2wrC-cftI8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/facebook/internal/PlatformServiceClient$CompletedListener;


# instance fields
.field public final synthetic f$0:Lcom/facebook/login/GetTokenLoginMethodHandler;

.field public final synthetic f$1:Lcom/facebook/login/LoginClient$Request;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/login/GetTokenLoginMethodHandler;Lcom/facebook/login/LoginClient$Request;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/login/-$$Lambda$GetTokenLoginMethodHandler$hr5IWwwdQv2ft83hs2wrC-cftI8;->f$0:Lcom/facebook/login/GetTokenLoginMethodHandler;

    iput-object p2, p0, Lcom/facebook/login/-$$Lambda$GetTokenLoginMethodHandler$hr5IWwwdQv2ft83hs2wrC-cftI8;->f$1:Lcom/facebook/login/LoginClient$Request;

    return-void
.end method


# virtual methods
.method public final completed(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/login/-$$Lambda$GetTokenLoginMethodHandler$hr5IWwwdQv2ft83hs2wrC-cftI8;->f$0:Lcom/facebook/login/GetTokenLoginMethodHandler;

    iget-object v1, p0, Lcom/facebook/login/-$$Lambda$GetTokenLoginMethodHandler$hr5IWwwdQv2ft83hs2wrC-cftI8;->f$1:Lcom/facebook/login/LoginClient$Request;

    invoke-static {v0, v1, p1}, Lcom/facebook/login/GetTokenLoginMethodHandler;->lambda$hr5IWwwdQv2ft83hs2wrC-cftI8(Lcom/facebook/login/GetTokenLoginMethodHandler;Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;)V

    return-void
.end method
