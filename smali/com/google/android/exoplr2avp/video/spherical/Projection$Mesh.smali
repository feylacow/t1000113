.class public final Lcom/google/android/exoplr2avp/video/spherical/Projection$Mesh;
.super Ljava/lang/Object;
.source "Projection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/video/spherical/Projection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mesh"
.end annotation


# instance fields
.field private final subMeshes:[Lcom/google/android/exoplr2avp/video/spherical/Projection$SubMesh;


# direct methods
.method public varargs constructor <init>([Lcom/google/android/exoplr2avp/video/spherical/Projection$SubMesh;)V
    .locals 0

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput-object p1, p0, Lcom/google/android/exoplr2avp/video/spherical/Projection$Mesh;->subMeshes:[Lcom/google/android/exoplr2avp/video/spherical/Projection$SubMesh;

    return-void
.end method


# virtual methods
.method public getSubMesh(I)Lcom/google/android/exoplr2avp/video/spherical/Projection$SubMesh;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/google/android/exoplr2avp/video/spherical/Projection$Mesh;->subMeshes:[Lcom/google/android/exoplr2avp/video/spherical/Projection$SubMesh;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getSubMeshCount()I
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/google/android/exoplr2avp/video/spherical/Projection$Mesh;->subMeshes:[Lcom/google/android/exoplr2avp/video/spherical/Projection$SubMesh;

    array-length v0, v0

    return v0
.end method
