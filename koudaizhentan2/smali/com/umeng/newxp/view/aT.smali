.class Lcom/umeng/newxp/view/aT;
.super Landroid/webkit/WebChromeClient;
.source "WapActivity.java"


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/aN;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/aN;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/aT;->a:Lcom/umeng/newxp/view/aN;

    .line 236
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/umeng/newxp/view/aT;->a:Lcom/umeng/newxp/view/aN;

    invoke-static {v0}, Lcom/umeng/newxp/view/aN;->c(Lcom/umeng/newxp/view/aN;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 241
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 242
    return-void
.end method
