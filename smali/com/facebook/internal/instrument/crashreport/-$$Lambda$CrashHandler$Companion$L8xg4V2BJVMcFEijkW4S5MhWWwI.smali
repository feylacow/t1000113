.class public final synthetic Lcom/facebook/internal/instrument/crashreport/-$$Lambda$CrashHandler$Companion$L8xg4V2BJVMcFEijkW4S5MhWWwI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/internal/instrument/crashreport/-$$Lambda$CrashHandler$Companion$L8xg4V2BJVMcFEijkW4S5MhWWwI;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onCompleted(Lcom/facebook/GraphResponse;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/internal/instrument/crashreport/-$$Lambda$CrashHandler$Companion$L8xg4V2BJVMcFEijkW4S5MhWWwI;->f$0:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/facebook/internal/instrument/crashreport/CrashHandler$Companion;->lambda$L8xg4V2BJVMcFEijkW4S5MhWWwI(Ljava/util/List;Lcom/facebook/GraphResponse;)V

    return-void
.end method
