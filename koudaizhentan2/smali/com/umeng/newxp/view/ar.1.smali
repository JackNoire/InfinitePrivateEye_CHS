.class Lcom/umeng/newxp/view/ar;
.super Ljava/lang/Object;
.source "LargeGallery.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/an;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/an;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/ar;->a:Lcom/umeng/newxp/view/an;

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lcom/umeng/newxp/view/ar;->a:Lcom/umeng/newxp/view/an;

    invoke-static {v0, p3}, Lcom/umeng/newxp/view/an;->a(Lcom/umeng/newxp/view/an;I)I

    move-result v0

    .line 188
    iget-object v1, p0, Lcom/umeng/newxp/view/ar;->a:Lcom/umeng/newxp/view/an;

    invoke-static {v1}, Lcom/umeng/newxp/view/an;->c(Lcom/umeng/newxp/view/an;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/Promoter;

    .line 189
    iget-object v1, p0, Lcom/umeng/newxp/view/ar;->a:Lcom/umeng/newxp/view/an;

    invoke-static {v1}, Lcom/umeng/newxp/view/an;->e(Lcom/umeng/newxp/view/an;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/newxp/view/ar;->a:Lcom/umeng/newxp/view/an;

    invoke-static {v2}, Lcom/umeng/newxp/view/an;->f(Lcom/umeng/newxp/view/an;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v2

    .line 190
    const/16 v3, 0x2b

    const/4 v4, 0x0

    .line 189
    invoke-static {v0, v1, v2, v3, v4}, Lcom/umeng/newxp/controller/b;->a(Lcom/umeng/newxp/Promoter;Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;IZ)V

    .line 191
    return-void
.end method
