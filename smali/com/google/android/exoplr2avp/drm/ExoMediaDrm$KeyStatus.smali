.class public final Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$KeyStatus;
.super Ljava/lang/Object;
.source "ExoMediaDrm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/drm/ExoMediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyStatus"
.end annotation


# instance fields
.field private final keyId:[B

.field private final statusCode:I


# direct methods
.method public constructor <init>(I[B)V
    .locals 0

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput p1, p0, Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$KeyStatus;->statusCode:I

    .line 204
    iput-object p2, p0, Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$KeyStatus;->keyId:[B

    return-void
.end method


# virtual methods
.method public getKeyId()[B
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$KeyStatus;->keyId:[B

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 209
    iget v0, p0, Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$KeyStatus;->statusCode:I

    return v0
.end method
