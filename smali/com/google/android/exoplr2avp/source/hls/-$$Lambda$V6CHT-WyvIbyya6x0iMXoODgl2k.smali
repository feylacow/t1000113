.class public final synthetic Lcom/google/android/exoplr2avp/source/hls/-$$Lambda$V6CHT-WyvIbyya6x0iMXoODgl2k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplr2avp/source/hls/HlsSampleStreamWrapper$Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplr2avp/source/hls/HlsSampleStreamWrapper$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/hls/-$$Lambda$V6CHT-WyvIbyya6x0iMXoODgl2k;->f$0:Lcom/google/android/exoplr2avp/source/hls/HlsSampleStreamWrapper$Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/hls/-$$Lambda$V6CHT-WyvIbyya6x0iMXoODgl2k;->f$0:Lcom/google/android/exoplr2avp/source/hls/HlsSampleStreamWrapper$Callback;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/source/hls/HlsSampleStreamWrapper$Callback;->onPrepared()V

    return-void
.end method
