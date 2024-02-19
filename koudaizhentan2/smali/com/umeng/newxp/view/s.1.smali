.class Lcom/umeng/newxp/view/s;
.super Lcom/umeng/newxp/view/d;
.source "EmbededContainer.java"


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/EmbededContainer$a;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/EmbededContainer$a;Landroid/widget/ListView;Landroid/content/Context;IZLjava/util/List;ILcom/umeng/newxp/controller/ExchangeDataService;)V
    .locals 8

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/s;->a:Lcom/umeng/newxp/view/EmbededContainer$a;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    move v6, p7

    move-object/from16 v7, p8

    .line 198
    invoke-direct/range {v0 .. v7}, Lcom/umeng/newxp/view/d;-><init>(Landroid/widget/ListView;Landroid/content/Context;IZLjava/util/List;ILcom/umeng/newxp/controller/ExchangeDataService;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 203
    invoke-super {p0, p1}, Lcom/umeng/newxp/view/d;->a(I)V

    .line 204
    iget-object v0, p0, Lcom/umeng/newxp/view/s;->a:Lcom/umeng/newxp/view/EmbededContainer$a;

    invoke-static {v0}, Lcom/umeng/newxp/view/EmbededContainer$a;->g(Lcom/umeng/newxp/view/EmbededContainer$a;)Lcom/umeng/newxp/view/EmbededContainer;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/newxp/view/EmbededContainer;->c(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 205
    iget-object v1, p0, Lcom/umeng/newxp/view/s;->a:Lcom/umeng/newxp/view/EmbededContainer$a;

    invoke-static {v1}, Lcom/umeng/newxp/view/EmbededContainer$a;->g(Lcom/umeng/newxp/view/EmbededContainer$a;)Lcom/umeng/newxp/view/EmbededContainer;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/newxp/view/EmbededContainer;->c(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    .line 207
    iget-object v1, p0, Lcom/umeng/newxp/view/s;->a:Lcom/umeng/newxp/view/EmbededContainer$a;

    invoke-static {v1}, Lcom/umeng/newxp/view/EmbededContainer$a;->g(Lcom/umeng/newxp/view/EmbededContainer$a;)Lcom/umeng/newxp/view/EmbededContainer;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/newxp/view/EmbededContainer;->f(Lcom/umeng/newxp/view/EmbededContainer;)Z

    move-result v1

    if-nez v1, :cond_0

    if-gt p1, v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/umeng/newxp/view/s;->a:Lcom/umeng/newxp/view/EmbededContainer$a;

    invoke-static {v0}, Lcom/umeng/newxp/view/EmbededContainer$a;->a(Lcom/umeng/newxp/view/EmbededContainer$a;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/umeng/newxp/view/s;->a:Lcom/umeng/newxp/view/EmbededContainer$a;

    invoke-static {v0}, Lcom/umeng/newxp/view/EmbededContainer$a;->a(Lcom/umeng/newxp/view/EmbededContainer$a;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/newxp/view/s;->a:Lcom/umeng/newxp/view/EmbededContainer$a;

    invoke-static {v1}, Lcom/umeng/newxp/view/EmbededContainer$a;->g(Lcom/umeng/newxp/view/EmbededContainer$a;)Lcom/umeng/newxp/view/EmbededContainer;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/newxp/view/EmbededContainer;->a(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 210
    iget-object v0, p0, Lcom/umeng/newxp/view/s;->a:Lcom/umeng/newxp/view/EmbededContainer$a;

    invoke-static {v0}, Lcom/umeng/newxp/view/EmbededContainer$a;->b(Lcom/umeng/newxp/view/EmbededContainer$a;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/newxp/view/s;->a:Lcom/umeng/newxp/view/EmbededContainer$a;

    invoke-static {v1}, Lcom/umeng/newxp/view/EmbededContainer$a;->g(Lcom/umeng/newxp/view/EmbededContainer$a;)Lcom/umeng/newxp/view/EmbededContainer;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/newxp/view/EmbededContainer;->b(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/newxp/a/e;->g(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 211
    iget-object v0, p0, Lcom/umeng/newxp/view/s;->a:Lcom/umeng/newxp/view/EmbededContainer$a;

    invoke-static {v0}, Lcom/umeng/newxp/view/EmbededContainer$a;->c(Lcom/umeng/newxp/view/EmbededContainer$a;)V

    .line 212
    iget-object v0, p0, Lcom/umeng/newxp/view/s;->a:Lcom/umeng/newxp/view/EmbededContainer$a;

    invoke-static {v0}, Lcom/umeng/newxp/view/EmbededContainer$a;->g(Lcom/umeng/newxp/view/EmbededContainer$a;)Lcom/umeng/newxp/view/EmbededContainer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/umeng/newxp/view/EmbededContainer;->a(Lcom/umeng/newxp/view/EmbededContainer;Z)V

    .line 214
    :cond_0
    return-void
.end method
