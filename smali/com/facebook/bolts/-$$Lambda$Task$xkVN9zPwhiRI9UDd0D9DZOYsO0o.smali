.class public final synthetic Lcom/facebook/bolts/-$$Lambda$Task$xkVN9zPwhiRI9UDd0D9DZOYsO0o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/facebook/bolts/Continuation;


# static fields
.field public static final synthetic INSTANCE:Lcom/facebook/bolts/-$$Lambda$Task$xkVN9zPwhiRI9UDd0D9DZOYsO0o;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/bolts/-$$Lambda$Task$xkVN9zPwhiRI9UDd0D9DZOYsO0o;

    invoke-direct {v0}, Lcom/facebook/bolts/-$$Lambda$Task$xkVN9zPwhiRI9UDd0D9DZOYsO0o;-><init>()V

    sput-object v0, Lcom/facebook/bolts/-$$Lambda$Task$xkVN9zPwhiRI9UDd0D9DZOYsO0o;->INSTANCE:Lcom/facebook/bolts/-$$Lambda$Task$xkVN9zPwhiRI9UDd0D9DZOYsO0o;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final then(Lcom/facebook/bolts/Task;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/facebook/bolts/Task;->lambda$xkVN9zPwhiRI9UDd0D9DZOYsO0o(Lcom/facebook/bolts/Task;)Lcom/facebook/bolts/Task;

    move-result-object p1

    return-object p1
.end method
