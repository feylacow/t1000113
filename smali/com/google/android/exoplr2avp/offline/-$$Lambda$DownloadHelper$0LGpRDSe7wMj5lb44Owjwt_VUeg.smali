.class public final synthetic Lcom/google/android/exoplr2avp/offline/-$$Lambda$DownloadHelper$0LGpRDSe7wMj5lb44Owjwt_VUeg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplr2avp/offline/DownloadHelper;

.field public final synthetic f$1:Lcom/google/android/exoplr2avp/offline/DownloadHelper$Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplr2avp/offline/DownloadHelper;Lcom/google/android/exoplr2avp/offline/DownloadHelper$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/offline/-$$Lambda$DownloadHelper$0LGpRDSe7wMj5lb44Owjwt_VUeg;->f$0:Lcom/google/android/exoplr2avp/offline/DownloadHelper;

    iput-object p2, p0, Lcom/google/android/exoplr2avp/offline/-$$Lambda$DownloadHelper$0LGpRDSe7wMj5lb44Owjwt_VUeg;->f$1:Lcom/google/android/exoplr2avp/offline/DownloadHelper$Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplr2avp/offline/-$$Lambda$DownloadHelper$0LGpRDSe7wMj5lb44Owjwt_VUeg;->f$0:Lcom/google/android/exoplr2avp/offline/DownloadHelper;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/offline/-$$Lambda$DownloadHelper$0LGpRDSe7wMj5lb44Owjwt_VUeg;->f$1:Lcom/google/android/exoplr2avp/offline/DownloadHelper$Callback;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->lambda$prepare$3$DownloadHelper(Lcom/google/android/exoplr2avp/offline/DownloadHelper$Callback;)V

    return-void
.end method
