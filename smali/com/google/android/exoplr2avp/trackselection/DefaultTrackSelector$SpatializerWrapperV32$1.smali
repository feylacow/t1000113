.class Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$SpatializerWrapperV32$1;
.super Ljava/lang/Object;
.source "DefaultTrackSelector.java"

# interfaces
.implements Landroid/media/Spatializer$OnSpatializerStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$SpatializerWrapperV32;->ensureInitialized(Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$SpatializerWrapperV32;

.field final synthetic val$defaultTrackSelector:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;


# direct methods
.method constructor <init>(Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$SpatializerWrapperV32;Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;)V
    .locals 0

    .line 3653
    iput-object p1, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$SpatializerWrapperV32$1;->this$0:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$SpatializerWrapperV32;

    iput-object p2, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$SpatializerWrapperV32$1;->val$defaultTrackSelector:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpatializerAvailableChanged(Landroid/media/Spatializer;Z)V
    .locals 0

    .line 3661
    iget-object p1, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$SpatializerWrapperV32$1;->val$defaultTrackSelector:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->access$2500(Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;)V

    return-void
.end method

.method public onSpatializerEnabledChanged(Landroid/media/Spatializer;Z)V
    .locals 0

    .line 3656
    iget-object p1, p0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$SpatializerWrapperV32$1;->val$defaultTrackSelector:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->access$2500(Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;)V

    return-void
.end method
