.class public final Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;
.super Ljava/lang/Object;
.source "LoadErrorHandlingPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LoadErrorInfo"
.end annotation


# instance fields
.field public final errorCount:I

.field public final exception:Ljava/io/IOException;

.field public final loadEventInfo:Lcom/google/android/exoplr2avp/source/LoadEventInfo;

.field public final mediaLoadData:Lcom/google/android/exoplr2avp/source/MediaLoadData;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;Ljava/io/IOException;I)V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;->loadEventInfo:Lcom/google/android/exoplr2avp/source/LoadEventInfo;

    .line 91
    iput-object p2, p0, Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;->mediaLoadData:Lcom/google/android/exoplr2avp/source/MediaLoadData;

    .line 92
    iput-object p3, p0, Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;->exception:Ljava/io/IOException;

    .line 93
    iput p4, p0, Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;->errorCount:I

    return-void
.end method
