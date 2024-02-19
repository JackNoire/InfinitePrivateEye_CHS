.class Lcom/umeng/newxp/view/aL;
.super Ljava/lang/Object;
.source "SimpleDownloadDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/aK;

.field private final synthetic b:Lcom/umeng/newxp/controller/ExchangeDataService;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/aK;Lcom/umeng/newxp/controller/ExchangeDataService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/aL;->a:Lcom/umeng/newxp/view/aK;

    iput-object p2, p0, Lcom/umeng/newxp/view/aL;->b:Lcom/umeng/newxp/controller/ExchangeDataService;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 35
    new-instance v0, Lcom/umeng/newxp/net/e$a;

    iget-object v1, p0, Lcom/umeng/newxp/view/aL;->a:Lcom/umeng/newxp/view/aK;

    invoke-static {v1}, Lcom/umeng/newxp/view/aK;->a(Lcom/umeng/newxp/view/aK;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/newxp/net/e$a;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/umeng/newxp/view/aL;->b:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-virtual {v1}, Lcom/umeng/newxp/controller/ExchangeDataService;->getTimeConsuming()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->d(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/umeng/newxp/view/aL;->a:Lcom/umeng/newxp/view/aK;

    invoke-static {v1}, Lcom/umeng/newxp/view/aK;->b(Lcom/umeng/newxp/view/aK;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->b(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/umeng/newxp/net/e$a;->d(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/umeng/newxp/view/aL;->a:Lcom/umeng/newxp/view/aK;

    invoke-static {v1}, Lcom/umeng/newxp/view/aK;->c(Lcom/umeng/newxp/view/aK;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->c(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    new-array v1, v2, [Lcom/umeng/newxp/Promoter;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/umeng/newxp/view/aL;->a:Lcom/umeng/newxp/view/aK;

    invoke-static {v3}, Lcom/umeng/newxp/view/aK;->d(Lcom/umeng/newxp/view/aK;)Lcom/umeng/newxp/Promoter;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a([Lcom/umeng/newxp/Promoter;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/umeng/newxp/view/aL;->a:Lcom/umeng/newxp/view/aK;

    invoke-static {v1}, Lcom/umeng/newxp/view/aK;->a(Lcom/umeng/newxp/view/aK;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/newxp/view/aL;->b:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v1, v2}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->b(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/newxp/view/aL;->b:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v1, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/umeng/newxp/view/aL;->b:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v1, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->c(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 43
    new-instance v1, Lcom/umeng/newxp/net/c;

    iget-object v2, p0, Lcom/umeng/newxp/view/aL;->a:Lcom/umeng/newxp/view/aK;

    invoke-static {v2}, Lcom/umeng/newxp/view/aK;->a(Lcom/umeng/newxp/view/aK;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/newxp/view/aL;->a:Lcom/umeng/newxp/view/aK;

    invoke-static {v3}, Lcom/umeng/newxp/view/aK;->d(Lcom/umeng/newxp/view/aK;)Lcom/umeng/newxp/Promoter;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/umeng/newxp/net/c;-><init>(Landroid/content/Context;Lcom/umeng/newxp/Promoter;Lcom/umeng/newxp/net/e$a;)V

    invoke-virtual {v1}, Lcom/umeng/newxp/net/c;->a()V

    .line 45
    return-void
.end method
