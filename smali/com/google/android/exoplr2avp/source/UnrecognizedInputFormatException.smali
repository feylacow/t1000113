.class public Lcom/google/android/exoplr2avp/source/UnrecognizedInputFormatException;
.super Lcom/google/android/exoplr2avp/ParserException;
.source "UnrecognizedInputFormatException.java"


# instance fields
.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 33
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/exoplr2avp/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZI)V

    .line 34
    iput-object p2, p0, Lcom/google/android/exoplr2avp/source/UnrecognizedInputFormatException;->uri:Landroid/net/Uri;

    return-void
.end method
