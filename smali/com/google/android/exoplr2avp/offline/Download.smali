.class public final Lcom/google/android/exoplr2avp/offline/Download;
.super Ljava/lang/Object;
.source "Download.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/offline/Download$FailureReason;,
        Lcom/google/android/exoplr2avp/offline/Download$State;
    }
.end annotation


# static fields
.field public static final FAILURE_REASON_NONE:I = 0x0

.field public static final FAILURE_REASON_UNKNOWN:I = 0x1

.field public static final STATE_COMPLETED:I = 0x3

.field public static final STATE_DOWNLOADING:I = 0x2

.field public static final STATE_FAILED:I = 0x4

.field public static final STATE_QUEUED:I = 0x0

.field public static final STATE_REMOVING:I = 0x5

.field public static final STATE_RESTARTING:I = 0x7

.field public static final STATE_STOPPED:I = 0x1

.field public static final STOP_REASON_NONE:I


# instance fields
.field public final contentLength:J

.field public final failureReason:I

.field final progress:Lcom/google/android/exoplr2avp/offline/DownloadProgress;

.field public final request:Lcom/google/android/exoplr2avp/offline/DownloadRequest;

.field public final startTimeMs:J

.field public final state:I

.field public final stopReason:I

.field public final updateTimeMs:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/offline/DownloadRequest;IJJJII)V
    .locals 12

    .line 125
    new-instance v11, Lcom/google/android/exoplr2avp/offline/DownloadProgress;

    invoke-direct {v11}, Lcom/google/android/exoplr2avp/offline/DownloadProgress;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplr2avp/offline/Download;-><init>(Lcom/google/android/exoplr2avp/offline/DownloadRequest;IJJJIILcom/google/android/exoplr2avp/offline/DownloadProgress;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplr2avp/offline/DownloadRequest;IJJJIILcom/google/android/exoplr2avp/offline/DownloadProgress;)V
    .locals 4

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    invoke-static {p11}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p10, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    if-eq p2, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 146
    :goto_2
    invoke-static {v2}, Lcom/google/android/exoplr2avp/util/Assertions;->checkArgument(Z)V

    if-eqz p9, :cond_4

    const/4 v2, 0x2

    if-eq p2, v2, :cond_3

    if-eqz p2, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    .line 148
    :goto_3
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkArgument(Z)V

    .line 150
    :cond_4
    iput-object p1, p0, Lcom/google/android/exoplr2avp/offline/Download;->request:Lcom/google/android/exoplr2avp/offline/DownloadRequest;

    .line 151
    iput p2, p0, Lcom/google/android/exoplr2avp/offline/Download;->state:I

    .line 152
    iput-wide p3, p0, Lcom/google/android/exoplr2avp/offline/Download;->startTimeMs:J

    .line 153
    iput-wide p5, p0, Lcom/google/android/exoplr2avp/offline/Download;->updateTimeMs:J

    .line 154
    iput-wide p7, p0, Lcom/google/android/exoplr2avp/offline/Download;->contentLength:J

    .line 155
    iput p9, p0, Lcom/google/android/exoplr2avp/offline/Download;->stopReason:I

    .line 156
    iput p10, p0, Lcom/google/android/exoplr2avp/offline/Download;->failureReason:I

    .line 157
    iput-object p11, p0, Lcom/google/android/exoplr2avp/offline/Download;->progress:Lcom/google/android/exoplr2avp/offline/DownloadProgress;

    return-void
.end method


# virtual methods
.method public getBytesDownloaded()J
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/google/android/exoplr2avp/offline/Download;->progress:Lcom/google/android/exoplr2avp/offline/DownloadProgress;

    iget-wide v0, v0, Lcom/google/android/exoplr2avp/offline/DownloadProgress;->bytesDownloaded:J

    return-wide v0
.end method

.method public getPercentDownloaded()F
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/google/android/exoplr2avp/offline/Download;->progress:Lcom/google/android/exoplr2avp/offline/DownloadProgress;

    iget v0, v0, Lcom/google/android/exoplr2avp/offline/DownloadProgress;->percentDownloaded:F

    return v0
.end method

.method public isTerminalState()Z
    .locals 2

    .line 162
    iget v0, p0, Lcom/google/android/exoplr2avp/offline/Download;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
