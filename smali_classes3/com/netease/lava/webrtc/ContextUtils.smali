.class public Lcom/netease/lava/webrtc/ContextUtils;
.super Ljava/lang/Object;
.source "ContextUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContextUtils"

.field private static applicationContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 44
    sget-object v0, Lcom/netease/lava/webrtc/ContextUtils;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 34
    sput-object p0, Lcom/netease/lava/webrtc/ContextUtils;->applicationContext:Landroid/content/Context;

    return-void

    .line 31
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Application context cannot be null for ContextUtils.initialize."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
