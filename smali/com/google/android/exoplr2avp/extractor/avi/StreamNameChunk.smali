.class final Lcom/google/android/exoplr2avp/extractor/avi/StreamNameChunk;
.super Ljava/lang/Object;
.source "StreamNameChunk.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/extractor/avi/AviChunk;


# instance fields
.field public final name:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/google/android/exoplr2avp/extractor/avi/StreamNameChunk;->name:Ljava/lang/String;

    return-void
.end method

.method public static parseFrom(Lcom/google/android/exoplr2avp/util/ParsableByteArray;)Lcom/google/android/exoplr2avp/extractor/avi/StreamNameChunk;
    .locals 2

    .line 24
    new-instance v0, Lcom/google/android/exoplr2avp/extractor/avi/StreamNameChunk;

    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/exoplr2avp/extractor/avi/StreamNameChunk;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 1

    const v0, 0x6e727473

    return v0
.end method
