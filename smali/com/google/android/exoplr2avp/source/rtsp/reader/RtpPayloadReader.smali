.class public interface abstract Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpPayloadReader;
.super Ljava/lang/Object;
.source "RtpPayloadReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpPayloadReader$Factory;
    }
.end annotation


# virtual methods
.method public abstract consume(Lcom/google/android/exoplr2avp/util/ParsableByteArray;JIZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ParserException;
        }
    .end annotation
.end method

.method public abstract createTracks(Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;I)V
.end method

.method public abstract onReceivingFirstPacket(JI)V
.end method

.method public abstract seek(JJ)V
.end method
