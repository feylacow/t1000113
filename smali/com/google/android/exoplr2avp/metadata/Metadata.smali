.class public final Lcom/google/android/exoplr2avp/metadata/Metadata;
.super Ljava/lang/Object;
.source "Metadata.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/metadata/Metadata$Entry;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/exoplr2avp/metadata/Metadata;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final entries:[Lcom/google/android/exoplr2avp/metadata/Metadata$Entry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 166
    new-instance v0, Lcom/google/android/exoplr2avp/metadata/Metadata$1;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/metadata/Metadata$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplr2avp/metadata/Metadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/exoplr2avp/metadata/Metadata$Entry;

    iput-object v0, p0, Lcom/google/android/exoplr2avp/metadata/Metadata;->entries:[Lcom/google/android/exoplr2avp/metadata/Metadata$Entry;

    const/4 v0, 0x0

    .line 81
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplr2avp/metadata/Metadata;->entries:[Lcom/google/android/exoplr2avp/metadata/Metadata$Entry;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 82
    const-class v2, Lcom/google/android/exoplr2avp/metadata/Metadata$Entry;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplr2avp/metadata/Metadata$Entry;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/exoplr2avp/metadata/Metadata$Entry;",
            ">;)V"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/exoplr2avp/metadata/Metadata$Entry;

    .line 76
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/exoplr2avp/metadata/Metadata$Entry;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/metadata/Metadata;->entries:[Lcom/google/android/exoplr2avp/metadata/Metadata$Entry;

    return-void
.end method

.method public varargs constructor <init>([Lcom/google/android/exoplr2avp/metadata/Metadata$Entry;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/google/android/exoplr2avp/metadata/Metadata;->entries:[Lcom/google/android/exoplr2avp/metadata/Metadata$Entry;

    return-void
.end method


# virtual methods
.method public varargs copyWithAppendedEntries([Lcom/google/android/exoplr2avp/metadata/Metadata$Entry;)Lcom/google/android/exoplr2avp/metadata/Metadata;
    .locals 2

    .line 123
    array-length v0, p1

    if-nez v0, :cond_0

    return-object p0

    .line 126
    :cond_0
    new-instance v0, Lcom/google/android/exoplr2avp/metadata/Metadata;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/metadata/Metadata;->entries:[Lcom/google/android/exoplr2avp/metadata/Metadata$Entry;

    invoke-static {v1, p1}, Lcom/google/android/exoplr2avp/util/Util;->nullSafeArrayConcatenation([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/exoplr2avp/metadata/Metadata$Entry;

    invoke-direct {v0, p1}, Lcom/google/android/exoplr2avp/metadata/Metadata;-><init>([Lcom/google/android/exoplr2avp/metadata/Metadata$Entry;)V

    return-object v0
.end method

.method public copyWithAppendedEntriesFrom(Lcom/google/android/exoplr2avp/metadata/Metadata;)Lcom/google/android/exoplr2avp/metadata/Metadata;
    .locals 0

    if-nez p1, :cond_0

    return-object p0

    .line 113
    :cond_0
    iget-object p1, p1, Lcom/google/android/exoplr2avp/metadata/Metadata;->entries:[Lcom/google/android/exoplr2avp/metadata/Metadata$Entry;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/metadata/Metadata;->copyWithAppendedEntries([Lcom/google/android/exoplr2avp/metadata/Metadata$Entry;)Lcom/google/android/exoplr2avp/metadata/Metadata;

    move-result-object p1

    return-object p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 134
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 137
    :cond_1
    check-cast p1, Lcom/google/android/exoplr2avp/metadata/Metadata;

    .line 138
    iget-object v0, p0, Lcom/google/android/exoplr2avp/metadata/Metadata;->entries:[Lcom/google/android/exoplr2avp/metadata/Metadata$Entry;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/metadata/Metadata;->entries:[Lcom/google/android/exoplr2avp/metadata/Metadata$Entry;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public get(I)Lcom/google/android/exoplr2avp/metadata/Metadata$Entry;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/google/android/exoplr2avp/metadata/Metadata;->entries:[Lcom/google/android/exoplr2avp/metadata/Metadata$Entry;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/google/android/exoplr2avp/metadata/Metadata;->entries:[Lcom/google/android/exoplr2avp/metadata/Metadata$Entry;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/google/android/exoplr2avp/metadata/Metadata;->entries:[Lcom/google/android/exoplr2avp/metadata/Metadata$Entry;

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "entries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/metadata/Metadata;->entries:[Lcom/google/android/exoplr2avp/metadata/Metadata$Entry;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 160
    iget-object p2, p0, Lcom/google/android/exoplr2avp/metadata/Metadata;->entries:[Lcom/google/android/exoplr2avp/metadata/Metadata$Entry;

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget-object p2, p0, Lcom/google/android/exoplr2avp/metadata/Metadata;->entries:[Lcom/google/android/exoplr2avp/metadata/Metadata$Entry;

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p2, v2

    .line 162
    invoke-virtual {p1, v3, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
