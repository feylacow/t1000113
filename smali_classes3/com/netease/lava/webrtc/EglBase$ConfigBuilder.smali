.class public Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;
.super Ljava/lang/Object;
.source "EglBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/webrtc/EglBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigBuilder"
.end annotation


# instance fields
.field private hasAlphaChannel:Z

.field private isRecordable:Z

.field private openGlesVersion:I

.field private supportsPixelBuffer:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 57
    iput v0, p0, Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;->openGlesVersion:I

    return-void
.end method


# virtual methods
.method public createConfigAttributes()[I
    .locals 4

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x3024

    .line 88
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x8

    .line 89
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x3023

    .line 90
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x3022

    .line 92
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    iget-boolean v2, p0, Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;->hasAlphaChannel:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x3021

    .line 95
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_0
    iget v1, p0, Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;->openGlesVersion:I

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-eq v1, v2, :cond_1

    if-ne v1, v3, :cond_3

    :cond_1
    const/16 v1, 0x3040

    .line 99
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    iget v1, p0, Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;->openGlesVersion:I

    if-ne v1, v3, :cond_2

    const/16 v1, 0x40

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_3
    iget-boolean v1, p0, Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;->supportsPixelBuffer:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    const/16 v1, 0x3033

    .line 103
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_4
    iget-boolean v1, p0, Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;->isRecordable:Z

    if-eqz v1, :cond_5

    const/16 v1, 0x3142

    .line 107
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const/16 v1, 0x3038

    .line 110
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 113
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 114
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    return-object v1
.end method

.method public setHasAlphaChannel(Z)Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;->hasAlphaChannel:Z

    return-object p0
.end method

.method public setIsRecordable(Z)Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;
    .locals 0

    .line 82
    iput-boolean p1, p0, Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;->isRecordable:Z

    return-object p0
.end method

.method public setOpenGlesVersion(I)Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;
    .locals 0

    const/4 p1, 0x2

    .line 67
    iput p1, p0, Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;->openGlesVersion:I

    return-object p0
.end method

.method public setSupportsPixelBuffer(Z)Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;->supportsPixelBuffer:Z

    return-object p0
.end method
