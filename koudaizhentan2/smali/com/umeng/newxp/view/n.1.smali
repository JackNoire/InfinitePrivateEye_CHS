.class Lcom/umeng/newxp/view/n;
.super Ljava/lang/Object;
.source "CloudDialog.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/i;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/i;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/n;->a:Lcom/umeng/newxp/view/i;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6

    .prologue
    .line 190
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-lez v0, :cond_0

    .line 191
    new-instance v0, Lcom/umeng/common/net/a;

    iget-object v1, p0, Lcom/umeng/newxp/view/n;->a:Lcom/umeng/newxp/view/i;

    invoke-static {v1}, Lcom/umeng/newxp/view/i;->f(Lcom/umeng/newxp/view/i;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "xp"

    const-string v3, ""

    const/4 v5, 0x0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/umeng/common/net/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/common/net/l;)V

    invoke-virtual {v0}, Lcom/umeng/common/net/a;->a()V

    .line 193
    :cond_0
    return-void
.end method
