.class Lnet/aihelp/ui/widget/tabs/TabLayoutMediator$TabLayoutOnPageChangeCallback;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "TabLayoutMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TabLayoutOnPageChangeCallback"
.end annotation


# instance fields
.field private previousScrollState:I

.field private scrollState:I

.field private final tabLayoutRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lnet/aihelp/ui/widget/tabs/TabLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lnet/aihelp/ui/widget/tabs/TabLayout;)V
    .locals 1

    .line 197
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    .line 198
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator$TabLayoutOnPageChangeCallback;->tabLayoutRef:Ljava/lang/ref/WeakReference;

    .line 199
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator$TabLayoutOnPageChangeCallback;->reset()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 204
    iget v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator$TabLayoutOnPageChangeCallback;->scrollState:I

    iput v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator$TabLayoutOnPageChangeCallback;->previousScrollState:I

    .line 205
    iput p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator$TabLayoutOnPageChangeCallback;->scrollState:I

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 5

    .line 210
    iget-object p3, p0, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator$TabLayoutOnPageChangeCallback;->tabLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/aihelp/ui/widget/tabs/TabLayout;

    if-eqz p3, :cond_4

    .line 214
    iget v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator$TabLayoutOnPageChangeCallback;->scrollState:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    iget v4, p0, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator$TabLayoutOnPageChangeCallback;->previousScrollState:I

    if-ne v4, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    if-ne v0, v2, :cond_2

    .line 219
    iget v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator$TabLayoutOnPageChangeCallback;->previousScrollState:I

    if-eqz v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    .line 221
    :cond_3
    invoke-virtual {p3, p1, p2, v4, v1}, Lnet/aihelp/ui/widget/tabs/TabLayout;->setScrollPosition(IFZZ)V

    :cond_4
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    .line 227
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator$TabLayoutOnPageChangeCallback;->tabLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/aihelp/ui/widget/tabs/TabLayout;

    if-eqz v0, :cond_2

    .line 229
    invoke-virtual {v0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v1

    if-eq v1, p1, :cond_2

    .line 230
    invoke-virtual {v0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->getTabCount()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 233
    iget v1, p0, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator$TabLayoutOnPageChangeCallback;->scrollState:I

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator$TabLayoutOnPageChangeCallback;->previousScrollState:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 237
    :goto_1
    invoke-virtual {v0, p1}, Lnet/aihelp/ui/widget/tabs/TabLayout;->getTabAt(I)Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lnet/aihelp/ui/widget/tabs/TabLayout;->selectTab(Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;Z)V

    :cond_2
    return-void
.end method

.method reset()V
    .locals 1

    const/4 v0, 0x0

    .line 242
    iput v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator$TabLayoutOnPageChangeCallback;->scrollState:I

    iput v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator$TabLayoutOnPageChangeCallback;->previousScrollState:I

    return-void
.end method
