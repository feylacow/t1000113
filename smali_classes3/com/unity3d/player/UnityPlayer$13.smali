.class final Lcom/unity3d/player/UnityPlayer$13;
.super Lcom/unity3d/player/UnityPlayer$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer;->reportSoftInputIsVisible(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/unity3d/player/UnityPlayer;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer;Z)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$13;->b:Lcom/unity3d/player/UnityPlayer;

    iput-boolean p2, p0, Lcom/unity3d/player/UnityPlayer$13;->a:Z

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/unity3d/player/UnityPlayer$f;-><init>(Lcom/unity3d/player/UnityPlayer;B)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$13;->b:Lcom/unity3d/player/UnityPlayer;

    iget-boolean v1, p0, Lcom/unity3d/player/UnityPlayer$13;->a:Z

    invoke-static {v0, v1}, Lcom/unity3d/player/UnityPlayer;->access$3400(Lcom/unity3d/player/UnityPlayer;Z)V

    return-void
.end method
