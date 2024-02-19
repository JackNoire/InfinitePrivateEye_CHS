.class Lcom/umeng/newxp/view/A;
.super Ljava/lang/Object;
.source "EncapsulatedList.java"

# interfaces
.implements Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/w;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/w;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/A;->a:Lcom/umeng/newxp/view/w;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/umeng/newxp/view/A;)Lcom/umeng/newxp/view/w;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/umeng/newxp/view/A;->a:Lcom/umeng/newxp/view/w;

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

    .line 173
    .line 174
    if-eqz p1, :cond_3

    .line 175
    iget-object v0, p0, Lcom/umeng/newxp/view/A;->a:Lcom/umeng/newxp/view/w;

    invoke-static {v0}, Lcom/umeng/newxp/view/w;->i(Lcom/umeng/newxp/view/w;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/umeng/newxp/common/g;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 177
    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 178
    iget-object v2, p0, Lcom/umeng/newxp/view/A;->a:Lcom/umeng/newxp/view/w;

    invoke-static {v2}, Lcom/umeng/newxp/view/w;->i(Lcom/umeng/newxp/view/w;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 179
    iget-object v2, p0, Lcom/umeng/newxp/view/A;->a:Lcom/umeng/newxp/view/w;

    invoke-static {v2}, Lcom/umeng/newxp/view/w;->j(Lcom/umeng/newxp/view/w;)Lcom/umeng/newxp/view/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/umeng/newxp/view/d;->a(Ljava/util/List;)V

    .line 181
    new-instance v2, Lcom/umeng/newxp/net/e$a;

    iget-object v3, p0, Lcom/umeng/newxp/view/A;->a:Lcom/umeng/newxp/view/w;

    invoke-static {v3}, Lcom/umeng/newxp/view/w;->e(Lcom/umeng/newxp/view/w;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/umeng/newxp/net/e$a;-><init>(Landroid/content/Context;)V

    .line 182
    invoke-virtual {v2, v5}, Lcom/umeng/newxp/net/e$a;->a(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v2

    .line 183
    iget-object v3, p0, Lcom/umeng/newxp/view/A;->a:Lcom/umeng/newxp/view/w;

    invoke-static {v3}, Lcom/umeng/newxp/view/w;->k(Lcom/umeng/newxp/view/w;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/newxp/controller/ExchangeDataService;->getTimeConsuming()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/umeng/newxp/net/e$a;->d(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v2

    .line 184
    iget-object v3, p0, Lcom/umeng/newxp/view/A;->a:Lcom/umeng/newxp/view/w;

    invoke-static {v3}, Lcom/umeng/newxp/view/w;->i(Lcom/umeng/newxp/view/w;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/umeng/newxp/net/e$a;->b(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v2

    .line 185
    iget-object v3, p0, Lcom/umeng/newxp/view/A;->a:Lcom/umeng/newxp/view/w;

    invoke-static {v3}, Lcom/umeng/newxp/view/w;->l(Lcom/umeng/newxp/view/w;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Lcom/umeng/newxp/view/w;->a(Lcom/umeng/newxp/view/w;I)V

    invoke-virtual {v2, v4}, Lcom/umeng/newxp/net/e$a;->d(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v2

    .line 186
    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/umeng/newxp/net/e$a;->c(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v2

    .line 187
    new-array v3, v5, [Lcom/umeng/newxp/Promoter;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/newxp/Promoter;

    invoke-virtual {v2, v0}, Lcom/umeng/newxp/net/e$a;->a([Lcom/umeng/newxp/Promoter;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 188
    iget-object v2, p0, Lcom/umeng/newxp/view/A;->a:Lcom/umeng/newxp/view/w;

    invoke-static {v2}, Lcom/umeng/newxp/view/w;->e(Lcom/umeng/newxp/view/w;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/newxp/view/A;->a:Lcom/umeng/newxp/view/w;

    invoke-static {v3}, Lcom/umeng/newxp/view/w;->k(Lcom/umeng/newxp/view/w;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/umeng/newxp/net/e$a;->b(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    iget-object v2, p0, Lcom/umeng/newxp/view/A;->a:Lcom/umeng/newxp/view/w;

    invoke-static {v2}, Lcom/umeng/newxp/view/w;->k(Lcom/umeng/newxp/view/w;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v2

    iget-object v2, v2, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/umeng/newxp/net/e$a;->a(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 189
    iget-object v2, p0, Lcom/umeng/newxp/view/A;->a:Lcom/umeng/newxp/view/w;

    invoke-static {v2}, Lcom/umeng/newxp/view/w;->k(Lcom/umeng/newxp/view/w;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v2

    iget-object v2, v2, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/umeng/newxp/net/e$a;->c(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/newxp/net/e$a;->a()Lcom/umeng/newxp/net/e;

    move-result-object v0

    .line 191
    new-instance v2, Lcom/umeng/newxp/net/XpReportClient;

    iget-object v3, p0, Lcom/umeng/newxp/view/A;->a:Lcom/umeng/newxp/view/w;

    invoke-static {v3}, Lcom/umeng/newxp/view/w;->e(Lcom/umeng/newxp/view/w;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/umeng/newxp/net/XpReportClient;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0, v1}, Lcom/umeng/newxp/net/XpReportClient;->sendAsync(Lcom/umeng/common/net/o;Lcom/umeng/common/net/n$a;)V

    .line 194
    iget-object v0, p0, Lcom/umeng/newxp/view/A;->a:Lcom/umeng/newxp/view/w;

    invoke-static {v0}, Lcom/umeng/newxp/view/w;->d(Lcom/umeng/newxp/view/w;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/umeng/newxp/view/A;->a:Lcom/umeng/newxp/view/w;

    invoke-static {v1}, Lcom/umeng/newxp/view/w;->d(Lcom/umeng/newxp/view/w;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    .line 195
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/umeng/newxp/view/B;

    invoke-direct {v2, p0, v0}, Lcom/umeng/newxp/view/B;-><init>(Lcom/umeng/newxp/view/A;I)V

    .line 203
    const-wide/16 v3, 0x96

    .line 195
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 226
    :goto_1
    return-void

    .line 207
    :cond_0
    sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Failed to request next page."

    invoke-static {v0, v2}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/umeng/newxp/view/A;->a:Lcom/umeng/newxp/view/w;

    invoke-static {v0}, Lcom/umeng/newxp/view/w;->d(Lcom/umeng/newxp/view/w;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 209
    iget-object v0, p0, Lcom/umeng/newxp/view/A;->a:Lcom/umeng/newxp/view/w;

    invoke-static {v0}, Lcom/umeng/newxp/view/w;->b(Lcom/umeng/newxp/view/w;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 210
    iget-object v0, p0, Lcom/umeng/newxp/view/A;->a:Lcom/umeng/newxp/view/w;

    invoke-static {v0}, Lcom/umeng/newxp/view/w;->b(Lcom/umeng/newxp/view/w;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/umeng/newxp/view/A;->a:Lcom/umeng/newxp/view/w;

    invoke-static {v0}, Lcom/umeng/newxp/view/w;->h(Lcom/umeng/newxp/view/w;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 212
    iget-object v0, p0, Lcom/umeng/newxp/view/A;->a:Lcom/umeng/newxp/view/w;

    invoke-static {v0}, Lcom/umeng/newxp/view/w;->d(Lcom/umeng/newxp/view/w;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/umeng/newxp/view/A;->a:Lcom/umeng/newxp/view/w;

    invoke-static {v0}, Lcom/umeng/newxp/view/w;->d(Lcom/umeng/newxp/view/w;)Landroid/widget/ListView;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/umeng/newxp/view/A;->a:Lcom/umeng/newxp/view/w;

    invoke-static {v1}, Lcom/umeng/newxp/view/w;->d(Lcom/umeng/newxp/view/w;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/umeng/newxp/view/A;->a:Lcom/umeng/newxp/view/w;

    invoke-static {v0}, Lcom/umeng/newxp/view/w;->h(Lcom/umeng/newxp/view/w;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/newxp/view/A;->a:Lcom/umeng/newxp/view/w;

    invoke-static {v1}, Lcom/umeng/newxp/view/w;->e(Lcom/umeng/newxp/view/w;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/newxp/a/e;->f(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 215
    iget-object v0, p0, Lcom/umeng/newxp/view/A;->a:Lcom/umeng/newxp/view/w;

    invoke-static {v0}, Lcom/umeng/newxp/view/w;->a(Lcom/umeng/newxp/view/w;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 216
    iget-object v0, p0, Lcom/umeng/newxp/view/A;->a:Lcom/umeng/newxp/view/w;

    invoke-static {v0}, Lcom/umeng/newxp/view/w;->a(Lcom/umeng/newxp/view/w;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/umeng/newxp/view/C;

    invoke-direct {v1, p0}, Lcom/umeng/newxp/view/C;-><init>(Lcom/umeng/newxp/view/A;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 223
    :cond_2
    iget-object v0, p0, Lcom/umeng/newxp/view/A;->a:Lcom/umeng/newxp/view/w;

    invoke-static {v0}, Lcom/umeng/newxp/view/w;->d(Lcom/umeng/newxp/view/w;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/newxp/view/A;->a:Lcom/umeng/newxp/view/w;

    invoke-static {v1}, Lcom/umeng/newxp/view/w;->a(Lcom/umeng/newxp/view/w;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    goto/16 :goto_1

    :cond_3
    move-object v0, v1

    goto/16 :goto_0
.end method
