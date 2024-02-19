.class Lcom/umeng/newxp/view/aj;
.super Landroid/webkit/WebChromeClient;
.source "LandingWebViewDialog.java"


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/LandingWebViewDialog;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/LandingWebViewDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/aj;->a:Lcom/umeng/newxp/view/LandingWebViewDialog;

    .line 133
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 3

    .prologue
    .line 135
    sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Webview loading progress: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/umeng/newxp/view/aj;->a:Lcom/umeng/newxp/view/LandingWebViewDialog;

    invoke-static {v0}, Lcom/umeng/newxp/view/LandingWebViewDialog;->a(Lcom/umeng/newxp/view/LandingWebViewDialog;)V

    .line 139
    :cond_0
    return-void
.end method
