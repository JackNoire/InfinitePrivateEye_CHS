.class Lcom/umeng/newxp/view/aO;
.super Ljava/lang/Object;
.source "WapActivity.java"

# interfaces
.implements Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/aN;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/aN;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/aO;->a:Lcom/umeng/newxp/view/aN;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dataReceived(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    if-nez p2, :cond_0

    .line 135
    iget-object v0, p0, Lcom/umeng/newxp/view/aO;->a:Lcom/umeng/newxp/view/aN;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/aN;->finish()V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/umeng/newxp/view/aO;->a:Lcom/umeng/newxp/view/aN;

    const-string v1, "http://developer.android.com"

    invoke-static {v0, v1}, Lcom/umeng/newxp/view/aN;->a(Lcom/umeng/newxp/view/aN;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/umeng/newxp/view/aO;->a:Lcom/umeng/newxp/view/aN;

    invoke-static {v0}, Lcom/umeng/newxp/view/aN;->a(Lcom/umeng/newxp/view/aN;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/umeng/newxp/view/aO;->a:Lcom/umeng/newxp/view/aN;

    invoke-static {v0}, Lcom/umeng/newxp/view/aN;->b(Lcom/umeng/newxp/view/aN;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/newxp/view/aO;->a:Lcom/umeng/newxp/view/aN;

    invoke-static {v1}, Lcom/umeng/newxp/view/aN;->a(Lcom/umeng/newxp/view/aN;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 141
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/umeng/newxp/view/aO;->a:Lcom/umeng/newxp/view/aN;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/aN;->finish()V

    goto :goto_0
.end method
