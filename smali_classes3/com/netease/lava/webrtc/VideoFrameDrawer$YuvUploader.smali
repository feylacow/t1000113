.class public Lcom/netease/lava/webrtc/VideoFrameDrawer$YuvUploader;
.super Ljava/lang/Object;
.source "VideoFrameDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/webrtc/VideoFrameDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "YuvUploader"
.end annotation


# instance fields
.field private copyBuffer:Ljava/nio/ByteBuffer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private yuvTextures:[I
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getYuvTextures()[I
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/netease/lava/webrtc/VideoFrameDrawer$YuvUploader;->yuvTextures:[I

    return-object v0
.end method

.method public release()V
    .locals 4

    const/4 v0, 0x0

    .line 157
    iput-object v0, p0, Lcom/netease/lava/webrtc/VideoFrameDrawer$YuvUploader;->copyBuffer:Ljava/nio/ByteBuffer;

    .line 158
    iget-object v1, p0, Lcom/netease/lava/webrtc/VideoFrameDrawer$YuvUploader;->yuvTextures:[I

    if-eqz v1, :cond_0

    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 159
    invoke-static {v2, v1, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 160
    iput-object v0, p0, Lcom/netease/lava/webrtc/VideoFrameDrawer$YuvUploader;->yuvTextures:[I

    :cond_0
    return-void
.end method

.method public uploadFromBuffer(Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;)[I
    .locals 6
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 142
    invoke-interface {p1}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getStrideY()I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-interface {p1}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getStrideU()I

    move-result v2

    const/4 v4, 0x1

    aput v2, v1, v4

    invoke-interface {p1}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getStrideV()I

    move-result v2

    const/4 v5, 0x2

    aput v2, v1, v5

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    .line 143
    invoke-interface {p1}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getDataY()Ljava/nio/ByteBuffer;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-interface {p1}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-interface {p1}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getDataV()Ljava/nio/ByteBuffer;

    move-result-object v2

    aput-object v2, v0, v5

    .line 144
    invoke-interface {p1}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getWidth()I

    move-result v2

    invoke-interface {p1}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getHeight()I

    move-result p1

    invoke-virtual {p0, v2, p1, v1, v0}, Lcom/netease/lava/webrtc/VideoFrameDrawer$YuvUploader;->uploadYuvData(II[I[Ljava/nio/ByteBuffer;)[I

    move-result-object p1

    return-object p1
.end method

.method public uploadYuvData(II[I[Ljava/nio/ByteBuffer;)[I
    .locals 16
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x3

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 v4, 0x2

    .line 93
    div-int/lit8 v5, p1, 0x2

    const/4 v6, 0x1

    aput v5, v2, v6

    aput v5, v2, v4

    new-array v5, v1, [I

    aput p2, v5, v3

    .line 94
    div-int/lit8 v7, p2, 0x2

    aput v7, v5, v6

    aput v7, v5, v4

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    .line 98
    aget v7, p3, v4

    aget v8, v2, v4

    if-le v7, v8, :cond_0

    .line 99
    aget v7, v2, v4

    aget v8, v5, v4

    mul-int v7, v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-lez v6, :cond_3

    .line 103
    iget-object v4, v0, Lcom/netease/lava/webrtc/VideoFrameDrawer$YuvUploader;->copyBuffer:Ljava/nio/ByteBuffer;

    if-eqz v4, :cond_2

    .line 104
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    if-ge v4, v6, :cond_3

    .line 105
    :cond_2
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, v0, Lcom/netease/lava/webrtc/VideoFrameDrawer$YuvUploader;->copyBuffer:Ljava/nio/ByteBuffer;

    .line 108
    :cond_3
    iget-object v4, v0, Lcom/netease/lava/webrtc/VideoFrameDrawer$YuvUploader;->yuvTextures:[I

    const/16 v6, 0xde1

    if-nez v4, :cond_4

    new-array v4, v1, [I

    .line 109
    iput-object v4, v0, Lcom/netease/lava/webrtc/VideoFrameDrawer$YuvUploader;->yuvTextures:[I

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_4

    .line 111
    iget-object v7, v0, Lcom/netease/lava/webrtc/VideoFrameDrawer$YuvUploader;->yuvTextures:[I

    invoke-static {v6}, Lcom/netease/lava/webrtc/GlUtil;->generateTexture(I)I

    move-result v8

    aput v8, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-ge v3, v1, :cond_7

    const v4, 0x84c0

    add-int/2addr v4, v3

    .line 116
    invoke-static {v4}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 117
    iget-object v4, v0, Lcom/netease/lava/webrtc/VideoFrameDrawer$YuvUploader;->yuvTextures:[I

    aget v4, v4, v3

    invoke-static {v6, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 120
    aget v4, p3, v3

    aget v7, v2, v3

    if-ne v4, v7, :cond_5

    .line 122
    aget-object v4, p4, v3

    goto :goto_3

    .line 124
    :cond_5
    aget-object v7, p4, v3

    aget v8, p3, v3

    iget-object v9, v0, Lcom/netease/lava/webrtc/VideoFrameDrawer$YuvUploader;->copyBuffer:Ljava/nio/ByteBuffer;

    aget v10, v2, v3

    aget v11, v2, v3

    aget v12, v5, v3

    invoke-static/range {v7 .. v12}, Lcom/netease/lava/webrtc/YuvHelper;->copyPlane(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)V

    .line 126
    iget-object v4, v0, Lcom/netease/lava/webrtc/VideoFrameDrawer$YuvUploader;->copyBuffer:Ljava/nio/ByteBuffer;

    :goto_3
    move-object v15, v4

    if-eqz v15, :cond_6

    .line 129
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    if-lez v4, :cond_6

    const/16 v7, 0xde1

    const/4 v8, 0x0

    const/16 v9, 0x1909

    .line 130
    aget v10, v2, v3

    aget v11, v5, v3

    const/4 v12, 0x0

    const/16 v13, 0x1909

    const/16 v14, 0x1401

    invoke-static/range {v7 .. v15}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    goto :goto_4

    :cond_6
    const-string v4, "YuvUploader"

    const-string v7, "uploadYuvData: packedByteBuffer is null or capacity is 0"

    .line 133
    invoke-static {v4, v7}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 137
    :cond_7
    iget-object v1, v0, Lcom/netease/lava/webrtc/VideoFrameDrawer$YuvUploader;->yuvTextures:[I

    return-object v1
.end method
