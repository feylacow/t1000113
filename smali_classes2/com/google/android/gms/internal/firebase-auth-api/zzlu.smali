.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzlu;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzadf;
.source "com.google.firebase:firebase-auth@@21.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzael;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzlu;


# instance fields
.field private zzd:Lcom/google/android/gms/internal/firebase-auth-api/zznx;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzlu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzlu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzlu;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzlu;

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzlu;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadf;->zzG(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/zzadf;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadf;-><init>()V

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/firebase-auth-api/zzlt;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzlu;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzlu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadf;->zzt()Lcom/google/android/gms/internal/firebase-auth-api/zzadb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;

    return-object v0
.end method

.method static synthetic zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzlu;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzlu;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzlu;

    return-object v0
.end method

.method public static zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzlu;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzlu;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzlu;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/firebase-auth-api/zzlu;Lcom/google/android/gms/internal/firebase-auth-api/zznx;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzlu;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zznx;

    return-void
.end method


# virtual methods
.method public final zzd()Lcom/google/android/gms/internal/firebase-auth-api/zznx;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzlu;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zznx;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zznx;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zznx;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected final zzj(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x2

    if-eq p1, p3, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    return-object p3

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/zzlu;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzlu;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzls;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/zzlu;

    invoke-direct {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzlu;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "zzd"

    aput-object p3, p1, p2

    .line 2
    sget-object p2, Lcom/google/android/gms/internal/firebase-auth-api/zzlu;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzlu;

    const-string p3, "\u0000\u0001\u0000\u0000\u0002\u0002\u0001\u0000\u0000\u0000\u0002\t"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzlu;->zzD(Lcom/google/android/gms/internal/firebase-auth-api/zzaek;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
