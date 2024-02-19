.class Lcom/umeng/newxp/view/aG;
.super Ljava/lang/Object;
.source "PartnersBanner.java"

# interfaces
.implements Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/aF;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/aF;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/aG;->a:Lcom/umeng/newxp/view/aF;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dataReceived(ILjava/util/List;)V
    .locals 2
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
    .line 98
    if-nez p1, :cond_1

    .line 99
    sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    const-string v1, "failed to get request data"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/umeng/newxp/view/aG;->a:Lcom/umeng/newxp/view/aF;

    new-instance v1, Lcom/umeng/newxp/controller/a;

    invoke-direct {v1, p2}, Lcom/umeng/newxp/controller/a;-><init>(Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/umeng/newxp/view/aF;->a(Lcom/umeng/newxp/view/aF;Lcom/umeng/newxp/controller/a;)V

    .line 102
    iget-object v0, p0, Lcom/umeng/newxp/view/aG;->a:Lcom/umeng/newxp/view/aF;

    invoke-static {v0, p2}, Lcom/umeng/newxp/view/aF;->a(Lcom/umeng/newxp/view/aF;Ljava/util/List;)V

    .line 104
    iget-object v0, p0, Lcom/umeng/newxp/view/aG;->a:Lcom/umeng/newxp/view/aF;

    invoke-static {v0}, Lcom/umeng/newxp/view/aF;->d(Lcom/umeng/newxp/view/aF;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/newxp/view/aG;->a:Lcom/umeng/newxp/view/aF;

    invoke-static {v0}, Lcom/umeng/newxp/view/aF;->d(Lcom/umeng/newxp/view/aF;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/umeng/newxp/view/aG;->a:Lcom/umeng/newxp/view/aF;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/aF;->b()V

    .line 107
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 108
    new-instance v0, Lcom/umeng/newxp/controller/g;

    iget-object v1, p0, Lcom/umeng/newxp/view/aG;->a:Lcom/umeng/newxp/view/aF;

    invoke-direct {v0, v1}, Lcom/umeng/newxp/controller/g;-><init>(Lcom/umeng/newxp/controller/f$a;)V

    invoke-virtual {v0}, Lcom/umeng/newxp/controller/g;->start()V

    goto :goto_0
.end method
