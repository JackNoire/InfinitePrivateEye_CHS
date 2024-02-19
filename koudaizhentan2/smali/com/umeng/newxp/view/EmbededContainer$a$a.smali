.class Lcom/umeng/newxp/view/EmbededContainer$a$a;
.super Ljava/lang/Object;
.source "EmbededContainer.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/newxp/view/EmbededContainer$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/EmbededContainer$a;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/umeng/newxp/view/EmbededContainer$a;Lcom/umeng/newxp/controller/ExchangeDataService;)V
    .locals 1

    .prologue
    .line 260
    iput-object p1, p0, Lcom/umeng/newxp/view/EmbededContainer$a$a;->a:Lcom/umeng/newxp/view/EmbededContainer$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/newxp/view/EmbededContainer$a$a;->b:Z

    .line 261
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .prologue
    .line 266
    if-nez p2, :cond_0

    if-ne p3, p4, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/newxp/view/EmbededContainer$a$a;->b:Z

    .line 269
    :goto_0
    return-void

    .line 268
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/newxp/view/EmbededContainer$a$a;->b:Z

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/umeng/newxp/view/EmbededContainer$a$a;->b:Z

    if-nez v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer$a$a;->a:Lcom/umeng/newxp/view/EmbededContainer$a;

    invoke-static {v0}, Lcom/umeng/newxp/view/EmbededContainer$a;->a(Lcom/umeng/newxp/view/EmbededContainer$a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer$a$a;->a:Lcom/umeng/newxp/view/EmbededContainer$a;

    invoke-static {v0}, Lcom/umeng/newxp/view/EmbededContainer$a;->a(Lcom/umeng/newxp/view/EmbededContainer$a;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer$a$a;->a:Lcom/umeng/newxp/view/EmbededContainer$a;

    invoke-static {v0}, Lcom/umeng/newxp/view/EmbededContainer$a;->a(Lcom/umeng/newxp/view/EmbededContainer$a;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/newxp/view/EmbededContainer$a$a;->a:Lcom/umeng/newxp/view/EmbededContainer$a;

    invoke-static {v1}, Lcom/umeng/newxp/view/EmbededContainer$a;->g(Lcom/umeng/newxp/view/EmbededContainer$a;)Lcom/umeng/newxp/view/EmbededContainer;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/newxp/view/EmbededContainer;->a(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 277
    iget-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer$a$a;->a:Lcom/umeng/newxp/view/EmbededContainer$a;

    invoke-static {v0}, Lcom/umeng/newxp/view/EmbededContainer$a;->b(Lcom/umeng/newxp/view/EmbededContainer$a;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/newxp/view/EmbededContainer$a$a;->a:Lcom/umeng/newxp/view/EmbededContainer$a;

    invoke-static {v1}, Lcom/umeng/newxp/view/EmbededContainer$a;->g(Lcom/umeng/newxp/view/EmbededContainer$a;)Lcom/umeng/newxp/view/EmbededContainer;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/newxp/view/EmbededContainer;->b(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/newxp/a/e;->g(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer$a$a;->a:Lcom/umeng/newxp/view/EmbededContainer$a;

    invoke-static {v0}, Lcom/umeng/newxp/view/EmbededContainer$a;->g(Lcom/umeng/newxp/view/EmbededContainer$a;)Lcom/umeng/newxp/view/EmbededContainer;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/newxp/view/EmbededContainer;->c(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/umeng/newxp/view/EmbededContainer$a$a;->a:Lcom/umeng/newxp/view/EmbededContainer$a;

    invoke-static {v1}, Lcom/umeng/newxp/view/EmbededContainer$a;->g(Lcom/umeng/newxp/view/EmbededContainer$a;)Lcom/umeng/newxp/view/EmbededContainer;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/newxp/view/EmbededContainer;->c(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    .line 281
    if-nez p2, :cond_1

    .line 282
    iget-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer$a$a;->a:Lcom/umeng/newxp/view/EmbededContainer$a;

    invoke-static {v0}, Lcom/umeng/newxp/view/EmbededContainer$a;->c(Lcom/umeng/newxp/view/EmbededContainer$a;)V

    .line 285
    :cond_1
    return-void
.end method
