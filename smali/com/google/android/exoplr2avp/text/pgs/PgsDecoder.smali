.class public final Lcom/google/android/exoplr2avp/text/pgs/PgsDecoder;
.super Lcom/google/android/exoplr2avp/text/SimpleSubtitleDecoder;
.source "PgsDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/text/pgs/PgsDecoder$CueBuilder;
    }
.end annotation


# static fields
.field private static final INFLATE_HEADER:B = 0x78t

.field private static final SECTION_TYPE_BITMAP_PICTURE:I = 0x15

.field private static final SECTION_TYPE_END:I = 0x80

.field private static final SECTION_TYPE_IDENTIFIER:I = 0x16

.field private static final SECTION_TYPE_PALETTE:I = 0x14


# instance fields
.field private final buffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

.field private final cueBuilder:Lcom/google/android/exoplr2avp/text/pgs/PgsDecoder$CueBuilder;

.field private final inflatedBuffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

.field private inflater:Ljava/util/zip/Inflater;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "PgsDecoder"

    .line 50
    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/text/SimpleSubtitleDecoder;-><init>(Ljava/lang/String;)V

    .line 51
    new-instance v0, Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/text/pgs/PgsDecoder;->buffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    .line 52
    new-instance v0, Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/text/pgs/PgsDecoder;->inflatedBuffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    .line 53
    new-instance v0, Lcom/google/android/exoplr2avp/text/pgs/PgsDecoder$CueBuilder;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/text/pgs/PgsDecoder$CueBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/text/pgs/PgsDecoder;->cueBuilder:Lcom/google/android/exoplr2avp/text/pgs/PgsDecoder$CueBuilder;

    return-void
.end method

.method private maybeInflateData(Lcom/google/android/exoplr2avp/util/ParsableByteArray;)V
    .locals 2

    .line 72
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->peekUnsignedByte()I

    move-result v0

    const/16 v1, 0x78

    if-ne v0, v1, :cond_1

    .line 73
    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/pgs/PgsDecoder;->inflater:Ljava/util/zip/Inflater;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/text/pgs/PgsDecoder;->inflater:Ljava/util/zip/Inflater;

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/pgs/PgsDecoder;->inflatedBuffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/text/pgs/PgsDecoder;->inflater:Ljava/util/zip/Inflater;

    invoke-static {p1, v0, v1}, Lcom/google/android/exoplr2avp/util/Util;->inflate(Lcom/google/android/exoplr2avp/util/ParsableByteArray;Lcom/google/android/exoplr2avp/util/ParsableByteArray;Ljava/util/zip/Inflater;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/pgs/PgsDecoder;->inflatedBuffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplr2avp/text/pgs/PgsDecoder;->inflatedBuffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->limit()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->reset([BI)V

    :cond_1
    return-void
.end method

.method private static readNextSection(Lcom/google/android/exoplr2avp/util/ParsableByteArray;Lcom/google/android/exoplr2avp/text/pgs/PgsDecoder$CueBuilder;)Lcom/google/android/exoplr2avp/text/Cue;
    .locals 5

    .line 84
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->limit()I

    move-result v0

    .line 85
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 86
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    .line 88
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getPosition()I

    move-result v3

    add-int/2addr v3, v2

    const/4 v4, 0x0

    if-le v3, v0, :cond_0

    .line 90
    invoke-virtual {p0, v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->setPosition(I)V

    return-object v4

    :cond_0
    const/16 v0, 0x80

    if-eq v1, v0, :cond_1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 103
    :pswitch_0
    invoke-static {p1, p0, v2}, Lcom/google/android/exoplr2avp/text/pgs/PgsDecoder$CueBuilder;->access$200(Lcom/google/android/exoplr2avp/text/pgs/PgsDecoder$CueBuilder;Lcom/google/android/exoplr2avp/util/ParsableByteArray;I)V

    goto :goto_0

    .line 100
    :pswitch_1
    invoke-static {p1, p0, v2}, Lcom/google/android/exoplr2avp/text/pgs/PgsDecoder$CueBuilder;->access$100(Lcom/google/android/exoplr2avp/text/pgs/PgsDecoder$CueBuilder;Lcom/google/android/exoplr2avp/util/ParsableByteArray;I)V

    goto :goto_0

    .line 97
    :pswitch_2
    invoke-static {p1, p0, v2}, Lcom/google/android/exoplr2avp/text/pgs/PgsDecoder$CueBuilder;->access$000(Lcom/google/android/exoplr2avp/text/pgs/PgsDecoder$CueBuilder;Lcom/google/android/exoplr2avp/util/ParsableByteArray;I)V

    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/text/pgs/PgsDecoder$CueBuilder;->build()Lcom/google/android/exoplr2avp/text/Cue;

    move-result-object v4

    .line 107
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/text/pgs/PgsDecoder$CueBuilder;->reset()V

    .line 113
    :goto_0
    invoke-virtual {p0, v3}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->setPosition(I)V

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected decode([BIZ)Lcom/google/android/exoplr2avp/text/Subtitle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/text/SubtitleDecoderException;
        }
    .end annotation

    .line 58
    iget-object p3, p0, Lcom/google/android/exoplr2avp/text/pgs/PgsDecoder;->buffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->reset([BI)V

    .line 59
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/pgs/PgsDecoder;->buffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/text/pgs/PgsDecoder;->maybeInflateData(Lcom/google/android/exoplr2avp/util/ParsableByteArray;)V

    .line 60
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/pgs/PgsDecoder;->cueBuilder:Lcom/google/android/exoplr2avp/text/pgs/PgsDecoder$CueBuilder;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/text/pgs/PgsDecoder$CueBuilder;->reset()V

    .line 61
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 62
    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/google/android/exoplr2avp/text/pgs/PgsDecoder;->buffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->bytesLeft()I

    move-result p2

    const/4 p3, 0x3

    if-lt p2, p3, :cond_1

    .line 63
    iget-object p2, p0, Lcom/google/android/exoplr2avp/text/pgs/PgsDecoder;->buffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    iget-object p3, p0, Lcom/google/android/exoplr2avp/text/pgs/PgsDecoder;->cueBuilder:Lcom/google/android/exoplr2avp/text/pgs/PgsDecoder$CueBuilder;

    invoke-static {p2, p3}, Lcom/google/android/exoplr2avp/text/pgs/PgsDecoder;->readNextSection(Lcom/google/android/exoplr2avp/util/ParsableByteArray;Lcom/google/android/exoplr2avp/text/pgs/PgsDecoder$CueBuilder;)Lcom/google/android/exoplr2avp/text/Cue;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 65
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 68
    :cond_1
    new-instance p2, Lcom/google/android/exoplr2avp/text/pgs/PgsSubtitle;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/exoplr2avp/text/pgs/PgsSubtitle;-><init>(Ljava/util/List;)V

    return-object p2
.end method
