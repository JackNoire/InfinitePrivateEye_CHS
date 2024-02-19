.class Lcom/umeng/newxp/view/Y;
.super Ljava/lang/Object;
.source "GridTemplate.java"

# interfaces
.implements Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/GridTemplate;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/GridTemplate;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/Y;->a:Lcom/umeng/newxp/view/GridTemplate;

    .line 77
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
    .line 80
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/umeng/newxp/view/Y;->a:Lcom/umeng/newxp/view/GridTemplate;

    invoke-static {v0, p2}, Lcom/umeng/newxp/view/GridTemplate;->a(Lcom/umeng/newxp/view/GridTemplate;Ljava/util/List;)V

    .line 82
    iget-object v0, p0, Lcom/umeng/newxp/view/Y;->a:Lcom/umeng/newxp/view/GridTemplate;

    invoke-static {v0}, Lcom/umeng/newxp/view/GridTemplate;->a(Lcom/umeng/newxp/view/GridTemplate;)V

    .line 84
    :cond_0
    return-void
.end method
