.class final Lcom/google/android/exoplr2avp/extractor/mp4/SefReader$DataReference;
.super Ljava/lang/Object;
.source "SefReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/extractor/mp4/SefReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DataReference"
.end annotation


# instance fields
.field public final dataType:I

.field public final size:I

.field public final startOffset:J


# direct methods
.method public constructor <init>(IJI)V
    .locals 0

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput p1, p0, Lcom/google/android/exoplr2avp/extractor/mp4/SefReader$DataReference;->dataType:I

    .line 276
    iput-wide p2, p0, Lcom/google/android/exoplr2avp/extractor/mp4/SefReader$DataReference;->startOffset:J

    .line 277
    iput p4, p0, Lcom/google/android/exoplr2avp/extractor/mp4/SefReader$DataReference;->size:I

    return-void
.end method
