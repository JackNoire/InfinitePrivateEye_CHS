.class Lcom/umeng/newxp/view/O;
.super Ljava/lang/Object;
.source "ExchangeViewManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/ExchangeViewManager;

.field private final synthetic b:Lcom/umeng/newxp/Promoter;

.field private final synthetic c:Lcom/umeng/newxp/controller/XpListenersCenter$FloatDialogListener;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/ExchangeViewManager;Lcom/umeng/newxp/Promoter;Lcom/umeng/newxp/controller/XpListenersCenter$FloatDialogListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/O;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    iput-object p2, p0, Lcom/umeng/newxp/view/O;->b:Lcom/umeng/newxp/Promoter;

    iput-object p3, p0, Lcom/umeng/newxp/view/O;->c:Lcom/umeng/newxp/controller/XpListenersCenter$FloatDialogListener;

    .line 577
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 580
    iget-object v0, p0, Lcom/umeng/newxp/view/O;->b:Lcom/umeng/newxp/Promoter;

    iget-object v0, v0, Lcom/umeng/newxp/Promoter;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 581
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 582
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 583
    iget-object v1, p0, Lcom/umeng/newxp/view/O;->c:Lcom/umeng/newxp/controller/XpListenersCenter$FloatDialogListener;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/umeng/newxp/Promoter$a;->c:Lcom/umeng/newxp/Promoter$a;

    invoke-virtual {v1}, Lcom/umeng/newxp/Promoter$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/umeng/newxp/view/O;->c:Lcom/umeng/newxp/controller/XpListenersCenter$FloatDialogListener;

    iget-object v1, p0, Lcom/umeng/newxp/view/O;->b:Lcom/umeng/newxp/Promoter;

    iget-object v1, v1, Lcom/umeng/newxp/Promoter;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/controller/XpListenersCenter$FloatDialogListener;->onConfirmClickWithCallBackUrl(Ljava/lang/String;)Z

    .line 586
    new-instance v0, Lcom/umeng/newxp/net/e$a;

    iget-object v1, p0, Lcom/umeng/newxp/view/O;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    iget-object v1, v1, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/umeng/newxp/net/e$a;-><init>(Landroid/content/Context;)V

    .line 587
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/umeng/newxp/net/e$a;->b(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 588
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->d(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/newxp/view/O;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    iget v1, v1, Lcom/umeng/newxp/view/ExchangeViewManager;->d:I

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->c(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/umeng/newxp/Promoter;

    iget-object v2, p0, Lcom/umeng/newxp/view/O;->b:Lcom/umeng/newxp/Promoter;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a([Lcom/umeng/newxp/Promoter;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 589
    iget-object v1, p0, Lcom/umeng/newxp/view/O;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    invoke-static {v1}, Lcom/umeng/newxp/view/ExchangeViewManager;->a(Lcom/umeng/newxp/view/ExchangeViewManager;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/newxp/controller/ExchangeDataService;->getTimeConsuming()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->d(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 590
    iget-object v1, p0, Lcom/umeng/newxp/view/O;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    iget-object v1, v1, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/newxp/view/O;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    invoke-static {v2}, Lcom/umeng/newxp/view/ExchangeViewManager;->a(Lcom/umeng/newxp/view/ExchangeViewManager;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->b(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/newxp/view/O;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    invoke-static {v1}, Lcom/umeng/newxp/view/ExchangeViewManager;->a(Lcom/umeng/newxp/view/ExchangeViewManager;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v1

    iget-object v1, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 591
    iget-object v1, p0, Lcom/umeng/newxp/view/O;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    invoke-static {v1}, Lcom/umeng/newxp/view/ExchangeViewManager;->a(Lcom/umeng/newxp/view/ExchangeViewManager;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v1

    iget-object v1, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->c(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/newxp/net/e$a;->a()Lcom/umeng/newxp/net/e;

    move-result-object v0

    .line 592
    new-instance v1, Lcom/umeng/newxp/net/XpReportClient;

    iget-object v2, p0, Lcom/umeng/newxp/view/O;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    iget-object v2, v2, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/umeng/newxp/net/XpReportClient;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/umeng/newxp/net/XpReportClient;->sendAsync(Lcom/umeng/common/net/o;Lcom/umeng/common/net/n$a;)V

    .line 597
    :goto_0
    return-void

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/umeng/newxp/view/O;->b:Lcom/umeng/newxp/Promoter;

    iget-object v1, p0, Lcom/umeng/newxp/view/O;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    iget-object v1, v1, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/newxp/view/O;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    invoke-static {v2}, Lcom/umeng/newxp/view/ExchangeViewManager;->a(Lcom/umeng/newxp/view/ExchangeViewManager;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v2

    .line 596
    iget-object v3, p0, Lcom/umeng/newxp/view/O;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    invoke-static {v3}, Lcom/umeng/newxp/view/ExchangeViewManager;->a(Lcom/umeng/newxp/view/ExchangeViewManager;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v3

    iget v3, v3, Lcom/umeng/newxp/controller/ExchangeDataService;->layoutType:I

    .line 595
    invoke-static {v0, v1, v2, v3, v4}, Lcom/umeng/newxp/controller/b;->a(Lcom/umeng/newxp/Promoter;Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;IZ)V

    goto :goto_0
.end method
