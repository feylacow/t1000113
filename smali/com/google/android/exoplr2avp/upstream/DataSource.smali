.class public interface abstract Lcom/google/android/exoplr2avp/upstream/DataSource;
.super Ljava/lang/Object;
.source "DataSource.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/upstream/DataReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;
    }
.end annotation


# virtual methods
.method public abstract addTransferListener(Lcom/google/android/exoplr2avp/upstream/TransferListener;)V
.end method

.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getResponseHeaders()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getUri()Landroid/net/Uri;
.end method

.method public abstract open(Lcom/google/android/exoplr2avp/upstream/DataSpec;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
