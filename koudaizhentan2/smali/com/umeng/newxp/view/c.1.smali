.class Lcom/umeng/newxp/view/c;
.super Ljava/lang/Object;
.source "AdvertiserAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/a;

.field private final synthetic b:Lcom/umeng/newxp/Promoter;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/a;Lcom/umeng/newxp/Promoter;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/c;->a:Lcom/umeng/newxp/view/a;

    iput-object p2, p0, Lcom/umeng/newxp/view/c;->b:Lcom/umeng/newxp/Promoter;

    iput p3, p0, Lcom/umeng/newxp/view/c;->c:I

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 216
    iget-object v0, p0, Lcom/umeng/newxp/view/c;->a:Lcom/umeng/newxp/view/a;

    iget-object v0, v0, Lcom/umeng/newxp/view/a;->a:Lcom/umeng/newxp/controller/XpListenersCenter$ListClickListener;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/umeng/newxp/view/c;->a:Lcom/umeng/newxp/view/a;

    iget-object v0, v0, Lcom/umeng/newxp/view/a;->a:Lcom/umeng/newxp/controller/XpListenersCenter$ListClickListener;

    iget-object v1, p0, Lcom/umeng/newxp/view/c;->b:Lcom/umeng/newxp/Promoter;

    invoke-interface {v0, v1}, Lcom/umeng/newxp/controller/XpListenersCenter$ListClickListener;->click(Lcom/umeng/newxp/Promoter;)V

    .line 222
    :goto_0
    return-void

    .line 220
    :cond_0
    new-instance v0, Lcom/umeng/newxp/controller/a$a;

    iget-object v1, p0, Lcom/umeng/newxp/view/c;->b:Lcom/umeng/newxp/Promoter;

    iget v2, p0, Lcom/umeng/newxp/view/c;->c:I

    invoke-direct {v0, v1, v2}, Lcom/umeng/newxp/controller/a$a;-><init>(Lcom/umeng/newxp/Promoter;I)V

    .line 221
    iget-object v1, p0, Lcom/umeng/newxp/view/c;->a:Lcom/umeng/newxp/view/a;

    invoke-static {v1}, Lcom/umeng/newxp/view/a;->a(Lcom/umeng/newxp/view/a;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/newxp/view/c;->a:Lcom/umeng/newxp/view/a;

    invoke-static {v2}, Lcom/umeng/newxp/view/a;->b(Lcom/umeng/newxp/view/a;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/newxp/view/c;->a:Lcom/umeng/newxp/view/a;

    invoke-static {v3}, Lcom/umeng/newxp/view/a;->c(Lcom/umeng/newxp/view/a;)I

    move-result v3

    const/4 v4, 0x0

    iget v5, p0, Lcom/umeng/newxp/view/c;->c:I

    .line 220
    invoke-static/range {v0 .. v5}, Lcom/umeng/newxp/controller/b;->a(Lcom/umeng/newxp/controller/a$a;Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;IZI)V

    goto :goto_0
.end method
