.class Lcom/umeng/newxp/view/y;
.super Ljava/lang/Object;
.source "EncapsulatedList.java"

# interfaces
.implements Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/w;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/w;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/y;->a:Lcom/umeng/newxp/view/w;

    .line 101
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
    .line 104
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/umeng/newxp/view/y;->a:Lcom/umeng/newxp/view/w;

    invoke-static {v0, p2}, Lcom/umeng/newxp/view/w;->a(Lcom/umeng/newxp/view/w;Ljava/util/List;)V

    .line 106
    iget-object v0, p0, Lcom/umeng/newxp/view/y;->a:Lcom/umeng/newxp/view/w;

    invoke-static {v0}, Lcom/umeng/newxp/view/w;->f(Lcom/umeng/newxp/view/w;)V

    .line 108
    :cond_0
    return-void
.end method
