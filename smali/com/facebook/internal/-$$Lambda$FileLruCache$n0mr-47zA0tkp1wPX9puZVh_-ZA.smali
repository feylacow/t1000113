.class public final synthetic Lcom/facebook/internal/-$$Lambda$FileLruCache$n0mr-47zA0tkp1wPX9puZVh_-ZA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:[Ljava/io/File;


# direct methods
.method public synthetic constructor <init>([Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/internal/-$$Lambda$FileLruCache$n0mr-47zA0tkp1wPX9puZVh_-ZA;->f$0:[Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/internal/-$$Lambda$FileLruCache$n0mr-47zA0tkp1wPX9puZVh_-ZA;->f$0:[Ljava/io/File;

    invoke-static {v0}, Lcom/facebook/internal/FileLruCache;->lambda$n0mr-47zA0tkp1wPX9puZVh_-ZA([Ljava/io/File;)V

    return-void
.end method
