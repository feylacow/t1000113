.class Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$1;
.super Ljava/lang/Thread;
.source "DefaultAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->flush()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;

.field final synthetic val$toRelease:Landroid/media/AudioTrack;


# direct methods
.method constructor <init>(Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;Ljava/lang/String;Landroid/media/AudioTrack;)V
    .locals 0

    .line 1427
    iput-object p1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$1;->this$0:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;

    iput-object p3, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$1;->val$toRelease:Landroid/media/AudioTrack;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1431
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$1;->val$toRelease:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 1432
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$1;->val$toRelease:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1434
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$1;->this$0:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->access$800(Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$1;->this$0:Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;

    invoke-static {v1}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;->access$800(Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;)Landroid/os/ConditionVariable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 1435
    throw v0
.end method
