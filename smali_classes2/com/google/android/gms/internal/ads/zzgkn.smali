.class public final Lcom/google/android/gms/internal/ads/zzgkn;
.super Lcom/google/android/gms/internal/ads/zzgre;
.source "com.google.android.gms:play-services-ads@@21.3.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgsp;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzgkn;


# instance fields
.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/ads/zzgkq;

.field private zzg:Lcom/google/android/gms/internal/ads/zzgpw;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgkn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgkn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgkn;->zzb:Lcom/google/android/gms/internal/ads/zzgkn;

    const-class v1, Lcom/google/android/gms/internal/ads/zzgkn;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgre;->zzaQ(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgre;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgre;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgpw;->zzb:Lcom/google/android/gms/internal/ads/zzgpw;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgkn;->zzg:Lcom/google/android/gms/internal/ads/zzgpw;

    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/ads/zzgkm;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgkn;->zzb:Lcom/google/android/gms/internal/ads/zzgkn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgre;->zzaz()Lcom/google/android/gms/internal/ads/zzgra;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgkm;

    return-object v0
.end method

.method static synthetic zzd()Lcom/google/android/gms/internal/ads/zzgkn;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgkn;->zzb:Lcom/google/android/gms/internal/ads/zzgkn;

    return-object v0
.end method

.method public static zze(Lcom/google/android/gms/internal/ads/zzgpw;Lcom/google/android/gms/internal/ads/zzgqq;)Lcom/google/android/gms/internal/ads/zzgkn;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgrq;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgkn;->zzb:Lcom/google/android/gms/internal/ads/zzgkn;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgre;->zzaE(Lcom/google/android/gms/internal/ads/zzgre;Lcom/google/android/gms/internal/ads/zzgpw;Lcom/google/android/gms/internal/ads/zzgqq;)Lcom/google/android/gms/internal/ads/zzgre;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgkn;

    return-object p0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/ads/zzgkn;I)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgkn;->zze:I

    return-void
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/ads/zzgkn;Lcom/google/android/gms/internal/ads/zzgkq;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgkn;->zzf:Lcom/google/android/gms/internal/ads/zzgkq;

    return-void
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/ads/zzgkn;Lcom/google/android/gms/internal/ads/zzgpw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgkn;->zzg:Lcom/google/android/gms/internal/ads/zzgpw;

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgkn;->zze:I

    return v0
.end method

.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    if-eq p1, p3, :cond_2

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    return-object p3

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgkn;->zzb:Lcom/google/android/gms/internal/ads/zzgkn;

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgkm;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzgkm;-><init>(Lcom/google/android/gms/internal/ads/zzgkl;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgkn;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzgkn;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v1, "zze"

    aput-object v1, p1, p3

    const-string p3, "zzf"

    aput-object p3, p1, p2

    const-string p2, "zzg"

    aput-object p2, p1, v0

    .line 2
    sget-object p2, Lcom/google/android/gms/internal/ads/zzgkn;->zzb:Lcom/google/android/gms/internal/ads/zzgkn;

    const-string p3, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgkn;->zzaP(Lcom/google/android/gms/internal/ads/zzgso;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final zzf()Lcom/google/android/gms/internal/ads/zzgkq;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgkn;->zzf:Lcom/google/android/gms/internal/ads/zzgkq;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgkq;->zzf()Lcom/google/android/gms/internal/ads/zzgkq;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/zzgpw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgkn;->zzg:Lcom/google/android/gms/internal/ads/zzgpw;

    return-object v0
.end method
