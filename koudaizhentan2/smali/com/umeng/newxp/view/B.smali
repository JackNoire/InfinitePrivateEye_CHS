.class Lcom/umeng/newxp/view/B;
.super Ljava/lang/Object;
.source "EncapsulatedList.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/A;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/A;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/B;->a:Lcom/umeng/newxp/view/A;

    iput p2, p0, Lcom/umeng/newxp/view/B;->b:I

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/umeng/newxp/view/B;->a:Lcom/umeng/newxp/view/A;

    invoke-static {v0}, Lcom/umeng/newxp/view/A;->a(Lcom/umeng/newxp/view/A;)Lcom/umeng/newxp/view/w;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/newxp/view/w;->d(Lcom/umeng/newxp/view/w;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/umeng/newxp/view/B;->b:I

    iget-object v1, p0, Lcom/umeng/newxp/view/B;->a:Lcom/umeng/newxp/view/A;

    invoke-static {v1}, Lcom/umeng/newxp/view/A;->a(Lcom/umeng/newxp/view/A;)Lcom/umeng/newxp/view/w;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/newxp/view/w;->i(Lcom/umeng/newxp/view/w;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 199
    iget-object v0, p0, Lcom/umeng/newxp/view/B;->a:Lcom/umeng/newxp/view/A;

    invoke-static {v0}, Lcom/umeng/newxp/view/A;->a(Lcom/umeng/newxp/view/A;)Lcom/umeng/newxp/view/w;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/newxp/view/w;->a(Lcom/umeng/newxp/view/w;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/umeng/newxp/view/B;->a:Lcom/umeng/newxp/view/A;

    invoke-static {v0}, Lcom/umeng/newxp/view/A;->a(Lcom/umeng/newxp/view/A;)Lcom/umeng/newxp/view/w;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/newxp/view/w;->a(Lcom/umeng/newxp/view/w;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 202
    :cond_0
    return-void
.end method
