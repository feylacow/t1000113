.class public Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest$ProtectionElement;
.super Ljava/lang/Object;
.source "SsManifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProtectionElement"
.end annotation


# instance fields
.field public final data:[B

.field public final trackEncryptionBoxes:[Lcom/google/android/exoplr2avp/extractor/mp4/TrackEncryptionBox;

.field public final uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/util/UUID;[B[Lcom/google/android/exoplr2avp/extractor/mp4/TrackEncryptionBox;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest$ProtectionElement;->uuid:Ljava/util/UUID;

    .line 50
    iput-object p2, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest$ProtectionElement;->data:[B

    .line 51
    iput-object p3, p0, Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest$ProtectionElement;->trackEncryptionBoxes:[Lcom/google/android/exoplr2avp/extractor/mp4/TrackEncryptionBox;

    return-void
.end method
