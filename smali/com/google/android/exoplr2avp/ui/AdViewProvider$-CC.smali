.class public final synthetic Lcom/google/android/exoplr2avp/ui/AdViewProvider$-CC;
.super Ljava/lang/Object;
.source "AdViewProvider.java"


# direct methods
.method public static $default$getAdOverlayInfos(Lcom/google/android/exoplr2avp/ui/AdViewProvider;)Ljava/util/List;
    .locals 1
    .param p0, "_this"    # Lcom/google/android/exoplr2avp/ui/AdViewProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/ui/AdOverlayInfo;",
            ">;"
        }
    .end annotation

    .line 46
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method
