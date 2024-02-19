.class Lcom/umeng/newxp/view/aH;
.super Ljava/lang/Object;
.source "PartnersBanner.java"

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
.field final synthetic a:Lcom/umeng/newxp/view/aF;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/aF;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/aH;->a:Lcom/umeng/newxp/view/aF;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 136
    :try_start_0
    check-cast p1, Landroid/widget/GridView;

    .line 137
    invoke-virtual {p1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 136
    check-cast v0, Lcom/umeng/newxp/controller/a$a;

    .line 138
    iget-object v1, p0, Lcom/umeng/newxp/view/aH;->a:Lcom/umeng/newxp/view/aF;

    invoke-static {v1, v0, p2}, Lcom/umeng/newxp/view/aF;->a(Lcom/umeng/newxp/view/aF;Lcom/umeng/newxp/controller/a$a;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    goto :goto_0
.end method
