.class Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$14;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->startSlideInAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private previousAnimatedIntValue:I

.field final synthetic this$0:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;

.field final synthetic val$translationYBottom:I


# direct methods
.method constructor <init>(Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;I)V
    .locals 0

    .line 894
    iput-object p1, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$14;->this$0:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;

    iput p2, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$14;->val$translationYBottom:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 895
    iput p2, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$14;->previousAnimatedIntValue:I

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 899
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 900
    invoke-static {}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 903
    iget-object v0, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$14;->this$0:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;

    iget-object v0, v0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->view:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    iget v1, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$14;->previousAnimatedIntValue:I

    sub-int v1, p1, v1

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_0

    .line 906
    :cond_0
    iget-object v0, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$14;->this$0:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;

    iget-object v0, v0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->view:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setTranslationY(F)V

    .line 908
    :goto_0
    iput p1, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$14;->previousAnimatedIntValue:I

    return-void
.end method
