.class public final Lcom/google/android/exoplr2avp/source/TrackGroupArray;
.super Ljava/lang/Object;
.source "TrackGroupArray.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/Bundleable;


# static fields
.field public static final CREATOR:Lcom/google/android/exoplr2avp/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplr2avp/Bundleable$Creator<",
            "Lcom/google/android/exoplr2avp/source/TrackGroupArray;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY:Lcom/google/android/exoplr2avp/source/TrackGroupArray;

.field private static final FIELD_TRACK_GROUPS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TrackGroupArray"


# instance fields
.field private hashCode:I

.field public final length:I

.field private final trackGroups:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplr2avp/source/TrackGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    new-instance v0, Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/exoplr2avp/source/TrackGroup;

    invoke-direct {v0, v1}, Lcom/google/android/exoplr2avp/source/TrackGroupArray;-><init>([Lcom/google/android/exoplr2avp/source/TrackGroup;)V

    sput-object v0, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->EMPTY:Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    .line 137
    sget-object v0, Lcom/google/android/exoplr2avp/source/-$$Lambda$TrackGroupArray$h9Jw2oOHzNJ4DKuqLLD2nGzotH0;->INSTANCE:Lcom/google/android/exoplr2avp/source/-$$Lambda$TrackGroupArray$h9Jw2oOHzNJ4DKuqLLD2nGzotH0;

    sput-object v0, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->CREATOR:Lcom/google/android/exoplr2avp/Bundleable$Creator;

    return-void
.end method

.method public varargs constructor <init>([Lcom/google/android/exoplr2avp/source/TrackGroup;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->trackGroups:Lcom/google/common/collect/ImmutableList;

    .line 66
    array-length p1, p1

    iput p1, p0, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->length:I

    .line 67
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->verifyCorrectness()V

    return-void
.end method

.method private static keyForField(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    .line 165
    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$static$0(Landroid/os/Bundle;)Lcom/google/android/exoplr2avp/source/TrackGroupArray;
    .locals 3

    const/4 v0, 0x0

    .line 141
    invoke-static {v0}, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_0

    .line 143
    new-instance p0, Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    new-array v0, v0, [Lcom/google/android/exoplr2avp/source/TrackGroup;

    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/source/TrackGroupArray;-><init>([Lcom/google/android/exoplr2avp/source/TrackGroup;)V

    return-object p0

    .line 145
    :cond_0
    new-instance v1, Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    sget-object v2, Lcom/google/android/exoplr2avp/source/TrackGroup;->CREATOR:Lcom/google/android/exoplr2avp/Bundleable$Creator;

    .line 146
    invoke-static {v2, p0}, Lcom/google/android/exoplr2avp/util/BundleableUtil;->fromBundleList(Lcom/google/android/exoplr2avp/Bundleable$Creator;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    new-array v0, v0, [Lcom/google/android/exoplr2avp/source/TrackGroup;

    .line 147
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/google/android/exoplr2avp/source/TrackGroup;

    invoke-direct {v1, p0}, Lcom/google/android/exoplr2avp/source/TrackGroupArray;-><init>([Lcom/google/android/exoplr2avp/source/TrackGroup;)V

    return-object v1
.end method

.method private verifyCorrectness()V
    .locals 6

    const/4 v0, 0x0

    .line 151
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->trackGroups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    add-int/lit8 v1, v0, 0x1

    move v2, v1

    .line 152
    :goto_1
    iget-object v3, p0, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->trackGroups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 153
    iget-object v3, p0, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->trackGroups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplr2avp/source/TrackGroup;

    iget-object v4, p0, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->trackGroups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v4, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/exoplr2avp/source/TrackGroup;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 154
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Multiple identical TrackGroups added to one TrackGroupArray."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const-string v4, "TrackGroupArray"

    const-string v5, ""

    invoke-static {v4, v5, v3}, Lcom/google/android/exoplr2avp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 109
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 112
    :cond_1
    check-cast p1, Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    .line 113
    iget v2, p0, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->length:I

    iget v3, p1, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->length:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->trackGroups:Lcom/google/common/collect/ImmutableList;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->trackGroups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public get(I)Lcom/google/android/exoplr2avp/source/TrackGroup;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->trackGroups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/source/TrackGroup;

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->hashCode:I

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->trackGroups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->hashCode:I

    .line 101
    :cond_0
    iget v0, p0, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->hashCode:I

    return v0
.end method

.method public indexOf(Lcom/google/android/exoplr2avp/source/TrackGroup;)I
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->trackGroups:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 93
    iget v0, p0, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->length:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 130
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    .line 132
    invoke-static {v1}, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->trackGroups:Lcom/google/common/collect/ImmutableList;

    invoke-static {v2}, Lcom/google/android/exoplr2avp/util/BundleableUtil;->toBundleArrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v2

    .line 131
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method
