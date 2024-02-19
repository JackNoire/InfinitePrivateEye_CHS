.class Lcom/umeng/newxp/view/ac;
.super Ljava/lang/Object;
.source "GridTemplate.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/GridTemplate;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/GridTemplate;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/ac;->a:Lcom/umeng/newxp/view/GridTemplate;

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/umeng/newxp/view/ac;)Lcom/umeng/newxp/view/GridTemplate;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/umeng/newxp/view/ac;->a:Lcom/umeng/newxp/view/GridTemplate;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 361
    new-instance v0, Lcom/umeng/newxp/view/ad;

    invoke-direct {v0, p0}, Lcom/umeng/newxp/view/ad;-><init>(Lcom/umeng/newxp/view/ac;)V

    .line 372
    iget-object v1, p0, Lcom/umeng/newxp/view/ac;->a:Lcom/umeng/newxp/view/GridTemplate;

    invoke-static {v1}, Lcom/umeng/newxp/view/GridTemplate;->d(Lcom/umeng/newxp/view/GridTemplate;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v1

    iput-boolean v2, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->pagination:Z

    .line 373
    iget-object v1, p0, Lcom/umeng/newxp/view/ac;->a:Lcom/umeng/newxp/view/GridTemplate;

    invoke-static {v1}, Lcom/umeng/newxp/view/GridTemplate;->d(Lcom/umeng/newxp/view/GridTemplate;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v1

    iget v1, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->page_index:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/umeng/newxp/view/ac;->a:Lcom/umeng/newxp/view/GridTemplate;

    invoke-static {v1}, Lcom/umeng/newxp/view/GridTemplate;->d(Lcom/umeng/newxp/view/GridTemplate;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v1

    iput v2, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->page_index:I

    .line 374
    :cond_0
    iget-object v1, p0, Lcom/umeng/newxp/view/ac;->a:Lcom/umeng/newxp/view/GridTemplate;

    invoke-static {v1}, Lcom/umeng/newxp/view/GridTemplate;->d(Lcom/umeng/newxp/view/GridTemplate;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v1

    iget v2, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->page_index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->page_index:I

    .line 375
    iget-object v1, p0, Lcom/umeng/newxp/view/ac;->a:Lcom/umeng/newxp/view/GridTemplate;

    invoke-static {v1}, Lcom/umeng/newxp/view/GridTemplate;->d(Lcom/umeng/newxp/view/GridTemplate;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/newxp/view/ac;->a:Lcom/umeng/newxp/view/GridTemplate;

    invoke-static {v2}, Lcom/umeng/newxp/view/GridTemplate;->c(Lcom/umeng/newxp/view/GridTemplate;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/umeng/newxp/controller/ExchangeDataService;->requestDataAsyn(Landroid/content/Context;Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;)V

    .line 376
    return-void
.end method
