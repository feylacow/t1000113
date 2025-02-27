.class public final Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;
.super Lcom/google/android/exoplr2avp/text/cea/CeaDecoder;
.source "Cea708Decoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$Cea708CueInfo;,
        Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;,
        Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$DtvCcPacket;
    }
.end annotation


# static fields
.field private static final CC_VALID_FLAG:I = 0x4

.field private static final CHARACTER_BIG_CARONS:I = 0x2a

.field private static final CHARACTER_BIG_OE:I = 0x2c

.field private static final CHARACTER_BOLD_BULLET:I = 0x35

.field private static final CHARACTER_CLOSE_DOUBLE_QUOTE:I = 0x34

.field private static final CHARACTER_CLOSE_SINGLE_QUOTE:I = 0x32

.field private static final CHARACTER_DIAERESIS_Y:I = 0x3f

.field private static final CHARACTER_ELLIPSIS:I = 0x25

.field private static final CHARACTER_FIVE_EIGHTHS:I = 0x78

.field private static final CHARACTER_HORIZONTAL_BORDER:I = 0x7d

.field private static final CHARACTER_LOWER_LEFT_BORDER:I = 0x7c

.field private static final CHARACTER_LOWER_RIGHT_BORDER:I = 0x7e

.field private static final CHARACTER_MN:I = 0x7f

.field private static final CHARACTER_NBTSP:I = 0x21

.field private static final CHARACTER_ONE_EIGHTH:I = 0x76

.field private static final CHARACTER_OPEN_DOUBLE_QUOTE:I = 0x33

.field private static final CHARACTER_OPEN_SINGLE_QUOTE:I = 0x31

.field private static final CHARACTER_SEVEN_EIGHTHS:I = 0x79

.field private static final CHARACTER_SM:I = 0x3d

.field private static final CHARACTER_SMALL_CARONS:I = 0x3a

.field private static final CHARACTER_SMALL_OE:I = 0x3c

.field private static final CHARACTER_SOLID_BLOCK:I = 0x30

.field private static final CHARACTER_THREE_EIGHTHS:I = 0x77

.field private static final CHARACTER_TM:I = 0x39

.field private static final CHARACTER_TSP:I = 0x20

.field private static final CHARACTER_UPPER_LEFT_BORDER:I = 0x7f

.field private static final CHARACTER_UPPER_RIGHT_BORDER:I = 0x7b

.field private static final CHARACTER_VERTICAL_BORDER:I = 0x7a

.field private static final COMMAND_BS:I = 0x8

.field private static final COMMAND_CLW:I = 0x88

.field private static final COMMAND_CR:I = 0xd

.field private static final COMMAND_CW0:I = 0x80

.field private static final COMMAND_CW1:I = 0x81

.field private static final COMMAND_CW2:I = 0x82

.field private static final COMMAND_CW3:I = 0x83

.field private static final COMMAND_CW4:I = 0x84

.field private static final COMMAND_CW5:I = 0x85

.field private static final COMMAND_CW6:I = 0x86

.field private static final COMMAND_CW7:I = 0x87

.field private static final COMMAND_DF0:I = 0x98

.field private static final COMMAND_DF1:I = 0x99

.field private static final COMMAND_DF2:I = 0x9a

.field private static final COMMAND_DF3:I = 0x9b

.field private static final COMMAND_DF4:I = 0x9c

.field private static final COMMAND_DF5:I = 0x9d

.field private static final COMMAND_DF6:I = 0x9e

.field private static final COMMAND_DF7:I = 0x9f

.field private static final COMMAND_DLC:I = 0x8e

.field private static final COMMAND_DLW:I = 0x8c

.field private static final COMMAND_DLY:I = 0x8d

.field private static final COMMAND_DSW:I = 0x89

.field private static final COMMAND_ETX:I = 0x3

.field private static final COMMAND_EXT1:I = 0x10

.field private static final COMMAND_EXT1_END:I = 0x17

.field private static final COMMAND_EXT1_START:I = 0x11

.field private static final COMMAND_FF:I = 0xc

.field private static final COMMAND_HCR:I = 0xe

.field private static final COMMAND_HDW:I = 0x8a

.field private static final COMMAND_NUL:I = 0x0

.field private static final COMMAND_P16_END:I = 0x1f

.field private static final COMMAND_P16_START:I = 0x18

.field private static final COMMAND_RST:I = 0x8f

.field private static final COMMAND_SPA:I = 0x90

.field private static final COMMAND_SPC:I = 0x91

.field private static final COMMAND_SPL:I = 0x92

.field private static final COMMAND_SWA:I = 0x97

.field private static final COMMAND_TGW:I = 0x8b

.field private static final DTVCC_PACKET_DATA:I = 0x2

.field private static final DTVCC_PACKET_START:I = 0x3

.field private static final GROUP_C0_END:I = 0x1f

.field private static final GROUP_C1_END:I = 0x9f

.field private static final GROUP_C2_END:I = 0x1f

.field private static final GROUP_C3_END:I = 0x9f

.field private static final GROUP_G0_END:I = 0x7f

.field private static final GROUP_G1_END:I = 0xff

.field private static final GROUP_G2_END:I = 0x7f

.field private static final GROUP_G3_END:I = 0xff

.field private static final NUM_WINDOWS:I = 0x8

.field private static final TAG:Ljava/lang/String; = "Cea708Decoder"


# instance fields
.field private final captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

.field private final ccData:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

.field private final cueInfoBuilders:[Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;

.field private cues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field private currentCueInfoBuilder:Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;

.field private currentDtvCcPacket:Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$DtvCcPacket;

.field private currentWindow:I

.field private final isWideAspectRatio:Z

.field private lastCues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field private previousSequenceNumber:I

.field private final selectedServiceNumber:I


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 162
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder;-><init>()V

    .line 163
    new-instance v0, Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->ccData:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    .line 164
    new-instance v0, Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    const/4 v0, -0x1

    .line 165
    iput v0, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->previousSequenceNumber:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 166
    :cond_0
    iput p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->selectedServiceNumber:I

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    .line 169
    invoke-static {p2}, Lcom/google/android/exoplr2avp/util/CodecSpecificDataUtil;->parseCea708InitializationData(Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->isWideAspectRatio:Z

    const/16 p2, 0x8

    new-array v0, p2, [Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 171
    iput-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->cueInfoBuilders:[Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_2

    .line 173
    iget-object v1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->cueInfoBuilders:[Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;

    new-instance v2, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;

    invoke-direct {v2}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 176
    :cond_2
    iget-object p2, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->cueInfoBuilders:[Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;

    aget-object p1, p2, p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;

    return-void
.end method

.method private finalizeCurrentPacket()V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$DtvCcPacket;

    if-nez v0, :cond_0

    return-void

    .line 279
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->processCurrentPacket()V

    const/4 v0, 0x0

    .line 280
    iput-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$DtvCcPacket;

    return-void
.end method

.method private getDisplayCues()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/text/Cue;",
            ">;"
        }
    .end annotation

    .line 805
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    .line 807
    iget-object v3, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->cueInfoBuilders:[Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->cueInfoBuilders:[Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 808
    iget-object v3, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->cueInfoBuilders:[Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;->build()Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$Cea708CueInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 810
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 814
    :cond_1
    invoke-static {}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$Cea708CueInfo;->access$000()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 815
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 816
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 817
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$Cea708CueInfo;

    iget-object v3, v3, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$Cea708CueInfo;->cue:Lcom/google/android/exoplr2avp/text/Cue;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 819
    :cond_2
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private handleC0Command(I)V
    .locals 4

    if-eqz p1, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    const/16 v1, 0x11

    const-string v2, "Cea708Decoder"

    if-lt p1, v1, :cond_0

    const/16 v1, 0x17

    if-gt p1, v1, :cond_0

    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Currently unsupported COMMAND_EXT1 Command: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/google/android/exoplr2avp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x18

    if-lt p1, v0, :cond_1

    const/16 v0, 0x1f

    if-gt p1, v0, :cond_1

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Currently unsupported COMMAND_P16 Command: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/google/android/exoplr2avp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    goto :goto_0

    .line 414
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid C0 command: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/google/android/exoplr2avp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 401
    :pswitch_0
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto :goto_0

    .line 398
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->resetCueBuilders()V

    goto :goto_0

    .line 395
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;->backspace()V

    goto :goto_0

    .line 392
    :cond_3
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->getDisplayCues()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    :cond_4
    :goto_0
    :pswitch_2
    return-void

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private handleC1Command(I)V
    .locals 4

    const/16 v0, 0x10

    const/16 v1, 0x8

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 531
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid C1 command: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Cea708Decoder"

    invoke-static {v0, p1}, Lcom/google/android/exoplr2avp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_1
    add-int/lit16 p1, p1, -0x98

    .line 523
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->handleDefineWindow(I)V

    .line 525
    iget v0, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentWindow:I

    if-eq v0, p1, :cond_9

    .line 526
    iput p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentWindow:I

    .line 527
    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->cueInfoBuilders:[Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;

    goto/16 :goto_5

    .line 507
    :pswitch_2
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;->isDefined()Z

    move-result p1

    if-nez p1, :cond_0

    .line 509
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_5

    .line 511
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->handleSetWindowAttributes()V

    goto/16 :goto_5

    .line 499
    :pswitch_3
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;->isDefined()Z

    move-result p1

    if-nez p1, :cond_1

    .line 501
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_5

    .line 503
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->handleSetPenLocation()V

    goto/16 :goto_5

    .line 491
    :pswitch_4
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;->isDefined()Z

    move-result p1

    if-nez p1, :cond_2

    .line 493
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    const/16 v0, 0x18

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_5

    .line 495
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->handleSetPenColor()V

    goto/16 :goto_5

    .line 483
    :pswitch_5
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;->isDefined()Z

    move-result p1

    if-nez p1, :cond_3

    .line 485
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_5

    .line 487
    :cond_3
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->handleSetPenAttributes()V

    goto/16 :goto_5

    .line 480
    :pswitch_6
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->resetCueBuilders()V

    goto/16 :goto_5

    .line 474
    :pswitch_7
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_5

    :goto_0
    :pswitch_8
    if-gt v2, v1, :cond_9

    .line 467
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBit()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 468
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->cueInfoBuilders:[Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;

    rsub-int/lit8 v0, v2, 0x8

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;->reset()V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :pswitch_9
    const/4 p1, 0x1

    :goto_1
    if-gt p1, v1, :cond_9

    .line 459
    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 460
    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->cueInfoBuilders:[Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;

    rsub-int/lit8 v3, p1, 0x8

    aget-object v0, v0, v3

    .line 461
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;->isVisible()Z

    move-result v3

    xor-int/2addr v3, v2

    invoke-virtual {v0, v3}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;->setVisibility(Z)V

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :goto_2
    :pswitch_a
    if-gt v2, v1, :cond_9

    .line 452
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBit()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 453
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->cueInfoBuilders:[Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;

    rsub-int/lit8 v0, v2, 0x8

    aget-object p1, p1, v0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;->setVisibility(Z)V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :pswitch_b
    const/4 p1, 0x1

    :goto_3
    if-gt p1, v1, :cond_9

    .line 445
    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 446
    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->cueInfoBuilders:[Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;

    rsub-int/lit8 v3, p1, 0x8

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;->setVisibility(Z)V

    :cond_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :goto_4
    :pswitch_c
    if-gt v2, v1, :cond_9

    .line 438
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBit()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 439
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->cueInfoBuilders:[Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;

    rsub-int/lit8 v0, v2, 0x8

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;->clear()V

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :pswitch_d
    add-int/lit8 p1, p1, -0x80

    .line 431
    iget v0, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentWindow:I

    if-eq v0, p1, :cond_9

    .line 432
    iput p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentWindow:I

    .line 433
    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->cueInfoBuilders:[Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;

    :cond_9
    :goto_5
    :pswitch_e
    return-void

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_e
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private handleC2Command(I)V
    .locals 1

    const/4 v0, 0x7

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xf

    if-gt p1, v0, :cond_1

    .line 540
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x17

    if-gt p1, v0, :cond_2

    .line 542
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x1f

    if-gt p1, v0, :cond_3

    .line 544
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    const/16 v0, 0x18

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private handleC3Command(I)V
    .locals 1

    const/16 v0, 0x87

    if-gt p1, v0, :cond_0

    .line 551
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8f

    if-gt p1, v0, :cond_1

    .line 553
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x9f

    if-gt p1, v0, :cond_2

    .line 558
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    .line 559
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBits(I)I

    move-result p1

    .line 560
    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    mul-int/lit8 p1, p1, 0x8

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private handleDefineWindow(I)V
    .locals 14

    .line 764
    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->cueInfoBuilders:[Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;

    aget-object v1, v0, p1

    .line 768
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    .line 769
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBit()Z

    move-result v2

    .line 770
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBit()Z

    move-result v3

    .line 771
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBit()Z

    move-result v4

    .line 772
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    const/4 v5, 0x3

    invoke-virtual {p1, v5}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBits(I)I

    move-result p1

    .line 774
    iget-object v6, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    invoke-virtual {v6}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBit()Z

    move-result v6

    .line 775
    iget-object v7, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    const/4 v8, 0x7

    invoke-virtual {v7, v8}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 777
    iget-object v8, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 779
    iget-object v9, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBits(I)I

    move-result v11

    .line 780
    iget-object v9, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    invoke-virtual {v9, v10}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBits(I)I

    move-result v9

    .line 782
    iget-object v10, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    invoke-virtual {v10, v0}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    .line 783
    iget-object v10, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    const/4 v12, 0x6

    invoke-virtual {v10, v12}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBits(I)I

    move-result v10

    .line 785
    iget-object v12, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    invoke-virtual {v12, v0}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    .line 786
    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    invoke-virtual {v0, v5}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBits(I)I

    move-result v12

    .line 787
    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    invoke-virtual {v0, v5}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBits(I)I

    move-result v13

    move v5, p1

    .line 789
    invoke-virtual/range {v1 .. v13}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;->defineWindow(ZZZIZIIIIIII)V

    return-void
.end method

.method private handleG0Character(I)V
    .locals 1

    const/16 v0, 0x7f

    if-ne p1, v0, :cond_0

    .line 566
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v0, 0x266b

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto :goto_0

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;

    and-int/lit16 p1, p1, 0xff

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    :goto_0
    return-void
.end method

.method private handleG1Character(I)V
    .locals 1

    .line 573
    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;

    and-int/lit16 p1, p1, 0xff

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    return-void
.end method

.method private handleG2Character(I)V
    .locals 2

    const/16 v0, 0x20

    if-eq p1, v0, :cond_9

    const/16 v0, 0x21

    if-eq p1, v0, :cond_8

    const/16 v0, 0x25

    if-eq p1, v0, :cond_7

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_6

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_5

    const/16 v0, 0x3f

    if-eq p1, v0, :cond_4

    const/16 v0, 0x39

    if-eq p1, v0, :cond_3

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid G2 character: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Cea708Decoder"

    invoke-static {v0, p1}, Lcom/google/android/exoplr2avp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 654
    :pswitch_0
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v0, 0x250c

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto/16 :goto_0

    .line 651
    :pswitch_1
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v0, 0x2518

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto/16 :goto_0

    .line 648
    :pswitch_2
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v0, 0x2500

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto/16 :goto_0

    .line 645
    :pswitch_3
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v0, 0x2514

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto/16 :goto_0

    .line 642
    :pswitch_4
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v0, 0x2510

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto/16 :goto_0

    .line 639
    :pswitch_5
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v0, 0x2502

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto/16 :goto_0

    .line 636
    :pswitch_6
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v0, 0x215e

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto/16 :goto_0

    .line 633
    :pswitch_7
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v0, 0x215d

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto/16 :goto_0

    .line 630
    :pswitch_8
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v0, 0x215c

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto/16 :goto_0

    .line 627
    :pswitch_9
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v0, 0x215b

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto/16 :goto_0

    .line 609
    :pswitch_a
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v0, 0x2022

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto/16 :goto_0

    .line 606
    :pswitch_b
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v0, 0x201d

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto/16 :goto_0

    .line 603
    :pswitch_c
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v0, 0x201c

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto/16 :goto_0

    .line 600
    :pswitch_d
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v0, 0x2019

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto :goto_0

    .line 597
    :pswitch_e
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v0, 0x2018

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto :goto_0

    .line 594
    :pswitch_f
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v0, 0x2588

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto :goto_0

    .line 621
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v0, 0x2120

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto :goto_0

    .line 618
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v0, 0x153

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto :goto_0

    .line 615
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v0, 0x161

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto :goto_0

    .line 612
    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v0, 0x2122

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto :goto_0

    .line 624
    :cond_4
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v0, 0x178

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto :goto_0

    .line 591
    :cond_5
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v0, 0x152

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto :goto_0

    .line 588
    :cond_6
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v0, 0x160

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto :goto_0

    .line 585
    :cond_7
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v0, 0x2026

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto :goto_0

    .line 582
    :cond_8
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v0, 0xa0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto :goto_0

    .line 579
    :cond_9
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x76
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleG3Character(I)V
    .locals 2

    const/16 v0, 0xa0

    if-ne p1, v0, :cond_0

    .line 665
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v0, 0x33c4

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto :goto_0

    .line 667
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid G3 character: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Cea708Decoder"

    invoke-static {v0, p1}, Lcom/google/android/exoplr2avp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 v0, 0x5f

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    :goto_0
    return-void
.end method

.method private handleSetPenAttributes()V
    .locals 10

    .line 676
    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 677
    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 678
    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 680
    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBit()Z

    move-result v6

    .line 681
    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBit()Z

    move-result v7

    .line 682
    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 683
    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBits(I)I

    move-result v9

    .line 685
    iget-object v2, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;->setPenAttributes(IIIZZII)V

    return-void
.end method

.method private handleSetPenColor()V
    .locals 6

    .line 692
    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 693
    iget-object v2, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 694
    iget-object v3, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 695
    iget-object v4, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    invoke-virtual {v4, v1}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 697
    invoke-static {v2, v3, v4, v0}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v0

    .line 699
    iget-object v2, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 700
    iget-object v3, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 701
    iget-object v4, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    invoke-virtual {v4, v1}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 702
    iget-object v5, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    invoke-virtual {v5, v1}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 704
    invoke-static {v3, v4, v5, v2}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v2

    .line 706
    iget-object v3, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    .line 707
    iget-object v3, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 708
    iget-object v4, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    invoke-virtual {v4, v1}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 709
    iget-object v5, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    invoke-virtual {v5, v1}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 710
    invoke-static {v3, v4, v1}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;->getArgbColorFromCeaColor(III)I

    move-result v1

    .line 712
    iget-object v3, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;

    invoke-virtual {v3, v0, v2, v1}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;->setPenColor(III)V

    return-void
.end method

.method private handleSetPenLocation()V
    .locals 3

    .line 718
    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    .line 719
    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 721
    iget-object v1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    .line 722
    iget-object v1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 724
    iget-object v2, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;->setPenLocation(II)V

    return-void
.end method

.method private handleSetWindowAttributes()V
    .locals 13

    .line 730
    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 731
    iget-object v2, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 732
    iget-object v3, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 733
    iget-object v4, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    invoke-virtual {v4, v1}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 734
    invoke-static {v2, v3, v4, v0}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v6

    .line 736
    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 737
    iget-object v2, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 738
    iget-object v3, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 739
    iget-object v4, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    invoke-virtual {v4, v1}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 740
    invoke-static {v2, v3, v4}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;->getArgbColorFromCeaColor(III)I

    move-result v7

    .line 742
    iget-object v2, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_0

    or-int/lit8 v0, v0, 0x4

    :cond_0
    move v9, v0

    .line 745
    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBit()Z

    move-result v8

    .line 746
    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBits(I)I

    move-result v10

    .line 747
    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBits(I)I

    move-result v11

    .line 748
    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBits(I)I

    move-result v12

    .line 751
    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    .line 753
    iget-object v5, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;

    invoke-virtual/range {v5 .. v12}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;->setWindowAttributes(IIZIIII)V

    return-void
.end method

.method private processCurrentPacket()V
    .locals 12
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "currentDtvCcPacket"
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$DtvCcPacket;

    iget v0, v0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    iget-object v1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$DtvCcPacket;

    iget v1, v1, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$DtvCcPacket;->packetSize:I

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    const-string v4, "Cea708Decoder"

    if-eq v0, v1, :cond_0

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DtvCcPacket ended prematurely; size is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$DtvCcPacket;

    iget v1, v1, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$DtvCcPacket;->packetSize:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", but current index is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$DtvCcPacket;

    iget v1, v1, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " (sequence number "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$DtvCcPacket;

    iget v1, v1, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$DtvCcPacket;->sequenceNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/exoplr2avp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 313
    iget-object v1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    iget-object v5, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$DtvCcPacket;

    iget-object v5, v5, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$DtvCcPacket;->packetData:[B

    iget-object v6, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$DtvCcPacket;

    iget v6, v6, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    invoke-virtual {v1, v5, v6}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->reset([BI)V

    .line 314
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->bitsLeft()I

    move-result v1

    if-lez v1, :cond_e

    .line 316
    iget-object v1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 317
    iget-object v5, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBits(I)I

    move-result v5

    const/4 v6, 0x7

    if-ne v1, v6, :cond_2

    .line 320
    iget-object v1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBits(I)V

    .line 321
    iget-object v1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    const/4 v7, 0x6

    invoke-virtual {v1, v7}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBits(I)I

    move-result v1

    if-ge v1, v6, :cond_2

    .line 323
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid extended service number: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/google/android/exoplr2avp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-nez v5, :cond_3

    if-eqz v1, :cond_e

    .line 330
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "serviceNumber is non-zero ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") when blockSize is 0"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/android/exoplr2avp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 335
    :cond_3
    iget v6, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->selectedServiceNumber:I

    if-eq v1, v6, :cond_4

    .line 336
    iget-object v1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    invoke-virtual {v1, v5}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->skipBytes(I)V

    goto :goto_0

    .line 342
    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->getPosition()I

    move-result v1

    mul-int/lit8 v5, v5, 0x8

    add-int/2addr v1, v5

    .line 343
    :goto_1
    iget-object v5, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    invoke-virtual {v5}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->getPosition()I

    move-result v5

    if-ge v5, v1, :cond_1

    .line 344
    iget-object v5, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBits(I)I

    move-result v5

    const/16 v7, 0x10

    const/16 v8, 0xff

    const/16 v9, 0x9f

    const/16 v10, 0x7f

    const/16 v11, 0x1f

    if-eq v5, v7, :cond_9

    if-gt v5, v11, :cond_5

    .line 347
    invoke-direct {p0, v5}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->handleC0Command(I)V

    goto :goto_1

    :cond_5
    if-gt v5, v10, :cond_6

    .line 350
    invoke-direct {p0, v5}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->handleG0Character(I)V

    goto :goto_2

    :cond_6
    if-gt v5, v9, :cond_7

    .line 353
    invoke-direct {p0, v5}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->handleC1Command(I)V

    goto :goto_2

    :cond_7
    if-gt v5, v8, :cond_8

    .line 356
    invoke-direct {p0, v5}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->handleG1Character(I)V

    goto :goto_2

    .line 359
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid base command: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/exoplr2avp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 363
    :cond_9
    iget-object v5, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->captionChannelPacketData:Lcom/google/android/exoplr2avp/util/ParsableBitArray;

    invoke-virtual {v5, v6}, Lcom/google/android/exoplr2avp/util/ParsableBitArray;->readBits(I)I

    move-result v5

    if-gt v5, v11, :cond_a

    .line 365
    invoke-direct {p0, v5}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->handleC2Command(I)V

    goto :goto_1

    :cond_a
    if-gt v5, v10, :cond_b

    .line 367
    invoke-direct {p0, v5}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->handleG2Character(I)V

    :goto_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_b
    if-gt v5, v9, :cond_c

    .line 370
    invoke-direct {p0, v5}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->handleC3Command(I)V

    goto :goto_1

    :cond_c
    if-gt v5, v8, :cond_d

    .line 372
    invoke-direct {p0, v5}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->handleG3Character(I)V

    goto :goto_2

    .line 375
    :cond_d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid extended command: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/exoplr2avp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_e
    :goto_3
    if-eqz v0, :cond_f

    .line 382
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->getDisplayCues()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    :cond_f
    return-void
.end method

.method private resetCueBuilders()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 824
    iget-object v1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->cueInfoBuilders:[Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;->reset()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected createSubtitle()Lcom/google/android/exoplr2avp/text/Subtitle;
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->lastCues:Ljava/util/List;

    .line 203
    new-instance v1, Lcom/google/android/exoplr2avp/text/cea/CeaSubtitle;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {v1, v0}, Lcom/google/android/exoplr2avp/text/cea/CeaSubtitle;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method protected decode(Lcom/google/android/exoplr2avp/text/SubtitleInputBuffer;)V
    .locals 8

    .line 209
    iget-object p1, p1, Lcom/google/android/exoplr2avp/text/SubtitleInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    .line 211
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 212
    iget-object v1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->ccData:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    invoke-virtual {v1, v0, p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->reset([BI)V

    .line 213
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->ccData:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->bytesLeft()I

    move-result p1

    const/4 v0, 0x3

    if-lt p1, v0, :cond_9

    .line 214
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->ccData:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    and-int/lit8 p1, p1, 0x7

    and-int/lit8 v1, p1, 0x3

    const/4 v2, 0x4

    and-int/2addr p1, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v2, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 218
    :goto_1
    iget-object v5, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->ccData:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v5}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    int-to-byte v5, v5

    .line 219
    iget-object v6, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->ccData:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v6}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    int-to-byte v6, v6

    const/4 v7, 0x2

    if-eq v1, v7, :cond_2

    if-eq v1, v0, :cond_2

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const-string p1, "Cea708Decoder"

    if-ne v1, v0, :cond_6

    .line 232
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->finalizeCurrentPacket()V

    and-int/lit16 v0, v5, 0xc0

    shr-int/lit8 v0, v0, 0x6

    .line 235
    iget v1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->previousSequenceNumber:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_4

    add-int/lit8 v1, v1, 0x1

    rem-int/2addr v1, v2

    if-eq v0, v1, :cond_4

    .line 237
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->resetCueBuilders()V

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sequence number discontinuity. previous="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->previousSequenceNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " current="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/exoplr2avp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_4
    iput v0, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->previousSequenceNumber:I

    and-int/lit8 p1, v5, 0x3f

    if-nez p1, :cond_5

    const/16 p1, 0x40

    .line 252
    :cond_5
    new-instance v1, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$DtvCcPacket;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$DtvCcPacket;-><init>(II)V

    iput-object v1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$DtvCcPacket;

    .line 253
    iget-object p1, v1, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$DtvCcPacket;->packetData:[B

    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$DtvCcPacket;

    iget v1, v0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    aput-byte v6, p1, v1

    goto :goto_2

    :cond_6
    if-ne v1, v7, :cond_7

    const/4 v3, 0x1

    .line 256
    :cond_7
    invoke-static {v3}, Lcom/google/android/exoplr2avp/util/Assertions;->checkArgument(Z)V

    .line 258
    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$DtvCcPacket;

    if-nez v0, :cond_8

    const-string v0, "Encountered DTVCC_PACKET_DATA before DTVCC_PACKET_START"

    .line 259
    invoke-static {p1, v0}, Lcom/google/android/exoplr2avp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 263
    :cond_8
    iget-object p1, v0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$DtvCcPacket;->packetData:[B

    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$DtvCcPacket;

    iget v1, v0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    aput-byte v5, p1, v1

    .line 264
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$DtvCcPacket;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$DtvCcPacket;->packetData:[B

    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$DtvCcPacket;

    iget v1, v0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    aput-byte v6, p1, v1

    .line 267
    :goto_2
    iget-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$DtvCcPacket;

    iget p1, p1, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$DtvCcPacket;

    iget v0, v0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$DtvCcPacket;->packetSize:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, v4

    if-ne p1, v0, :cond_0

    .line 268
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->finalizeCurrentPacket()V

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public bridge synthetic dequeueInputBuffer()Lcom/google/android/exoplr2avp/text/SubtitleInputBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/text/SubtitleDecoderException;
        }
    .end annotation

    .line 49
    invoke-super {p0}, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder;->dequeueInputBuffer()Lcom/google/android/exoplr2avp/text/SubtitleInputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dequeueOutputBuffer()Lcom/google/android/exoplr2avp/text/SubtitleOutputBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/text/SubtitleDecoderException;
        }
    .end annotation

    .line 49
    invoke-super {p0}, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder;->dequeueOutputBuffer()Lcom/google/android/exoplr2avp/text/SubtitleOutputBuffer;

    move-result-object v0

    return-object v0
.end method

.method public flush()V
    .locals 3

    .line 186
    invoke-super {p0}, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder;->flush()V

    const/4 v0, 0x0

    .line 187
    iput-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    .line 188
    iput-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->lastCues:Ljava/util/List;

    const/4 v1, 0x0

    .line 189
    iput v1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentWindow:I

    .line 190
    iget-object v2, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->cueInfoBuilders:[Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;

    aget-object v1, v2, v1

    iput-object v1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentCueInfoBuilder:Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 191
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->resetCueBuilders()V

    .line 192
    iput-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->currentDtvCcPacket:Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder$DtvCcPacket;

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Cea708Decoder"

    return-object v0
.end method

.method protected isNewSubtitleDataAvailable()Z
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/text/cea/Cea708Decoder;->lastCues:Ljava/util/List;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic queueInputBuffer(Lcom/google/android/exoplr2avp/text/SubtitleInputBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/text/SubtitleDecoderException;
        }
    .end annotation

    .line 49
    invoke-super {p0, p1}, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder;->queueInputBuffer(Lcom/google/android/exoplr2avp/text/SubtitleInputBuffer;)V

    return-void
.end method

.method public bridge synthetic release()V
    .locals 0

    .line 49
    invoke-super {p0}, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder;->release()V

    return-void
.end method

.method public bridge synthetic setPositionUs(J)V
    .locals 0

    .line 49
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder;->setPositionUs(J)V

    return-void
.end method
