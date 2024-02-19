.class Lcom/umeng/newxp/view/U;
.super Landroid/webkit/WebChromeClient;
.source "FloatContentHelper.java"


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/S;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/S;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/U;->a:Lcom/umeng/newxp/view/S;

    .line 119
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 4

    .prologue
    .line 122
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 123
    iget-object v0, p0, Lcom/umeng/newxp/view/U;->a:Lcom/umeng/newxp/view/S;

    invoke-static {v0}, Lcom/umeng/newxp/view/S;->a(Lcom/umeng/newxp/view/S;)Ljava/lang/Boolean;

    move-result-object v1

    monitor-enter v1

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/umeng/newxp/view/U;->a:Lcom/umeng/newxp/view/S;

    invoke-static {v0}, Lcom/umeng/newxp/view/S;->a(Lcom/umeng/newxp/view/S;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/umeng/newxp/view/U;->a:Lcom/umeng/newxp/view/S;

    invoke-static {v0}, Lcom/umeng/newxp/view/S;->b(Lcom/umeng/newxp/view/S;)Lcom/umeng/newxp/view/FloatDialogConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/newxp/view/FloatDialogConfig;->isDelay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/umeng/newxp/view/U;->a:Lcom/umeng/newxp/view/S;

    invoke-static {v0}, Lcom/umeng/newxp/view/S;->b(Lcom/umeng/newxp/view/S;)Lcom/umeng/newxp/view/FloatDialogConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/newxp/view/FloatDialogConfig;->getDelayProgress()I

    move-result v0

    if-lt p2, v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/umeng/newxp/view/U;->a:Lcom/umeng/newxp/view/S;

    invoke-static {v0}, Lcom/umeng/newxp/view/S;->c(Lcom/umeng/newxp/view/S;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 127
    iget-object v0, p0, Lcom/umeng/newxp/view/U;->a:Lcom/umeng/newxp/view/S;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/umeng/newxp/view/S;->a(Lcom/umeng/newxp/view/S;Ljava/lang/Boolean;)V

    .line 128
    invoke-static {}, Lcom/umeng/newxp/view/S;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "show dialog on web progress = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/umeng/newxp/view/U;->a:Lcom/umeng/newxp/view/S;

    invoke-static {v3}, Lcom/umeng/newxp/view/S;->b(Lcom/umeng/newxp/view/S;)Lcom/umeng/newxp/view/FloatDialogConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/newxp/view/FloatDialogConfig;->getDelayProgress()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_0
    monitor-exit v1

    .line 132
    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
