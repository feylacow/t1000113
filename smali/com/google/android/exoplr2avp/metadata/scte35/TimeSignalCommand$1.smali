.class Lcom/google/android/exoplr2avp/metadata/scte35/TimeSignalCommand$1;
.super Ljava/lang/Object;
.source "TimeSignalCommand.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/metadata/scte35/TimeSignalCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/exoplr2avp/metadata/scte35/TimeSignalCommand;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/exoplr2avp/metadata/scte35/TimeSignalCommand;
    .locals 7

    .line 77
    new-instance v6, Lcom/google/android/exoplr2avp/metadata/scte35/TimeSignalCommand;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplr2avp/metadata/scte35/TimeSignalCommand;-><init>(JJLcom/google/android/exoplr2avp/metadata/scte35/TimeSignalCommand$1;)V

    return-object v6
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 73
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/metadata/scte35/TimeSignalCommand$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/exoplr2avp/metadata/scte35/TimeSignalCommand;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/google/android/exoplr2avp/metadata/scte35/TimeSignalCommand;
    .locals 0

    .line 82
    new-array p1, p1, [Lcom/google/android/exoplr2avp/metadata/scte35/TimeSignalCommand;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 73
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/metadata/scte35/TimeSignalCommand$1;->newArray(I)[Lcom/google/android/exoplr2avp/metadata/scte35/TimeSignalCommand;

    move-result-object p1

    return-object p1
.end method
