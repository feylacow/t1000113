.class public abstract Lcom/google/android/gms/internal/firebase-auth-api/zzacn;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzabs;
.source "com.google.firebase:firebase-auth@@21.1.0"


# static fields
.field private static final zza:Ljava/util/logging/Logger;

.field private static final zzb:Z


# instance fields
.field zze:Lcom/google/android/gms/internal/firebase-auth-api/zzaco;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacn;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacn;->zza:Ljava/util/logging/Logger;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzafx;->zzx()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacn;->zzb:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzabs;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzacm;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzabs;-><init>()V

    return-void
.end method

.method static zzA(Lcom/google/android/gms/internal/firebase-auth-api/zzaek;Lcom/google/android/gms/internal/firebase-auth-api/zzaew;)I
    .locals 0

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabm;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzabm;->zzn(Lcom/google/android/gms/internal/firebase-auth-api/zzaew;)I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacn;->zzE(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method static zzB(I)I
    .locals 1

    const/16 v0, 0x1000

    if-le p0, v0, :cond_0

    return v0

    :cond_0
    return p0
.end method

.method public static zzC(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzagc;->zzc(Ljava/lang/CharSequence;)I

    move-result p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzagb; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzadl;->zzb:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 3
    array-length p0, p0

    .line 1
    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacn;->zzE(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzD(I)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacn;->zzE(I)I

    move-result p0

    return p0
.end method

.method public static zzE(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method public static zzF(J)I
    .locals 7

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    return v2

    :cond_0
    cmp-long v0, p0, v3

    if-gez v0, :cond_1

    const/16 p0, 0xa

    return p0

    :cond_1
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_2

    const/16 v0, 0x1c

    ushr-long/2addr p0, v0

    const/4 v0, 0x6

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    const-wide/32 v5, -0x200000

    and-long/2addr v5, p0

    cmp-long v1, v5, v3

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x2

    const/16 v1, 0xe

    ushr-long/2addr p0, v1

    :cond_3
    const-wide/16 v5, -0x4000

    and-long/2addr p0, v5

    cmp-long v1, p0, v3

    if-eqz v1, :cond_4

    add-int/2addr v0, v2

    :cond_4
    return v0
.end method

.method public static zzG([B)Lcom/google/android/gms/internal/firebase-auth-api/zzacn;
    .locals 3

    .line 1
    array-length v0, p0

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzacj;

    const/4 v2, 0x0

    .line 2
    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacj;-><init>([BII)V

    return-object v1
.end method

.method public static zzH(Ljava/io/OutputStream;I)Lcom/google/android/gms/internal/firebase-auth-api/zzacn;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacl;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacl;-><init>(Ljava/io/OutputStream;I)V

    return-object v0
.end method

.method static bridge synthetic zzK()Z
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacn;->zzb:Z

    return v0
.end method

.method public static zzw(Lcom/google/android/gms/internal/firebase-auth-api/zzacc;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;->zzd()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacn;->zzE(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method static zzx(ILcom/google/android/gms/internal/firebase-auth-api/zzaek;Lcom/google/android/gms/internal/firebase-auth-api/zzaew;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    shl-int/lit8 p0, p0, 0x3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacn;->zzE(I)I

    move-result p0

    add-int/2addr p0, p0

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzabm;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzabm;->zzn(Lcom/google/android/gms/internal/firebase-auth-api/zzaew;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzy(I)I
    .locals 0

    if-ltz p0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacn;->zzE(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static zzz(Lcom/google/android/gms/internal/firebase-auth-api/zzadq;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadq;->zza()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacn;->zzE(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public final zzI()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacn;->zzb()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    .line 2
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final zzJ(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzagb;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacn;->zza:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "com.google.protobuf.CodedOutputStream"

    const-string v3, "inefficientWriteStringNoTag"

    const-string v4, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    sget-object p2, Lcom/google/android/gms/internal/firebase-auth-api/zzadl;->zzb:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 3
    :try_start_0
    array-length p2, p1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzacn;->zzs(I)V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzacn;->zza([BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3
    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/zzack;

    .line 5
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzack;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public abstract zzN()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzO(B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzP(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzQ(ILcom/google/android/gms/internal/firebase-auth-api/zzacc;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zza([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzb()I
.end method

.method public abstract zzh(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzi(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzj(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzk(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzl(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzm(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract zzn(ILcom/google/android/gms/internal/firebase-auth-api/zzaek;Lcom/google/android/gms/internal/firebase-auth-api/zzaew;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzo(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzq(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzr(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzs(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzt(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzu(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
