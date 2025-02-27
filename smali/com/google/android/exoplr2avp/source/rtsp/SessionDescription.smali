.class final Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription;
.super Ljava/lang/Object;
.source "SessionDescription.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription$Builder;
    }
.end annotation


# static fields
.field public static final ATTR_CONTROL:Ljava/lang/String; = "control"

.field public static final ATTR_FMTP:Ljava/lang/String; = "fmtp"

.field public static final ATTR_LENGTH:Ljava/lang/String; = "length"

.field public static final ATTR_RANGE:Ljava/lang/String; = "range"

.field public static final ATTR_RTPMAP:Ljava/lang/String; = "rtpmap"

.field public static final ATTR_TOOL:Ljava/lang/String; = "tool"

.field public static final ATTR_TYPE:Ljava/lang/String; = "type"

.field public static final SUPPORTED_SDP_VERSION:Ljava/lang/String; = "0"


# instance fields
.field public final attributes:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final bitrate:I

.field public final connection:Ljava/lang/String;

.field public final emailAddress:Ljava/lang/String;

.field public final key:Ljava/lang/String;

.field public final mediaDescriptionList:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplr2avp/source/rtsp/MediaDescription;",
            ">;"
        }
    .end annotation
.end field

.field public final origin:Ljava/lang/String;

.field public final phoneNumber:Ljava/lang/String;

.field public final sessionInfo:Ljava/lang/String;

.field public final sessionName:Ljava/lang/String;

.field public final timing:Ljava/lang/String;

.field public final uri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription$Builder;)V
    .locals 1

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    invoke-static {p1}, Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription$Builder;->access$100(Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription$Builder;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription;->attributes:Lcom/google/common/collect/ImmutableMap;

    .line 258
    invoke-static {p1}, Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription$Builder;->access$200(Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription$Builder;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription;->mediaDescriptionList:Lcom/google/common/collect/ImmutableList;

    .line 259
    invoke-static {p1}, Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription$Builder;->access$300(Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription;->sessionName:Ljava/lang/String;

    .line 260
    invoke-static {p1}, Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription$Builder;->access$400(Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription;->origin:Ljava/lang/String;

    .line 261
    invoke-static {p1}, Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription$Builder;->access$500(Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription;->timing:Ljava/lang/String;

    .line 262
    invoke-static {p1}, Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription$Builder;->access$600(Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription;->uri:Landroid/net/Uri;

    .line 263
    invoke-static {p1}, Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription$Builder;->access$700(Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription;->connection:Ljava/lang/String;

    .line 264
    invoke-static {p1}, Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription$Builder;->access$800(Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription;->bitrate:I

    .line 265
    invoke-static {p1}, Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription$Builder;->access$900(Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription;->key:Ljava/lang/String;

    .line 266
    invoke-static {p1}, Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription$Builder;->access$1000(Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription;->emailAddress:Ljava/lang/String;

    .line 267
    invoke-static {p1}, Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription$Builder;->access$1100(Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription;->phoneNumber:Ljava/lang/String;

    .line 268
    invoke-static {p1}, Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription$Builder;->access$1200(Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription;->sessionInfo:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription$Builder;Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription$1;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription;-><init>(Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription$Builder;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 276
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 279
    :cond_1
    check-cast p1, Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription;

    .line 280
    iget v2, p0, Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription;->bitrate:I

    iget v3, p1, Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription;->bitrate:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription;->attributes:Lcom/google/common/collect/ImmutableMap;

    iget-object v3, p1, Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription;->attributes:Lcom/google/common/collect/ImmutableMap;

    .line 281
    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableMap;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription;->mediaDescriptionList:Lcom/google/common/collect/ImmutableList;

    iget-object v3, p1, Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription;->mediaDescriptionList:Lcom/google/common/collect/ImmutableList;

    .line 282
    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription;->origin:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription;->origin:Ljava/lang/String;

    .line 283
    invoke-static {v2, v3}, Lcom/google/android/exoplr2avp/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription;->sessionName:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription;->sessionName:Ljava/lang/String;

    .line 284
    invoke-static {v2, v3}, Lcom/google/android/exoplr2avp/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription;->timing:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription;->timing:Ljava/lang/String;

    .line 285
    invoke-static {v2, v3}, Lcom/google/android/exoplr2avp/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription;->sessionInfo:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription;->sessionInfo:Ljava/lang/String;

    .line 286
    invoke-static {v2, v3}, Lcom/google/android/exoplr2avp/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription;->uri:Landroid/net/Uri;

    iget-object v3, p1, Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription;->uri:Landroid/net/Uri;

    .line 287
    invoke-static {v2, v3}, Lcom/google/android/exoplr2avp/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription;->emailAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription;->emailAddress:Ljava/lang/String;

    .line 288
    invoke-static {v2, v3}, Lcom/google/android/exoplr2avp/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription;->phoneNumber:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription;->phoneNumber:Ljava/lang/String;

    .line 289
    invoke-static {v2, v3}, Lcom/google/android/exoplr2avp/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription;->connection:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription;->connection:Ljava/lang/String;

    .line 290
    invoke-static {v2, v3}, Lcom/google/android/exoplr2avp/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription;->key:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription;->key:Ljava/lang/String;

    .line 291
    invoke-static {v2, p1}, Lcom/google/android/exoplr2avp/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 297
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription;->attributes:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->hashCode()I

    move-result v0

    const/16 v1, 0xd9

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 298
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription;->mediaDescriptionList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 299
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription;->origin:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 300
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription;->sessionName:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 301
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription;->timing:Ljava/lang/String;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 302
    iget v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription;->bitrate:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 303
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription;->sessionInfo:Ljava/lang/String;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 304
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription;->uri:Landroid/net/Uri;

    if-nez v0, :cond_4

    const/4 v0, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 305
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription;->emailAddress:Ljava/lang/String;

    if-nez v0, :cond_5

    const/4 v0, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 306
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription;->phoneNumber:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_6

    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 307
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription;->connection:Ljava/lang/String;

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_7

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 308
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/SessionDescription;->key:Ljava/lang/String;

    if-nez v0, :cond_8

    goto :goto_8

    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_8
    add-int/2addr v1, v2

    return v1
.end method
