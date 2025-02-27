.class public Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;
.super Lcom/google/android/exoplr2avp/decoder/Buffer;
.source "DecoderInputBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer$BufferReplacementMode;,
        Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer$InsufficientCapacityException;
    }
.end annotation


# static fields
.field public static final BUFFER_REPLACEMENT_MODE_DIRECT:I = 0x2

.field public static final BUFFER_REPLACEMENT_MODE_DISABLED:I = 0x0

.field public static final BUFFER_REPLACEMENT_MODE_NORMAL:I = 0x1


# instance fields
.field private final bufferReplacementMode:I

.field public final cryptoInfo:Lcom/google/android/exoplr2avp/decoder/CryptoInfo;

.field public data:Ljava/nio/ByteBuffer;

.field public format:Lcom/google/android/exoplr2avp/Format;

.field private final paddingSize:I

.field public supplementalData:Ljava/nio/ByteBuffer;

.field public timeUs:J

.field public waitingForKeys:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.decoder"

    .line 36
    invoke-static {v0}, Lcom/google/android/exoplr2avp/ExoPlayerLibraryInfo;->registerModule(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 126
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 139
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/decoder/Buffer;-><init>()V

    .line 140
    new-instance v0, Lcom/google/android/exoplr2avp/decoder/CryptoInfo;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/decoder/CryptoInfo;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->cryptoInfo:Lcom/google/android/exoplr2avp/decoder/CryptoInfo;

    .line 141
    iput p1, p0, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->bufferReplacementMode:I

    .line 142
    iput p2, p0, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->paddingSize:I

    return-void
.end method

.method private createReplacementByteBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2

    .line 232
    iget v0, p0, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->bufferReplacementMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 233
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 235
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    .line 238
    :goto_0
    new-instance v1, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer$InsufficientCapacityException;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer$InsufficientCapacityException;-><init>(II)V

    throw v1
.end method

.method public static newNoDataInstance()Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;
    .locals 2

    .line 117
    new-instance v0, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 221
    invoke-super {p0}, Lcom/google/android/exoplr2avp/decoder/Buffer;->clear()V

    .line 222
    iget-object v0, p0, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    .line 226
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_1
    const/4 v0, 0x0

    .line 228
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->waitingForKeys:Z

    return-void
.end method

.method public ensureSpaceForWrite(I)V
    .locals 3
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "data"
        }
    .end annotation

    .line 174
    iget v0, p0, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->paddingSize:I

    add-int/2addr p1, v0

    .line 175
    iget-object v0, p0, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 177
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->createReplacementByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    return-void

    .line 181
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    .line 182
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr p1, v2

    if-lt v1, p1, :cond_1

    .line 185
    iput-object v0, p0, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    return-void

    .line 189
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->createReplacementByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 190
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    if-lez v2, :cond_2

    .line 193
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 194
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 197
    :cond_2
    iput-object p1, p0, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final flip()V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    .line 215
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :cond_1
    return-void
.end method

.method public final isEncrypted()Z
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    .line 202
    invoke-virtual {p0, v0}, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->getFlag(I)Z

    move-result v0

    return v0
.end method

.method public resetSupplementalData(I)V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "supplementalData"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_0

    goto :goto_0

    .line 156
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_1

    .line 154
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    :goto_1
    return-void
.end method
