.class final Lcom/google/android/exoplr2avp/offline/DownloadManager$DownloadUpdate;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/offline/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DownloadUpdate"
.end annotation


# instance fields
.field public final download:Lcom/google/android/exoplr2avp/offline/Download;

.field public final downloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/offline/Download;",
            ">;"
        }
    .end annotation
.end field

.field public final finalException:Ljava/lang/Exception;

.field public final isRemove:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/offline/Download;ZLjava/util/List;Ljava/lang/Exception;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/offline/Download;",
            "Z",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/offline/Download;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .line 1410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1411
    iput-object p1, p0, Lcom/google/android/exoplr2avp/offline/DownloadManager$DownloadUpdate;->download:Lcom/google/android/exoplr2avp/offline/Download;

    .line 1412
    iput-boolean p2, p0, Lcom/google/android/exoplr2avp/offline/DownloadManager$DownloadUpdate;->isRemove:Z

    .line 1413
    iput-object p3, p0, Lcom/google/android/exoplr2avp/offline/DownloadManager$DownloadUpdate;->downloads:Ljava/util/List;

    .line 1414
    iput-object p4, p0, Lcom/google/android/exoplr2avp/offline/DownloadManager$DownloadUpdate;->finalException:Ljava/lang/Exception;

    return-void
.end method
