.class final Lcom/google/android/exoplr2avp/extractor/flv/ScriptTagPayloadReader;
.super Lcom/google/android/exoplr2avp/extractor/flv/TagPayloadReader;
.source "ScriptTagPayloadReader.java"


# static fields
.field private static final AMF_TYPE_BOOLEAN:I = 0x1

.field private static final AMF_TYPE_DATE:I = 0xb

.field private static final AMF_TYPE_ECMA_ARRAY:I = 0x8

.field private static final AMF_TYPE_END_MARKER:I = 0x9

.field private static final AMF_TYPE_NUMBER:I = 0x0

.field private static final AMF_TYPE_OBJECT:I = 0x3

.field private static final AMF_TYPE_STRICT_ARRAY:I = 0xa

.field private static final AMF_TYPE_STRING:I = 0x2

.field private static final KEY_DURATION:Ljava/lang/String; = "duration"

.field private static final KEY_FILE_POSITIONS:Ljava/lang/String; = "filepositions"

.field private static final KEY_KEY_FRAMES:Ljava/lang/String; = "keyframes"

.field private static final KEY_TIMES:Ljava/lang/String; = "times"

.field private static final NAME_METADATA:Ljava/lang/String; = "onMetaData"


# instance fields
.field private durationUs:J

.field private keyFrameTagPositions:[J

.field private keyFrameTimesUs:[J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 52
    new-instance v0, Lcom/google/android/exoplr2avp/extractor/DummyTrackOutput;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/extractor/DummyTrackOutput;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/extractor/flv/TagPayloadReader;-><init>(Lcom/google/android/exoplr2avp/extractor/TrackOutput;)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 53
    iput-wide v0, p0, Lcom/google/android/exoplr2avp/extractor/flv/ScriptTagPayloadReader;->durationUs:J

    const/4 v0, 0x0

    new-array v1, v0, [J

    .line 54
    iput-object v1, p0, Lcom/google/android/exoplr2avp/extractor/flv/ScriptTagPayloadReader;->keyFrameTimesUs:[J

    new-array v0, v0, [J

    .line 55
    iput-object v0, p0, Lcom/google/android/exoplr2avp/extractor/flv/ScriptTagPayloadReader;->keyFrameTagPositions:[J

    return-void
.end method

.method private static readAmfBoolean(Lcom/google/android/exoplr2avp/util/ParsableByteArray;)Ljava/lang/Boolean;
    .locals 1

    .line 150
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static readAmfData(Lcom/google/android/exoplr2avp/util/ParsableByteArray;I)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 265
    :cond_0
    invoke-static {p0}, Lcom/google/android/exoplr2avp/extractor/flv/ScriptTagPayloadReader;->readAmfDate(Lcom/google/android/exoplr2avp/util/ParsableByteArray;)Ljava/util/Date;

    move-result-object p0

    return-object p0

    .line 263
    :cond_1
    invoke-static {p0}, Lcom/google/android/exoplr2avp/extractor/flv/ScriptTagPayloadReader;->readAmfStrictArray(Lcom/google/android/exoplr2avp/util/ParsableByteArray;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    .line 261
    :cond_2
    invoke-static {p0}, Lcom/google/android/exoplr2avp/extractor/flv/ScriptTagPayloadReader;->readAmfEcmaArray(Lcom/google/android/exoplr2avp/util/ParsableByteArray;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0

    .line 259
    :cond_3
    invoke-static {p0}, Lcom/google/android/exoplr2avp/extractor/flv/ScriptTagPayloadReader;->readAmfObject(Lcom/google/android/exoplr2avp/util/ParsableByteArray;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0

    .line 257
    :cond_4
    invoke-static {p0}, Lcom/google/android/exoplr2avp/extractor/flv/ScriptTagPayloadReader;->readAmfString(Lcom/google/android/exoplr2avp/util/ParsableByteArray;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 255
    :cond_5
    invoke-static {p0}, Lcom/google/android/exoplr2avp/extractor/flv/ScriptTagPayloadReader;->readAmfBoolean(Lcom/google/android/exoplr2avp/util/ParsableByteArray;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 253
    :cond_6
    invoke-static {p0}, Lcom/google/android/exoplr2avp/extractor/flv/ScriptTagPayloadReader;->readAmfDouble(Lcom/google/android/exoplr2avp/util/ParsableByteArray;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method private static readAmfDate(Lcom/google/android/exoplr2avp/util/ParsableByteArray;)Ljava/util/Date;
    .locals 3

    .line 244
    new-instance v0, Ljava/util/Date;

    invoke-static {p0}, Lcom/google/android/exoplr2avp/extractor/flv/ScriptTagPayloadReader;->readAmfDouble(Lcom/google/android/exoplr2avp/util/ParsableByteArray;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    double-to-long v1, v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    const/4 v1, 0x2

    .line 245
    invoke-virtual {p0, v1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->skipBytes(I)V

    return-object v0
.end method

.method private static readAmfDouble(Lcom/google/android/exoplr2avp/util/ParsableByteArray;)Ljava/lang/Double;
    .locals 2

    .line 160
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method private static readAmfEcmaArray(Lcom/google/android/exoplr2avp/util/ParsableByteArray;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/util/ParsableByteArray;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 224
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    .line 225
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 227
    invoke-static {p0}, Lcom/google/android/exoplr2avp/extractor/flv/ScriptTagPayloadReader;->readAmfString(Lcom/google/android/exoplr2avp/util/ParsableByteArray;)Ljava/lang/String;

    move-result-object v3

    .line 228
    invoke-static {p0}, Lcom/google/android/exoplr2avp/extractor/flv/ScriptTagPayloadReader;->readAmfType(Lcom/google/android/exoplr2avp/util/ParsableByteArray;)I

    move-result v4

    .line 229
    invoke-static {p0, v4}, Lcom/google/android/exoplr2avp/extractor/flv/ScriptTagPayloadReader;->readAmfData(Lcom/google/android/exoplr2avp/util/ParsableByteArray;I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 231
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private static readAmfObject(Lcom/google/android/exoplr2avp/util/ParsableByteArray;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/util/ParsableByteArray;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 202
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 204
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/google/android/exoplr2avp/extractor/flv/ScriptTagPayloadReader;->readAmfString(Lcom/google/android/exoplr2avp/util/ParsableByteArray;)Ljava/lang/String;

    move-result-object v1

    .line 205
    invoke-static {p0}, Lcom/google/android/exoplr2avp/extractor/flv/ScriptTagPayloadReader;->readAmfType(Lcom/google/android/exoplr2avp/util/ParsableByteArray;)I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_1

    return-object v0

    .line 209
    :cond_1
    invoke-static {p0, v2}, Lcom/google/android/exoplr2avp/extractor/flv/ScriptTagPayloadReader;->readAmfData(Lcom/google/android/exoplr2avp/util/ParsableByteArray;I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 211
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static readAmfStrictArray(Lcom/google/android/exoplr2avp/util/ParsableByteArray;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/util/ParsableByteArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 183
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    .line 184
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 186
    invoke-static {p0}, Lcom/google/android/exoplr2avp/extractor/flv/ScriptTagPayloadReader;->readAmfType(Lcom/google/android/exoplr2avp/util/ParsableByteArray;)I

    move-result v3

    .line 187
    invoke-static {p0, v3}, Lcom/google/android/exoplr2avp/extractor/flv/ScriptTagPayloadReader;->readAmfData(Lcom/google/android/exoplr2avp/util/ParsableByteArray;I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 189
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private static readAmfString(Lcom/google/android/exoplr2avp/util/ParsableByteArray;)Ljava/lang/String;
    .locals 3

    .line 170
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    .line 171
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 172
    invoke-virtual {p0, v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->skipBytes(I)V

    .line 173
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object p0

    invoke-direct {v2, p0, v1, v0}, Ljava/lang/String;-><init>([BII)V

    return-object v2
.end method

.method private static readAmfType(Lcom/google/android/exoplr2avp/util/ParsableByteArray;)I
    .locals 0

    .line 140
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    return p0
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    .line 59
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/extractor/flv/ScriptTagPayloadReader;->durationUs:J

    return-wide v0
.end method

.method public getKeyFrameTagPositions()[J
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/flv/ScriptTagPayloadReader;->keyFrameTagPositions:[J

    return-object v0
.end method

.method public getKeyFrameTimesUs()[J
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/flv/ScriptTagPayloadReader;->keyFrameTimesUs:[J

    return-object v0
.end method

.method protected parseHeader(Lcom/google/android/exoplr2avp/util/ParsableByteArray;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected parsePayload(Lcom/google/android/exoplr2avp/util/ParsableByteArray;J)Z
    .locals 9

    .line 82
    invoke-static {p1}, Lcom/google/android/exoplr2avp/extractor/flv/ScriptTagPayloadReader;->readAmfType(Lcom/google/android/exoplr2avp/util/ParsableByteArray;)I

    move-result p2

    const/4 p3, 0x0

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    return p3

    .line 87
    :cond_0
    invoke-static {p1}, Lcom/google/android/exoplr2avp/extractor/flv/ScriptTagPayloadReader;->readAmfString(Lcom/google/android/exoplr2avp/util/ParsableByteArray;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "onMetaData"

    .line 88
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    return p3

    .line 92
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->bytesLeft()I

    move-result p2

    if-nez p2, :cond_2

    return p3

    .line 96
    :cond_2
    invoke-static {p1}, Lcom/google/android/exoplr2avp/extractor/flv/ScriptTagPayloadReader;->readAmfType(Lcom/google/android/exoplr2avp/util/ParsableByteArray;)I

    move-result p2

    const/16 v0, 0x8

    if-eq p2, v0, :cond_3

    return p3

    .line 101
    :cond_3
    invoke-static {p1}, Lcom/google/android/exoplr2avp/extractor/flv/ScriptTagPayloadReader;->readAmfEcmaArray(Lcom/google/android/exoplr2avp/util/ParsableByteArray;)Ljava/util/HashMap;

    move-result-object p1

    const-string p2, "duration"

    .line 103
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 104
    instance-of v0, p2, Ljava/lang/Double;

    const-wide v1, 0x412e848000000000L    # 1000000.0

    if-eqz v0, :cond_4

    .line 105
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double p2, v3, v5

    if-lez p2, :cond_4

    mul-double v3, v3, v1

    double-to-long v3, v3

    .line 107
    iput-wide v3, p0, Lcom/google/android/exoplr2avp/extractor/flv/ScriptTagPayloadReader;->durationUs:J

    :cond_4
    const-string p2, "keyframes"

    .line 111
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 112
    instance-of p2, p1, Ljava/util/Map;

    if-eqz p2, :cond_6

    .line 113
    check-cast p1, Ljava/util/Map;

    const-string p2, "filepositions"

    .line 114
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const-string/jumbo v0, "times"

    .line 115
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 116
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_6

    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_6

    .line 117
    check-cast p2, Ljava/util/List;

    .line 118
    check-cast p1, Ljava/util/List;

    .line 119
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 120
    new-array v3, v0, [J

    iput-object v3, p0, Lcom/google/android/exoplr2avp/extractor/flv/ScriptTagPayloadReader;->keyFrameTimesUs:[J

    .line 121
    new-array v3, v0, [J

    iput-object v3, p0, Lcom/google/android/exoplr2avp/extractor/flv/ScriptTagPayloadReader;->keyFrameTagPositions:[J

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_6

    .line 123
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 124
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 125
    instance-of v6, v5, Ljava/lang/Double;

    if-eqz v6, :cond_5

    instance-of v6, v4, Ljava/lang/Double;

    if-eqz v6, :cond_5

    .line 126
    iget-object v6, p0, Lcom/google/android/exoplr2avp/extractor/flv/ScriptTagPayloadReader;->keyFrameTimesUs:[J

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    mul-double v7, v7, v1

    double-to-long v7, v7

    aput-wide v7, v6, v3

    .line 127
    iget-object v5, p0, Lcom/google/android/exoplr2avp/extractor/flv/ScriptTagPayloadReader;->keyFrameTagPositions:[J

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->longValue()J

    move-result-wide v6

    aput-wide v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    new-array p1, p3, [J

    .line 129
    iput-object p1, p0, Lcom/google/android/exoplr2avp/extractor/flv/ScriptTagPayloadReader;->keyFrameTimesUs:[J

    new-array p1, p3, [J

    .line 130
    iput-object p1, p0, Lcom/google/android/exoplr2avp/extractor/flv/ScriptTagPayloadReader;->keyFrameTagPositions:[J

    :cond_6
    return p3
.end method

.method public seek()V
    .locals 0

    return-void
.end method
