.class public final Lcom/google/android/gms/internal/ads/zzbht;
.super Lcom/google/android/gms/internal/ads/zzgre;
.source "com.google.android.gms:play-services-ads@@21.3.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgsp;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzbht;


# instance fields
.field private zze:I

.field private zzf:I

.field private zzg:Lcom/google/android/gms/internal/ads/zzbhw;

.field private zzh:Lcom/google/android/gms/internal/ads/zzbhn;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbht;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbht;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbht;->zzb:Lcom/google/android/gms/internal/ads/zzbht;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbht;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgre;->zzaQ(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgre;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgre;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbht;->zzf:I

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/ads/zzbht;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbht;->zzb:Lcom/google/android/gms/internal/ads/zzbht;

    return-object v0
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    const/4 p2, 0x0

    if-eq p1, v0, :cond_1

    if-eq p1, p3, :cond_0

    return-object p2

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbht;->zzb:Lcom/google/android/gms/internal/ads/zzbht;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbhs;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzbhs;-><init>(Lcom/google/android/gms/internal/ads/zzbew;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbht;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbht;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v3, "zze"

    aput-object v3, p1, p3

    const-string p3, "zzf"

    aput-object p3, p1, p2

    .line 2
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbgc;->zza:Lcom/google/android/gms/internal/ads/zzgri;

    aput-object p2, p1, v2

    const-string p2, "zzg"

    aput-object p2, p1, v1

    const-string p2, "zzh"

    aput-object p2, p1, v0

    sget-object p2, Lcom/google/android/gms/internal/ads/zzbht;->zzb:Lcom/google/android/gms/internal/ads/zzbht;

    const-string p3, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u100c\u0000\u0002\u1009\u0001\u0003\u1009\u0002"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzbht;->zzaP(Lcom/google/android/gms/internal/ads/zzgso;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
