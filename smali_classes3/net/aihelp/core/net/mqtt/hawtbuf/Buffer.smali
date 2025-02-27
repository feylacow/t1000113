.class public Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;
.super Ljava/lang/Object;
.source "Buffer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;",
        ">;"
    }
.end annotation


# instance fields
.field public data:[B

.field public length:I

.field public offset:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 26
    new-array p1, p1, [B

    invoke-direct {p0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;-><init>([B)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 18
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;-><init>([BII)V

    return-void
.end method

.method public constructor <init>(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)V
    .locals 2

    .line 22
    iget-object v0, p1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->data:[B

    iget v1, p1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->offset:I

    iget p1, p1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    invoke-direct {p0, v0, v1, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 30
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->data:[B

    .line 36
    iput p2, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->offset:I

    .line 37
    iput p3, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    return-void
.end method

.method public static ascii(Ljava/lang/String;)Lnet/aihelp/core/net/mqtt/hawtbuf/AsciiBuffer;
    .locals 0

    .line 442
    invoke-static {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/AsciiBuffer;->ascii(Ljava/lang/String;)Lnet/aihelp/core/net/mqtt/hawtbuf/AsciiBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static ascii(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)Lnet/aihelp/core/net/mqtt/hawtbuf/AsciiBuffer;
    .locals 0

    .line 445
    invoke-static {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/AsciiBuffer;->ascii(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)Lnet/aihelp/core/net/mqtt/hawtbuf/AsciiBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static final join(Ljava/util/List;Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;",
            ">;",
            "Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;",
            ")",
            "Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;"
        }
    .end annotation

    .line 413
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 414
    new-instance p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    iget-object p1, p1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->data:[B

    invoke-direct {p0, p1, v1, v1}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;-><init>([BII)V

    return-object p0

    .line 417
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    .line 418
    iget v3, v3, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    add-int/2addr v2, v3

    goto :goto_0

    .line 420
    :cond_1
    iget v0, p1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    mul-int v0, v0, v3

    add-int/2addr v2, v0

    .line 423
    new-array v0, v2, [B

    .line 424
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v3, 0x0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    if-eqz v3, :cond_2

    .line 426
    iget-object v5, p1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->data:[B

    iget v6, p1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->offset:I

    iget v7, p1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    invoke-static {v5, v6, v0, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 427
    iget v5, p1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    add-int/2addr v3, v5

    .line 429
    :cond_2
    iget-object v5, v4, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->data:[B

    iget v6, v4, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->offset:I

    iget v7, v4, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    invoke-static {v5, v6, v0, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 430
    iget v4, v4, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    add-int/2addr v3, v4

    goto :goto_1

    .line 433
    :cond_3
    new-instance p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    invoke-direct {p0, v0, v1, v2}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;-><init>([BII)V

    return-object p0
.end method

.method private final matches(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;I)Z
    .locals 8

    .line 225
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->data:[B

    .line 226
    iget v1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->offset:I

    .line 227
    iget v2, p1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    .line 228
    iget-object v3, p1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->data:[B

    .line 229
    iget p1, p1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->offset:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_1

    add-int v6, v1, p2

    add-int/2addr v6, v5

    .line 232
    aget-byte v6, v0, v6

    add-int v7, p1, v5

    aget-byte v7, v3, v7

    if-eq v6, v7, :cond_0

    return v4

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public static string(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 409
    :cond_0
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static utf8(Ljava/lang/String;)Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;
    .locals 0

    .line 449
    invoke-static {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;->utf8(Ljava/lang/String;)Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    move-result-object p0

    return-object p0
.end method

.method public static utf8(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;
    .locals 0

    .line 452
    invoke-static {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;->utf8(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final ascii()Lnet/aihelp/core/net/mqtt/hawtbuf/AsciiBuffer;
    .locals 1

    .line 272
    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtbuf/AsciiBuffer;

    invoke-direct {v0, p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/AsciiBuffer;-><init>(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)V

    return-object v0
.end method

.method public final bigEndianEditor()Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor;
    .locals 1

    .line 167
    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$BigEndianBufferEditor;

    invoke-direct {v0, p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$BigEndianBufferEditor;-><init>(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)V

    return-object v0
.end method

.method public final buffer()Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;
    .locals 1

    .line 269
    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    invoke-direct {v0, p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;-><init>(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)V

    return-object v0
.end method

.method public final clear()Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;
    .locals 1

    .line 64
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->data:[B

    array-length v0, v0

    iput v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->offset:I

    return-object p0
.end method

.method public final compact()Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;
    .locals 2

    .line 117
    iget v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->data:[B

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 118
    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;-><init>([B)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 11
    check-cast p1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->compareTo(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)I
    .locals 8

    if-ne p0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 339
    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->data:[B

    .line 340
    iget v1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->offset:I

    .line 341
    iget v2, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    .line 343
    iget v3, p1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    .line 344
    iget v4, p1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->offset:I

    .line 345
    iget-object p1, p1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->data:[B

    .line 347
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-ne v1, v4, :cond_2

    add-int/2addr v5, v1

    :goto_0
    if-ge v1, v5, :cond_4

    .line 352
    aget-byte v4, v0, v1

    and-int/lit16 v4, v4, 0xff

    .line 353
    aget-byte v6, p1, v1

    and-int/lit16 v6, v6, 0xff

    if-eq v4, v6, :cond_1

    sub-int/2addr v4, v6

    return v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    add-int/lit8 v6, v5, -0x1

    if-eqz v5, :cond_4

    add-int/lit8 v5, v1, 0x1

    .line 363
    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v7, v4, 0x1

    .line 364
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    if-eq v1, v4, :cond_3

    sub-int/2addr v1, v4

    return v1

    :cond_3
    move v1, v5

    move v5, v6

    move v4, v7

    goto :goto_1

    :cond_4
    sub-int/2addr v2, v3

    return v2
.end method

.method public final contains(B)Z
    .locals 1

    const/4 v0, 0x0

    .line 179
    invoke-virtual {p0, p1, v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->indexOf(BI)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final containsAt(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;I)Z
    .locals 2

    .line 218
    iget v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    sub-int/2addr v0, p2

    iget v1, p1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 221
    :cond_0
    invoke-direct {p0, p1, p2}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->matches(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;I)Z

    move-result p1

    return p1
.end method

.method public final data([B)Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;
    .locals 0

    .line 86
    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->data:[B

    return-object p0
.end method

.method public final deepCopy()Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;
    .locals 5

    .line 111
    iget v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    new-array v1, v0, [B

    .line 112
    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->data:[B

    iget v3, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->offset:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    invoke-direct {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;-><init>([B)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 329
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 332
    :cond_1
    check-cast p1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->equals(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final equals(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)Z
    .locals 8

    .line 139
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->data:[B

    .line 140
    iget v1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->offset:I

    .line 141
    iget v2, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    .line 143
    iget v3, p1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    return v4

    .line 147
    :cond_0
    iget-object v3, p1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->data:[B

    .line 148
    iget p1, p1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->offset:I

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_2

    add-int v6, p1, v5

    .line 151
    aget-byte v6, v3, v6

    add-int v7, v1, v5

    aget-byte v7, v0, v7

    if-eq v6, v7, :cond_1

    return v4

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final flip()Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;
    .locals 1

    .line 45
    iget v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->offset:I

    iput v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->offset:I

    return-object p0
.end method

.method public final get(I)B
    .locals 2

    .line 135
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->data:[B

    iget v1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->offset:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method

.method public final getData()[B
    .locals 1

    .line 83
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->data:[B

    return-object v0
.end method

.method public final getLength()I
    .locals 1

    .line 91
    iget v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    return v0
.end method

.method public final getOffset()I
    .locals 1

    .line 103
    iget v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->offset:I

    return v0
.end method

.method public hashCode()I
    .locals 9

    .line 313
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->data:[B

    .line 314
    iget v1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->offset:I

    .line 315
    iget v2, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    const/4 v3, 0x4

    new-array v3, v3, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_0

    .line 319
    rem-int/lit8 v6, v5, 0x4

    aget-byte v7, v3, v6

    add-int v8, v1, v5

    aget-byte v8, v0, v8

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 321
    :cond_0
    aget-byte v0, v3, v4

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x1

    aget-byte v1, v3, v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, v3, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte v1, v3, v1

    or-int/2addr v0, v1

    return v0
.end method

.method public hex()Ljava/lang/String;
    .locals 1

    .line 41
    invoke-static {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/HexSupport;->toHexFromBuffer(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final in()Lnet/aihelp/core/net/mqtt/hawtbuf/BufferInputStream;
    .locals 1

    .line 159
    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferInputStream;

    invoke-direct {v0, p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferInputStream;-><init>(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)V

    return-object v0
.end method

.method public final indexOf(B)I
    .locals 1

    const/4 v0, 0x0

    .line 183
    invoke-virtual {p0, p1, v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->indexOf(BI)I

    move-result p1

    return p1
.end method

.method public final indexOf(BI)I
    .locals 4

    .line 187
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->data:[B

    .line 188
    iget v1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->offset:I

    .line 189
    iget v2, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    :goto_0
    if-ge p2, v2, :cond_1

    add-int v3, v1, p2

    .line 192
    aget-byte v3, v0, v3

    if-ne v3, p1, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final indexOf(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)I
    .locals 1

    const/4 v0, 0x0

    .line 204
    invoke-virtual {p0, p1, v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->indexOf(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;I)I

    move-result p1

    return p1
.end method

.method public final indexOf(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;I)I
    .locals 2

    .line 208
    iget v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    iget v1, p1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    sub-int/2addr v0, v1

    :goto_0
    if-gt p2, v0, :cond_1

    .line 210
    invoke-direct {p0, p1, p2}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->matches(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;I)Z

    move-result v1

    if-eqz v1, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final isEmpty()Z
    .locals 1

    .line 175
    iget v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final length()I
    .locals 1

    .line 95
    iget v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    return v0
.end method

.method public final length(I)Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;
    .locals 0

    .line 98
    iput p1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    return-object p0
.end method

.method public final littleEndianEditor()Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor;
    .locals 1

    .line 171
    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$LittleEndianBufferEditor;

    invoke-direct {v0, p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferEditor$LittleEndianBufferEditor;-><init>(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)V

    return-object v0
.end method

.method public final moveHead(I)Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;
    .locals 1

    .line 51
    iget v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->offset:I

    add-int/2addr v0, p1

    .line 52
    iput v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->offset:I

    .line 53
    iget v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    sub-int/2addr v0, p1

    iput v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    return-object p0
.end method

.method public final moveTail(I)Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;
    .locals 1

    .line 58
    iget v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    add-int/2addr v0, p1

    .line 59
    iput v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    return-object p0
.end method

.method public final offset(I)Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;
    .locals 0

    .line 106
    iput p1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->offset:I

    return-object p0
.end method

.method public final out()Lnet/aihelp/core/net/mqtt/hawtbuf/BufferOutputStream;
    .locals 1

    .line 163
    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferOutputStream;

    invoke-direct {v0, p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/BufferOutputStream;-><init>(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)V

    return-object v0
.end method

.method public readFrom(Ljava/io/InputStream;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 398
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->data:[B

    iget v1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->offset:I

    iget v2, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public readFrom(Ljava/io/DataInput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 391
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->data:[B

    iget v1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->offset:I

    iget v2, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    invoke-interface {p1, v0, v1, v2}, Ljava/io/DataInput;->readFully([BII)V

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 303
    iput v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->offset:I

    .line 304
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->data:[B

    array-length v0, v0

    iput v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    return-void
.end method

.method public final slice(II)Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;
    .locals 3

    if-gez p2, :cond_0

    .line 72
    iget v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    add-int/2addr v0, p2

    goto :goto_0

    :cond_0
    sub-int v0, p2, p1

    :goto_0
    if-gez v0, :cond_1

    const/4 v0, 0x0

    .line 79
    :cond_1
    new-instance p2, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->data:[B

    iget v2, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->offset:I

    add-int/2addr v2, p1

    invoke-direct {p2, v1, v2, v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;-><init>([BII)V

    return-object p2
.end method

.method public final split(B)[Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;
    .locals 7

    .line 279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 281
    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->data:[B

    .line 282
    iget v2, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->offset:I

    .line 284
    iget v3, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    add-int/2addr v3, v2

    move v4, v2

    :goto_0
    if-ge v2, v3, :cond_2

    .line 287
    aget-byte v5, v1, v2

    if-ne v5, p1, :cond_1

    if-ge v4, v2, :cond_0

    .line 289
    new-instance v5, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    sub-int v6, v2, v4

    invoke-direct {v5, v1, v4, v6}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;-><init>([BII)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v2, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-ge v4, v2, :cond_3

    .line 296
    new-instance p1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    sub-int/2addr v2, v4

    invoke-direct {p1, v1, v4, v2}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;-><init>([BII)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    return-object p1
.end method

.method public final startsWith(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)Z
    .locals 1

    const/4 v0, 0x0

    .line 200
    invoke-virtual {p0, p1, v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->indexOf(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;I)I

    move-result p1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final toByteArray()[B
    .locals 5

    .line 124
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->data:[B

    .line 125
    iget v1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    .line 126
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 127
    new-array v2, v1, [B

    .line 128
    iget v3, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->offset:I

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v2

    :cond_0
    return-object v0
.end method

.method public toByteBuffer()Ljava/nio/ByteBuffer;
    .locals 3

    .line 438
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->data:[B

    iget v1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->offset:I

    iget v2, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 457
    iget v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_5

    .line 460
    iget-object v4, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->data:[B

    iget v5, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->offset:I

    add-int/2addr v5, v2

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x7e

    if-gt v4, v5, :cond_0

    const/16 v5, 0x20

    if-ge v4, v5, :cond_4

    :cond_0
    const/16 v5, 0xa

    if-eq v4, v5, :cond_4

    const/16 v6, 0xd

    if-ne v4, v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-ne v4, v5, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    or-int/2addr v5, v6

    const/16 v6, 0x1b

    if-ne v4, v6, :cond_3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    or-int/2addr v3, v5

    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    const/4 v1, 0x1

    :goto_4
    if-eqz v1, :cond_6

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ascii: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->ascii()Lnet/aihelp/core/net/mqtt/hawtbuf/AsciiBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 471
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/HexSupport;->toHexFromBuffer(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final trim()Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;
    .locals 1

    .line 241
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->trimFront()Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->trimEnd()Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public final trimEnd()Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;
    .locals 7

    .line 245
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->data:[B

    .line 246
    iget v1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->offset:I

    .line 247
    iget v2, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    add-int v3, v1, v2

    add-int/lit8 v3, v3, -0x1

    move v4, v3

    :goto_0
    if-gt v1, v4, :cond_0

    .line 251
    aget-byte v5, v0, v4

    const/16 v6, 0x20

    if-gt v5, v6, :cond_0

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_0
    if-ne v4, v3, :cond_1

    move-object v5, p0

    goto :goto_1

    .line 254
    :cond_1
    new-instance v5, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-direct {v5, v0, v1, v2}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;-><init>([BII)V

    :goto_1
    return-object v5
.end method

.method public final trimFront()Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;
    .locals 6

    .line 258
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->data:[B

    .line 259
    iget v1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->offset:I

    .line 260
    iget v2, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    add-int/2addr v2, v1

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    .line 262
    aget-byte v4, v0, v3

    const/16 v5, 0x20

    if-gt v4, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-ne v3, v1, :cond_1

    move-object v2, p0

    goto :goto_1

    .line 265
    :cond_1
    new-instance v2, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    iget v4, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    sub-int v1, v3, v1

    sub-int/2addr v4, v1

    invoke-direct {v2, v0, v3, v4}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;-><init>([BII)V

    :goto_1
    return-object v2
.end method

.method public final utf8()Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;
    .locals 1

    .line 275
    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    invoke-direct {v0, p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;-><init>(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)V

    return-object v0
.end method

.method public writeTo(Ljava/io/DataOutput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 377
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->data:[B

    iget v1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->offset:I

    iget v2, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    invoke-interface {p1, v0, v1, v2}, Ljava/io/DataOutput;->write([BII)V

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 384
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->data:[B

    iget v1, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->offset:I

    iget v2, p0, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->length:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
