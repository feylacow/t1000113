.class public Lcom/google/android/exoplr2avp/decoder/VideoDecoderOutputBuffer;
.super Lcom/google/android/exoplr2avp/decoder/DecoderOutputBuffer;
.source "VideoDecoderOutputBuffer.java"


# static fields
.field public static final COLORSPACE_BT2020:I = 0x3

.field public static final COLORSPACE_BT601:I = 0x1

.field public static final COLORSPACE_BT709:I = 0x2

.field public static final COLORSPACE_UNKNOWN:I


# instance fields
.field public colorspace:I

.field public data:Ljava/nio/ByteBuffer;

.field public decoderPrivate:I

.field public format:Lcom/google/android/exoplr2avp/Format;

.field public height:I

.field public mode:I

.field private final owner:Lcom/google/android/exoplr2avp/decoder/DecoderOutputBuffer$Owner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplr2avp/decoder/DecoderOutputBuffer$Owner<",
            "Lcom/google/android/exoplr2avp/decoder/VideoDecoderOutputBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public supplementalData:Ljava/nio/ByteBuffer;

.field public width:I

.field public yuvPlanes:[Ljava/nio/ByteBuffer;

.field public yuvStrides:[I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/decoder/DecoderOutputBuffer$Owner;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/decoder/DecoderOutputBuffer$Owner<",
            "Lcom/google/android/exoplr2avp/decoder/VideoDecoderOutputBuffer;",
            ">;)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/decoder/DecoderOutputBuffer;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/google/android/exoplr2avp/decoder/VideoDecoderOutputBuffer;->owner:Lcom/google/android/exoplr2avp/decoder/DecoderOutputBuffer$Owner;

    return-void
.end method

.method private static isSafeToMultiply(II)Z
    .locals 1

    if-ltz p0, :cond_1

    if-ltz p1, :cond_1

    if-lez p1, :cond_0

    const v0, 0x7fffffff

    .line 168
    div-int/2addr v0, p1

    if-ge p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public init(JILjava/nio/ByteBuffer;)V
    .locals 0

    .line 83
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/decoder/VideoDecoderOutputBuffer;->timeUs:J

    .line 84
    iput p3, p0, Lcom/google/android/exoplr2avp/decoder/VideoDecoderOutputBuffer;->mode:I

    if-eqz p4, :cond_2

    .line 85
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result p1

    if-eqz p1, :cond_2

    const/high16 p1, 0x10000000

    .line 86
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/decoder/VideoDecoderOutputBuffer;->addFlag(I)V

    .line 87
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    .line 88
    iget-object p2, p0, Lcom/google/android/exoplr2avp/decoder/VideoDecoderOutputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p2

    if-ge p2, p1, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplr2avp/decoder/VideoDecoderOutputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_1

    .line 89
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/decoder/VideoDecoderOutputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    .line 93
    :goto_1
    iget-object p1, p0, Lcom/google/android/exoplr2avp/decoder/VideoDecoderOutputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 94
    iget-object p1, p0, Lcom/google/android/exoplr2avp/decoder/VideoDecoderOutputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const/4 p1, 0x0

    .line 95
    invoke-virtual {p4, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    .line 97
    iput-object p1, p0, Lcom/google/android/exoplr2avp/decoder/VideoDecoderOutputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    :goto_2
    return-void
.end method

.method public initForPrivateFrame(II)V
    .locals 0

    .line 159
    iput p1, p0, Lcom/google/android/exoplr2avp/decoder/VideoDecoderOutputBuffer;->width:I

    .line 160
    iput p2, p0, Lcom/google/android/exoplr2avp/decoder/VideoDecoderOutputBuffer;->height:I

    return-void
.end method

.method public initForYuvFrame(IIIII)Z
    .locals 6

    .line 107
    iput p1, p0, Lcom/google/android/exoplr2avp/decoder/VideoDecoderOutputBuffer;->width:I

    .line 108
    iput p2, p0, Lcom/google/android/exoplr2avp/decoder/VideoDecoderOutputBuffer;->height:I

    .line 109
    iput p5, p0, Lcom/google/android/exoplr2avp/decoder/VideoDecoderOutputBuffer;->colorspace:I

    int-to-long v0, p2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const-wide/16 v2, 0x2

    .line 110
    div-long/2addr v0, v2

    long-to-int p1, v0

    .line 111
    invoke-static {p3, p2}, Lcom/google/android/exoplr2avp/decoder/VideoDecoderOutputBuffer;->isSafeToMultiply(II)Z

    move-result p5

    const/4 v0, 0x0

    if-eqz p5, :cond_6

    invoke-static {p4, p1}, Lcom/google/android/exoplr2avp/decoder/VideoDecoderOutputBuffer;->isSafeToMultiply(II)Z

    move-result p5

    if-nez p5, :cond_0

    goto/16 :goto_2

    :cond_0
    mul-int p2, p2, p3

    mul-int p1, p1, p4

    mul-int/lit8 p5, p1, 0x2

    add-int/2addr p5, p2

    const/4 v1, 0x2

    .line 117
    invoke-static {p1, v1}, Lcom/google/android/exoplr2avp/decoder/VideoDecoderOutputBuffer;->isSafeToMultiply(II)Z

    move-result v2

    if-eqz v2, :cond_6

    if-ge p5, p2, :cond_1

    goto :goto_2

    .line 122
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplr2avp/decoder/VideoDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-ge v2, p5, :cond_2

    goto :goto_0

    .line 125
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplr2avp/decoder/VideoDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 126
    iget-object v2, p0, Lcom/google/android/exoplr2avp/decoder/VideoDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_1

    .line 123
    :cond_3
    :goto_0
    invoke-static {p5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p5

    iput-object p5, p0, Lcom/google/android/exoplr2avp/decoder/VideoDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 129
    :goto_1
    iget-object p5, p0, Lcom/google/android/exoplr2avp/decoder/VideoDecoderOutputBuffer;->yuvPlanes:[Ljava/nio/ByteBuffer;

    const/4 v2, 0x3

    if-nez p5, :cond_4

    new-array p5, v2, [Ljava/nio/ByteBuffer;

    .line 130
    iput-object p5, p0, Lcom/google/android/exoplr2avp/decoder/VideoDecoderOutputBuffer;->yuvPlanes:[Ljava/nio/ByteBuffer;

    .line 133
    :cond_4
    iget-object p5, p0, Lcom/google/android/exoplr2avp/decoder/VideoDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 134
    iget-object v3, p0, Lcom/google/android/exoplr2avp/decoder/VideoDecoderOutputBuffer;->yuvPlanes:[Ljava/nio/ByteBuffer;

    .line 137
    invoke-virtual {p5}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v4

    aput-object v4, v3, v0

    .line 138
    aget-object v4, v3, v0

    invoke-virtual {v4, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 139
    invoke-virtual {p5, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 140
    invoke-virtual {p5}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 141
    aget-object v4, v3, v5

    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    add-int/2addr p2, p1

    .line 142
    invoke-virtual {p5, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 143
    invoke-virtual {p5}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p2

    aput-object p2, v3, v1

    .line 144
    aget-object p2, v3, v1

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 145
    iget-object p1, p0, Lcom/google/android/exoplr2avp/decoder/VideoDecoderOutputBuffer;->yuvStrides:[I

    if-nez p1, :cond_5

    new-array p1, v2, [I

    .line 146
    iput-object p1, p0, Lcom/google/android/exoplr2avp/decoder/VideoDecoderOutputBuffer;->yuvStrides:[I

    .line 148
    :cond_5
    iget-object p1, p0, Lcom/google/android/exoplr2avp/decoder/VideoDecoderOutputBuffer;->yuvStrides:[I

    aput p3, p1, v0

    .line 149
    aput p4, p1, v5

    .line 150
    aput p4, p1, v1

    return v5

    :cond_6
    :goto_2
    return v0
.end method

.method public release()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/google/android/exoplr2avp/decoder/VideoDecoderOutputBuffer;->owner:Lcom/google/android/exoplr2avp/decoder/DecoderOutputBuffer$Owner;

    invoke-interface {v0, p0}, Lcom/google/android/exoplr2avp/decoder/DecoderOutputBuffer$Owner;->releaseOutputBuffer(Lcom/google/android/exoplr2avp/decoder/DecoderOutputBuffer;)V

    return-void
.end method
