.class final Lcom/google/android/gms/internal/firebase-auth-api/zzix;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@21.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzbm;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzbu;

.field private final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzjd;

.field private final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzjd;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzbu;Lcom/google/android/gms/internal/firebase-auth-api/zziw;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzix;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzbu;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzbu;->zzf()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzgm;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzgm;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzgm;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzje;

    move-result-object p2

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzgj;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzbu;)Lcom/google/android/gms/internal/firebase-auth-api/zzjj;

    move-result-object p1

    const-string v0, "mac"

    const-string v1, "compute"

    .line 4
    invoke-interface {p2, p1, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzje;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzjj;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzjd;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzix;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzjd;

    const-string v1, "verify"

    .line 5
    invoke-interface {p2, p1, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzje;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzjj;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzjd;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzix;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzjd;

    return-void

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzgj;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzjd;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzix;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzjd;

    goto :goto_0
.end method


# virtual methods
.method public final zza([B[B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x5

    if-le v0, v1, :cond_3

    .line 3
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .line 4
    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzix;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzbu;

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzbu;->zze([B)Ljava/util/List;

    move-result-object v1

    .line 6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/zzbq;

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzbq;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzoy;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzoy;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzoy;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzoy;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    new-array v3, v3, [[B

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zziy;->zze()[B

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzpp;->zzc([[B)[B

    move-result-object v3

    goto :goto_1

    :cond_0
    move-object v3, p2

    .line 9
    :goto_1
    :try_start_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzbq;->zze()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/firebase-auth-api/zzbm;

    invoke-interface {v4, v0, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzbm;->zza([B[B)V

    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzbq;->zza()I
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zziy;->zzd()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "tag prefix matches a key, but cannot verify: "

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "com.google.crypto.tink.mac.MacWrapper$WrappedMac"

    const-string v6, "verifyMac"

    invoke-virtual {v3, v4, v5, v6, v2}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzix;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzbu;

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzas;->zza:[B

    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzbu;->zze([B)Ljava/util/List;

    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzbq;

    .line 14
    :try_start_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzbq;->zze()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/zzbm;

    invoke-interface {v2, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzbm;->zza([B[B)V

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzbq;->zza()I
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    nop

    goto :goto_2

    .line 16
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "invalid MAC"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_3
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "tag too short"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
