.class public final Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;
.super Ljava/lang/Object;
.source "TabLayoutMediator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/ui/widget/tabs/TabLayoutMediator$PagerAdapterObserver;,
        Lnet/aihelp/ui/widget/tabs/TabLayoutMediator$ViewPagerOnTabSelectedListener;,
        Lnet/aihelp/ui/widget/tabs/TabLayoutMediator$TabLayoutOnPageChangeCallback;,
        Lnet/aihelp/ui/widget/tabs/TabLayoutMediator$TabConfigurationStrategy;
    }
.end annotation


# instance fields
.field private adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;"
        }
    .end annotation
.end field

.field private attached:Z

.field private final autoRefresh:Z

.field private onPageChangeCallback:Lnet/aihelp/ui/widget/tabs/TabLayoutMediator$TabLayoutOnPageChangeCallback;

.field private onTabSelectedListener:Lnet/aihelp/ui/widget/tabs/TabLayout$OnTabSelectedListener;

.field private pagerAdapterObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field private final smoothScroll:Z

.field private final tabConfigurationStrategy:Lnet/aihelp/ui/widget/tabs/TabLayoutMediator$TabConfigurationStrategy;

.field private final tabLayout:Lnet/aihelp/ui/widget/tabs/TabLayout;

.field private final viewPager:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method public constructor <init>(Lnet/aihelp/ui/widget/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lnet/aihelp/ui/widget/tabs/TabLayoutMediator$TabConfigurationStrategy;)V
    .locals 1

    const/4 v0, 0x1

    .line 79
    invoke-direct {p0, p1, p2, v0, p3}, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;-><init>(Lnet/aihelp/ui/widget/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;ZLnet/aihelp/ui/widget/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    return-void
.end method

.method public constructor <init>(Lnet/aihelp/ui/widget/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;ZLnet/aihelp/ui/widget/tabs/TabLayoutMediator$TabConfigurationStrategy;)V
    .locals 6

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    .line 87
    invoke-direct/range {v0 .. v5}, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;-><init>(Lnet/aihelp/ui/widget/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;ZZLnet/aihelp/ui/widget/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    return-void
.end method

.method public constructor <init>(Lnet/aihelp/ui/widget/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;ZZLnet/aihelp/ui/widget/tabs/TabLayoutMediator$TabConfigurationStrategy;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;->tabLayout:Lnet/aihelp/ui/widget/tabs/TabLayout;

    .line 97
    iput-object p2, p0, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 98
    iput-boolean p3, p0, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;->autoRefresh:Z

    .line 99
    iput-boolean p4, p0, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;->smoothScroll:Z

    .line 100
    iput-object p5, p0, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;->tabConfigurationStrategy:Lnet/aihelp/ui/widget/tabs/TabLayoutMediator$TabConfigurationStrategy;

    return-void
.end method


# virtual methods
.method public attach()V
    .locals 4

    .line 112
    iget-boolean v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;->attached:Z

    if-nez v0, :cond_2

    .line 115
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 120
    iput-boolean v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;->attached:Z

    .line 123
    new-instance v1, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator$TabLayoutOnPageChangeCallback;

    iget-object v2, p0, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;->tabLayout:Lnet/aihelp/ui/widget/tabs/TabLayout;

    invoke-direct {v1, v2}, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator$TabLayoutOnPageChangeCallback;-><init>(Lnet/aihelp/ui/widget/tabs/TabLayout;)V

    iput-object v1, p0, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;->onPageChangeCallback:Lnet/aihelp/ui/widget/tabs/TabLayoutMediator$TabLayoutOnPageChangeCallback;

    .line 124
    iget-object v2, p0, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v2, v1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 127
    new-instance v1, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator$ViewPagerOnTabSelectedListener;

    iget-object v2, p0, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    iget-boolean v3, p0, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;->smoothScroll:Z

    invoke-direct {v1, v2, v3}, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator$ViewPagerOnTabSelectedListener;-><init>(Landroidx/viewpager2/widget/ViewPager2;Z)V

    iput-object v1, p0, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;->onTabSelectedListener:Lnet/aihelp/ui/widget/tabs/TabLayout$OnTabSelectedListener;

    .line 128
    iget-object v2, p0, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;->tabLayout:Lnet/aihelp/ui/widget/tabs/TabLayout;

    invoke-virtual {v2, v1}, Lnet/aihelp/ui/widget/tabs/TabLayout;->addOnTabSelectedListener(Lnet/aihelp/ui/widget/tabs/TabLayout$OnTabSelectedListener;)V

    .line 132
    iget-boolean v1, p0, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;->autoRefresh:Z

    if-eqz v1, :cond_0

    .line 134
    new-instance v1, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator$PagerAdapterObserver;

    invoke-direct {v1, p0}, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator$PagerAdapterObserver;-><init>(Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;)V

    iput-object v1, p0, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;->pagerAdapterObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 135
    iget-object v2, p0, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 138
    :cond_0
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;->populateTabsFromPagerAdapter()V

    .line 141
    iget-object v1, p0, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;->tabLayout:Lnet/aihelp/ui/widget/tabs/TabLayout;

    iget-object v2, p0, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->setScrollPosition(IFZ)V

    return-void

    .line 117
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TabLayoutMediator attached before ViewPager2 has an adapter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TabLayoutMediator is already attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public detach()V
    .locals 3

    .line 150
    iget-boolean v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;->autoRefresh:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 151
    iget-object v2, p0, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;->pagerAdapterObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 152
    iput-object v1, p0, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;->pagerAdapterObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 154
    :cond_0
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;->tabLayout:Lnet/aihelp/ui/widget/tabs/TabLayout;

    iget-object v2, p0, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;->onTabSelectedListener:Lnet/aihelp/ui/widget/tabs/TabLayout$OnTabSelectedListener;

    invoke-virtual {v0, v2}, Lnet/aihelp/ui/widget/tabs/TabLayout;->removeOnTabSelectedListener(Lnet/aihelp/ui/widget/tabs/TabLayout$OnTabSelectedListener;)V

    .line 155
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v2, p0, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;->onPageChangeCallback:Lnet/aihelp/ui/widget/tabs/TabLayoutMediator$TabLayoutOnPageChangeCallback;

    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 156
    iput-object v1, p0, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;->onTabSelectedListener:Lnet/aihelp/ui/widget/tabs/TabLayout$OnTabSelectedListener;

    .line 157
    iput-object v1, p0, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;->onPageChangeCallback:Lnet/aihelp/ui/widget/tabs/TabLayoutMediator$TabLayoutOnPageChangeCallback;

    .line 158
    iput-object v1, p0, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    const/4 v0, 0x0

    .line 159
    iput-boolean v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;->attached:Z

    return-void
.end method

.method populateTabsFromPagerAdapter()V
    .locals 5

    .line 164
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;->tabLayout:Lnet/aihelp/ui/widget/tabs/TabLayout;

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->removeAllTabs()V

    .line 166
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_1

    .line 167
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 169
    iget-object v3, p0, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;->tabLayout:Lnet/aihelp/ui/widget/tabs/TabLayout;

    invoke-virtual {v3}, Lnet/aihelp/ui/widget/tabs/TabLayout;->newTab()Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;

    move-result-object v3

    .line 170
    iget-object v4, p0, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;->tabConfigurationStrategy:Lnet/aihelp/ui/widget/tabs/TabLayoutMediator$TabConfigurationStrategy;

    invoke-interface {v4, v3, v2}, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator$TabConfigurationStrategy;->onConfigureTab(Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;I)V

    .line 171
    iget-object v4, p0, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;->tabLayout:Lnet/aihelp/ui/widget/tabs/TabLayout;

    invoke-virtual {v4, v3, v1}, Lnet/aihelp/ui/widget/tabs/TabLayout;->addTab(Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    .line 175
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;->tabLayout:Lnet/aihelp/ui/widget/tabs/TabLayout;

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->getTabCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 176
    iget-object v1, p0, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 177
    iget-object v1, p0, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;->tabLayout:Lnet/aihelp/ui/widget/tabs/TabLayout;

    invoke-virtual {v1}, Lnet/aihelp/ui/widget/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 178
    iget-object v1, p0, Lnet/aihelp/ui/widget/tabs/TabLayoutMediator;->tabLayout:Lnet/aihelp/ui/widget/tabs/TabLayout;

    invoke-virtual {v1, v0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->getTabAt(I)Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->selectTab(Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;)V

    :cond_1
    return-void
.end method
