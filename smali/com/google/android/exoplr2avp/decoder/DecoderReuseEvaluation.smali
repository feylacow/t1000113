.class public final Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;
.super Ljava/lang/Object;
.source "DecoderReuseEvaluation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation$DecoderDiscardReasons;,
        Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation$DecoderReuseResult;
    }
.end annotation


# static fields
.field public static final DISCARD_REASON_APP_OVERRIDE:I = 0x4

.field public static final DISCARD_REASON_AUDIO_CHANNEL_COUNT_CHANGED:I = 0x1000

.field public static final DISCARD_REASON_AUDIO_ENCODING_CHANGED:I = 0x4000

.field public static final DISCARD_REASON_AUDIO_SAMPLE_RATE_CHANGED:I = 0x2000

.field public static final DISCARD_REASON_DRM_SESSION_CHANGED:I = 0x80

.field public static final DISCARD_REASON_INITIALIZATION_DATA_CHANGED:I = 0x20

.field public static final DISCARD_REASON_MAX_INPUT_SIZE_EXCEEDED:I = 0x40

.field public static final DISCARD_REASON_MIME_TYPE_CHANGED:I = 0x8

.field public static final DISCARD_REASON_OPERATING_RATE_CHANGED:I = 0x10

.field public static final DISCARD_REASON_REUSE_NOT_IMPLEMENTED:I = 0x1

.field public static final DISCARD_REASON_VIDEO_COLOR_INFO_CHANGED:I = 0x800

.field public static final DISCARD_REASON_VIDEO_MAX_RESOLUTION_EXCEEDED:I = 0x100

.field public static final DISCARD_REASON_VIDEO_RESOLUTION_CHANGED:I = 0x200

.field public static final DISCARD_REASON_VIDEO_ROTATION_CHANGED:I = 0x400

.field public static final DISCARD_REASON_WORKAROUND:I = 0x2

.field public static final REUSE_RESULT_NO:I = 0x0

.field public static final REUSE_RESULT_YES_WITHOUT_RECONFIGURATION:I = 0x3

.field public static final REUSE_RESULT_YES_WITH_FLUSH:I = 0x1

.field public static final REUSE_RESULT_YES_WITH_RECONFIGURATION:I = 0x2


# instance fields
.field public final decoderName:Ljava/lang/String;

.field public final discardReasons:I

.field public final newFormat:Lcom/google/android/exoplr2avp/Format;

.field public final oldFormat:Lcom/google/android/exoplr2avp/Format;

.field public final result:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/Format;II)V
    .locals 1

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p4, :cond_1

    if-nez p5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 148
    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkArgument(Z)V

    .line 149
    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;->decoderName:Ljava/lang/String;

    .line 150
    invoke-static {p2}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/Format;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;->oldFormat:Lcom/google/android/exoplr2avp/Format;

    .line 151
    invoke-static {p3}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/Format;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;->newFormat:Lcom/google/android/exoplr2avp/Format;

    .line 152
    iput p4, p0, Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;->result:I

    .line 153
    iput p5, p0, Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;->discardReasons:I

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

    .line 161
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 164
    :cond_1
    check-cast p1, Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;

    .line 165
    iget v2, p0, Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;->result:I

    iget v3, p1, Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;->result:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;->discardReasons:I

    iget v3, p1, Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;->discardReasons:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;->decoderName:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;->decoderName:Ljava/lang/String;

    .line 167
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;->oldFormat:Lcom/google/android/exoplr2avp/Format;

    iget-object v3, p1, Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;->oldFormat:Lcom/google/android/exoplr2avp/Format;

    .line 168
    invoke-virtual {v2, v3}, Lcom/google/android/exoplr2avp/Format;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;->newFormat:Lcom/google/android/exoplr2avp/Format;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;->newFormat:Lcom/google/android/exoplr2avp/Format;

    .line 169
    invoke-virtual {v2, p1}, Lcom/google/android/exoplr2avp/Format;->equals(Ljava/lang/Object;)Z

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

.method public hashCode()I
    .locals 2

    .line 175
    iget v0, p0, Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;->result:I

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 176
    iget v0, p0, Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;->discardReasons:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 177
    iget-object v0, p0, Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;->decoderName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 178
    iget-object v0, p0, Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;->oldFormat:Lcom/google/android/exoplr2avp/Format;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/Format;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 179
    iget-object v0, p0, Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;->newFormat:Lcom/google/android/exoplr2avp/Format;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/Format;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method
