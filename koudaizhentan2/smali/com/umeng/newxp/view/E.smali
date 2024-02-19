.class Lcom/umeng/newxp/view/E;
.super Ljava/lang/Object;
.source "ExchangeViewManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/D;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/D;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/E;->a:Lcom/umeng/newxp/view/D;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 125
    iget-object v0, p0, Lcom/umeng/newxp/view/E;->a:Lcom/umeng/newxp/view/D;

    invoke-static {v0}, Lcom/umeng/newxp/view/D;->a(Lcom/umeng/newxp/view/D;)Lcom/umeng/newxp/view/ExchangeViewManager;

    move-result-object v0

    iget-object v0, v0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/umeng/newxp/view/E;->a:Lcom/umeng/newxp/view/D;

    invoke-static {v1}, Lcom/umeng/newxp/view/D;->a(Lcom/umeng/newxp/view/D;)Lcom/umeng/newxp/view/ExchangeViewManager;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/newxp/view/ExchangeViewManager;->a(Lcom/umeng/newxp/view/ExchangeViewManager;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/umeng/newxp/view/E;->a:Lcom/umeng/newxp/view/D;

    invoke-static {v3}, Lcom/umeng/newxp/view/D;->a(Lcom/umeng/newxp/view/D;)Lcom/umeng/newxp/view/ExchangeViewManager;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/newxp/view/ExchangeViewManager;->b(Lcom/umeng/newxp/view/ExchangeViewManager;)Lcom/umeng/newxp/view/GridTemplateConfig;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/umeng/newxp/view/aw;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;Ljava/util/List;Lcom/umeng/newxp/view/GridTemplateConfig;)V

    .line 126
    return-void
.end method
