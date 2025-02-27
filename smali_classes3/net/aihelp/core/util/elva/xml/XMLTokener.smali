.class public Lnet/aihelp/core/util/elva/xml/XMLTokener;
.super Lorg/json/JSONTokener;
.source "XMLTokener.java"


# static fields
.field public static final entity:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 47
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lnet/aihelp/core/util/elva/xml/XMLTokener;->entity:Ljava/util/HashMap;

    .line 48
    sget-object v1, Lnet/aihelp/core/util/elva/xml/XML;->AMP:Ljava/lang/Character;

    const-string v2, "amp"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v1, Lnet/aihelp/core/util/elva/xml/XML;->APOS:Ljava/lang/Character;

    const-string v2, "apos"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v1, Lnet/aihelp/core/util/elva/xml/XML;->GT:Ljava/lang/Character;

    const-string v2, "gt"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v1, Lnet/aihelp/core/util/elva/xml/XML;->LT:Ljava/lang/Character;

    const-string v2, "lt"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v1, Lnet/aihelp/core/util/elva/xml/XML;->QUOT:Ljava/lang/Character;

    const-string v2, "quot"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 0

    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static unescapeEntity(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_5

    .line 167
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 171
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    .line 173
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x78

    if-eq v2, v3, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x58

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 178
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x2

    .line 175
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x10

    invoke-static {p0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    .line 180
    :goto_1
    new-instance v2, Ljava/lang/String;

    new-array v3, v1, [I

    aput p0, v3, v0

    invoke-direct {v2, v3, v0, v1}, Ljava/lang/String;-><init>([III)V

    return-object v2

    .line 182
    :cond_3
    sget-object v0, Lnet/aihelp/core/util/elva/xml/XMLTokener;->entity:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    if-nez v0, :cond_4

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3b

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 187
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_2
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public nextCDATA()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    :cond_0
    invoke-virtual {p0}, Lnet/aihelp/core/util/elva/xml/XMLTokener;->more()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    invoke-virtual {p0}, Lnet/aihelp/core/util/elva/xml/XMLTokener;->next()C

    move-result v1

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    if-ltz v1, :cond_0

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x5d

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 85
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v1, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_0

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "Unclosed CDATA"

    .line 90
    invoke-virtual {p0, v0}, Lnet/aihelp/core/util/elva/xml/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0
.end method

.method public nextContent()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 108
    :cond_0
    invoke-virtual {p0}, Lnet/aihelp/core/util/elva/xml/XMLTokener;->next()C

    move-result v0

    .line 109
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    const/16 v1, 0x3c

    if-ne v0, v1, :cond_2

    .line 114
    sget-object v0, Lnet/aihelp/core/util/elva/xml/XML;->LT:Ljava/lang/Character;

    return-object v0

    .line 116
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    if-nez v0, :cond_3

    .line 119
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    if-ne v0, v1, :cond_4

    .line 122
    invoke-virtual {p0}, Lnet/aihelp/core/util/elva/xml/XMLTokener;->back()V

    .line 123
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    const/16 v3, 0x26

    if-ne v0, v3, :cond_5

    .line 126
    invoke-virtual {p0, v0}, Lnet/aihelp/core/util/elva/xml/XMLTokener;->nextEntity(C)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 128
    :cond_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 130
    :goto_1
    invoke-virtual {p0}, Lnet/aihelp/core/util/elva/xml/XMLTokener;->next()C

    move-result v0

    goto :goto_0
.end method

.method public nextEntity(C)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 145
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    :goto_0
    invoke-virtual {p0}, Lnet/aihelp/core/util/elva/xml/XMLTokener;->next()C

    move-result v0

    .line 148
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x23

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0x3b

    if-ne v0, v1, :cond_1

    .line 156
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 157
    invoke-static {p1}, Lnet/aihelp/core/util/elva/xml/XMLTokener;->unescapeEntity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 153
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing \';\' in XML entity: &"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/aihelp/core/util/elva/xml/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object p1

    throw p1

    .line 149
    :cond_2
    :goto_1
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public nextMeta()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 207
    :cond_0
    invoke-virtual {p0}, Lnet/aihelp/core/util/elva/xml/XMLTokener;->next()C

    move-result v0

    .line 208
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_8

    const-string v1, "Unterminated string"

    const/16 v2, 0x27

    if-eq v0, v2, :cond_6

    const/16 v3, 0x2f

    if-eq v0, v3, :cond_5

    const/16 v4, 0x21

    if-eq v0, v4, :cond_4

    const/16 v5, 0x22

    if-eq v0, v5, :cond_6

    packed-switch v0, :pswitch_data_0

    .line 238
    :goto_0
    invoke-virtual {p0}, Lnet/aihelp/core/util/elva/xml/XMLTokener;->next()C

    move-result v0

    .line 239
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 240
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :cond_1
    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    if-eq v0, v3, :cond_2

    if-eq v0, v4, :cond_2

    if-eq v0, v5, :cond_2

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 253
    :cond_2
    :pswitch_0
    invoke-virtual {p0}, Lnet/aihelp/core/util/elva/xml/XMLTokener;->back()V

    .line 254
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 244
    :cond_3
    invoke-virtual {p0, v1}, Lnet/aihelp/core/util/elva/xml/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    .line 223
    :pswitch_1
    sget-object v0, Lnet/aihelp/core/util/elva/xml/XML;->QUEST:Ljava/lang/Character;

    return-object v0

    .line 215
    :pswitch_2
    sget-object v0, Lnet/aihelp/core/util/elva/xml/XML;->GT:Ljava/lang/Character;

    return-object v0

    .line 219
    :pswitch_3
    sget-object v0, Lnet/aihelp/core/util/elva/xml/XML;->EQ:Ljava/lang/Character;

    return-object v0

    .line 213
    :pswitch_4
    sget-object v0, Lnet/aihelp/core/util/elva/xml/XML;->LT:Ljava/lang/Character;

    return-object v0

    .line 221
    :cond_4
    sget-object v0, Lnet/aihelp/core/util/elva/xml/XML;->BANG:Ljava/lang/Character;

    return-object v0

    .line 217
    :cond_5
    sget-object v0, Lnet/aihelp/core/util/elva/xml/XML;->SLASH:Ljava/lang/Character;

    return-object v0

    .line 228
    :cond_6
    invoke-virtual {p0}, Lnet/aihelp/core/util/elva/xml/XMLTokener;->next()C

    move-result v2

    if-eqz v2, :cond_7

    if-ne v2, v0, :cond_6

    .line 233
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 230
    :cond_7
    invoke-virtual {p0, v1}, Lnet/aihelp/core/util/elva/xml/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    :cond_8
    const-string v0, "Misshaped meta tag"

    .line 211
    invoke-virtual {p0, v0}, Lnet/aihelp/core/util/elva/xml/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public nextToken()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 276
    :cond_0
    invoke-virtual {p0}, Lnet/aihelp/core/util/elva/xml/XMLTokener;->next()C

    move-result v0

    .line 277
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_b

    const/16 v1, 0x27

    if-eq v0, v1, :cond_7

    const/16 v2, 0x2f

    if-eq v0, v2, :cond_6

    const/16 v3, 0x21

    if-eq v0, v3, :cond_5

    const/16 v4, 0x22

    if-eq v0, v4, :cond_7

    packed-switch v0, :pswitch_data_0

    .line 318
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 320
    :goto_0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {p0}, Lnet/aihelp/core/util/elva/xml/XMLTokener;->next()C

    move-result v0

    .line 322
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 323
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_3

    if-eq v0, v2, :cond_2

    const/16 v6, 0x5b

    if-eq v0, v6, :cond_2

    const/16 v6, 0x5d

    if-eq v0, v6, :cond_2

    if-eq v0, v3, :cond_2

    if-eq v0, v4, :cond_3

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 335
    :cond_2
    :pswitch_0
    invoke-virtual {p0}, Lnet/aihelp/core/util/elva/xml/XMLTokener;->back()V

    .line 336
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    :pswitch_1
    const-string v0, "Bad character in a name"

    .line 340
    invoke-virtual {p0, v0}, Lnet/aihelp/core/util/elva/xml/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    .line 327
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 292
    :pswitch_2
    sget-object v0, Lnet/aihelp/core/util/elva/xml/XML;->QUEST:Ljava/lang/Character;

    return-object v0

    .line 284
    :pswitch_3
    sget-object v0, Lnet/aihelp/core/util/elva/xml/XML;->GT:Ljava/lang/Character;

    return-object v0

    .line 288
    :pswitch_4
    sget-object v0, Lnet/aihelp/core/util/elva/xml/XML;->EQ:Ljava/lang/Character;

    return-object v0

    :pswitch_5
    const-string v0, "Misplaced \'<\'"

    .line 282
    invoke-virtual {p0, v0}, Lnet/aihelp/core/util/elva/xml/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    .line 290
    :cond_5
    sget-object v0, Lnet/aihelp/core/util/elva/xml/XML;->BANG:Ljava/lang/Character;

    return-object v0

    .line 286
    :cond_6
    sget-object v0, Lnet/aihelp/core/util/elva/xml/XML;->SLASH:Ljava/lang/Character;

    return-object v0

    .line 299
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    :goto_1
    invoke-virtual {p0}, Lnet/aihelp/core/util/elva/xml/XMLTokener;->next()C

    move-result v2

    if-eqz v2, :cond_a

    if-ne v2, v0, :cond_8

    .line 306
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_8
    const/16 v3, 0x26

    if-ne v2, v3, :cond_9

    .line 309
    invoke-virtual {p0, v2}, Lnet/aihelp/core/util/elva/xml/XMLTokener;->nextEntity(C)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 311
    :cond_9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_a
    const-string v0, "Unterminated string"

    .line 303
    invoke-virtual {p0, v0}, Lnet/aihelp/core/util/elva/xml/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    :cond_b
    const-string v0, "Misshaped element"

    .line 280
    invoke-virtual {p0, v0}, Lnet/aihelp/core/util/elva/xml/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3c
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public skipPast(Ljava/lang/String;)V
    .locals 8

    .line 361
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 362
    new-array v1, v0, [C

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 370
    invoke-virtual {p0}, Lnet/aihelp/core/util/elva/xml/XMLTokener;->next()C

    move-result v4

    if-nez v4, :cond_0

    return-void

    .line 374
    :cond_0
    aput-char v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :cond_2
    :goto_1
    move v5, v3

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v0, :cond_5

    .line 386
    aget-char v6, v1, v5

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_3

    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    add-int/lit8 v5, v5, 0x1

    if-lt v5, v0, :cond_4

    sub-int/2addr v5, v0

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, 0x1

    :goto_3
    if-eqz v4, :cond_6

    return-void

    .line 404
    :cond_6
    invoke-virtual {p0}, Lnet/aihelp/core/util/elva/xml/XMLTokener;->next()C

    move-result v4

    if-nez v4, :cond_7

    return-void

    .line 412
    :cond_7
    aput-char v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    if-lt v3, v0, :cond_2

    sub-int/2addr v3, v0

    goto :goto_1
.end method
