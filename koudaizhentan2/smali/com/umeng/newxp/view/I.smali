.class Lcom/umeng/newxp/view/I;
.super Ljava/lang/Object;
.source "ExchangeViewManager.java"

# interfaces
.implements Lcom/umeng/newxp/controller/XpListenersCenter$NTipsChangedListener;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/ExchangeViewManager;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/ExchangeViewManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/I;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(I)V
    .locals 3

    .prologue
    .line 346
    if-nez p1, :cond_0

    .line 347
    :try_start_0
    iget-object v0, p0, Lcom/umeng/newxp/view/I;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    invoke-static {v0}, Lcom/umeng/newxp/view/ExchangeViewManager;->e(Lcom/umeng/newxp/view/ExchangeViewManager;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 348
    iget-object v0, p0, Lcom/umeng/newxp/view/I;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    invoke-static {v0}, Lcom/umeng/newxp/view/ExchangeViewManager;->f(Lcom/umeng/newxp/view/ExchangeViewManager;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/newxp/view/I;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    iget-object v1, v1, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v1

    .line 349
    const-string v2, "umeng_xp_new_tip"

    .line 348
    invoke-virtual {v1, v2}, Lcom/umeng/common/c;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 350
    iget-object v0, p0, Lcom/umeng/newxp/view/I;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    invoke-static {v0}, Lcom/umeng/newxp/view/ExchangeViewManager;->g(Lcom/umeng/newxp/view/ExchangeViewManager;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    iget-object v0, p0, Lcom/umeng/newxp/view/I;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    invoke-static {v0}, Lcom/umeng/newxp/view/ExchangeViewManager;->g(Lcom/umeng/newxp/view/ExchangeViewManager;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 365
    :goto_0
    return-void

    .line 352
    :cond_0
    if-lez p1, :cond_1

    .line 353
    iget-object v0, p0, Lcom/umeng/newxp/view/I;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    invoke-static {v0}, Lcom/umeng/newxp/view/ExchangeViewManager;->f(Lcom/umeng/newxp/view/ExchangeViewManager;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 354
    iget-object v0, p0, Lcom/umeng/newxp/view/I;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    invoke-static {v0}, Lcom/umeng/newxp/view/ExchangeViewManager;->g(Lcom/umeng/newxp/view/ExchangeViewManager;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/newxp/view/I;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    iget-object v1, v1, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v1

    .line 355
    const-string v2, "umeng_xp_new_tip_bg"

    .line 354
    invoke-virtual {v1, v2}, Lcom/umeng/common/c;->d(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 356
    iget-object v0, p0, Lcom/umeng/newxp/view/I;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    invoke-static {v0}, Lcom/umeng/newxp/view/ExchangeViewManager;->g(Lcom/umeng/newxp/view/ExchangeViewManager;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v0, p0, Lcom/umeng/newxp/view/I;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    invoke-static {v0}, Lcom/umeng/newxp/view/ExchangeViewManager;->e(Lcom/umeng/newxp/view/ExchangeViewManager;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 361
    :catch_0
    move-exception v0

    .line 362
    iget-object v1, p0, Lcom/umeng/newxp/view/I;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    invoke-static {v1}, Lcom/umeng/newxp/view/ExchangeViewManager;->c(Lcom/umeng/newxp/view/ExchangeViewManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 359
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/umeng/newxp/view/I;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    invoke-static {v0}, Lcom/umeng/newxp/view/ExchangeViewManager;->e(Lcom/umeng/newxp/view/ExchangeViewManager;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
