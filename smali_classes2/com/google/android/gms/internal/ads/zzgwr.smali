.class public abstract Lcom/google/android/gms/internal/ads/zzgwr;
.super Lcom/google/android/gms/internal/ads/zzgwp;
.source "com.google.android.gms:play-services-ads@@21.3.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzalq;


# instance fields
.field private zza:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    const-string p1, "mvhd"

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgwp;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zzh()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgwr;->zzc:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgwp;->zzg()V

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgwr;->zza:I

    return v0
.end method

.method protected final zzi(Ljava/nio/ByteBuffer;)J
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzalp;->zzc(B)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgwr;->zza:I

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzalp;->zzd(Ljava/nio/ByteBuffer;)I

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    const-wide/16 v0, 0x4

    return-wide v0
.end method
