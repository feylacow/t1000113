.class public final synthetic Lcom/google/android/exoplr2avp/source/-$$Lambda$DefaultMediaSourceFactory$DelegateFactoryLoader$Y4aeZ_nwzvYuXPMdzEBZr3oDxL8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic f$0:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/-$$Lambda$DefaultMediaSourceFactory$DelegateFactoryLoader$Y4aeZ_nwzvYuXPMdzEBZr3oDxL8;->f$0:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/-$$Lambda$DefaultMediaSourceFactory$DelegateFactoryLoader$Y4aeZ_nwzvYuXPMdzEBZr3oDxL8;->f$0:Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->lambda$maybeLoadSupplier$3(Ljava/lang/Class;)Lcom/google/android/exoplr2avp/source/MediaSource$Factory;

    move-result-object v0

    return-object v0
.end method
