.class Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$6$1;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$6;->onViewDetachedFromWindow(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$6;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$6;)V
    .locals 0

    .line 703
    iput-object p1, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$6$1;->this$1:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 706
    iget-object v0, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$6$1;->this$1:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$6;

    iget-object v0, v0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$6;->this$0:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->onViewHidden(I)V

    return-void
.end method
