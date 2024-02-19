.class Lcom/umeng/newxp/controller/e;
.super Landroid/os/Handler;
.source "ExchangeDataService.java"


# instance fields
.field final synthetic a:Lcom/umeng/newxp/controller/ExchangeDataService$a;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/controller/ExchangeDataService$a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/controller/e;->a:Lcom/umeng/newxp/controller/ExchangeDataService$a;

    .line 648
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    .line 651
    iget-object v0, p0, Lcom/umeng/newxp/controller/e;->a:Lcom/umeng/newxp/controller/ExchangeDataService$a;

    invoke-static {v0}, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a(Lcom/umeng/newxp/controller/ExchangeDataService$a;)Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 652
    if-eqz p1, :cond_3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 653
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 658
    iget-object v1, p0, Lcom/umeng/newxp/controller/e;->a:Lcom/umeng/newxp/controller/ExchangeDataService$a;

    invoke-static {v1}, Lcom/umeng/newxp/controller/ExchangeDataService$a;->b(Lcom/umeng/newxp/controller/ExchangeDataService$a;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/newxp/controller/ExchangeDataService;->a(Lcom/umeng/newxp/controller/ExchangeDataService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 659
    iget-object v1, p0, Lcom/umeng/newxp/controller/e;->a:Lcom/umeng/newxp/controller/ExchangeDataService$a;

    invoke-static {v1}, Lcom/umeng/newxp/controller/ExchangeDataService$a;->b(Lcom/umeng/newxp/controller/ExchangeDataService$a;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/umeng/newxp/controller/ExchangeDataService;->a(Lcom/umeng/newxp/controller/ExchangeDataService;Ljava/util/List;)I

    move-result v1

    .line 660
    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/umeng/newxp/controller/e;->a:Lcom/umeng/newxp/controller/ExchangeDataService$a;

    invoke-static {v2}, Lcom/umeng/newxp/controller/ExchangeDataService$a;->b(Lcom/umeng/newxp/controller/ExchangeDataService$a;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v2

    iget v2, v2, Lcom/umeng/newxp/controller/ExchangeDataService;->newTips:I

    if-lez v2, :cond_0

    .line 661
    iget-object v2, p0, Lcom/umeng/newxp/controller/e;->a:Lcom/umeng/newxp/controller/ExchangeDataService$a;

    invoke-static {v2}, Lcom/umeng/newxp/controller/ExchangeDataService$a;->b(Lcom/umeng/newxp/controller/ExchangeDataService$a;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v2

    iget v2, v2, Lcom/umeng/newxp/controller/ExchangeDataService;->newTips:I

    .line 662
    iget-object v3, p0, Lcom/umeng/newxp/controller/e;->a:Lcom/umeng/newxp/controller/ExchangeDataService$a;

    invoke-static {v3}, Lcom/umeng/newxp/controller/ExchangeDataService$a;->b(Lcom/umeng/newxp/controller/ExchangeDataService$a;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v3

    iget v3, v3, Lcom/umeng/newxp/controller/ExchangeDataService;->newTips:I

    sub-int v1, v3, v1

    .line 663
    iget-object v3, p0, Lcom/umeng/newxp/controller/e;->a:Lcom/umeng/newxp/controller/ExchangeDataService$a;

    invoke-static {v3}, Lcom/umeng/newxp/controller/ExchangeDataService$a;->b(Lcom/umeng/newxp/controller/ExchangeDataService$a;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v3

    if-lez v1, :cond_2

    :goto_0
    iput v1, v3, Lcom/umeng/newxp/controller/ExchangeDataService;->newTips:I

    .line 664
    sget-object v1, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "new tips has changed "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ===> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/newxp/controller/e;->a:Lcom/umeng/newxp/controller/ExchangeDataService$a;

    invoke-static {v3}, Lcom/umeng/newxp/controller/ExchangeDataService$a;->b(Lcom/umeng/newxp/controller/ExchangeDataService$a;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v3

    iget v3, v3, Lcom/umeng/newxp/controller/ExchangeDataService;->newTips:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    :cond_0
    iget-object v1, p0, Lcom/umeng/newxp/controller/e;->a:Lcom/umeng/newxp/controller/ExchangeDataService$a;

    invoke-static {v1}, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a(Lcom/umeng/newxp/controller/ExchangeDataService$a;)Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;

    move-result-object v1

    .line 668
    const/4 v2, 0x1

    .line 667
    invoke-interface {v1, v2, v0}, Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;->dataReceived(ILjava/util/List;)V

    .line 674
    :cond_1
    :goto_1
    return-void

    .line 663
    :cond_2
    const/4 v1, -0x1

    goto :goto_0

    .line 670
    :cond_3
    iget-object v0, p0, Lcom/umeng/newxp/controller/e;->a:Lcom/umeng/newxp/controller/ExchangeDataService$a;

    invoke-static {v0}, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a(Lcom/umeng/newxp/controller/ExchangeDataService$a;)Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;

    move-result-object v0

    const/4 v1, 0x0

    .line 671
    const/4 v2, 0x0

    .line 670
    invoke-interface {v0, v1, v2}, Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;->dataReceived(ILjava/util/List;)V

    goto :goto_1
.end method
