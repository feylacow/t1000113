.class final Lcom/google/android/exoplr2avp/extractor/mp4/AtomParsers$StsdData;
.super Ljava/lang/Object;
.source "AtomParsers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/extractor/mp4/AtomParsers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StsdData"
.end annotation


# static fields
.field public static final STSD_HEADER_SIZE:I = 0x8


# instance fields
.field public format:Lcom/google/android/exoplr2avp/Format;

.field public nalUnitLengthFieldLength:I

.field public requiredSampleTransformation:I

.field public final trackEncryptionBoxes:[Lcom/google/android/exoplr2avp/extractor/mp4/TrackEncryptionBox;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1936
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1937
    new-array p1, p1, [Lcom/google/android/exoplr2avp/extractor/mp4/TrackEncryptionBox;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lcom/google/android/exoplr2avp/extractor/mp4/TrackEncryptionBox;

    const/4 p1, 0x0

    .line 1938
    iput p1, p0, Lcom/google/android/exoplr2avp/extractor/mp4/AtomParsers$StsdData;->requiredSampleTransformation:I

    return-void
.end method
