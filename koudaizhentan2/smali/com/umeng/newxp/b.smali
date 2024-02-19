.class Lcom/umeng/newxp/b;
.super Ljava/lang/Object;
.source "PreloadData.java"

# interfaces
.implements Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/a;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/b;->a:Lcom/umeng/newxp/a;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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
    .line 51
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/umeng/newxp/b;->a:Lcom/umeng/newxp/a;

    sget-object v1, Lcom/umeng/newxp/a$a;->b:Lcom/umeng/newxp/a$a;

    iput-object v1, v0, Lcom/umeng/newxp/a;->a:Lcom/umeng/newxp/a$a;

    .line 62
    :cond_1
    return-void

    .line 55
    :cond_2
    iget-object v0, p0, Lcom/umeng/newxp/b;->a:Lcom/umeng/newxp/a;

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lcom/umeng/newxp/a;->a(Lcom/umeng/newxp/a;Ljava/util/List;Z)V

    .line 56
    iget-object v0, p0, Lcom/umeng/newxp/b;->a:Lcom/umeng/newxp/a;

    iget-object v1, p0, Lcom/umeng/newxp/b;->a:Lcom/umeng/newxp/a;

    iget-object v1, v1, Lcom/umeng/newxp/a;->b:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget v1, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->newTips:I

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/a;->a(I)V

    .line 57
    invoke-static {}, Lcom/umeng/newxp/a;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/umeng/newxp/b;->a:Lcom/umeng/newxp/a;

    iget-object v2, v2, Lcom/umeng/newxp/a;->b:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-wide v2, v2, Lcom/umeng/newxp/controller/ExchangeDataService;->oid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "  : init preload data from server..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/umeng/newxp/b;->a:Lcom/umeng/newxp/a;

    invoke-static {v0}, Lcom/umeng/newxp/a;->a(Lcom/umeng/newxp/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/Promoter;

    .line 60
    invoke-static {}, Lcom/umeng/newxp/a;->c()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/umeng/newxp/b;->a:Lcom/umeng/newxp/a;

    iget-object v4, v4, Lcom/umeng/newxp/a;->b:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-wide v4, v4, Lcom/umeng/newxp/controller/ExchangeDataService;->oid:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "  promoter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/umeng/newxp/Promoter;->title:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
