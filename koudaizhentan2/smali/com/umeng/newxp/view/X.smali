.class Lcom/umeng/newxp/view/X;
.super Ljava/lang/Object;
.source "FloatDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/W;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/W;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/X;->a:Lcom/umeng/newxp/view/W;

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/umeng/newxp/view/X;->a:Lcom/umeng/newxp/view/W;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/W;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/umeng/newxp/view/X;->a:Lcom/umeng/newxp/view/W;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/W;->dismiss()V

    .line 224
    :cond_0
    return-void
.end method
