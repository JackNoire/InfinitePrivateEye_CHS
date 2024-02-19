.class public Lcom/umeng/newxp/net/c$a;
.super Ljava/lang/Object;
.source "XpDownloadAgent.java"

# interfaces
.implements Lcom/umeng/common/net/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/newxp/net/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/newxp/net/c;

.field private b:Ljava/lang/String;

.field private c:Lcom/umeng/common/net/c;


# direct methods
.method public constructor <init>(Lcom/umeng/newxp/net/c;)V
    .locals 1

    .prologue
    .line 61
    iput-object p1, p0, Lcom/umeng/newxp/net/c$a;->a:Lcom/umeng/newxp/net/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {p1}, Lcom/umeng/newxp/net/c;->a(Lcom/umeng/newxp/net/c;)Lcom/umeng/newxp/Promoter;

    move-result-object v0

    iget-object v0, v0, Lcom/umeng/newxp/Promoter;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/newxp/net/c$a;->b:Ljava/lang/String;

    .line 63
    invoke-static {p1}, Lcom/umeng/newxp/net/c;->b(Lcom/umeng/newxp/net/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/common/net/c;->a(Landroid/content/Context;)Lcom/umeng/common/net/c;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/newxp/net/c$a;->c:Lcom/umeng/common/net/c;

    .line 64
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 67
    invoke-static {}, Lcom/umeng/newxp/net/c;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XpDownloadListener.onStart"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    sget-boolean v0, Lcom/umeng/newxp/common/ExchangeConstants;->TIPS_DOWNLOAD:Z

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/umeng/newxp/net/c$a;->a:Lcom/umeng/newxp/net/c;

    invoke-static {v0}, Lcom/umeng/newxp/net/c;->b(Lcom/umeng/newxp/net/c;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/umeng/newxp/net/c$a;->a:Lcom/umeng/newxp/net/c;

    invoke-static {v2}, Lcom/umeng/newxp/net/c;->b(Lcom/umeng/newxp/net/c;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/newxp/net/c$a;->a:Lcom/umeng/newxp/net/c;

    invoke-static {v3}, Lcom/umeng/newxp/net/c;->b(Lcom/umeng/newxp/net/c;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v3

    const-string v4, "umeng_xp_tip_download_pre"

    invoke-virtual {v3, v4}, Lcom/umeng/common/c;->g(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/umeng/newxp/net/c$a;->a:Lcom/umeng/newxp/net/c;

    invoke-static {v2}, Lcom/umeng/newxp/net/c;->a(Lcom/umeng/newxp/net/c;)Lcom/umeng/newxp/Promoter;

    move-result-object v2

    iget-object v2, v2, Lcom/umeng/newxp/Promoter;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/umeng/newxp/net/c$a;->a:Lcom/umeng/newxp/net/c;

    invoke-static {v0}, Lcom/umeng/newxp/net/c;->c(Lcom/umeng/newxp/net/c;)Lcom/umeng/newxp/net/e;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 74
    new-instance v0, Lcom/umeng/newxp/net/XpReportClient;

    iget-object v1, p0, Lcom/umeng/newxp/net/c$a;->a:Lcom/umeng/newxp/net/c;

    invoke-static {v1}, Lcom/umeng/newxp/net/c;->b(Lcom/umeng/newxp/net/c;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/newxp/net/XpReportClient;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/umeng/newxp/net/c$a;->a:Lcom/umeng/newxp/net/c;

    invoke-static {v1}, Lcom/umeng/newxp/net/c;->c(Lcom/umeng/newxp/net/c;)Lcom/umeng/newxp/net/e;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/umeng/newxp/net/XpReportClient;->sendAsync(Lcom/umeng/common/net/o;Lcom/umeng/common/net/n$a;)V

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/umeng/newxp/net/c$a;->c:Lcom/umeng/common/net/c;

    const-string v1, "xp"

    iget-object v2, p0, Lcom/umeng/newxp/net/c$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/umeng/common/net/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 83
    return-void
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 86
    invoke-static {}, Lcom/umeng/newxp/net/c;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XpDownloadListener.onProgressUpdate"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public a(IILjava/lang/String;)V
    .locals 3

    .prologue
    .line 91
    invoke-static {}, Lcom/umeng/newxp/net/c;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "XpDownloadListener.onEndresult = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " file = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/umeng/newxp/net/c$a;->c:Lcom/umeng/common/net/c;

    const-string v1, "xp"

    iget-object v2, p0, Lcom/umeng/newxp/net/c$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/umeng/common/net/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 125
    return-void
.end method
