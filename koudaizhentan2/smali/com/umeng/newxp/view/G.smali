.class Lcom/umeng/newxp/view/G;
.super Ljava/lang/Object;
.source "ExchangeViewManager.java"

# interfaces
.implements Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/ExchangeViewManager;

.field private final synthetic b:Lcom/umeng/newxp/view/FloatDialogConfig;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/ExchangeViewManager;Lcom/umeng/newxp/view/FloatDialogConfig;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/G;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    iput-object p2, p0, Lcom/umeng/newxp/view/G;->b:Lcom/umeng/newxp/view/FloatDialogConfig;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dataReceived(ILjava/util/List;)V
    .locals 3
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
    .line 169
    iget-object v0, p0, Lcom/umeng/newxp/view/G;->b:Lcom/umeng/newxp/view/FloatDialogConfig;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/FloatDialogConfig;->getListener()Lcom/umeng/newxp/controller/XpListenersCenter$FloatDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/newxp/view/G;->b:Lcom/umeng/newxp/view/FloatDialogConfig;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/FloatDialogConfig;->getListener()Lcom/umeng/newxp/controller/XpListenersCenter$FloatDialogListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/newxp/controller/XpListenersCenter$FloatDialogListener;->onPrepared(I)V

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/umeng/newxp/view/G;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    invoke-static {v0}, Lcom/umeng/newxp/view/ExchangeViewManager;->a(Lcom/umeng/newxp/view/ExchangeViewManager;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v0

    iget-object v0, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->opensize:Ljava/lang/String;

    .line 173
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 174
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 175
    const-string v1, "0.04"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/Promoter;

    .line 177
    iget-object v1, p0, Lcom/umeng/newxp/view/G;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    iget-object v2, p0, Lcom/umeng/newxp/view/G;->b:Lcom/umeng/newxp/view/FloatDialogConfig;

    invoke-virtual {v2}, Lcom/umeng/newxp/view/FloatDialogConfig;->getListener()Lcom/umeng/newxp/controller/XpListenersCenter$FloatDialogListener;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/umeng/newxp/view/ExchangeViewManager;->a(Lcom/umeng/newxp/view/ExchangeViewManager;Lcom/umeng/newxp/Promoter;Lcom/umeng/newxp/controller/XpListenersCenter$FloatDialogListener;)V

    .line 184
    :goto_0
    return-void

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/umeng/newxp/view/G;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    iget-object v0, v0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/umeng/newxp/view/G;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    invoke-static {v1}, Lcom/umeng/newxp/view/ExchangeViewManager;->a(Lcom/umeng/newxp/view/ExchangeViewManager;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/newxp/view/G;->b:Lcom/umeng/newxp/view/FloatDialogConfig;

    invoke-static {v0, v1, v2, p2}, Lcom/umeng/newxp/view/W;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;Lcom/umeng/newxp/view/FloatDialogConfig;Ljava/util/List;)V

    goto :goto_0

    .line 182
    :cond_2
    iget-object v0, p0, Lcom/umeng/newxp/view/G;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    invoke-static {v0}, Lcom/umeng/newxp/view/ExchangeViewManager;->c(Lcom/umeng/newxp/view/ExchangeViewManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unshow the suspended window. opensize is null"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
