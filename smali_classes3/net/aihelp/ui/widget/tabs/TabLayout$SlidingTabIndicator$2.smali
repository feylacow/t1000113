.class Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->updateOrRecreateIndicatorAnimation(ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;I)V
    .locals 0

    .line 2812
    iput-object p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator$2;->this$1:Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;

    iput p2, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator$2;->val$position:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 2820
    iget-object p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator$2;->this$1:Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;

    iget v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator$2;->val$position:I

    iput v0, p1, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->selectedPosition:I

    .line 2821
    iget-object p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator$2;->this$1:Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;

    const/4 v0, 0x0

    iput v0, p1, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->selectionOffset:F

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 2815
    iget-object p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator$2;->this$1:Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;

    iget v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator$2;->val$position:I

    iput v0, p1, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->selectedPosition:I

    return-void
.end method
