.class public final synthetic Lcom/facebook/share/internal/-$$Lambda$ShareInternalUtility$pnepXcdg4MhlNXGJDYyfF5ts6qw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/facebook/internal/CallbackManagerImpl$Callback;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/facebook/share/internal/-$$Lambda$ShareInternalUtility$pnepXcdg4MhlNXGJDYyfF5ts6qw;->f$0:I

    return-void
.end method


# virtual methods
.method public final onActivityResult(ILandroid/content/Intent;)Z
    .locals 1

    iget v0, p0, Lcom/facebook/share/internal/-$$Lambda$ShareInternalUtility$pnepXcdg4MhlNXGJDYyfF5ts6qw;->f$0:I

    invoke-static {v0, p1, p2}, Lcom/facebook/share/internal/ShareInternalUtility;->lambda$pnepXcdg4MhlNXGJDYyfF5ts6qw(IILandroid/content/Intent;)Z

    move-result p1

    return p1
.end method
