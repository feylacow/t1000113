.class public final Lcom/google/android/exoplr2avp/drm/FrameworkCryptoConfig;
.super Ljava/lang/Object;
.source "FrameworkCryptoConfig.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/decoder/CryptoConfig;


# static fields
.field public static final WORKAROUND_DEVICE_NEEDS_KEYS_TO_CONFIGURE_CODEC:Z


# instance fields
.field public final forceAllowInsecureDecoderComponents:Z

.field public final sessionId:[B

.field public final uuid:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    sget-object v0, Lcom/google/android/exoplr2avp/util/Util;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Amazon"

    .line 37
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/exoplr2avp/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "AFTM"

    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/exoplr2avp/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "AFTB"

    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/google/android/exoplr2avp/drm/FrameworkCryptoConfig;->WORKAROUND_DEVICE_NEEDS_KEYS_TO_CONFIGURE_CODEC:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;[BZ)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/google/android/exoplr2avp/drm/FrameworkCryptoConfig;->uuid:Ljava/util/UUID;

    .line 60
    iput-object p2, p0, Lcom/google/android/exoplr2avp/drm/FrameworkCryptoConfig;->sessionId:[B

    .line 61
    iput-boolean p3, p0, Lcom/google/android/exoplr2avp/drm/FrameworkCryptoConfig;->forceAllowInsecureDecoderComponents:Z

    return-void
.end method
