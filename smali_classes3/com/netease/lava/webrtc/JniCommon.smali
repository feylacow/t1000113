.class public Lcom/netease/lava/webrtc/JniCommon;
.super Ljava/lang/Object;
.source "JniCommon.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native nativeAddRef(J)V
.end method

.method public static native nativeAllocateByteBuffer(I)Ljava/nio/ByteBuffer;
.end method

.method public static native nativeFreeByteBuffer(Ljava/nio/ByteBuffer;)V
.end method

.method public static native nativeReleaseRef(J)V
.end method
