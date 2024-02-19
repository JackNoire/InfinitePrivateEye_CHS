.class Lcom/umeng/newxp/view/g;
.super Ljava/lang/Object;
.source "Banner.java"

# interfaces
.implements Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/f;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/f;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/g;->a:Lcom/umeng/newxp/view/f;

    .line 89
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
    .line 92
    iget-object v0, p0, Lcom/umeng/newxp/view/g;->a:Lcom/umeng/newxp/view/f;

    invoke-static {v0}, Lcom/umeng/newxp/view/f;->c(Lcom/umeng/newxp/view/f;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v0

    iget-object v0, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->initializeListener:Lcom/umeng/newxp/controller/XpListenersCenter$InitializeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/newxp/view/g;->a:Lcom/umeng/newxp/view/f;

    invoke-static {v0}, Lcom/umeng/newxp/view/f;->c(Lcom/umeng/newxp/view/f;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v0

    iget-object v1, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->initializeListener:Lcom/umeng/newxp/controller/XpListenersCenter$InitializeListener;

    .line 93
    if-nez p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Lcom/umeng/newxp/controller/XpListenersCenter$InitializeListener;->onReceived(I)V

    .line 94
    :cond_0
    if-nez p1, :cond_2

    .line 95
    sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    const-string v1, "failed to get request data"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :goto_1
    return-void

    .line 93
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/umeng/newxp/view/g;->a:Lcom/umeng/newxp/view/f;

    invoke-static {v0, p2}, Lcom/umeng/newxp/view/f;->a(Lcom/umeng/newxp/view/f;Ljava/util/List;)V

    goto :goto_1
.end method
