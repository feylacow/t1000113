.class public final Lcom/google/android/exoplr2avp/source/hls/HlsTrackMetadataEntry;
.super Ljava/lang/Object;
.source "HlsTrackMetadataEntry.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/metadata/Metadata$Entry;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/source/hls/HlsTrackMetadataEntry$VariantInfo;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/exoplr2avp/source/hls/HlsTrackMetadataEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final groupId:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final variantInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/hls/HlsTrackMetadataEntry$VariantInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 247
    new-instance v0, Lcom/google/android/exoplr2avp/source/hls/HlsTrackMetadataEntry$1;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/source/hls/HlsTrackMetadataEntry$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplr2avp/source/hls/HlsTrackMetadataEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplr2avp/source/hls/HlsTrackMetadataEntry;->groupId:Ljava/lang/String;

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplr2avp/source/hls/HlsTrackMetadataEntry;->name:Ljava/lang/String;

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 194
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 196
    const-class v3, Lcom/google/android/exoplr2avp/source/hls/HlsTrackMetadataEntry$VariantInfo;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplr2avp/source/hls/HlsTrackMetadataEntry$VariantInfo;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 198
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/hls/HlsTrackMetadataEntry;->variantInfos:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/hls/HlsTrackMetadataEntry$VariantInfo;",
            ">;)V"
        }
    .end annotation

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/hls/HlsTrackMetadataEntry;->groupId:Ljava/lang/String;

    .line 186
    iput-object p2, p0, Lcom/google/android/exoplr2avp/source/hls/HlsTrackMetadataEntry;->name:Ljava/lang/String;

    .line 187
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/hls/HlsTrackMetadataEntry;->variantInfos:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 211
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 215
    :cond_1
    check-cast p1, Lcom/google/android/exoplr2avp/source/hls/HlsTrackMetadataEntry;

    .line 216
    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/hls/HlsTrackMetadataEntry;->groupId:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplr2avp/source/hls/HlsTrackMetadataEntry;->groupId:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/hls/HlsTrackMetadataEntry;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplr2avp/source/hls/HlsTrackMetadataEntry;->name:Ljava/lang/String;

    .line 217
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/hls/HlsTrackMetadataEntry;->variantInfos:Ljava/util/List;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/source/hls/HlsTrackMetadataEntry;->variantInfos:Ljava/util/List;

    .line 218
    invoke-interface {v2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

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

.method public synthetic getWrappedMetadataBytes()[B
    .locals 1

    invoke-static {p0}, Lcom/google/android/exoplr2avp/metadata/Metadata$Entry$-CC;->$default$getWrappedMetadataBytes(Lcom/google/android/exoplr2avp/metadata/Metadata$Entry;)[B

    move-result-object v0

    return-object v0
.end method

.method public synthetic getWrappedMetadataFormat()Lcom/google/android/exoplr2avp/Format;
    .locals 1

    invoke-static {p0}, Lcom/google/android/exoplr2avp/metadata/Metadata$Entry$-CC;->$default$getWrappedMetadataFormat(Lcom/google/android/exoplr2avp/metadata/Metadata$Entry;)Lcom/google/android/exoplr2avp/Format;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 223
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/hls/HlsTrackMetadataEntry;->groupId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 224
    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/hls/HlsTrackMetadataEntry;->name:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 225
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/hls/HlsTrackMetadataEntry;->variantInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public synthetic populateMediaMetadata(Lcom/google/android/exoplr2avp/MediaMetadata$Builder;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/metadata/Metadata$Entry$-CC;->$default$populateMediaMetadata(Lcom/google/android/exoplr2avp/metadata/Metadata$Entry;Lcom/google/android/exoplr2avp/MediaMetadata$Builder;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HlsTrackMetadataEntry"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/hls/HlsTrackMetadataEntry;->groupId:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/hls/HlsTrackMetadataEntry;->groupId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/hls/HlsTrackMetadataEntry;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 238
    iget-object p2, p0, Lcom/google/android/exoplr2avp/source/hls/HlsTrackMetadataEntry;->groupId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 239
    iget-object p2, p0, Lcom/google/android/exoplr2avp/source/hls/HlsTrackMetadataEntry;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 240
    iget-object p2, p0, Lcom/google/android/exoplr2avp/source/hls/HlsTrackMetadataEntry;->variantInfos:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 241
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 243
    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/hls/HlsTrackMetadataEntry;->variantInfos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {p1, v2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
