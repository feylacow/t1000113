.class final Lcom/google/android/exoplr2avp/text/cea/CeaDecoder$CeaOutputBuffer;
.super Lcom/google/android/exoplr2avp/text/SubtitleOutputBuffer;
.source "CeaDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/text/cea/CeaDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CeaOutputBuffer"
.end annotation


# instance fields
.field private owner:Lcom/google/android/exoplr2avp/decoder/DecoderOutputBuffer$Owner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplr2avp/decoder/DecoderOutputBuffer$Owner<",
            "Lcom/google/android/exoplr2avp/text/cea/CeaDecoder$CeaOutputBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/decoder/DecoderOutputBuffer$Owner;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/decoder/DecoderOutputBuffer$Owner<",
            "Lcom/google/android/exoplr2avp/text/cea/CeaDecoder$CeaOutputBuffer;",
            ">;)V"
        }
    .end annotation

    .line 201
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/text/SubtitleOutputBuffer;-><init>()V

    .line 202
    iput-object p1, p0, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder$CeaOutputBuffer;->owner:Lcom/google/android/exoplr2avp/decoder/DecoderOutputBuffer$Owner;

    return-void
.end method


# virtual methods
.method public final release()V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/cea/CeaDecoder$CeaOutputBuffer;->owner:Lcom/google/android/exoplr2avp/decoder/DecoderOutputBuffer$Owner;

    invoke-interface {v0, p0}, Lcom/google/android/exoplr2avp/decoder/DecoderOutputBuffer$Owner;->releaseOutputBuffer(Lcom/google/android/exoplr2avp/decoder/DecoderOutputBuffer;)V

    return-void
.end method
