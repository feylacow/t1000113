.class public final Lcom/google/android/exoplr2avp/audio/AudioAttributes$AudioAttributesV21;
.super Ljava/lang/Object;
.source "AudioAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/audio/AudioAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AudioAttributesV21"
.end annotation


# instance fields
.field public final audioAttributes:Landroid/media/AudioAttributes;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplr2avp/audio/AudioAttributes;)V
    .locals 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    iget v1, p1, Lcom/google/android/exoplr2avp/audio/AudioAttributes;->contentType:I

    .line 54
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    iget v1, p1, Lcom/google/android/exoplr2avp/audio/AudioAttributes;->flags:I

    .line 55
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    iget v1, p1, Lcom/google/android/exoplr2avp/audio/AudioAttributes;->usage:I

    .line 56
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 57
    sget v1, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    .line 58
    iget v1, p1, Lcom/google/android/exoplr2avp/audio/AudioAttributes;->allowedCapturePolicy:I

    invoke-static {v0, v1}, Lcom/google/android/exoplr2avp/audio/AudioAttributes$Api29;->setAllowedCapturePolicy(Landroid/media/AudioAttributes$Builder;I)V

    .line 60
    :cond_0
    sget v1, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v2, 0x20

    if-lt v1, v2, :cond_1

    .line 61
    iget p1, p1, Lcom/google/android/exoplr2avp/audio/AudioAttributes;->spatializationBehavior:I

    invoke-static {v0, p1}, Lcom/google/android/exoplr2avp/audio/AudioAttributes$Api32;->setSpatializationBehavior(Landroid/media/AudioAttributes$Builder;I)V

    .line 63
    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/audio/AudioAttributes$AudioAttributesV21;->audioAttributes:Landroid/media/AudioAttributes;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplr2avp/audio/AudioAttributes;Lcom/google/android/exoplr2avp/audio/AudioAttributes$1;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/audio/AudioAttributes$AudioAttributesV21;-><init>(Lcom/google/android/exoplr2avp/audio/AudioAttributes;)V

    return-void
.end method
