.class Lcom/umeng/newxp/view/h;
.super Ljava/lang/Object;
.source "Banner.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/f;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/f;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/h;->a:Lcom/umeng/newxp/view/f;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/umeng/newxp/view/h;->a:Lcom/umeng/newxp/view/f;

    invoke-static {v0}, Lcom/umeng/newxp/view/f;->d(Lcom/umeng/newxp/view/f;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/umeng/newxp/view/h;->a:Lcom/umeng/newxp/view/f;

    invoke-static {v0}, Lcom/umeng/newxp/view/f;->d(Lcom/umeng/newxp/view/f;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/umeng/newxp/view/h;->a:Lcom/umeng/newxp/view/f;

    invoke-static {v0}, Lcom/umeng/newxp/view/f;->a(Lcom/umeng/newxp/view/f;)Landroid/widget/ViewSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getDisplayedChild()I

    move-result v0

    .line 154
    packed-switch v0, :pswitch_data_0

    .line 165
    :cond_1
    :goto_0
    return-void

    .line 156
    :pswitch_0
    iget-object v0, p0, Lcom/umeng/newxp/view/h;->a:Lcom/umeng/newxp/view/f;

    invoke-static {v0}, Lcom/umeng/newxp/view/f;->e(Lcom/umeng/newxp/view/f;)Lcom/umeng/newxp/controller/a$a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/umeng/newxp/view/h;->a:Lcom/umeng/newxp/view/f;

    iget-object v1, p0, Lcom/umeng/newxp/view/h;->a:Lcom/umeng/newxp/view/f;

    invoke-static {v1}, Lcom/umeng/newxp/view/f;->e(Lcom/umeng/newxp/view/f;)Lcom/umeng/newxp/controller/a$a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/newxp/view/f;->a(Lcom/umeng/newxp/view/f;Lcom/umeng/newxp/controller/a$a;)V

    goto :goto_0

    .line 159
    :pswitch_1
    iget-object v0, p0, Lcom/umeng/newxp/view/h;->a:Lcom/umeng/newxp/view/f;

    invoke-static {v0}, Lcom/umeng/newxp/view/f;->f(Lcom/umeng/newxp/view/f;)Lcom/umeng/newxp/controller/a$a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/umeng/newxp/view/h;->a:Lcom/umeng/newxp/view/f;

    iget-object v1, p0, Lcom/umeng/newxp/view/h;->a:Lcom/umeng/newxp/view/f;

    invoke-static {v1}, Lcom/umeng/newxp/view/f;->f(Lcom/umeng/newxp/view/f;)Lcom/umeng/newxp/controller/a$a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/newxp/view/f;->a(Lcom/umeng/newxp/view/f;Lcom/umeng/newxp/controller/a$a;)V

    goto :goto_0

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
