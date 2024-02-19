.class Lcom/umeng/newxp/view/aa;
.super Lcom/umeng/newxp/view/widget/a$a;
.source "GridTemplate.java"


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/GridTemplate;

.field private final synthetic d:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/GridTemplate;Ljava/util/List;Lcom/umeng/newxp/view/widget/a$b;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/aa;->a:Lcom/umeng/newxp/view/GridTemplate;

    iput-object p4, p0, Lcom/umeng/newxp/view/aa;->d:Landroid/content/Context;

    .line 309
    invoke-direct {p0, p2, p3}, Lcom/umeng/newxp/view/widget/a$a;-><init>(Ljava/util/List;Lcom/umeng/newxp/view/widget/a$b;)V

    return-void
.end method

.method static synthetic a(Lcom/umeng/newxp/view/aa;)Lcom/umeng/newxp/view/GridTemplate;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/umeng/newxp/view/aa;->a:Lcom/umeng/newxp/view/GridTemplate;

    return-object v0
.end method


# virtual methods
.method public a(IILcom/umeng/newxp/Promoter;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 312
    new-instance v0, Lcom/umeng/common/util/j;

    iget-object v1, p0, Lcom/umeng/newxp/view/aa;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/umeng/common/util/j;-><init>(Landroid/content/Context;)V

    .line 313
    iget-object v0, p0, Lcom/umeng/newxp/view/aa;->d:Landroid/content/Context;

    .line 314
    iget-object v1, p0, Lcom/umeng/newxp/view/aa;->a:Lcom/umeng/newxp/view/GridTemplate;

    invoke-static {v1}, Lcom/umeng/newxp/view/GridTemplate;->c(Lcom/umeng/newxp/view/GridTemplate;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v1

    const-string v2, "umeng_xp_handler_grid_item"

    invoke-virtual {v1, v2}, Lcom/umeng/common/c;->e(Ljava/lang/String;)I

    move-result v1

    .line 313
    invoke-static {v0, v1, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 316
    iget-object v0, p0, Lcom/umeng/newxp/view/aa;->a:Lcom/umeng/newxp/view/GridTemplate;

    invoke-static {v0}, Lcom/umeng/newxp/view/GridTemplate;->c(Lcom/umeng/newxp/view/GridTemplate;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v0

    .line 317
    const-string v1, "umeng_xp_handler_grid_item_tv"

    .line 316
    invoke-virtual {v0, v1}, Lcom/umeng/common/c;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 318
    iget-object v1, p3, Lcom/umeng/newxp/Promoter;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    iget-object v0, p0, Lcom/umeng/newxp/view/aa;->a:Lcom/umeng/newxp/view/GridTemplate;

    invoke-static {v0}, Lcom/umeng/newxp/view/GridTemplate;->c(Lcom/umeng/newxp/view/GridTemplate;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v0

    .line 321
    const-string v1, "umeng_xp_new_tip"

    .line 320
    invoke-virtual {v0, v1}, Lcom/umeng/common/c;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 322
    if-eqz v0, :cond_0

    .line 323
    iget v1, p3, Lcom/umeng/newxp/Promoter;->new_tip:I

    if-ne v1, v6, :cond_2

    .line 324
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 329
    :cond_0
    :goto_0
    iget-object v0, p3, Lcom/umeng/newxp/Promoter;->icon:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 330
    iget-object v0, p0, Lcom/umeng/newxp/view/aa;->a:Lcom/umeng/newxp/view/GridTemplate;

    invoke-static {v0}, Lcom/umeng/newxp/view/GridTemplate;->c(Lcom/umeng/newxp/view/GridTemplate;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v0

    .line 331
    const-string v1, "umeng_xp_handler_grid_item_icon"

    .line 330
    invoke-virtual {v0, v1}, Lcom/umeng/common/c;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 332
    sget-boolean v0, Lcom/umeng/newxp/common/ExchangeConstants;->ROUND_ICON:Z

    if-eqz v0, :cond_3

    .line 333
    iget-object v0, p0, Lcom/umeng/newxp/view/aa;->d:Landroid/content/Context;

    iget-object v2, p3, Lcom/umeng/newxp/Promoter;->icon:Ljava/lang/String;

    move-object v5, v4

    invoke-static/range {v0 .. v6}, Lcom/umeng/common/net/q;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ZLcom/umeng/common/net/q$a;Landroid/view/animation/Animation;Z)V

    .line 339
    :cond_1
    :goto_1
    new-instance v0, Lcom/umeng/newxp/view/ab;

    invoke-direct {v0, p0, p3}, Lcom/umeng/newxp/view/ab;-><init>(Lcom/umeng/newxp/view/aa;Lcom/umeng/newxp/Promoter;)V

    .line 346
    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    return-object v7

    .line 326
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 335
    :cond_3
    iget-object v0, p0, Lcom/umeng/newxp/view/aa;->d:Landroid/content/Context;

    iget-object v2, p3, Lcom/umeng/newxp/Promoter;->icon:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/umeng/common/net/q;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Z)V

    goto :goto_1
.end method
