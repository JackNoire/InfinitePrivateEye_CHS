.class Lcom/umeng/newxp/view/t;
.super Ljava/lang/Object;
.source "EmbededContainer.java"

# interfaces
.implements Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/EmbededContainer$a;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/EmbededContainer$a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/t;->a:Lcom/umeng/newxp/view/EmbededContainer$a;

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/umeng/newxp/view/t;)Lcom/umeng/newxp/view/EmbededContainer$a;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/umeng/newxp/view/t;->a:Lcom/umeng/newxp/view/EmbededContainer$a;

    return-object v0
.end method


# virtual methods
.method public dataReceived(ILjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 292
    .line 293
    if-eqz p1, :cond_3

    .line 294
    iget-object v0, p0, Lcom/umeng/newxp/view/t;->a:Lcom/umeng/newxp/view/EmbededContainer$a;

    invoke-static {v0}, Lcom/umeng/newxp/view/EmbededContainer$a;->g(Lcom/umeng/newxp/view/EmbededContainer$a;)Lcom/umeng/newxp/view/EmbededContainer;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/newxp/view/EmbededContainer;->e(Lcom/umeng/newxp/view/EmbededContainer;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/umeng/newxp/common/g;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 296
    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 297
    iget-object v2, p0, Lcom/umeng/newxp/view/t;->a:Lcom/umeng/newxp/view/EmbededContainer$a;

    invoke-static {v2}, Lcom/umeng/newxp/view/EmbededContainer$a;->g(Lcom/umeng/newxp/view/EmbededContainer$a;)Lcom/umeng/newxp/view/EmbededContainer;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/newxp/view/EmbededContainer;->e(Lcom/umeng/newxp/view/EmbededContainer;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 298
    iget-object v2, p0, Lcom/umeng/newxp/view/t;->a:Lcom/umeng/newxp/view/EmbededContainer$a;

    invoke-static {v2}, Lcom/umeng/newxp/view/EmbededContainer$a;->d(Lcom/umeng/newxp/view/EmbededContainer$a;)Lcom/umeng/newxp/view/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/umeng/newxp/view/d;->a(Ljava/util/List;)V

    .line 299
    new-instance v2, Lcom/umeng/newxp/net/e$a;

    iget-object v3, p0, Lcom/umeng/newxp/view/t;->a:Lcom/umeng/newxp/view/EmbededContainer$a;

    invoke-static {v3}, Lcom/umeng/newxp/view/EmbededContainer$a;->g(Lcom/umeng/newxp/view/EmbededContainer$a;)Lcom/umeng/newxp/view/EmbededContainer;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/newxp/view/EmbededContainer;->b(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/umeng/newxp/net/e$a;-><init>(Landroid/content/Context;)V

    .line 300
    invoke-virtual {v2, v5}, Lcom/umeng/newxp/net/e$a;->a(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v2

    .line 301
    iget-object v3, p0, Lcom/umeng/newxp/view/t;->a:Lcom/umeng/newxp/view/EmbededContainer$a;

    invoke-static {v3}, Lcom/umeng/newxp/view/EmbededContainer$a;->g(Lcom/umeng/newxp/view/EmbededContainer$a;)Lcom/umeng/newxp/view/EmbededContainer;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/newxp/view/EmbededContainer;->d(Lcom/umeng/newxp/view/EmbededContainer;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/newxp/controller/ExchangeDataService;->getTimeConsuming()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/umeng/newxp/net/e$a;->d(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v2

    .line 302
    iget-object v3, p0, Lcom/umeng/newxp/view/t;->a:Lcom/umeng/newxp/view/EmbededContainer$a;

    invoke-static {v3}, Lcom/umeng/newxp/view/EmbededContainer$a;->g(Lcom/umeng/newxp/view/EmbededContainer$a;)Lcom/umeng/newxp/view/EmbededContainer;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/newxp/view/EmbededContainer;->e(Lcom/umeng/newxp/view/EmbededContainer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/umeng/newxp/net/e$a;->b(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v2

    .line 303
    iget-object v3, p0, Lcom/umeng/newxp/view/t;->a:Lcom/umeng/newxp/view/EmbededContainer$a;

    invoke-static {v3}, Lcom/umeng/newxp/view/EmbededContainer$a;->g(Lcom/umeng/newxp/view/EmbededContainer$a;)Lcom/umeng/newxp/view/EmbededContainer;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/newxp/view/EmbededContainer;->d(Lcom/umeng/newxp/view/EmbededContainer;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v3

    iget v3, v3, Lcom/umeng/newxp/controller/ExchangeDataService;->page_index:I

    iget-object v4, p0, Lcom/umeng/newxp/view/t;->a:Lcom/umeng/newxp/view/EmbededContainer$a;

    invoke-static {v4}, Lcom/umeng/newxp/view/EmbededContainer$a;->g(Lcom/umeng/newxp/view/EmbededContainer$a;)Lcom/umeng/newxp/view/EmbededContainer;

    move-result-object v4

    invoke-static {v4}, Lcom/umeng/newxp/view/EmbededContainer;->h(Lcom/umeng/newxp/view/EmbededContainer;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/umeng/newxp/net/e$a;->d(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v2

    .line 304
    iget-object v3, p0, Lcom/umeng/newxp/view/t;->a:Lcom/umeng/newxp/view/EmbededContainer$a;

    invoke-static {v3}, Lcom/umeng/newxp/view/EmbededContainer$a;->g(Lcom/umeng/newxp/view/EmbededContainer$a;)Lcom/umeng/newxp/view/EmbededContainer;

    move-result-object v3

    iget v3, v3, Lcom/umeng/newxp/view/EmbededContainer;->mType:I

    invoke-virtual {v2, v3}, Lcom/umeng/newxp/net/e$a;->c(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v2

    .line 305
    new-array v3, v5, [Lcom/umeng/newxp/Promoter;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/newxp/Promoter;

    invoke-virtual {v2, v0}, Lcom/umeng/newxp/net/e$a;->a([Lcom/umeng/newxp/Promoter;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 306
    iget-object v2, p0, Lcom/umeng/newxp/view/t;->a:Lcom/umeng/newxp/view/EmbededContainer$a;

    invoke-static {v2}, Lcom/umeng/newxp/view/EmbededContainer$a;->g(Lcom/umeng/newxp/view/EmbededContainer$a;)Lcom/umeng/newxp/view/EmbededContainer;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/newxp/view/EmbededContainer;->b(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/newxp/view/t;->a:Lcom/umeng/newxp/view/EmbededContainer$a;

    invoke-static {v3}, Lcom/umeng/newxp/view/EmbededContainer$a;->g(Lcom/umeng/newxp/view/EmbededContainer$a;)Lcom/umeng/newxp/view/EmbededContainer;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/newxp/view/EmbededContainer;->d(Lcom/umeng/newxp/view/EmbededContainer;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/umeng/newxp/net/e$a;->b(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    iget-object v2, p0, Lcom/umeng/newxp/view/t;->a:Lcom/umeng/newxp/view/EmbededContainer$a;

    invoke-static {v2}, Lcom/umeng/newxp/view/EmbededContainer$a;->g(Lcom/umeng/newxp/view/EmbededContainer$a;)Lcom/umeng/newxp/view/EmbededContainer;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/newxp/view/EmbededContainer;->d(Lcom/umeng/newxp/view/EmbededContainer;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v2

    iget-object v2, v2, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/umeng/newxp/net/e$a;->a(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 307
    iget-object v2, p0, Lcom/umeng/newxp/view/t;->a:Lcom/umeng/newxp/view/EmbededContainer$a;

    invoke-static {v2}, Lcom/umeng/newxp/view/EmbededContainer$a;->g(Lcom/umeng/newxp/view/EmbededContainer$a;)Lcom/umeng/newxp/view/EmbededContainer;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/newxp/view/EmbededContainer;->d(Lcom/umeng/newxp/view/EmbededContainer;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v2

    iget-object v2, v2, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/umeng/newxp/net/e$a;->c(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/newxp/net/e$a;->a()Lcom/umeng/newxp/net/e;

    move-result-object v0

    .line 308
    new-instance v2, Lcom/umeng/newxp/net/XpReportClient;

    iget-object v3, p0, Lcom/umeng/newxp/view/t;->a:Lcom/umeng/newxp/view/EmbededContainer$a;

    invoke-static {v3}, Lcom/umeng/newxp/view/EmbededContainer$a;->g(Lcom/umeng/newxp/view/EmbededContainer$a;)Lcom/umeng/newxp/view/EmbededContainer;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/newxp/view/EmbededContainer;->b(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/umeng/newxp/net/XpReportClient;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0, v1}, Lcom/umeng/newxp/net/XpReportClient;->sendAsync(Lcom/umeng/common/net/o;Lcom/umeng/common/net/n$a;)V

    .line 311
    iget-object v0, p0, Lcom/umeng/newxp/view/t;->a:Lcom/umeng/newxp/view/EmbededContainer$a;

    invoke-static {v0}, Lcom/umeng/newxp/view/EmbededContainer$a;->g(Lcom/umeng/newxp/view/EmbededContainer$a;)Lcom/umeng/newxp/view/EmbededContainer;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/newxp/view/EmbededContainer;->c(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/umeng/newxp/view/t;->a:Lcom/umeng/newxp/view/EmbededContainer$a;

    invoke-static {v1}, Lcom/umeng/newxp/view/EmbededContainer$a;->g(Lcom/umeng/newxp/view/EmbededContainer$a;)Lcom/umeng/newxp/view/EmbededContainer;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/newxp/view/EmbededContainer;->c(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/widget/ListView;

    move-result-object v1

    .line 312
    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    .line 311
    sub-int/2addr v0, v1

    .line 313
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/umeng/newxp/view/u;

    invoke-direct {v2, p0, v0}, Lcom/umeng/newxp/view/u;-><init>(Lcom/umeng/newxp/view/t;I)V

    .line 323
    const-wide/16 v3, 0x96

    .line 313
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 346
    :goto_1
    return-void

    .line 326
    :cond_0
    sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Failed to request next page."

    invoke-static {v0, v2}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/umeng/newxp/view/t;->a:Lcom/umeng/newxp/view/EmbededContainer$a;

    invoke-static {v0}, Lcom/umeng/newxp/view/EmbededContainer$a;->g(Lcom/umeng/newxp/view/EmbededContainer$a;)Lcom/umeng/newxp/view/EmbededContainer;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/newxp/view/EmbededContainer;->c(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 328
    iget-object v0, p0, Lcom/umeng/newxp/view/t;->a:Lcom/umeng/newxp/view/EmbededContainer$a;

    invoke-static {v0}, Lcom/umeng/newxp/view/EmbededContainer$a;->a(Lcom/umeng/newxp/view/EmbededContainer$a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 329
    iget-object v0, p0, Lcom/umeng/newxp/view/t;->a:Lcom/umeng/newxp/view/EmbededContainer$a;

    invoke-static {v0}, Lcom/umeng/newxp/view/EmbededContainer$a;->a(Lcom/umeng/newxp/view/EmbededContainer$a;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lcom/umeng/newxp/view/t;->a:Lcom/umeng/newxp/view/EmbededContainer$a;

    invoke-static {v0}, Lcom/umeng/newxp/view/EmbededContainer$a;->b(Lcom/umeng/newxp/view/EmbededContainer$a;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 331
    iget-object v0, p0, Lcom/umeng/newxp/view/t;->a:Lcom/umeng/newxp/view/EmbededContainer$a;

    invoke-static {v0}, Lcom/umeng/newxp/view/EmbededContainer$a;->g(Lcom/umeng/newxp/view/EmbededContainer$a;)Lcom/umeng/newxp/view/EmbededContainer;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/newxp/view/EmbededContainer;->c(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/umeng/newxp/view/t;->a:Lcom/umeng/newxp/view/EmbededContainer$a;

    invoke-static {v0}, Lcom/umeng/newxp/view/EmbededContainer$a;->g(Lcom/umeng/newxp/view/EmbededContainer$a;)Lcom/umeng/newxp/view/EmbededContainer;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/newxp/view/EmbededContainer;->c(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/widget/ListView;

    move-result-object v0

    .line 332
    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/umeng/newxp/view/t;->a:Lcom/umeng/newxp/view/EmbededContainer$a;

    invoke-static {v1}, Lcom/umeng/newxp/view/EmbededContainer$a;->g(Lcom/umeng/newxp/view/EmbededContainer$a;)Lcom/umeng/newxp/view/EmbededContainer;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/newxp/view/EmbededContainer;->c(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/umeng/newxp/view/t;->a:Lcom/umeng/newxp/view/EmbededContainer$a;

    invoke-static {v0}, Lcom/umeng/newxp/view/EmbededContainer$a;->b(Lcom/umeng/newxp/view/EmbededContainer$a;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/newxp/view/t;->a:Lcom/umeng/newxp/view/EmbededContainer$a;

    invoke-static {v1}, Lcom/umeng/newxp/view/EmbededContainer$a;->g(Lcom/umeng/newxp/view/EmbededContainer$a;)Lcom/umeng/newxp/view/EmbededContainer;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/newxp/view/EmbededContainer;->b(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/newxp/a/e;->f(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 334
    iget-object v0, p0, Lcom/umeng/newxp/view/t;->a:Lcom/umeng/newxp/view/EmbededContainer$a;

    invoke-static {v0}, Lcom/umeng/newxp/view/EmbededContainer$a;->f(Lcom/umeng/newxp/view/EmbededContainer$a;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 335
    iget-object v0, p0, Lcom/umeng/newxp/view/t;->a:Lcom/umeng/newxp/view/EmbededContainer$a;

    invoke-static {v0}, Lcom/umeng/newxp/view/EmbededContainer$a;->f(Lcom/umeng/newxp/view/EmbededContainer$a;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/umeng/newxp/view/v;

    invoke-direct {v1, p0}, Lcom/umeng/newxp/view/v;-><init>(Lcom/umeng/newxp/view/t;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 343
    :cond_2
    iget-object v0, p0, Lcom/umeng/newxp/view/t;->a:Lcom/umeng/newxp/view/EmbededContainer$a;

    invoke-static {v0}, Lcom/umeng/newxp/view/EmbededContainer$a;->g(Lcom/umeng/newxp/view/EmbededContainer$a;)Lcom/umeng/newxp/view/EmbededContainer;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/newxp/view/EmbededContainer;->c(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/newxp/view/t;->a:Lcom/umeng/newxp/view/EmbededContainer$a;

    invoke-static {v1}, Lcom/umeng/newxp/view/EmbededContainer$a;->f(Lcom/umeng/newxp/view/EmbededContainer$a;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    goto/16 :goto_1

    :cond_3
    move-object v0, v1

    goto/16 :goto_0
.end method
