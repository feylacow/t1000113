.class public final synthetic Lcom/google/android/gms/internal/firebase-auth-api/zzyq;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@21.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/firebase-auth-api/zzyv;

.field public final synthetic zzb:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzyv;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyq;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzyv;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyq;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyq;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzyv;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyq;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyv;->zzh(Ljava/lang/String;)V

    return-void
.end method
