.class Lcom/umeng/newxp/view/T;
.super Ljava/lang/Object;
.source "FloatContentHelper.java"

# interfaces
.implements Lcom/umeng/common/net/q$a;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/S;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/S;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/T;->a:Lcom/umeng/newxp/view/S;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/umeng/common/net/p$a;)V
    .locals 3

    .prologue
    .line 82
    sget-object v0, Lcom/umeng/common/net/p$a;->a:Lcom/umeng/common/net/p$a;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/umeng/newxp/view/T;->a:Lcom/umeng/newxp/view/S;

    invoke-static {v0}, Lcom/umeng/newxp/view/S;->a(Lcom/umeng/newxp/view/S;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/umeng/newxp/view/T;->a:Lcom/umeng/newxp/view/S;

    invoke-static {v0}, Lcom/umeng/newxp/view/S;->b(Lcom/umeng/newxp/view/S;)Lcom/umeng/newxp/view/FloatDialogConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/newxp/view/FloatDialogConfig;->isDelay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/umeng/newxp/view/T;->a:Lcom/umeng/newxp/view/S;

    invoke-static {v0}, Lcom/umeng/newxp/view/S;->c(Lcom/umeng/newxp/view/S;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 84
    iget-object v0, p0, Lcom/umeng/newxp/view/T;->a:Lcom/umeng/newxp/view/S;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/newxp/view/S;->a(Lcom/umeng/newxp/view/S;Ljava/lang/Boolean;)V

    .line 90
    :goto_0
    return-void

    .line 86
    :cond_0
    sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "image bind failed..[status="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] [delayShowFlag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 88
    iget-object v2, p0, Lcom/umeng/newxp/view/T;->a:Lcom/umeng/newxp/view/S;

    invoke-static {v2}, Lcom/umeng/newxp/view/S;->a(Lcom/umeng/newxp/view/S;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] [config.isDelay()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/newxp/view/T;->a:Lcom/umeng/newxp/view/S;

    invoke-static {v2}, Lcom/umeng/newxp/view/S;->b(Lcom/umeng/newxp/view/S;)Lcom/umeng/newxp/view/FloatDialogConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/newxp/view/FloatDialogConfig;->isDelay()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 89
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-static {v0, v1}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/umeng/common/net/q$b;)V
    .locals 0

    .prologue
    .line 77
    return-void
.end method
