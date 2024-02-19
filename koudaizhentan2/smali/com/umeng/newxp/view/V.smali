.class Lcom/umeng/newxp/view/V;
.super Landroid/webkit/WebViewClient;
.source "FloatContentHelper.java"


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/S;

.field private final synthetic b:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/S;Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/V;->a:Lcom/umeng/newxp/view/S;

    iput-object p2, p0, Lcom/umeng/newxp/view/V;->b:Landroid/webkit/WebView;

    .line 134
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/umeng/newxp/view/V;->a:Lcom/umeng/newxp/view/S;

    invoke-static {v0}, Lcom/umeng/newxp/view/S;->e(Lcom/umeng/newxp/view/S;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/umeng/newxp/view/V;->a:Lcom/umeng/newxp/view/S;

    iget-object v1, p0, Lcom/umeng/newxp/view/V;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/view/S;->a(Landroid/webkit/WebView;)V

    .line 152
    iget-object v0, p0, Lcom/umeng/newxp/view/V;->a:Lcom/umeng/newxp/view/S;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/umeng/newxp/view/S;->a(Lcom/umeng/newxp/view/S;Z)V

    .line 154
    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 145
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 146
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/umeng/newxp/view/V;->a:Lcom/umeng/newxp/view/S;

    invoke-static {v0}, Lcom/umeng/newxp/view/S;->d(Lcom/umeng/newxp/view/S;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Oh no! "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 160
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 137
    invoke-static {}, Lcom/umeng/newxp/view/S;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OverrideUrl: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 139
    iget-object v1, p0, Lcom/umeng/newxp/view/V;->a:Lcom/umeng/newxp/view/S;

    invoke-static {v1}, Lcom/umeng/newxp/view/S;->d(Lcom/umeng/newxp/view/S;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 140
    const/4 v0, 0x1

    return v0
.end method
