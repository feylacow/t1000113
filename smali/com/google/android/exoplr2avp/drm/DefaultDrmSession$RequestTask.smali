.class final Lcom/google/android/exoplr2avp/drm/DefaultDrmSession$RequestTask;
.super Ljava/lang/Object;
.source "DefaultDrmSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/drm/DefaultDrmSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RequestTask"
.end annotation


# instance fields
.field public final allowRetry:Z

.field public errorCount:I

.field public final request:Ljava/lang/Object;

.field public final startTimeMs:J

.field public final taskId:J


# direct methods
.method public constructor <init>(JZJLjava/lang/Object;)V
    .locals 0

    .line 702
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 703
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSession$RequestTask;->taskId:J

    .line 704
    iput-boolean p3, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSession$RequestTask;->allowRetry:Z

    .line 705
    iput-wide p4, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSession$RequestTask;->startTimeMs:J

    .line 706
    iput-object p6, p0, Lcom/google/android/exoplr2avp/drm/DefaultDrmSession$RequestTask;->request:Ljava/lang/Object;

    return-void
.end method
