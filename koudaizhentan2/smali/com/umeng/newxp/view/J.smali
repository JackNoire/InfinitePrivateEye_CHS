.class Lcom/umeng/newxp/view/J;
.super Ljava/lang/Object;
.source "ExchangeViewManager.java"

# interfaces
.implements Lcom/umeng/newxp/common/g$a;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/ExchangeViewManager;

.field private final synthetic b:Lcom/umeng/newxp/controller/XpListenersCenter$NTipsChangedListener;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/ExchangeViewManager;Lcom/umeng/newxp/controller/XpListenersCenter$NTipsChangedListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/J;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    iput-object p2, p0, Lcom/umeng/newxp/view/J;->b:Lcom/umeng/newxp/controller/XpListenersCenter$NTipsChangedListener;

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/umeng/newxp/view/J;)Lcom/umeng/newxp/view/ExchangeViewManager;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/umeng/newxp/view/J;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 378
    return-void
.end method

.method public a(Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 406
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 382
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/umeng/newxp/view/J;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    invoke-static {v0}, Lcom/umeng/newxp/view/ExchangeViewManager;->d(Lcom/umeng/newxp/view/ExchangeViewManager;)Landroid/widget/ImageView;

    move-result-object v0

    .line 383
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/umeng/newxp/view/J;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    invoke-static {v0}, Lcom/umeng/newxp/view/ExchangeViewManager;->a(Lcom/umeng/newxp/view/ExchangeViewManager;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/newxp/view/J;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    iget-object v1, v1, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/newxp/view/J;->b:Lcom/umeng/newxp/controller/XpListenersCenter$NTipsChangedListener;

    .line 385
    const/4 v3, 0x7

    .line 384
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/umeng/newxp/controller/ExchangeDataService;->preloadData(Landroid/content/Context;Ljava/util/List;Lcom/umeng/newxp/controller/XpListenersCenter$NTipsChangedListener;I)V

    .line 387
    iget-object v0, p0, Lcom/umeng/newxp/view/J;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    invoke-static {v0}, Lcom/umeng/newxp/view/ExchangeViewManager;->d(Lcom/umeng/newxp/view/ExchangeViewManager;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/umeng/newxp/view/K;

    invoke-direct {v1, p0, p1}, Lcom/umeng/newxp/view/K;-><init>(Lcom/umeng/newxp/view/J;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    return-void
.end method
