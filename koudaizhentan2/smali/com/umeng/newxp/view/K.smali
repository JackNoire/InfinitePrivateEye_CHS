.class Lcom/umeng/newxp/view/K;
.super Ljava/lang/Object;
.source "ExchangeViewManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/J;

.field private final synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/J;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/K;->a:Lcom/umeng/newxp/view/J;

    iput-object p2, p0, Lcom/umeng/newxp/view/K;->b:Ljava/util/List;

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 390
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 391
    iget-object v1, p0, Lcom/umeng/newxp/view/K;->b:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/umeng/newxp/view/K;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 392
    iget-object v1, p0, Lcom/umeng/newxp/view/K;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 393
    iget-object v0, p0, Lcom/umeng/newxp/view/K;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/umeng/newxp/view/K;->a:Lcom/umeng/newxp/view/J;

    invoke-static {v0}, Lcom/umeng/newxp/view/J;->a(Lcom/umeng/newxp/view/J;)Lcom/umeng/newxp/view/ExchangeViewManager;

    move-result-object v0

    iget-object v0, v0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/umeng/newxp/view/K;->a:Lcom/umeng/newxp/view/J;

    invoke-static {v1}, Lcom/umeng/newxp/view/J;->a(Lcom/umeng/newxp/view/J;)Lcom/umeng/newxp/view/ExchangeViewManager;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/newxp/view/ExchangeViewManager;->a(Lcom/umeng/newxp/view/ExchangeViewManager;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/umeng/newxp/view/K;->a:Lcom/umeng/newxp/view/J;

    invoke-static {v3}, Lcom/umeng/newxp/view/J;->a(Lcom/umeng/newxp/view/J;)Lcom/umeng/newxp/view/ExchangeViewManager;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/newxp/view/ExchangeViewManager;->b(Lcom/umeng/newxp/view/ExchangeViewManager;)Lcom/umeng/newxp/view/GridTemplateConfig;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/umeng/newxp/view/aw;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;Ljava/util/List;Lcom/umeng/newxp/view/GridTemplateConfig;)V

    .line 397
    iget-object v0, p0, Lcom/umeng/newxp/view/K;->a:Lcom/umeng/newxp/view/J;

    invoke-static {v0}, Lcom/umeng/newxp/view/J;->a(Lcom/umeng/newxp/view/J;)Lcom/umeng/newxp/view/ExchangeViewManager;

    move-result-object v0

    iget-object v0, v0, Lcom/umeng/newxp/view/ExchangeViewManager;->e:Lcom/umeng/newxp/controller/XpListenersCenter$EntryOnClickListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/umeng/newxp/view/K;->a:Lcom/umeng/newxp/view/J;

    invoke-static {v0}, Lcom/umeng/newxp/view/J;->a(Lcom/umeng/newxp/view/J;)Lcom/umeng/newxp/view/ExchangeViewManager;

    move-result-object v0

    iget-object v0, v0, Lcom/umeng/newxp/view/ExchangeViewManager;->e:Lcom/umeng/newxp/controller/XpListenersCenter$EntryOnClickListener;

    .line 398
    iget-object v1, p0, Lcom/umeng/newxp/view/K;->a:Lcom/umeng/newxp/view/J;

    invoke-static {v1}, Lcom/umeng/newxp/view/J;->a(Lcom/umeng/newxp/view/J;)Lcom/umeng/newxp/view/ExchangeViewManager;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/newxp/view/ExchangeViewManager;->d(Lcom/umeng/newxp/view/ExchangeViewManager;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/umeng/newxp/controller/XpListenersCenter$EntryOnClickListener;->onClick(Landroid/view/View;)V

    .line 399
    :cond_1
    return-void
.end method
