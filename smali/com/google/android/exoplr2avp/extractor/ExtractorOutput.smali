.class public interface abstract Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;
.super Ljava/lang/Object;
.source "ExtractorOutput.java"


# static fields
.field public static final PLACEHOLDER:Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/google/android/exoplr2avp/extractor/ExtractorOutput$1;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/extractor/ExtractorOutput$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;->PLACEHOLDER:Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;

    return-void
.end method


# virtual methods
.method public abstract endTracks()V
.end method

.method public abstract seekMap(Lcom/google/android/exoplr2avp/extractor/SeekMap;)V
.end method

.method public abstract track(II)Lcom/google/android/exoplr2avp/extractor/TrackOutput;
.end method
