.class Lnet/aihelp/ui/widget/tabs/TabLayoutMediator$PagerAdapterObserver;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "TabLayoutMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerAdapterObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator$PagerAdapterObserver;->this$0:Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 280
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator$PagerAdapterObserver;->this$0:Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;->populateTabsFromPagerAdapter()V

    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 0

    .line 285
    iget-object p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator$PagerAdapterObserver;->this$0:Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;

    invoke-virtual {p1}, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;->populateTabsFromPagerAdapter()V

    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 0

    .line 290
    iget-object p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator$PagerAdapterObserver;->this$0:Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;

    invoke-virtual {p1}, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;->populateTabsFromPagerAdapter()V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0

    .line 295
    iget-object p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator$PagerAdapterObserver;->this$0:Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;

    invoke-virtual {p1}, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;->populateTabsFromPagerAdapter()V

    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 0

    .line 305
    iget-object p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator$PagerAdapterObserver;->this$0:Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;

    invoke-virtual {p1}, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;->populateTabsFromPagerAdapter()V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0

    .line 300
    iget-object p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator$PagerAdapterObserver;->this$0:Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;

    invoke-virtual {p1}, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;->populateTabsFromPagerAdapter()V

    return-void
.end method
