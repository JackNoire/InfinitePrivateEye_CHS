.class Lcom/umeng/newxp/view/L;
.super Ljava/lang/Object;
.source "ExchangeViewManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/ExchangeViewManager;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/ExchangeViewManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/L;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 416
    iget-object v0, p0, Lcom/umeng/newxp/view/L;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    iget-object v0, v0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/umeng/newxp/view/L;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    invoke-static {v1}, Lcom/umeng/newxp/view/ExchangeViewManager;->a(Lcom/umeng/newxp/view/ExchangeViewManager;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/umeng/newxp/view/L;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    invoke-static {v3}, Lcom/umeng/newxp/view/ExchangeViewManager;->b(Lcom/umeng/newxp/view/ExchangeViewManager;)Lcom/umeng/newxp/view/GridTemplateConfig;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/umeng/newxp/view/aw;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;Ljava/util/List;Lcom/umeng/newxp/view/GridTemplateConfig;)V

    .line 418
    iget-object v0, p0, Lcom/umeng/newxp/view/L;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    iget-object v0, v0, Lcom/umeng/newxp/view/ExchangeViewManager;->e:Lcom/umeng/newxp/controller/XpListenersCenter$EntryOnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/newxp/view/L;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    iget-object v0, v0, Lcom/umeng/newxp/view/ExchangeViewManager;->e:Lcom/umeng/newxp/controller/XpListenersCenter$EntryOnClickListener;

    iget-object v1, p0, Lcom/umeng/newxp/view/L;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    invoke-static {v1}, Lcom/umeng/newxp/view/ExchangeViewManager;->d(Lcom/umeng/newxp/view/ExchangeViewManager;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/umeng/newxp/controller/XpListenersCenter$EntryOnClickListener;->onClick(Landroid/view/View;)V

    .line 419
    :cond_0
    return-void
.end method
