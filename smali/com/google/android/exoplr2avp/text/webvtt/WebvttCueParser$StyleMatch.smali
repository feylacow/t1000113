.class final Lcom/google/android/exoplr2avp/text/webvtt/WebvttCueParser$StyleMatch;
.super Ljava/lang/Object;
.source "WebvttCueParser.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/text/webvtt/WebvttCueParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StyleMatch"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/exoplr2avp/text/webvtt/WebvttCueParser$StyleMatch;",
        ">;"
    }
.end annotation


# instance fields
.field public final score:I

.field public final style:Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;


# direct methods
.method public constructor <init>(ILcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;)V
    .locals 0

    .line 912
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 913
    iput p1, p0, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCueParser$StyleMatch;->score:I

    .line 914
    iput-object p2, p0, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCueParser$StyleMatch;->style:Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/android/exoplr2avp/text/webvtt/WebvttCueParser$StyleMatch;)I
    .locals 1

    .line 919
    iget v0, p0, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCueParser$StyleMatch;->score:I

    iget p1, p1, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCueParser$StyleMatch;->score:I

    invoke-static {v0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 907
    check-cast p1, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCueParser$StyleMatch;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCueParser$StyleMatch;->compareTo(Lcom/google/android/exoplr2avp/text/webvtt/WebvttCueParser$StyleMatch;)I

    move-result p1

    return p1
.end method
