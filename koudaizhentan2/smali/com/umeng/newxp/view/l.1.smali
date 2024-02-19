.class Lcom/umeng/newxp/view/l;
.super Landroid/webkit/WebChromeClient;
.source "CloudDialog.java"


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/i;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/i;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/l;->a:Lcom/umeng/newxp/view/i;

    .line 146
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/umeng/newxp/view/l;->a:Lcom/umeng/newxp/view/i;

    invoke-static {v0}, Lcom/umeng/newxp/view/i;->a(Lcom/umeng/newxp/view/i;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 151
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 152
    return-void
.end method
