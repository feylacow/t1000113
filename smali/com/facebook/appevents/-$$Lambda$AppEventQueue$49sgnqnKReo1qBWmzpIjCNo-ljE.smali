.class public final synthetic Lcom/facebook/appevents/-$$Lambda$AppEventQueue$49sgnqnKReo1qBWmzpIjCNo-ljE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/facebook/appevents/-$$Lambda$AppEventQueue$49sgnqnKReo1qBWmzpIjCNo-ljE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/appevents/-$$Lambda$AppEventQueue$49sgnqnKReo1qBWmzpIjCNo-ljE;

    invoke-direct {v0}, Lcom/facebook/appevents/-$$Lambda$AppEventQueue$49sgnqnKReo1qBWmzpIjCNo-ljE;-><init>()V

    sput-object v0, Lcom/facebook/appevents/-$$Lambda$AppEventQueue$49sgnqnKReo1qBWmzpIjCNo-ljE;->INSTANCE:Lcom/facebook/appevents/-$$Lambda$AppEventQueue$49sgnqnKReo1qBWmzpIjCNo-ljE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lcom/facebook/appevents/AppEventQueue;->lambda$49sgnqnKReo1qBWmzpIjCNo-ljE()V

    return-void
.end method
