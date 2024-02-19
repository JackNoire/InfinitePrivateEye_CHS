.class Lcom/umeng/newxp/view/ap;
.super Ljava/lang/Object;
.source "LargeGallery.java"

# interfaces
.implements Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/an;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/an;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/ap;->a:Lcom/umeng/newxp/view/an;

    .line 98
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
    .line 101
    if-nez p1, :cond_0

    .line 102
    sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    const-string v1, "failed to get request data"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/umeng/newxp/view/ap;->a:Lcom/umeng/newxp/view/an;

    iget-object v1, p0, Lcom/umeng/newxp/view/ap;->a:Lcom/umeng/newxp/view/an;

    invoke-static {v1}, Lcom/umeng/newxp/view/an;->a(Lcom/umeng/newxp/view/an;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/newxp/view/an;->a(Lcom/umeng/newxp/view/an;Landroid/view/ViewGroup;)V

    .line 108
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/umeng/newxp/view/ap;->a:Lcom/umeng/newxp/view/an;

    invoke-static {v0, p2}, Lcom/umeng/newxp/view/an;->a(Lcom/umeng/newxp/view/an;Ljava/util/List;)V

    goto :goto_0
.end method
