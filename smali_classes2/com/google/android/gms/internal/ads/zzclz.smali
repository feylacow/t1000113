.class public final synthetic Lcom/google/android/gms/internal/ads/zzclz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.3.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzciy;

.field public final synthetic zzb:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzciy;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclz;->zza:Lcom/google/android/gms/internal/ads/zzciy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzclz;->zzb:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclz;->zza:Lcom/google/android/gms/internal/ads/zzciy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzclz;->zzb:Ljava/util/Map;

    sget v2, Lcom/google/android/gms/internal/ads/zzcmc;->zzc:I

    const-string v2, "onGcacheInfoEvent"

    .line 1
    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzciy;->zzd(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
