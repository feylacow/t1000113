.class final Lcom/google/android/gms/internal/firebase-auth-api/zzva;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@21.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzyg;


# instance fields
.field final synthetic zza:Lcom/google/firebase/auth/UserProfileChangeRequest;

.field final synthetic zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzxa;

.field final synthetic zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzvf;Lcom/google/firebase/auth/UserProfileChangeRequest;Lcom/google/android/gms/internal/firebase-auth-api/zzxa;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzva;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvf;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzva;->zza:Lcom/google/firebase/auth/UserProfileChangeRequest;

    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzva;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzxa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/firebase/auth/internal/zzai;->zza(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzva;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzxa;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxa;->zzh(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzzy;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaao;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaao;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzzy;->zze()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaao;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzaao;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzva;->zza:Lcom/google/firebase/auth/UserProfileChangeRequest;

    .line 4
    invoke-virtual {v1}, Lcom/google/firebase/auth/UserProfileChangeRequest;->zzb()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzva;->zza:Lcom/google/firebase/auth/UserProfileChangeRequest;

    invoke-virtual {v1}, Lcom/google/firebase/auth/UserProfileChangeRequest;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzva;->zza:Lcom/google/firebase/auth/UserProfileChangeRequest;

    .line 5
    invoke-virtual {v1}, Lcom/google/firebase/auth/UserProfileChangeRequest;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaao;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzaao;

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzva;->zza:Lcom/google/firebase/auth/UserProfileChangeRequest;

    .line 6
    invoke-virtual {v1}, Lcom/google/firebase/auth/UserProfileChangeRequest;->zzc()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzva;->zza:Lcom/google/firebase/auth/UserProfileChangeRequest;

    invoke-virtual {v1}, Lcom/google/firebase/auth/UserProfileChangeRequest;->getPhotoUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzva;->zza:Lcom/google/firebase/auth/UserProfileChangeRequest;

    .line 7
    invoke-virtual {v1}, Lcom/google/firebase/auth/UserProfileChangeRequest;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaao;->zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzaao;

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzva;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvf;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzva;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzxa;

    .line 8
    invoke-static {v1, v2, p1, v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvf;->zze(Lcom/google/android/gms/internal/firebase-auth-api/zzvf;Lcom/google/android/gms/internal/firebase-auth-api/zzxa;Lcom/google/android/gms/internal/firebase-auth-api/zzzy;Lcom/google/android/gms/internal/firebase-auth-api/zzaao;Lcom/google/android/gms/internal/firebase-auth-api/zzyf;)V

    return-void
.end method
