.class final Lcom/netease/htprotect/c/a/d$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/htprotect/c/a/d;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netease/htprotect/c/a/d;


# direct methods
.method constructor <init>(Lcom/netease/htprotect/c/a/d;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/htprotect/c/a/d$2;->b:Lcom/netease/htprotect/c/a/d;

    iput-object p2, p0, Lcom/netease/htprotect/c/a/d$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    iget-object p1, p0, Lcom/netease/htprotect/c/a/d$2;->a:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
