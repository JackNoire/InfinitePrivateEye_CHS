.class Lcom/umeng/newxp/view/aR;
.super Ljava/lang/Object;
.source "WapActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/aN;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/aN;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/aR;->a:Lcom/umeng/newxp/view/aN;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/umeng/newxp/view/aR;->a:Lcom/umeng/newxp/view/aN;

    invoke-static {v0}, Lcom/umeng/newxp/view/aN;->b(Lcom/umeng/newxp/view/aN;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/umeng/newxp/view/aR;->a:Lcom/umeng/newxp/view/aN;

    invoke-static {v0}, Lcom/umeng/newxp/view/aN;->b(Lcom/umeng/newxp/view/aN;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 212
    :cond_0
    return-void
.end method
