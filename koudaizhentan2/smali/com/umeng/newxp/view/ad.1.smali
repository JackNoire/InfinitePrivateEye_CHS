.class Lcom/umeng/newxp/view/ad;
.super Ljava/lang/Object;
.source "GridTemplate.java"

# interfaces
.implements Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/ac;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/ac;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/ad;->a:Lcom/umeng/newxp/view/ac;

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dataReceived(ILjava/util/List;)V
    .locals 1
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
    .line 364
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 365
    iget-object v0, p0, Lcom/umeng/newxp/view/ad;->a:Lcom/umeng/newxp/view/ac;

    invoke-static {v0}, Lcom/umeng/newxp/view/ac;->a(Lcom/umeng/newxp/view/ac;)Lcom/umeng/newxp/view/GridTemplate;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/newxp/view/GridTemplate;->f(Lcom/umeng/newxp/view/GridTemplate;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 367
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/umeng/newxp/view/ad;->a:Lcom/umeng/newxp/view/ac;

    invoke-static {v0}, Lcom/umeng/newxp/view/ac;->a(Lcom/umeng/newxp/view/ac;)Lcom/umeng/newxp/view/GridTemplate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/newxp/view/GridTemplate;->requestNextPage()V

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/umeng/newxp/view/ad;->a:Lcom/umeng/newxp/view/ac;

    invoke-static {v0}, Lcom/umeng/newxp/view/ac;->a(Lcom/umeng/newxp/view/ac;)Lcom/umeng/newxp/view/GridTemplate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/newxp/view/GridTemplate;->notifyTotalDataChanged()V

    .line 370
    return-void
.end method
