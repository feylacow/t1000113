.class public final synthetic Lcom/google/android/exoplr2avp/extractor/ExtractorsFactory$-CC;
.super Ljava/lang/Object;
.source "ExtractorsFactory.java"


# direct methods
.method public static $default$createExtractors(Lcom/google/android/exoplr2avp/extractor/ExtractorsFactory;Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/exoplr2avp/extractor/Extractor;
    .locals 0
    .param p0, "_this"    # Lcom/google/android/exoplr2avp/extractor/ExtractorsFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)[",
            "Lcom/google/android/exoplr2avp/extractor/Extractor;"
        }
    .end annotation

    .line 43
    invoke-interface {p0}, Lcom/google/android/exoplr2avp/extractor/ExtractorsFactory;->createExtractors()[Lcom/google/android/exoplr2avp/extractor/Extractor;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$static$0()[Lcom/google/android/exoplr2avp/extractor/Extractor;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/exoplr2avp/extractor/Extractor;

    return-object v0
.end method
