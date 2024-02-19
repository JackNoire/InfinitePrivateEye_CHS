.class Lcom/umeng/newxp/view/m;
.super Landroid/webkit/WebViewClient;
.source "CloudDialog.java"


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/i;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/i;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/m;->a:Lcom/umeng/newxp/view/i;

    .line 154
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/umeng/newxp/view/m;->a:Lcom/umeng/newxp/view/i;

    invoke-static {v0}, Lcom/umeng/newxp/view/i;->c(Lcom/umeng/newxp/view/i;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/umeng/newxp/view/m;->a:Lcom/umeng/newxp/view/i;

    invoke-static {v0}, Lcom/umeng/newxp/view/i;->d(Lcom/umeng/newxp/view/i;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/umeng/newxp/view/m;->a:Lcom/umeng/newxp/view/i;

    iget-object v1, p0, Lcom/umeng/newxp/view/m;->a:Lcom/umeng/newxp/view/i;

    invoke-static {v1}, Lcom/umeng/newxp/view/i;->e(Lcom/umeng/newxp/view/i;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/view/i;->a(Landroid/webkit/WebView;)V

    .line 173
    iget-object v0, p0, Lcom/umeng/newxp/view/m;->a:Lcom/umeng/newxp/view/i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/umeng/newxp/view/i;->b(Lcom/umeng/newxp/view/i;Z)V

    .line 175
    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/umeng/newxp/view/m;->a:Lcom/umeng/newxp/view/i;

    invoke-static {v0}, Lcom/umeng/newxp/view/i;->b(Lcom/umeng/newxp/view/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/umeng/newxp/view/m;->a:Lcom/umeng/newxp/view/i;

    invoke-static {v0}, Lcom/umeng/newxp/view/i;->c(Lcom/umeng/newxp/view/i;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 165
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 166
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/umeng/newxp/view/m;->a:Lcom/umeng/newxp/view/i;

    invoke-static {v0}, Lcom/umeng/newxp/view/i;->f(Lcom/umeng/newxp/view/i;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Oh no! "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 180
    const/4 v2, 0x0

    .line 179
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 181
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 157
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 158
    const/4 v0, 0x1

    return v0
.end method
