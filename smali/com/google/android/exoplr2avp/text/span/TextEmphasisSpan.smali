.class public final Lcom/google/android/exoplr2avp/text/span/TextEmphasisSpan;
.super Ljava/lang/Object;
.source "TextEmphasisSpan.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/text/span/LanguageFeatureSpan;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/text/span/TextEmphasisSpan$MarkFill;,
        Lcom/google/android/exoplr2avp/text/span/TextEmphasisSpan$MarkShape;
    }
.end annotation


# static fields
.field public static final MARK_FILL_FILLED:I = 0x1

.field public static final MARK_FILL_OPEN:I = 0x2

.field public static final MARK_FILL_UNKNOWN:I = 0x0

.field public static final MARK_SHAPE_CIRCLE:I = 0x1

.field public static final MARK_SHAPE_DOT:I = 0x2

.field public static final MARK_SHAPE_NONE:I = 0x0

.field public static final MARK_SHAPE_SESAME:I = 0x3


# instance fields
.field public markFill:I

.field public markShape:I

.field public final position:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput p1, p0, Lcom/google/android/exoplr2avp/text/span/TextEmphasisSpan;->markShape:I

    .line 95
    iput p2, p0, Lcom/google/android/exoplr2avp/text/span/TextEmphasisSpan;->markFill:I

    .line 96
    iput p3, p0, Lcom/google/android/exoplr2avp/text/span/TextEmphasisSpan;->position:I

    return-void
.end method
