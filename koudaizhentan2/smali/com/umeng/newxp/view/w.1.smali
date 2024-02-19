.class public Lcom/umeng/newxp/view/w;
.super Ljava/lang/Object;
.source "EncapsulatedList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/newxp/view/w$a;
    }
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field private b:Landroid/widget/ListView;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageView;

.field private f:Lcom/umeng/newxp/view/d;

.field private g:Landroid/view/animation/Animation;

.field private h:I

.field private i:Landroid/content/Context;

.field private j:Lcom/umeng/newxp/controller/ExchangeDataService;

.field private k:Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;"
        }
    .end annotation
.end field

.field private m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/umeng/newxp/controller/ExchangeDataService;",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x5

    iput v0, p0, Lcom/umeng/newxp/view/w;->h:I

    .line 47
    iput-object v4, p0, Lcom/umeng/newxp/view/w;->k:Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;

    .line 51
    iput-boolean v3, p0, Lcom/umeng/newxp/view/w;->m:Z

    .line 54
    iput-object p1, p0, Lcom/umeng/newxp/view/w;->i:Landroid/content/Context;

    .line 55
    iget-object v0, p0, Lcom/umeng/newxp/view/w;->i:Landroid/content/Context;

    iget-object v1, p0, Lcom/umeng/newxp/view/w;->i:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v1

    const-string v2, "umeng_xp_full_screen_list_layout"

    invoke-virtual {v1, v2}, Lcom/umeng/common/c;->e(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/newxp/view/w;->a:Landroid/view/View;

    .line 56
    iget-object v0, p0, Lcom/umeng/newxp/view/w;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/umeng/newxp/view/w;->i:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/newxp/a/c;->x(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/umeng/newxp/view/w;->b:Landroid/widget/ListView;

    .line 57
    iput-object p2, p0, Lcom/umeng/newxp/view/w;->j:Lcom/umeng/newxp/controller/ExchangeDataService;

    .line 58
    iput-boolean v3, p0, Lcom/umeng/newxp/view/w;->m:Z

    .line 60
    invoke-direct {p0}, Lcom/umeng/newxp/view/w;->b()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/newxp/view/w;->c:Landroid/view/View;

    .line 61
    iget-object v0, p0, Lcom/umeng/newxp/view/w;->c:Landroid/view/View;

    .line 62
    iget-object v1, p0, Lcom/umeng/newxp/view/w;->i:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/newxp/a/c;->I(Landroid/content/Context;)I

    move-result v1

    .line 61
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/umeng/newxp/view/w;->d:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lcom/umeng/newxp/view/w;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/umeng/newxp/view/w;->i:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/newxp/a/c;->z(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/umeng/newxp/view/w;->e:Landroid/widget/ImageView;

    .line 65
    iget-object v0, p0, Lcom/umeng/newxp/view/w;->i:Landroid/content/Context;

    .line 66
    iget-object v1, p0, Lcom/umeng/newxp/view/w;->i:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/newxp/a/a;->d(Landroid/content/Context;)I

    move-result v1

    .line 65
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/newxp/view/w;->g:Landroid/view/animation/Animation;

    .line 68
    new-instance v0, Lcom/umeng/newxp/view/x;

    invoke-direct {v0, p0}, Lcom/umeng/newxp/view/x;-><init>(Lcom/umeng/newxp/view/w;)V

    iput-object v0, p0, Lcom/umeng/newxp/view/w;->k:Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;

    .line 96
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 97
    iput-object p3, p0, Lcom/umeng/newxp/view/w;->l:Ljava/util/List;

    .line 98
    invoke-direct {p0}, Lcom/umeng/newxp/view/w;->c()V

    .line 111
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/umeng/newxp/view/w;->j:Lcom/umeng/newxp/controller/ExchangeDataService;

    const-string v1, ""

    iput-object v1, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/umeng/newxp/view/w;->j:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v1, p0, Lcom/umeng/newxp/view/w;->i:Landroid/content/Context;

    new-instance v2, Lcom/umeng/newxp/view/y;

    invoke-direct {v2, p0}, Lcom/umeng/newxp/view/y;-><init>(Lcom/umeng/newxp/view/w;)V

    invoke-virtual {v0, v1, v2}, Lcom/umeng/newxp/controller/ExchangeDataService;->requestDataAsyn(Landroid/content/Context;Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/umeng/newxp/view/w;)Landroid/view/View;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/umeng/newxp/view/w;->c:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/umeng/newxp/view/w;I)V
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lcom/umeng/newxp/view/w;->h:I

    return-void
.end method

.method static synthetic a(Lcom/umeng/newxp/view/w;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/umeng/newxp/view/w;->l:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/umeng/newxp/view/w;Z)V
    .locals 0

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/umeng/newxp/view/w;->m:Z

    return-void
.end method

.method private b()Landroid/view/View;
    .locals 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/umeng/newxp/view/w;->i:Landroid/content/Context;

    .line 115
    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 114
    check-cast v0, Landroid/view/LayoutInflater;

    .line 116
    iget-object v1, p0, Lcom/umeng/newxp/view/w;->i:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/newxp/a/d;->x(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 117
    return-object v0
.end method

.method static synthetic b(Lcom/umeng/newxp/view/w;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/umeng/newxp/view/w;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic c(Lcom/umeng/newxp/view/w;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/umeng/newxp/view/w;->g:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private c()V
    .locals 9

    .prologue
    const/4 v7, 0x7

    const/4 v5, 0x0

    .line 121
    iget-object v0, p0, Lcom/umeng/newxp/view/w;->j:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v0, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->timeLine:[J

    const/4 v1, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 122
    iget-object v0, p0, Lcom/umeng/newxp/view/w;->c:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/umeng/newxp/view/w;->c:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setClickable(Z)V

    .line 124
    iget-object v0, p0, Lcom/umeng/newxp/view/w;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/umeng/newxp/view/w;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 125
    new-instance v0, Lcom/umeng/newxp/view/z;

    iget-object v2, p0, Lcom/umeng/newxp/view/w;->b:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/umeng/newxp/view/w;->i:Landroid/content/Context;

    .line 126
    iget-object v1, p0, Lcom/umeng/newxp/view/w;->i:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/newxp/a/d;->m(Landroid/content/Context;)I

    move-result v4

    iget-object v6, p0, Lcom/umeng/newxp/view/w;->l:Ljava/util/List;

    .line 127
    iget-object v8, p0, Lcom/umeng/newxp/view/w;->j:Lcom/umeng/newxp/controller/ExchangeDataService;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/umeng/newxp/view/z;-><init>(Lcom/umeng/newxp/view/w;Landroid/widget/ListView;Landroid/content/Context;IZLjava/util/List;ILcom/umeng/newxp/controller/ExchangeDataService;)V

    .line 125
    iput-object v0, p0, Lcom/umeng/newxp/view/w;->f:Lcom/umeng/newxp/view/d;

    .line 146
    iget-object v0, p0, Lcom/umeng/newxp/view/w;->f:Lcom/umeng/newxp/view/d;

    iget-object v1, p0, Lcom/umeng/newxp/view/w;->k:Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/view/d;->a(Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;)V

    .line 148
    new-instance v0, Lcom/umeng/newxp/view/w$a;

    invoke-direct {v0, p0}, Lcom/umeng/newxp/view/w$a;-><init>(Lcom/umeng/newxp/view/w;)V

    .line 150
    iget-object v1, p0, Lcom/umeng/newxp/view/w;->b:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/umeng/newxp/view/w;->b:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 152
    iget-object v0, p0, Lcom/umeng/newxp/view/w;->j:Lcom/umeng/newxp/controller/ExchangeDataService;

    iput v5, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->page_index:I

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/umeng/newxp/view/w;->j:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v0, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->timeLine:[J

    const/4 v1, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 158
    new-instance v0, Lcom/umeng/newxp/net/e$a;

    iget-object v1, p0, Lcom/umeng/newxp/view/w;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/umeng/newxp/net/e$a;-><init>(Landroid/content/Context;)V

    .line 159
    invoke-virtual {v0, v5}, Lcom/umeng/newxp/net/e$a;->a(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/umeng/newxp/net/e$a;->b(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/umeng/newxp/view/w;->j:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-virtual {v1}, Lcom/umeng/newxp/controller/ExchangeDataService;->getTimeConsuming()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->d(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 161
    iget v1, p0, Lcom/umeng/newxp/view/w;->h:I

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->d(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/umeng/newxp/net/e$a;->c(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v1

    .line 162
    iget-object v0, p0, Lcom/umeng/newxp/view/w;->l:Ljava/util/List;

    new-array v2, v5, [Lcom/umeng/newxp/Promoter;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/newxp/Promoter;

    invoke-virtual {v1, v0}, Lcom/umeng/newxp/net/e$a;->a([Lcom/umeng/newxp/Promoter;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lcom/umeng/newxp/view/w;->i:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/newxp/view/w;->j:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v1, v2}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->b(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/newxp/view/w;->j:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v1, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/newxp/view/w;->j:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v1, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->c(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Lcom/umeng/newxp/net/e$a;->a()Lcom/umeng/newxp/net/e;

    move-result-object v0

    .line 165
    new-instance v1, Lcom/umeng/newxp/net/XpReportClient;

    iget-object v2, p0, Lcom/umeng/newxp/view/w;->i:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/umeng/newxp/net/XpReportClient;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/umeng/newxp/net/XpReportClient;->sendAsync(Lcom/umeng/common/net/o;Lcom/umeng/common/net/n$a;)V

    .line 167
    return-void
.end method

.method static synthetic d(Lcom/umeng/newxp/view/w;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/umeng/newxp/view/w;->b:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic e(Lcom/umeng/newxp/view/w;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/umeng/newxp/view/w;->i:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lcom/umeng/newxp/view/w;)V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/umeng/newxp/view/w;->c()V

    return-void
.end method

.method static synthetic g(Lcom/umeng/newxp/view/w;)Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/umeng/newxp/view/w;->m:Z

    return v0
.end method

.method static synthetic h(Lcom/umeng/newxp/view/w;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/umeng/newxp/view/w;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/umeng/newxp/view/w;)Ljava/util/List;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/umeng/newxp/view/w;->l:Ljava/util/List;

    return-object v0
.end method

.method static synthetic j(Lcom/umeng/newxp/view/w;)Lcom/umeng/newxp/view/d;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/umeng/newxp/view/w;->f:Lcom/umeng/newxp/view/d;

    return-object v0
.end method

.method static synthetic k(Lcom/umeng/newxp/view/w;)Lcom/umeng/newxp/controller/ExchangeDataService;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/umeng/newxp/view/w;->j:Lcom/umeng/newxp/controller/ExchangeDataService;

    return-object v0
.end method

.method static synthetic l(Lcom/umeng/newxp/view/w;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/umeng/newxp/view/w;->h:I

    return v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 170
    new-instance v0, Lcom/umeng/newxp/view/A;

    invoke-direct {v0, p0}, Lcom/umeng/newxp/view/A;-><init>(Lcom/umeng/newxp/view/w;)V

    .line 228
    iget-object v1, p0, Lcom/umeng/newxp/view/w;->j:Lcom/umeng/newxp/controller/ExchangeDataService;

    iput-boolean v2, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->pagination:Z

    .line 229
    iget-object v1, p0, Lcom/umeng/newxp/view/w;->j:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget v1, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->page_index:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/umeng/newxp/view/w;->j:Lcom/umeng/newxp/controller/ExchangeDataService;

    iput v2, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->page_index:I

    .line 230
    :cond_0
    iget-object v1, p0, Lcom/umeng/newxp/view/w;->j:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget v2, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->page_index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->page_index:I

    .line 231
    iget-object v1, p0, Lcom/umeng/newxp/view/w;->j:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v2, p0, Lcom/umeng/newxp/view/w;->i:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/umeng/newxp/controller/ExchangeDataService;->requestDataAsyn(Landroid/content/Context;Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;)V

    .line 232
    return-void
.end method
