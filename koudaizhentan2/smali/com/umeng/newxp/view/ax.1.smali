.class Lcom/umeng/newxp/view/ax;
.super Ljava/lang/Object;
.source "ListDialog.java"

# interfaces
.implements Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/aw;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/aw;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/ax;->a:Lcom/umeng/newxp/view/aw;

    .line 75
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
    .line 78
    if-nez p1, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/umeng/newxp/view/ax;->a:Lcom/umeng/newxp/view/aw;

    const/4 v1, 0x0

    invoke-static {v1, p2}, Lcom/umeng/newxp/common/g;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/newxp/view/aw;->a(Lcom/umeng/newxp/view/aw;Ljava/util/List;)V

    .line 82
    iget-object v0, p0, Lcom/umeng/newxp/view/ax;->a:Lcom/umeng/newxp/view/aw;

    invoke-static {v0}, Lcom/umeng/newxp/view/aw;->a(Lcom/umeng/newxp/view/aw;)V

    .line 84
    iget-object v0, p0, Lcom/umeng/newxp/view/ax;->a:Lcom/umeng/newxp/view/aw;

    iget-object v0, v0, Lcom/umeng/newxp/view/aw;->a:Lcom/umeng/newxp/view/aI;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/umeng/newxp/view/ax;->a:Lcom/umeng/newxp/view/aw;

    iget-object v0, v0, Lcom/umeng/newxp/view/aw;->a:Lcom/umeng/newxp/view/aI;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/aI;->b()V

    goto :goto_0
.end method
