.class public final synthetic Lcom/google/android/exoplr2avp/upstream/cache/ContentMetadata$-CC;
.super Ljava/lang/Object;
.source "ContentMetadata.java"


# direct methods
.method public static getContentLength(Lcom/google/android/exoplr2avp/upstream/cache/ContentMetadata;)J
    .locals 3

    const-string v0, "exo_len"

    const-wide/16 v1, -0x1

    .line 73
    invoke-interface {p0, v0, v1, v2}, Lcom/google/android/exoplr2avp/upstream/cache/ContentMetadata;->get(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getRedirectedUri(Lcom/google/android/exoplr2avp/upstream/cache/ContentMetadata;)Landroid/net/Uri;
    .locals 3

    const/4 v0, 0x0

    .line 82
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    const-string v2, "exo_redir"

    invoke-interface {p0, v2, v1}, Lcom/google/android/exoplr2avp/upstream/cache/ContentMetadata;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0
.end method
