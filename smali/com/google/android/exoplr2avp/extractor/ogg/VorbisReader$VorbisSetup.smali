.class final Lcom/google/android/exoplr2avp/extractor/ogg/VorbisReader$VorbisSetup;
.super Ljava/lang/Object;
.source "VorbisReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/extractor/ogg/VorbisReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "VorbisSetup"
.end annotation


# instance fields
.field public final commentHeader:Lcom/google/android/exoplr2avp/extractor/VorbisUtil$CommentHeader;

.field public final iLogModes:I

.field public final idHeader:Lcom/google/android/exoplr2avp/extractor/VorbisUtil$VorbisIdHeader;

.field public final modes:[Lcom/google/android/exoplr2avp/extractor/VorbisUtil$Mode;

.field public final setupHeaderData:[B


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/extractor/VorbisUtil$VorbisIdHeader;Lcom/google/android/exoplr2avp/extractor/VorbisUtil$CommentHeader;[B[Lcom/google/android/exoplr2avp/extractor/VorbisUtil$Mode;I)V
    .locals 0

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput-object p1, p0, Lcom/google/android/exoplr2avp/extractor/ogg/VorbisReader$VorbisSetup;->idHeader:Lcom/google/android/exoplr2avp/extractor/VorbisUtil$VorbisIdHeader;

    .line 220
    iput-object p2, p0, Lcom/google/android/exoplr2avp/extractor/ogg/VorbisReader$VorbisSetup;->commentHeader:Lcom/google/android/exoplr2avp/extractor/VorbisUtil$CommentHeader;

    .line 221
    iput-object p3, p0, Lcom/google/android/exoplr2avp/extractor/ogg/VorbisReader$VorbisSetup;->setupHeaderData:[B

    .line 222
    iput-object p4, p0, Lcom/google/android/exoplr2avp/extractor/ogg/VorbisReader$VorbisSetup;->modes:[Lcom/google/android/exoplr2avp/extractor/VorbisUtil$Mode;

    .line 223
    iput p5, p0, Lcom/google/android/exoplr2avp/extractor/ogg/VorbisReader$VorbisSetup;->iLogModes:I

    return-void
.end method
