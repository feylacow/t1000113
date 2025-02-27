.class public final Lcom/google/android/exoplr2avp/upstream/DataSpec;
.super Ljava/lang/Object;
.source "DataSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/upstream/DataSpec$HttpMethod;,
        Lcom/google/android/exoplr2avp/upstream/DataSpec$Flags;,
        Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;
    }
.end annotation


# static fields
.field public static final FLAG_ALLOW_CACHE_FRAGMENTATION:I = 0x4

.field public static final FLAG_ALLOW_GZIP:I = 0x1

.field public static final FLAG_DONT_CACHE_IF_LENGTH_UNKNOWN:I = 0x2

.field public static final FLAG_MIGHT_NOT_USE_FULL_NETWORK_SPEED:I = 0x8

.field public static final HTTP_METHOD_GET:I = 0x1

.field public static final HTTP_METHOD_HEAD:I = 0x3

.field public static final HTTP_METHOD_POST:I = 0x2


# instance fields
.field public final absoluteStreamPosition:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final customData:Ljava/lang/Object;

.field public final flags:I

.field public final httpBody:[B

.field public final httpMethod:I

.field public final httpRequestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final key:Ljava/lang/String;

.field public final length:J

.field public final position:J

.field public final uri:Landroid/net/Uri;

.field public final uriPositionOffset:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.datasource"

    .line 38
    invoke-static {v0}, Lcom/google/android/exoplr2avp/ExoPlayerLibraryInfo;->registerModule(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 6

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    .line 399
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplr2avp/upstream/DataSpec;-><init>(Landroid/net/Uri;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;I)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v7, p2

    .line 433
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplr2avp/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;I[BJJJLjava/lang/String;I)V
    .locals 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 593
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v12

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-object/from16 v10, p10

    move/from16 v11, p11

    .line 584
    invoke-direct/range {v0 .. v12}, Lcom/google/android/exoplr2avp/upstream/DataSpec;-><init>(Landroid/net/Uri;I[BJJJLjava/lang/String;ILjava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;I[BJJJLjava/lang/String;ILjava/util/Map;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "I[BJJJ",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sub-long v2, p4, p6

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p12

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-object/from16 v11, p10

    move/from16 v12, p11

    .line 621
    invoke-direct/range {v0 .. v13}, Lcom/google/android/exoplr2avp/upstream/DataSpec;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "JI[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;JJ",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-wide/from16 v1, p2

    move-object/from16 v3, p5

    move-wide/from16 v4, p7

    move-wide/from16 v6, p9

    .line 645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    add-long v8, v1, v4

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    cmp-long v14, v8, v12

    if-ltz v14, :cond_0

    const/4 v14, 0x1

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    .line 648
    :goto_0
    invoke-static {v14}, Lcom/google/android/exoplr2avp/util/Assertions;->checkArgument(Z)V

    cmp-long v14, v4, v12

    if-ltz v14, :cond_1

    const/4 v14, 0x1

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    .line 649
    :goto_1
    invoke-static {v14}, Lcom/google/android/exoplr2avp/util/Assertions;->checkArgument(Z)V

    cmp-long v14, v6, v12

    if-gtz v14, :cond_3

    const-wide/16 v12, -0x1

    cmp-long v14, v6, v12

    if-nez v14, :cond_2

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    .line 650
    :cond_3
    :goto_2
    invoke-static {v10}, Lcom/google/android/exoplr2avp/util/Assertions;->checkArgument(Z)V

    move-object/from16 v10, p1

    .line 651
    iput-object v10, v0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->uri:Landroid/net/Uri;

    .line 652
    iput-wide v1, v0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->uriPositionOffset:J

    move/from16 v1, p4

    .line 653
    iput v1, v0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->httpMethod:I

    if-eqz v3, :cond_4

    .line 654
    array-length v1, v3

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    move-object v3, v1

    :goto_3
    iput-object v3, v0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->httpBody:[B

    .line 655
    new-instance v1, Ljava/util/HashMap;

    move-object/from16 v2, p6

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->httpRequestHeaders:Ljava/util/Map;

    .line 656
    iput-wide v4, v0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->position:J

    .line 657
    iput-wide v8, v0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->absoluteStreamPosition:J

    .line 658
    iput-wide v6, v0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->length:J

    move-object/from16 v1, p11

    .line 659
    iput-object v1, v0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->key:Ljava/lang/String;

    move/from16 v1, p12

    .line 660
    iput v1, v0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->flags:I

    move-object/from16 v1, p13

    .line 661
    iput-object v1, v0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->customData:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;Lcom/google/android/exoplr2avp/upstream/DataSpec$1;)V
    .locals 0

    .line 35
    invoke-direct/range {p0 .. p13}, Lcom/google/android/exoplr2avp/upstream/DataSpec;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;JJ)V
    .locals 14

    .line 415
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v7, p2

    move-wide/from16 v9, p4

    .line 410
    invoke-direct/range {v0 .. v13}, Lcom/google/android/exoplr2avp/upstream/DataSpec;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;JJJLjava/lang/String;I)V
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move/from16 v10, p9

    .line 519
    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplr2avp/upstream/DataSpec;-><init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;JJLjava/lang/String;)V
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    .line 448
    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplr2avp/upstream/DataSpec;-><init>(Landroid/net/Uri;JJJLjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;JJLjava/lang/String;I)V
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    move/from16 v9, p7

    .line 464
    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplr2avp/upstream/DataSpec;-><init>(Landroid/net/Uri;JJJLjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;JJLjava/lang/String;ILjava/util/Map;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "JJ",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move-wide v6, p2

    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    move/from16 v11, p7

    move-object/from16 v12, p8

    .line 487
    invoke-direct/range {v0 .. v12}, Lcom/google/android/exoplr2avp/upstream/DataSpec;-><init>(Landroid/net/Uri;I[BJJJLjava/lang/String;ILjava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p2, :cond_0

    const/4 v0, 0x2

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const/4 v2, 0x1

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-object/from16 v10, p9

    move/from16 v11, p10

    .line 549
    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplr2avp/upstream/DataSpec;-><init>(Landroid/net/Uri;I[BJJJLjava/lang/String;I)V

    return-void
.end method

.method public static getStringForHttpMethod(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const-string p0, "HEAD"

    return-object p0

    .line 305
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    const-string p0, "POST"

    return-object p0

    :cond_2
    const-string p0, "GET"

    return-object p0
.end method


# virtual methods
.method public buildUpon()Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;
    .locals 2

    .line 683
    new-instance v0, Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;-><init>(Lcom/google/android/exoplr2avp/upstream/DataSpec;Lcom/google/android/exoplr2avp/upstream/DataSpec$1;)V

    return-object v0
.end method

.method public final getHttpMethodString()Ljava/lang/String;
    .locals 1

    .line 678
    iget v0, p0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->httpMethod:I

    invoke-static {v0}, Lcom/google/android/exoplr2avp/upstream/DataSpec;->getStringForHttpMethod(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isFlagSet(I)Z
    .locals 1

    .line 670
    iget v0, p0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->flags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public subrange(J)Lcom/google/android/exoplr2avp/upstream/DataSpec;
    .locals 5

    .line 694
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->length:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    sub-long v2, v0, p1

    :goto_0
    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/google/android/exoplr2avp/upstream/DataSpec;->subrange(JJ)Lcom/google/android/exoplr2avp/upstream/DataSpec;

    move-result-object p1

    return-object p1
.end method

.method public subrange(JJ)Lcom/google/android/exoplr2avp/upstream/DataSpec;
    .locals 17

    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    .line 705
    iget-wide v1, v0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->length:J

    cmp-long v3, v1, p3

    if-nez v3, :cond_0

    return-object v0

    .line 708
    :cond_0
    new-instance v1, Lcom/google/android/exoplr2avp/upstream/DataSpec;

    iget-object v4, v0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->uri:Landroid/net/Uri;

    iget-wide v5, v0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->uriPositionOffset:J

    iget v7, v0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->httpMethod:I

    iget-object v8, v0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->httpBody:[B

    iget-object v9, v0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->httpRequestHeaders:Ljava/util/Map;

    iget-wide v2, v0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->position:J

    add-long v10, v2, p1

    iget-object v14, v0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->key:Ljava/lang/String;

    iget v15, v0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->flags:I

    iget-object v2, v0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->customData:Ljava/lang/Object;

    move-object v3, v1

    move-wide/from16 v12, p3

    move-object/from16 v16, v2

    invoke-direct/range {v3 .. v16}, Lcom/google/android/exoplr2avp/upstream/DataSpec;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataSpec["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/upstream/DataSpec;->getHttpMethodString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->position:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->length:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->flags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withAdditionalHeaders(Ljava/util/Map;)Lcom/google/android/exoplr2avp/upstream/DataSpec;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/exoplr2avp/upstream/DataSpec;"
        }
    .end annotation

    .line 772
    new-instance v6, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->httpRequestHeaders:Ljava/util/Map;

    invoke-direct {v6, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 773
    invoke-interface {v6, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 774
    new-instance p1, Lcom/google/android/exoplr2avp/upstream/DataSpec;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->uri:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->uriPositionOffset:J

    iget v4, p0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->httpMethod:I

    iget-object v5, p0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->httpBody:[B

    iget-wide v7, p0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->position:J

    iget-wide v9, p0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->length:J

    iget-object v11, p0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->key:Ljava/lang/String;

    iget v12, p0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->flags:I

    iget-object v13, p0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->customData:Ljava/lang/Object;

    move-object v0, p1

    invoke-direct/range {v0 .. v13}, Lcom/google/android/exoplr2avp/upstream/DataSpec;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    return-object p1
.end method

.method public withRequestHeaders(Ljava/util/Map;)Lcom/google/android/exoplr2avp/upstream/DataSpec;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/exoplr2avp/upstream/DataSpec;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 750
    new-instance v15, Lcom/google/android/exoplr2avp/upstream/DataSpec;

    iget-object v2, v0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->uri:Landroid/net/Uri;

    iget-wide v3, v0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->uriPositionOffset:J

    iget v5, v0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->httpMethod:I

    iget-object v6, v0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->httpBody:[B

    iget-wide v8, v0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->position:J

    iget-wide v10, v0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->length:J

    iget-object v12, v0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->key:Ljava/lang/String;

    iget v13, v0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->flags:I

    iget-object v14, v0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->customData:Ljava/lang/Object;

    move-object v1, v15

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v14}, Lcom/google/android/exoplr2avp/upstream/DataSpec;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    return-object v15
.end method

.method public withUri(Landroid/net/Uri;)Lcom/google/android/exoplr2avp/upstream/DataSpec;
    .locals 16

    move-object/from16 v0, p0

    .line 729
    new-instance v15, Lcom/google/android/exoplr2avp/upstream/DataSpec;

    iget-wide v3, v0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->uriPositionOffset:J

    iget v5, v0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->httpMethod:I

    iget-object v6, v0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->httpBody:[B

    iget-object v7, v0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->httpRequestHeaders:Ljava/util/Map;

    iget-wide v8, v0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->position:J

    iget-wide v10, v0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->length:J

    iget-object v12, v0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->key:Ljava/lang/String;

    iget v13, v0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->flags:I

    iget-object v14, v0, Lcom/google/android/exoplr2avp/upstream/DataSpec;->customData:Ljava/lang/Object;

    move-object v1, v15

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v14}, Lcom/google/android/exoplr2avp/upstream/DataSpec;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    return-object v15
.end method
