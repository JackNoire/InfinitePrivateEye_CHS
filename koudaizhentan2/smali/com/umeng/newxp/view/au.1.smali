.class Lcom/umeng/newxp/view/au;
.super Ljava/lang/Object;
.source "LargeGallery.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/an;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/an;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/au;->a:Lcom/umeng/newxp/view/an;

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 264
    iget-object v0, p0, Lcom/umeng/newxp/view/au;->a:Lcom/umeng/newxp/view/an;

    invoke-static {v0, p3}, Lcom/umeng/newxp/view/an;->b(Lcom/umeng/newxp/view/an;I)V

    .line 265
    invoke-static {}, Lcom/umeng/newxp/view/an;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onItemSelected pos="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/umeng/newxp/view/au;->a:Lcom/umeng/newxp/view/an;

    invoke-static {v2}, Lcom/umeng/newxp/view/an;->k(Lcom/umeng/newxp/view/an;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/umeng/newxp/view/au;->a:Lcom/umeng/newxp/view/an;

    invoke-static {v0, p3}, Lcom/umeng/newxp/view/an;->a(Lcom/umeng/newxp/view/an;I)I

    move-result v2

    .line 268
    iget-object v0, p0, Lcom/umeng/newxp/view/au;->a:Lcom/umeng/newxp/view/an;

    invoke-static {v0}, Lcom/umeng/newxp/view/an;->l(Lcom/umeng/newxp/view/an;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 269
    iget-object v1, p0, Lcom/umeng/newxp/view/au;->a:Lcom/umeng/newxp/view/an;

    invoke-static {v1}, Lcom/umeng/newxp/view/an;->l(Lcom/umeng/newxp/view/an;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 276
    new-instance v0, Lcom/umeng/newxp/net/e$a;

    iget-object v1, p0, Lcom/umeng/newxp/view/au;->a:Lcom/umeng/newxp/view/an;

    invoke-static {v1}, Lcom/umeng/newxp/view/an;->e(Lcom/umeng/newxp/view/an;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/newxp/net/e$a;-><init>(Landroid/content/Context;)V

    .line 277
    invoke-virtual {v0, v6}, Lcom/umeng/newxp/net/e$a;->a(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/umeng/newxp/net/e$a;->b(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 278
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->d(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 279
    iget-object v1, p0, Lcom/umeng/newxp/view/au;->a:Lcom/umeng/newxp/view/an;

    invoke-static {v1}, Lcom/umeng/newxp/view/an;->f(Lcom/umeng/newxp/view/an;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/newxp/controller/ExchangeDataService;->getTimeConsuming()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->d(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 280
    iget-object v1, p0, Lcom/umeng/newxp/view/au;->a:Lcom/umeng/newxp/view/an;

    invoke-static {v1}, Lcom/umeng/newxp/view/an;->f(Lcom/umeng/newxp/view/an;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v1

    iget v1, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->layoutType:I

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->c(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v1

    const/4 v0, 0x1

    new-array v3, v0, [Lcom/umeng/newxp/Promoter;

    .line 281
    iget-object v0, p0, Lcom/umeng/newxp/view/au;->a:Lcom/umeng/newxp/view/an;

    invoke-static {v0}, Lcom/umeng/newxp/view/an;->c(Lcom/umeng/newxp/view/an;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/Promoter;

    aput-object v0, v3, v6

    invoke-virtual {v1, v3}, Lcom/umeng/newxp/net/e$a;->a([Lcom/umeng/newxp/Promoter;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 282
    iget-object v1, p0, Lcom/umeng/newxp/view/au;->a:Lcom/umeng/newxp/view/an;

    invoke-static {v1}, Lcom/umeng/newxp/view/an;->e(Lcom/umeng/newxp/view/an;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/newxp/view/au;->a:Lcom/umeng/newxp/view/an;

    invoke-static {v2}, Lcom/umeng/newxp/view/an;->f(Lcom/umeng/newxp/view/an;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->b(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/newxp/view/au;->a:Lcom/umeng/newxp/view/an;

    invoke-static {v1}, Lcom/umeng/newxp/view/an;->f(Lcom/umeng/newxp/view/an;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v1

    iget-object v1, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 283
    iget-object v1, p0, Lcom/umeng/newxp/view/au;->a:Lcom/umeng/newxp/view/an;

    invoke-static {v1}, Lcom/umeng/newxp/view/an;->f(Lcom/umeng/newxp/view/an;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v1

    iget-object v1, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->c(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/newxp/net/e$a;->a()Lcom/umeng/newxp/net/e;

    move-result-object v0

    .line 284
    new-instance v1, Lcom/umeng/newxp/net/XpReportClient;

    iget-object v2, p0, Lcom/umeng/newxp/view/au;->a:Lcom/umeng/newxp/view/an;

    invoke-static {v2}, Lcom/umeng/newxp/view/an;->e(Lcom/umeng/newxp/view/an;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/umeng/newxp/net/XpReportClient;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/umeng/newxp/net/XpReportClient;->sendAsync(Lcom/umeng/common/net/o;Lcom/umeng/common/net/n$a;)V

    .line 286
    return-void

    .line 269
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 270
    if-ne v0, v1, :cond_1

    iget-object v4, p0, Lcom/umeng/newxp/view/au;->a:Lcom/umeng/newxp/view/an;

    invoke-static {v4}, Lcom/umeng/newxp/view/an;->m(Lcom/umeng/newxp/view/an;)Lcom/umeng/common/c;

    move-result-object v4

    .line 271
    const-string v5, "umeng_xp_point_selected"

    invoke-virtual {v4, v5}, Lcom/umeng/common/c;->d(Ljava/lang/String;)I

    move-result v4

    .line 270
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 273
    :cond_1
    iget-object v4, p0, Lcom/umeng/newxp/view/au;->a:Lcom/umeng/newxp/view/an;

    invoke-static {v4}, Lcom/umeng/newxp/view/an;->m(Lcom/umeng/newxp/view/an;)Lcom/umeng/common/c;

    move-result-object v4

    const-string v5, "umeng_xp_point_normal"

    invoke-virtual {v4, v5}, Lcom/umeng/common/c;->d(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 291
    return-void
.end method
