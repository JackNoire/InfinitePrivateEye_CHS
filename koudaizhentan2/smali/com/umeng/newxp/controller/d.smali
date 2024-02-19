.class Lcom/umeng/newxp/controller/d;
.super Ljava/lang/Object;
.source "ExchangeDataService.java"

# interfaces
.implements Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/controller/c;

.field private final synthetic b:Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;

.field private final synthetic c:Z


# direct methods
.method constructor <init>(Lcom/umeng/newxp/controller/c;Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/controller/d;->a:Lcom/umeng/newxp/controller/c;

    iput-object p2, p0, Lcom/umeng/newxp/controller/d;->b:Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;

    iput-boolean p3, p0, Lcom/umeng/newxp/controller/d;->c:Z

    .line 592
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
    .line 595
    iget-object v0, p0, Lcom/umeng/newxp/controller/d;->b:Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;

    invoke-interface {v0, p1, p2}, Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;->dataReceived(ILjava/util/List;)V

    .line 596
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/umeng/newxp/controller/d;->a:Lcom/umeng/newxp/controller/c;

    iget-boolean v1, p0, Lcom/umeng/newxp/controller/d;->c:Z

    invoke-static {v0, v1}, Lcom/umeng/newxp/controller/c;->a(Lcom/umeng/newxp/controller/c;Z)V

    .line 599
    :cond_0
    return-void
.end method
