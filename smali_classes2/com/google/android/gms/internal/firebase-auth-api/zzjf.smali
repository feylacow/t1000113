.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzjf;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@21.1.0"


# instance fields
.field private zza:Ljava/util/ArrayList;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzjc;

.field private zzc:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjf;->zza:Ljava/util/ArrayList;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzjc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzjc;

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjf;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzjc;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjf;->zzc:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzbe;ILcom/google/android/gms/internal/firebase-auth-api/zzbn;)Lcom/google/android/gms/internal/firebase-auth-api/zzjf;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjf;->zza:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzjh;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzjh;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzbe;ILcom/google/android/gms/internal/firebase-auth-api/zzbn;Lcom/google/android/gms/internal/firebase-auth-api/zzjg;)V

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "addEntry cannot be called after build()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzjc;)Lcom/google/android/gms/internal/firebase-auth-api/zzjf;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjf;->zza:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjf;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzjc;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "setAnnotations cannot be called after build()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzc(I)Lcom/google/android/gms/internal/firebase-auth-api/zzjf;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjf;->zza:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjf;->zzc:Ljava/lang/Integer;

    return-object p0

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "setPrimaryKeyId cannot be called after build()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzjj;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjf;->zza:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjf;->zzc:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjf;->zza:Ljava/util/ArrayList;

    .line 3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    add-int/lit8 v4, v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 4
    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/zzjh;

    .line 5
    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzjh;->zza()I

    move-result v3

    if-eq v3, v0, :cond_1

    move v3, v4

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "primary key ID is not present in entries"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzjj;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjf;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzjc;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjf;->zza:Ljava/util/ArrayList;

    .line 6
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjf;->zzc:Ljava/lang/Integer;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzjj;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzjc;Ljava/util/List;Ljava/lang/Integer;Lcom/google/android/gms/internal/firebase-auth-api/zzji;)V

    iput-object v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjf;->zza:Ljava/util/ArrayList;

    return-object v0

    .line 1
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot call build() twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
