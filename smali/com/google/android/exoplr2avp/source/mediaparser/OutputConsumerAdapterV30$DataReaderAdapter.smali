.class final Lcom/google/android/exoplr2avp/source/mediaparser/OutputConsumerAdapterV30$DataReaderAdapter;
.super Ljava/lang/Object;
.source "OutputConsumerAdapterV30.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/upstream/DataReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/source/mediaparser/OutputConsumerAdapterV30;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DataReaderAdapter"
.end annotation


# instance fields
.field public input:Landroid/media/MediaParser$InputReader;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplr2avp/source/mediaparser/OutputConsumerAdapterV30$1;)V
    .locals 0

    .line 681
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/source/mediaparser/OutputConsumerAdapterV30$DataReaderAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 687
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/mediaparser/OutputConsumerAdapterV30$DataReaderAdapter;->input:Landroid/media/MediaParser$InputReader;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaParser$InputReader;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/MediaParser$InputReader;->read([BII)I

    move-result p1

    return p1
.end method
