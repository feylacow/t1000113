.class final Lcom/google/android/exoplr2avp/source/rtsp/RtspClient$MessageSender;
.super Ljava/lang/Object;
.source "RtspClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MessageSender"
.end annotation


# instance fields
.field private cSeq:I

.field private lastRequest:Lcom/google/android/exoplr2avp/source/rtsp/RtspRequest;

.field final synthetic this$0:Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient$MessageSender;->this$0:Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;Lcom/google/android/exoplr2avp/source/rtsp/RtspClient$1;)V
    .locals 0

    .line 353
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient$MessageSender;-><init>(Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;)V

    return-void
.end method

.method private getRequestWithCommonHeaders(ILjava/lang/String;Ljava/util/Map;Landroid/net/Uri;)Lcom/google/android/exoplr2avp/source/rtsp/RtspRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/Uri;",
            ")",
            "Lcom/google/android/exoplr2avp/source/rtsp/RtspRequest;"
        }
    .end annotation

    .line 450
    new-instance v0, Lcom/google/android/exoplr2avp/source/rtsp/RtspHeaders$Builder;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient$MessageSender;->this$0:Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;

    invoke-static {v1}, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;->access$400(Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient$MessageSender;->cSeq:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient$MessageSender;->cSeq:I

    invoke-direct {v0, v1, p2, v2}, Lcom/google/android/exoplr2avp/source/rtsp/RtspHeaders$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 452
    iget-object p2, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient$MessageSender;->this$0:Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;

    invoke-static {p2}, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;->access$500(Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;)Lcom/google/android/exoplr2avp/source/rtsp/RtspAuthenticationInfo;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 453
    iget-object p2, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient$MessageSender;->this$0:Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;

    invoke-static {p2}, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;->access$600(Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;)Lcom/google/android/exoplr2avp/source/rtsp/RtspMessageUtil$RtspAuthUserInfo;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/exoplr2avp/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    const-string p2, "Authorization"

    .line 455
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient$MessageSender;->this$0:Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;

    .line 457
    invoke-static {v1}, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;->access$500(Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;)Lcom/google/android/exoplr2avp/source/rtsp/RtspAuthenticationInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient$MessageSender;->this$0:Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;

    invoke-static {v2}, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;->access$600(Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;)Lcom/google/android/exoplr2avp/source/rtsp/RtspMessageUtil$RtspAuthUserInfo;

    move-result-object v2

    invoke-virtual {v1, v2, p4, p1}, Lcom/google/android/exoplr2avp/source/rtsp/RtspAuthenticationInfo;->getAuthorizationHeaderValue(Lcom/google/android/exoplr2avp/source/rtsp/RtspMessageUtil$RtspAuthUserInfo;Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v1

    .line 455
    invoke-virtual {v0, p2, v1}, Lcom/google/android/exoplr2avp/source/rtsp/RtspHeaders$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplr2avp/source/rtsp/RtspHeaders$Builder;
    :try_end_0
    .catch Lcom/google/android/exoplr2avp/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 459
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient$MessageSender;->this$0:Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;

    new-instance v2, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource$RtspPlaybackException;

    invoke-direct {v2, p2}, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource$RtspPlaybackException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1, v2}, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;->access$700(Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;Ljava/lang/Throwable;)V

    .line 463
    :cond_0
    :goto_0
    invoke-virtual {v0, p3}, Lcom/google/android/exoplr2avp/source/rtsp/RtspHeaders$Builder;->addAll(Ljava/util/Map;)Lcom/google/android/exoplr2avp/source/rtsp/RtspHeaders$Builder;

    .line 464
    new-instance p2, Lcom/google/android/exoplr2avp/source/rtsp/RtspRequest;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/source/rtsp/RtspHeaders$Builder;->build()Lcom/google/android/exoplr2avp/source/rtsp/RtspHeaders;

    move-result-object p3

    const-string v0, ""

    invoke-direct {p2, p4, p1, p3, v0}, Lcom/google/android/exoplr2avp/source/rtsp/RtspRequest;-><init>(Landroid/net/Uri;ILcom/google/android/exoplr2avp/source/rtsp/RtspHeaders;Ljava/lang/String;)V

    return-object p2
.end method

.method private sendRequest(Lcom/google/android/exoplr2avp/source/rtsp/RtspRequest;)V
    .locals 2

    .line 468
    iget-object v0, p1, Lcom/google/android/exoplr2avp/source/rtsp/RtspRequest;->headers:Lcom/google/android/exoplr2avp/source/rtsp/RtspHeaders;

    const-string v1, "CSeq"

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/source/rtsp/RtspHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 469
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient$MessageSender;->this$0:Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;

    invoke-static {v1}, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;->access$800(Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 470
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient$MessageSender;->this$0:Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;

    invoke-static {v1}, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;->access$800(Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 471
    invoke-static {p1}, Lcom/google/android/exoplr2avp/source/rtsp/RtspMessageUtil;->serializeRequest(Lcom/google/android/exoplr2avp/source/rtsp/RtspRequest;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 472
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient$MessageSender;->this$0:Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;

    invoke-static {v1, v0}, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;->access$900(Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;Ljava/util/List;)V

    .line 473
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient$MessageSender;->this$0:Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;

    invoke-static {v1}, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;->access$1000(Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;)Lcom/google/android/exoplr2avp/source/rtsp/RtspMessageChannel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/exoplr2avp/source/rtsp/RtspMessageChannel;->send(Ljava/util/List;)V

    .line 474
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient$MessageSender;->lastRequest:Lcom/google/android/exoplr2avp/source/rtsp/RtspRequest;

    return-void
.end method

.method private sendResponse(Lcom/google/android/exoplr2avp/source/rtsp/RtspResponse;)V
    .locals 1

    .line 478
    invoke-static {p1}, Lcom/google/android/exoplr2avp/source/rtsp/RtspMessageUtil;->serializeResponse(Lcom/google/android/exoplr2avp/source/rtsp/RtspResponse;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    .line 479
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient$MessageSender;->this$0:Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;

    invoke-static {v0, p1}, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;->access$900(Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;Ljava/util/List;)V

    .line 480
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient$MessageSender;->this$0:Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;->access$1000(Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;)Lcom/google/android/exoplr2avp/source/rtsp/RtspMessageChannel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/source/rtsp/RtspMessageChannel;->send(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public retryLastRequest()V
    .locals 5

    .line 413
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient$MessageSender;->lastRequest:Lcom/google/android/exoplr2avp/source/rtsp/RtspRequest;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient$MessageSender;->lastRequest:Lcom/google/android/exoplr2avp/source/rtsp/RtspRequest;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/source/rtsp/RtspRequest;->headers:Lcom/google/android/exoplr2avp/source/rtsp/RtspHeaders;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/source/rtsp/RtspHeaders;->asMultiMap()Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object v0

    .line 416
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 417
    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "CSeq"

    .line 418
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "User-Agent"

    .line 419
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "Session"

    .line 420
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "Authorization"

    .line 421
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 426
    :cond_1
    invoke-interface {v0, v3}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 429
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient$MessageSender;->lastRequest:Lcom/google/android/exoplr2avp/source/rtsp/RtspRequest;

    iget v0, v0, Lcom/google/android/exoplr2avp/source/rtsp/RtspRequest;->method:I

    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient$MessageSender;->this$0:Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;

    .line 431
    invoke-static {v2}, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;->access$300(Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient$MessageSender;->lastRequest:Lcom/google/android/exoplr2avp/source/rtsp/RtspRequest;

    iget-object v3, v3, Lcom/google/android/exoplr2avp/source/rtsp/RtspRequest;->uri:Landroid/net/Uri;

    .line 430
    invoke-direct {p0, v0, v2, v1, v3}, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient$MessageSender;->getRequestWithCommonHeaders(ILjava/lang/String;Ljava/util/Map;Landroid/net/Uri;)Lcom/google/android/exoplr2avp/source/rtsp/RtspRequest;

    move-result-object v0

    .line 429
    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient$MessageSender;->sendRequest(Lcom/google/android/exoplr2avp/source/rtsp/RtspRequest;)V

    return-void
.end method

.method public sendDescribeRequest(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    .line 367
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    const/4 v1, 0x2

    .line 366
    invoke-direct {p0, v1, p2, v0, p1}, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient$MessageSender;->getRequestWithCommonHeaders(ILjava/lang/String;Ljava/util/Map;Landroid/net/Uri;)Lcom/google/android/exoplr2avp/source/rtsp/RtspRequest;

    move-result-object p1

    .line 365
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient$MessageSender;->sendRequest(Lcom/google/android/exoplr2avp/source/rtsp/RtspRequest;)V

    return-void
.end method

.method public sendMethodNotAllowedResponse(I)V
    .locals 4

    .line 436
    new-instance v0, Lcom/google/android/exoplr2avp/source/rtsp/RtspResponse;

    new-instance v1, Lcom/google/android/exoplr2avp/source/rtsp/RtspHeaders$Builder;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient$MessageSender;->this$0:Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;

    .line 438
    invoke-static {v2}, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;->access$400(Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient$MessageSender;->this$0:Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;

    invoke-static {v3}, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;->access$300(Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/exoplr2avp/source/rtsp/RtspHeaders$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/source/rtsp/RtspHeaders$Builder;->build()Lcom/google/android/exoplr2avp/source/rtsp/RtspHeaders;

    move-result-object v1

    const/16 v2, 0x195

    invoke-direct {v0, v2, v1}, Lcom/google/android/exoplr2avp/source/rtsp/RtspResponse;-><init>(ILcom/google/android/exoplr2avp/source/rtsp/RtspHeaders;)V

    .line 436
    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient$MessageSender;->sendResponse(Lcom/google/android/exoplr2avp/source/rtsp/RtspResponse;)V

    .line 442
    iget v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient$MessageSender;->cSeq:I

    add-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient$MessageSender;->cSeq:I

    return-void
.end method

.method public sendOptionsRequest(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    .line 361
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    const/4 v1, 0x4

    .line 360
    invoke-direct {p0, v1, p2, v0, p1}, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient$MessageSender;->getRequestWithCommonHeaders(ILjava/lang/String;Ljava/util/Map;Landroid/net/Uri;)Lcom/google/android/exoplr2avp/source/rtsp/RtspRequest;

    move-result-object p1

    .line 359
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient$MessageSender;->sendRequest(Lcom/google/android/exoplr2avp/source/rtsp/RtspRequest;)V

    return-void
.end method

.method public sendPauseRequest(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3

    .line 405
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient$MessageSender;->this$0:Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;->access$100(Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    const/4 v0, 0x5

    .line 408
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v2

    .line 407
    invoke-direct {p0, v0, p2, v2, p1}, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient$MessageSender;->getRequestWithCommonHeaders(ILjava/lang/String;Ljava/util/Map;Landroid/net/Uri;)Lcom/google/android/exoplr2avp/source/rtsp/RtspRequest;

    move-result-object p1

    .line 406
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient$MessageSender;->sendRequest(Lcom/google/android/exoplr2avp/source/rtsp/RtspRequest;)V

    .line 409
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient$MessageSender;->this$0:Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;

    invoke-static {p1, v1}, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;->access$202(Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;Z)Z

    return-void
.end method

.method public sendPlayRequest(Landroid/net/Uri;JLjava/lang/String;)V
    .locals 3

    .line 381
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient$MessageSender;->this$0:Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;->access$100(Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient$MessageSender;->this$0:Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;->access$100(Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    const/4 v0, 0x6

    .line 387
    invoke-static {p2, p3}, Lcom/google/android/exoplr2avp/source/rtsp/RtspSessionTiming;->getOffsetStartTimeTiming(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Range"

    .line 386
    invoke-static {p3, p2}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p2

    .line 383
    invoke-direct {p0, v0, p4, p2, p1}, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient$MessageSender;->getRequestWithCommonHeaders(ILjava/lang/String;Ljava/util/Map;Landroid/net/Uri;)Lcom/google/android/exoplr2avp/source/rtsp/RtspRequest;

    move-result-object p1

    .line 382
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient$MessageSender;->sendRequest(Lcom/google/android/exoplr2avp/source/rtsp/RtspRequest;)V

    return-void
.end method

.method public sendSetupRequest(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 371
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient$MessageSender;->this$0:Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;->access$102(Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;I)I

    const-string v0, "Transport"

    .line 376
    invoke-static {v0, p2}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p2

    const/16 v0, 0xa

    .line 373
    invoke-direct {p0, v0, p3, p2, p1}, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient$MessageSender;->getRequestWithCommonHeaders(ILjava/lang/String;Ljava/util/Map;Landroid/net/Uri;)Lcom/google/android/exoplr2avp/source/rtsp/RtspRequest;

    move-result-object p1

    .line 372
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient$MessageSender;->sendRequest(Lcom/google/android/exoplr2avp/source/rtsp/RtspRequest;)V

    return-void
.end method

.method public sendTeardownRequest(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    .line 392
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient$MessageSender;->this$0:Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;->access$100(Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient$MessageSender;->this$0:Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;->access$100(Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient$MessageSender;->this$0:Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;->access$102(Lcom/google/android/exoplr2avp/source/rtsp/RtspClient;I)I

    const/16 v0, 0xc

    .line 401
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    .line 400
    invoke-direct {p0, v0, p2, v1, p1}, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient$MessageSender;->getRequestWithCommonHeaders(ILjava/lang/String;Ljava/util/Map;Landroid/net/Uri;)Lcom/google/android/exoplr2avp/source/rtsp/RtspRequest;

    move-result-object p1

    .line 399
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/source/rtsp/RtspClient$MessageSender;->sendRequest(Lcom/google/android/exoplr2avp/source/rtsp/RtspRequest;)V

    :cond_1
    :goto_0
    return-void
.end method
