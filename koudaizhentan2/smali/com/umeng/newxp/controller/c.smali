.class Lcom/umeng/newxp/controller/c;
.super Ljava/lang/Object;
.source "ExchangeDataService.java"

# interfaces
.implements Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/controller/ExchangeDataService;

.field private final synthetic b:Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;

.field private final synthetic c:Z


# direct methods
.method constructor <init>(Lcom/umeng/newxp/controller/ExchangeDataService;Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/controller/c;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    iput-object p2, p0, Lcom/umeng/newxp/controller/c;->b:Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;

    iput-boolean p3, p0, Lcom/umeng/newxp/controller/c;->c:Z

    .line 580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/umeng/newxp/controller/c;Z)V
    .locals 0

    .prologue
    .line 611
    invoke-direct {p0, p1}, Lcom/umeng/newxp/controller/c;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 612
    iget-object v0, p0, Lcom/umeng/newxp/controller/c;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget v0, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->page_index:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    .line 613
    if-eqz p1, :cond_0

    .line 614
    iget-object v0, p0, Lcom/umeng/newxp/controller/c;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v0, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    .line 615
    iget-object v1, p0, Lcom/umeng/newxp/controller/c;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v1}, Lcom/umeng/newxp/controller/ExchangeDataService;->c(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v1

    .line 614
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 617
    monitor-enter v1

    .line 618
    :try_start_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 619
    iget-object v2, p0, Lcom/umeng/newxp/controller/c;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v2}, Lcom/umeng/newxp/controller/ExchangeDataService;->f(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 620
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 617
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 623
    :cond_0
    new-instance v0, Lcom/umeng/newxp/controller/ExchangeDataService$a;

    iget-object v1, p0, Lcom/umeng/newxp/controller/c;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-direct {v0, v1, v4, v3, v4}, Lcom/umeng/newxp/controller/ExchangeDataService$a;-><init>(Lcom/umeng/newxp/controller/ExchangeDataService;Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;ILjava/util/Map;)V

    invoke-virtual {v0}, Lcom/umeng/newxp/controller/ExchangeDataService$a;->start()V

    .line 627
    :cond_1
    if-eqz p1, :cond_3

    .line 628
    iget-object v0, p0, Lcom/umeng/newxp/controller/c;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v0}, Lcom/umeng/newxp/controller/ExchangeDataService;->b(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/util/Map;

    move-result-object v0

    .line 629
    const-string v1, "sid"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 630
    const-string v1, "sid"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    :cond_2
    new-instance v1, Lcom/umeng/newxp/controller/ExchangeDataService$a;

    iget-object v2, p0, Lcom/umeng/newxp/controller/c;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-direct {v1, v2, v4, v3, v0}, Lcom/umeng/newxp/controller/ExchangeDataService$a;-><init>(Lcom/umeng/newxp/controller/ExchangeDataService;Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;ILjava/util/Map;)V

    invoke-virtual {v1}, Lcom/umeng/newxp/controller/ExchangeDataService$a;->start()V

    .line 633
    :cond_3
    return-void

    .line 617
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public dataReceived(ILjava/util/List;)V
    .locals 5
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
    .line 583
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/umeng/newxp/controller/c;->b:Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;

    invoke-interface {v0, p1, p2}, Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;->dataReceived(ILjava/util/List;)V

    .line 586
    iget-boolean v0, p0, Lcom/umeng/newxp/controller/c;->c:Z

    invoke-direct {p0, v0}, Lcom/umeng/newxp/controller/c;->a(Z)V

    .line 604
    :goto_0
    return-void

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/umeng/newxp/controller/c;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v0}, Lcom/umeng/newxp/controller/ExchangeDataService;->g(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Get from cache failed..."

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    new-instance v0, Lcom/umeng/newxp/controller/d;

    iget-object v1, p0, Lcom/umeng/newxp/controller/c;->b:Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;

    iget-boolean v2, p0, Lcom/umeng/newxp/controller/c;->c:Z

    invoke-direct {v0, p0, v1, v2}, Lcom/umeng/newxp/controller/d;-><init>(Lcom/umeng/newxp/controller/c;Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;Z)V

    .line 601
    new-instance v1, Lcom/umeng/newxp/controller/ExchangeDataService$a;

    iget-object v2, p0, Lcom/umeng/newxp/controller/c;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/umeng/newxp/controller/ExchangeDataService$a;-><init>(Lcom/umeng/newxp/controller/ExchangeDataService;Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;ILjava/util/Map;)V

    invoke-virtual {v1}, Lcom/umeng/newxp/controller/ExchangeDataService$a;->start()V

    goto :goto_0
.end method
