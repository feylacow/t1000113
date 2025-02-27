.class public interface abstract Lcom/google/android/exoplr2avp/drm/ExoMediaDrm;
.super Ljava/lang/Object;
.source "ExoMediaDrm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$ProvisionRequest;,
        Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$KeyRequest;,
        Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$KeyStatus;,
        Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$OnExpirationUpdateListener;,
        Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$OnKeyStatusChangeListener;,
        Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$OnEventListener;,
        Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$AppManagedProvider;,
        Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$Provider;
    }
.end annotation


# static fields
.field public static final EVENT_KEY_EXPIRED:I = 0x3

.field public static final EVENT_KEY_REQUIRED:I = 0x2

.field public static final EVENT_PROVISION_REQUIRED:I = 0x1

.field public static final KEY_TYPE_OFFLINE:I = 0x2

.field public static final KEY_TYPE_RELEASE:I = 0x3

.field public static final KEY_TYPE_STREAMING:I = 0x1


# virtual methods
.method public abstract acquire()V
.end method

.method public abstract closeSession([B)V
.end method

.method public abstract createCryptoConfig([B)Lcom/google/android/exoplr2avp/decoder/CryptoConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCryptoException;
        }
    .end annotation
.end method

.method public abstract getCryptoType()I
.end method

.method public abstract getKeyRequest([BLjava/util/List;ILjava/util/HashMap;)Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$KeyRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/drm/DrmInitData$SchemeData;",
            ">;I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$KeyRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;
        }
    .end annotation
.end method

.method public abstract getMetrics()Landroid/os/PersistableBundle;
.end method

.method public abstract getPropertyByteArray(Ljava/lang/String;)[B
.end method

.method public abstract getPropertyString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getProvisionRequest()Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$ProvisionRequest;
.end method

.method public abstract openSession()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaDrmException;
        }
    .end annotation
.end method

.method public abstract provideKeyResponse([B[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;,
            Landroid/media/DeniedByServerException;
        }
    .end annotation
.end method

.method public abstract provideProvisionResponse([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/DeniedByServerException;
        }
    .end annotation
.end method

.method public abstract queryKeyStatus([B)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract requiresSecureDecoder([BLjava/lang/String;)Z
.end method

.method public abstract restoreKeys([B[B)V
.end method

.method public abstract setOnEventListener(Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$OnEventListener;)V
.end method

.method public abstract setOnExpirationUpdateListener(Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$OnExpirationUpdateListener;)V
.end method

.method public abstract setOnKeyStatusChangeListener(Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$OnKeyStatusChangeListener;)V
.end method

.method public abstract setPlayerIdForSession([BLcom/google/android/exoplr2avp/analytics/PlayerId;)V
.end method

.method public abstract setPropertyByteArray(Ljava/lang/String;[B)V
.end method

.method public abstract setPropertyString(Ljava/lang/String;Ljava/lang/String;)V
.end method
