.class public final Lcom/google/android/exoplr2avp/trackselection/TrackSelectionArray;
.super Ljava/lang/Object;
.source "TrackSelectionArray.java"


# instance fields
.field private hashCode:I

.field public final length:I

.field private final trackSelections:[Lcom/google/android/exoplr2avp/trackselection/TrackSelection;


# direct methods
.method public varargs constructor <init>([Lcom/google/android/exoplr2avp/trackselection/TrackSelection;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionArray;->trackSelections:[Lcom/google/android/exoplr2avp/trackselection/TrackSelection;

    .line 38
    array-length p1, p1

    iput p1, p0, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionArray;->length:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 75
    :cond_1
    check-cast p1, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionArray;

    .line 76
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionArray;->trackSelections:[Lcom/google/android/exoplr2avp/trackselection/TrackSelection;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionArray;->trackSelections:[Lcom/google/android/exoplr2avp/trackselection/TrackSelection;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public get(I)Lcom/google/android/exoplr2avp/trackselection/TrackSelection;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionArray;->trackSelections:[Lcom/google/android/exoplr2avp/trackselection/TrackSelection;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getAll()[Lcom/google/android/exoplr2avp/trackselection/TrackSelection;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionArray;->trackSelections:[Lcom/google/android/exoplr2avp/trackselection/TrackSelection;

    invoke-virtual {v0}, [Lcom/google/android/exoplr2avp/trackselection/TrackSelection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplr2avp/trackselection/TrackSelection;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 59
    iget v0, p0, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionArray;->hashCode:I

    if-nez v0, :cond_0

    const/16 v0, 0x20f

    .line 61
    iget-object v1, p0, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionArray;->trackSelections:[Lcom/google/android/exoplr2avp/trackselection/TrackSelection;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 62
    iput v0, p0, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionArray;->hashCode:I

    .line 64
    :cond_0
    iget v0, p0, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionArray;->hashCode:I

    return v0
.end method
