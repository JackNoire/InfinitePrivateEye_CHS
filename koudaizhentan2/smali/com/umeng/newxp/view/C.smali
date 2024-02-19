.class Lcom/umeng/newxp/view/C;
.super Ljava/lang/Object;
.source "EncapsulatedList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/A;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/A;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/C;->a:Lcom/umeng/newxp/view/A;

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/umeng/newxp/view/C;->a:Lcom/umeng/newxp/view/A;

    invoke-static {v0}, Lcom/umeng/newxp/view/A;->a(Lcom/umeng/newxp/view/A;)Lcom/umeng/newxp/view/w;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/newxp/view/w;->d(Lcom/umeng/newxp/view/w;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->setSelectionAfterHeaderView()V

    .line 220
    return-void
.end method
