.class public abstract Lcom/google/android/exoplr2avp/Rating;
.super Ljava/lang/Object;
.source "Rating.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/Bundleable;


# static fields
.field public static final CREATOR:Lcom/google/android/exoplr2avp/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplr2avp/Bundleable$Creator<",
            "Lcom/google/android/exoplr2avp/Rating;",
            ">;"
        }
    .end annotation
.end field

.field static final FIELD_RATING_TYPE:I = 0x0

.field static final RATING_TYPE_HEART:I = 0x0

.field static final RATING_TYPE_PERCENTAGE:I = 0x1

.field static final RATING_TYPE_STAR:I = 0x2

.field static final RATING_TYPE_THUMB:I = 0x3

.field static final RATING_TYPE_UNSET:I = -0x1

.field static final RATING_UNSET:F = -1.0f


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    sget-object v0, Lcom/google/android/exoplr2avp/-$$Lambda$Rating$ZrojHYj6gC-ae1pqzb8fNx_v_oE;->INSTANCE:Lcom/google/android/exoplr2avp/-$$Lambda$Rating$ZrojHYj6gC-ae1pqzb8fNx_v_oE;

    sput-object v0, Lcom/google/android/exoplr2avp/Rating;->CREATOR:Lcom/google/android/exoplr2avp/Bundleable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplr2avp/Rating;
    .locals 3

    const/4 v0, 0x0

    .line 76
    invoke-static {v0}, Lcom/google/android/exoplr2avp/Rating;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 85
    sget-object v0, Lcom/google/android/exoplr2avp/ThumbRating;->CREATOR:Lcom/google/android/exoplr2avp/Bundleable$Creator;

    invoke-interface {v0, p0}, Lcom/google/android/exoplr2avp/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplr2avp/Bundleable;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplr2avp/Rating;

    return-object p0

    .line 88
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown RatingType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 83
    :cond_1
    sget-object v0, Lcom/google/android/exoplr2avp/StarRating;->CREATOR:Lcom/google/android/exoplr2avp/Bundleable$Creator;

    invoke-interface {v0, p0}, Lcom/google/android/exoplr2avp/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplr2avp/Bundleable;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplr2avp/Rating;

    return-object p0

    .line 81
    :cond_2
    sget-object v0, Lcom/google/android/exoplr2avp/PercentageRating;->CREATOR:Lcom/google/android/exoplr2avp/Bundleable$Creator;

    invoke-interface {v0, p0}, Lcom/google/android/exoplr2avp/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplr2avp/Bundleable;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplr2avp/Rating;

    return-object p0

    .line 79
    :cond_3
    sget-object v0, Lcom/google/android/exoplr2avp/HeartRating;->CREATOR:Lcom/google/android/exoplr2avp/Bundleable$Creator;

    invoke-interface {v0, p0}, Lcom/google/android/exoplr2avp/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplr2avp/Bundleable;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplr2avp/Rating;

    return-object p0
.end method

.method private static keyForField(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    .line 93
    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$ZrojHYj6gC-ae1pqzb8fNx_v_oE(Landroid/os/Bundle;)Lcom/google/android/exoplr2avp/Rating;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplr2avp/Rating;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplr2avp/Rating;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract isRated()Z
.end method
