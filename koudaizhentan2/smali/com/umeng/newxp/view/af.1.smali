.class Lcom/umeng/newxp/view/af;
.super Ljava/lang/Object;
.source "Hypertextlink.java"

# interfaces
.implements Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/ae;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/ae;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/af;->a:Lcom/umeng/newxp/view/ae;

    .line 70
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
    .line 73
    if-nez p1, :cond_0

    .line 74
    sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    const-string v1, "failed to get request data"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/umeng/newxp/view/af;->a:Lcom/umeng/newxp/view/ae;

    invoke-static {v0, p2}, Lcom/umeng/newxp/view/ae;->a(Lcom/umeng/newxp/view/ae;Ljava/util/List;)V

    goto :goto_0
.end method
