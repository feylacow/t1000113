.class public final Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;
.super Ljava/lang/Object;
.source "WebvttCssStyle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle$FontSizeUnit;,
        Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle$StyleFlags;
    }
.end annotation


# static fields
.field public static final FONT_SIZE_UNIT_EM:I = 0x2

.field public static final FONT_SIZE_UNIT_PERCENT:I = 0x3

.field public static final FONT_SIZE_UNIT_PIXEL:I = 0x1

.field private static final OFF:I = 0x0

.field private static final ON:I = 0x1

.field public static final STYLE_BOLD:I = 0x1

.field public static final STYLE_BOLD_ITALIC:I = 0x3

.field public static final STYLE_ITALIC:I = 0x2

.field public static final STYLE_NORMAL:I = 0x0

.field public static final UNSPECIFIED:I = -0x1


# instance fields
.field private backgroundColor:I

.field private bold:I

.field private combineUpright:Z

.field private fontColor:I

.field private fontFamily:Ljava/lang/String;

.field private fontSize:F

.field private fontSizeUnit:I

.field private hasBackgroundColor:Z

.field private hasFontColor:Z

.field private italic:I

.field private linethrough:I

.field private rubyPosition:I

.field private targetClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private targetId:Ljava/lang/String;

.field private targetTag:Ljava/lang/String;

.field private targetVoice:Ljava/lang/String;

.field private underline:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 108
    iput-object v0, p0, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;->targetId:Ljava/lang/String;

    .line 109
    iput-object v0, p0, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;->targetTag:Ljava/lang/String;

    .line 110
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;->targetClasses:Ljava/util/Set;

    .line 111
    iput-object v0, p0, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;->targetVoice:Ljava/lang/String;

    const/4 v0, 0x0

    .line 112
    iput-object v0, p0, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;->fontFamily:Ljava/lang/String;

    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;->hasFontColor:Z

    .line 114
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;->hasBackgroundColor:Z

    const/4 v1, -0x1

    .line 115
    iput v1, p0, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;->linethrough:I

    .line 116
    iput v1, p0, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;->underline:I

    .line 117
    iput v1, p0, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;->bold:I

    .line 118
    iput v1, p0, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;->italic:I

    .line 119
    iput v1, p0, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;->fontSizeUnit:I

    .line 120
    iput v1, p0, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;->rubyPosition:I

    .line 121
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;->combineUpright:Z

    return-void
.end method

.method private static updateScoreForMatch(ILjava/lang/String;Ljava/lang/String;I)I
    .locals 1

    .line 304
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 307
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    add-int v0, p0, p3

    :cond_1
    return v0

    :cond_2
    :goto_0
    return p0
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 2

    .line 250
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;->hasBackgroundColor:Z

    if-eqz v0, :cond_0

    .line 253
    iget v0, p0, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;->backgroundColor:I

    return v0

    .line 251
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Background color not defined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCombineUpright()Z
    .locals 1

    .line 299
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;->combineUpright:Z

    return v0
.end method

.method public getFontColor()I
    .locals 2

    .line 233
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;->hasFontColor:Z

    if-eqz v0, :cond_0

    .line 236
    iget v0, p0, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;->fontColor:I

    return v0

    .line 234
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Font color not defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFontFamily()Ljava/lang/String;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;->fontFamily:Ljava/lang/String;

    return-object v0
.end method

.method public getFontSize()F
    .locals 1

    .line 281
    iget v0, p0, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;->fontSize:F

    return v0
.end method

.method public getFontSizeUnit()I
    .locals 1

    .line 277
    iget v0, p0, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;->fontSizeUnit:I

    return v0
.end method

.method public getRubyPosition()I
    .locals 1

    .line 290
    iget v0, p0, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;->rubyPosition:I

    return v0
.end method

.method public getSpecificityScore(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;->targetId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;->targetTag:Ljava/lang/String;

    .line 162
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;->targetClasses:Ljava/util/Set;

    .line 163
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;->targetVoice:Ljava/lang/String;

    .line 164
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;->targetId:Ljava/lang/String;

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    invoke-static {v2, v0, p1, v1}, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;->updateScoreForMatch(ILjava/lang/String;Ljava/lang/String;I)I

    move-result p1

    .line 171
    iget-object v0, p0, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;->targetTag:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {p1, v0, p2, v1}, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;->updateScoreForMatch(ILjava/lang/String;Ljava/lang/String;I)I

    move-result p1

    .line 172
    iget-object p2, p0, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;->targetVoice:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {p1, p2, p4, v0}, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;->updateScoreForMatch(ILjava/lang/String;Ljava/lang/String;I)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    .line 173
    iget-object p2, p0, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;->targetClasses:Ljava/util/Set;

    invoke-interface {p3, p2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 176
    :cond_1
    iget-object p2, p0, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;->targetClasses:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    mul-int/lit8 p2, p2, 0x4

    add-int/2addr p1, p2

    return p1

    :cond_2
    :goto_0
    return v2
.end method

.method public getStyle()I
    .locals 4

    .line 188
    iget v0, p0, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;->bold:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v2, p0, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;->italic:I

    if-ne v2, v1, :cond_0

    return v1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 191
    :goto_0
    iget v3, p0, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;->italic:I

    if-ne v3, v2, :cond_2

    const/4 v1, 0x2

    :cond_2
    or-int/2addr v0, v1

    return v0
.end method

.method public hasBackgroundColor()Z
    .locals 1

    .line 263
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;->hasBackgroundColor:Z

    return v0
.end method

.method public hasFontColor()Z
    .locals 1

    .line 246
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;->hasFontColor:Z

    return v0
.end method

.method public isLinethrough()Z
    .locals 2

    .line 195
    iget v0, p0, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;->linethrough:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isUnderline()Z
    .locals 2

    .line 204
    iget v0, p0, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;->underline:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setBackgroundColor(I)Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;
    .locals 0

    .line 257
    iput p1, p0, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;->backgroundColor:I

    const/4 p1, 0x1

    .line 258
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;->hasBackgroundColor:Z

    return-object p0
.end method

.method public setBold(Z)Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;
    .locals 0

    .line 213
    iput p1, p0, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;->bold:I

    return-object p0
.end method

.method public setCombineUpright(Z)Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;
    .locals 0

    .line 294
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;->combineUpright:Z

    return-object p0
.end method

.method public setFontColor(I)Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;
    .locals 0

    .line 240
    iput p1, p0, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;->fontColor:I

    const/4 p1, 0x1

    .line 241
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;->hasFontColor:Z

    return-object p0
.end method

.method public setFontFamily(Ljava/lang/String;)Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 228
    :cond_0
    invoke-static {p1}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;->fontFamily:Ljava/lang/String;

    return-object p0
.end method

.method public setFontSize(F)Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;
    .locals 0

    .line 267
    iput p1, p0, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;->fontSize:F

    return-object p0
.end method

.method public setFontSizeUnit(I)Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;
    .locals 0

    .line 272
    iput p1, p0, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;->fontSizeUnit:I

    return-object p0
.end method

.method public setItalic(Z)Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;
    .locals 0

    .line 218
    iput p1, p0, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;->italic:I

    return-object p0
.end method

.method public setLinethrough(Z)Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;
    .locals 0

    .line 199
    iput p1, p0, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;->linethrough:I

    return-object p0
.end method

.method public setRubyPosition(I)Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;
    .locals 0

    .line 285
    iput p1, p0, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;->rubyPosition:I

    return-object p0
.end method

.method public setTargetClasses([Ljava/lang/String;)V
    .locals 1

    .line 133
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;->targetClasses:Ljava/util/Set;

    return-void
.end method

.method public setTargetId(Ljava/lang/String;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;->targetId:Ljava/lang/String;

    return-void
.end method

.method public setTargetTagName(Ljava/lang/String;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;->targetTag:Ljava/lang/String;

    return-void
.end method

.method public setTargetVoice(Ljava/lang/String;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;->targetVoice:Ljava/lang/String;

    return-void
.end method

.method public setUnderline(Z)Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;
    .locals 0

    .line 208
    iput p1, p0, Lcom/google/android/exoplr2avp/text/webvtt/WebvttCssStyle;->underline:I

    return-object p0
.end method
