.class public final synthetic Lcom/facebook/-$$Lambda$GraphRequest$Companion$l5ck8omUo8I20DOHSZnXIO2ZNnk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# instance fields
.field public final synthetic f$0:Lcom/facebook/GraphRequest$GraphJSONObjectCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/GraphRequest$GraphJSONObjectCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/-$$Lambda$GraphRequest$Companion$l5ck8omUo8I20DOHSZnXIO2ZNnk;->f$0:Lcom/facebook/GraphRequest$GraphJSONObjectCallback;

    return-void
.end method


# virtual methods
.method public final onCompleted(Lcom/facebook/GraphResponse;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/-$$Lambda$GraphRequest$Companion$l5ck8omUo8I20DOHSZnXIO2ZNnk;->f$0:Lcom/facebook/GraphRequest$GraphJSONObjectCallback;

    invoke-static {v0, p1}, Lcom/facebook/GraphRequest$Companion;->lambda$l5ck8omUo8I20DOHSZnXIO2ZNnk(Lcom/facebook/GraphRequest$GraphJSONObjectCallback;Lcom/facebook/GraphResponse;)V

    return-void
.end method
