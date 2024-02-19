.class Lcom/umeng/newxp/view/H;
.super Ljava/lang/Object;
.source "ExchangeViewManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/ExchangeViewManager;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/ExchangeViewManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/H;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 312
    iget-object v0, p0, Lcom/umeng/newxp/view/H;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    iget-object v0, v0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    .line 313
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    .line 312
    invoke-static {v0, v1}, Lcom/umeng/common/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 313
    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/umeng/newxp/view/H;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    iget-object v0, v0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/common/b;->n(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/umeng/newxp/view/H;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    iget-object v0, v0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    .line 317
    iget-object v1, p0, Lcom/umeng/newxp/view/H;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    iget-object v1, v1, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 318
    iget-object v2, p0, Lcom/umeng/newxp/view/H;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    iget-object v2, v2, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/common/a/c;->a(Landroid/content/Context;)I

    move-result v2

    .line 317
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 319
    const/4 v2, 0x1

    .line 315
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 319
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://ex.mobmore.com/api/wap?sdk_version="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 328
    iget-object v2, p0, Lcom/umeng/newxp/view/H;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    iget-object v2, v2, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/common/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 327
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 329
    iget-object v1, p0, Lcom/umeng/newxp/view/H;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    invoke-static {v1}, Lcom/umeng/newxp/view/ExchangeViewManager;->a(Lcom/umeng/newxp/view/ExchangeViewManager;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v1

    iget-object v1, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "&slot_id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 330
    iget-object v2, p0, Lcom/umeng/newxp/view/H;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    invoke-static {v2}, Lcom/umeng/newxp/view/ExchangeViewManager;->a(Lcom/umeng/newxp/view/ExchangeViewManager;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v2

    iget-object v2, v2, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 329
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    :goto_1
    new-instance v1, Lcom/umeng/newxp/view/i;

    iget-object v2, p0, Lcom/umeng/newxp/view/H;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    iget-object v2, v2, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/umeng/newxp/view/i;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/umeng/newxp/view/i;->show()V

    .line 338
    iget-object v0, p0, Lcom/umeng/newxp/view/H;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    iget-object v0, v0, Lcom/umeng/newxp/view/ExchangeViewManager;->e:Lcom/umeng/newxp/controller/XpListenersCenter$EntryOnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/newxp/view/H;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    iget-object v0, v0, Lcom/umeng/newxp/view/ExchangeViewManager;->e:Lcom/umeng/newxp/controller/XpListenersCenter$EntryOnClickListener;

    iget-object v1, p0, Lcom/umeng/newxp/view/H;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    invoke-static {v1}, Lcom/umeng/newxp/view/ExchangeViewManager;->d(Lcom/umeng/newxp/view/ExchangeViewManager;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/umeng/newxp/controller/XpListenersCenter$EntryOnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 331
    :cond_2
    iget-object v1, p0, Lcom/umeng/newxp/view/H;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    iget-object v1, v1, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/newxp/view/H;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    invoke-static {v2}, Lcom/umeng/newxp/view/ExchangeViewManager;->a(Lcom/umeng/newxp/view/ExchangeViewManager;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "&app_key="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 332
    iget-object v2, p0, Lcom/umeng/newxp/view/H;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    iget-object v2, v2, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/umeng/newxp/view/H;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    invoke-static {v3}, Lcom/umeng/newxp/view/ExchangeViewManager;->a(Lcom/umeng/newxp/view/ExchangeViewManager;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 331
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
