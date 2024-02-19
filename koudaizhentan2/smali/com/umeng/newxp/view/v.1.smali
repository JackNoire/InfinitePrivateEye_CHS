.class Lcom/umeng/newxp/view/v;
.super Ljava/lang/Object;
.source "EmbededContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/t;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/t;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/v;->a:Lcom/umeng/newxp/view/t;

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/umeng/newxp/view/v;->a:Lcom/umeng/newxp/view/t;

    invoke-static {v0}, Lcom/umeng/newxp/view/t;->a(Lcom/umeng/newxp/view/t;)Lcom/umeng/newxp/view/EmbededContainer$a;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/newxp/view/EmbededContainer$a;->g(Lcom/umeng/newxp/view/EmbededContainer$a;)Lcom/umeng/newxp/view/EmbededContainer;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/newxp/view/EmbededContainer;->c(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    .line 339
    iget-object v1, p0, Lcom/umeng/newxp/view/v;->a:Lcom/umeng/newxp/view/t;

    invoke-static {v1}, Lcom/umeng/newxp/view/t;->a(Lcom/umeng/newxp/view/t;)Lcom/umeng/newxp/view/EmbededContainer$a;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/newxp/view/EmbededContainer$a;->g(Lcom/umeng/newxp/view/EmbededContainer$a;)Lcom/umeng/newxp/view/EmbededContainer;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/newxp/view/EmbededContainer;->c(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 340
    return-void
.end method
