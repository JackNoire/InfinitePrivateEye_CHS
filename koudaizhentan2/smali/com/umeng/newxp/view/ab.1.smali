.class Lcom/umeng/newxp/view/ab;
.super Ljava/lang/Object;
.source "GridTemplate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/aa;

.field private final synthetic b:Lcom/umeng/newxp/Promoter;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/aa;Lcom/umeng/newxp/Promoter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/ab;->a:Lcom/umeng/newxp/view/aa;

    iput-object p2, p0, Lcom/umeng/newxp/view/ab;->b:Lcom/umeng/newxp/Promoter;

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 342
    new-instance v0, Lcom/umeng/newxp/controller/a$a;

    iget-object v1, p0, Lcom/umeng/newxp/view/ab;->b:Lcom/umeng/newxp/Promoter;

    invoke-direct {v0, v1, v4}, Lcom/umeng/newxp/controller/a$a;-><init>(Lcom/umeng/newxp/Promoter;I)V

    iget-object v1, p0, Lcom/umeng/newxp/view/ab;->a:Lcom/umeng/newxp/view/aa;

    invoke-static {v1}, Lcom/umeng/newxp/view/aa;->a(Lcom/umeng/newxp/view/aa;)Lcom/umeng/newxp/view/GridTemplate;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/newxp/view/GridTemplate;->c(Lcom/umeng/newxp/view/GridTemplate;)Landroid/content/Context;

    move-result-object v1

    .line 343
    iget-object v2, p0, Lcom/umeng/newxp/view/ab;->a:Lcom/umeng/newxp/view/aa;

    invoke-static {v2}, Lcom/umeng/newxp/view/aa;->a(Lcom/umeng/newxp/view/aa;)Lcom/umeng/newxp/view/GridTemplate;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/newxp/view/GridTemplate;->d(Lcom/umeng/newxp/view/GridTemplate;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/newxp/view/ab;->a:Lcom/umeng/newxp/view/aa;

    invoke-static {v3}, Lcom/umeng/newxp/view/aa;->a(Lcom/umeng/newxp/view/aa;)Lcom/umeng/newxp/view/GridTemplate;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/newxp/view/GridTemplate;->e(Lcom/umeng/newxp/view/GridTemplate;)I

    move-result v3

    move v5, v4

    .line 342
    invoke-static/range {v0 .. v5}, Lcom/umeng/newxp/controller/b;->a(Lcom/umeng/newxp/controller/a$a;Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;IZI)V

    .line 344
    return-void
.end method
