.class Lcom/umeng/newxp/view/aq;
.super Ljava/lang/Object;
.source "LargeGallery.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/an;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/an;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/aq;->a:Lcom/umeng/newxp/view/an;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 167
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 180
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 170
    :pswitch_0
    iget-object v0, p0, Lcom/umeng/newxp/view/aq;->a:Lcom/umeng/newxp/view/an;

    invoke-static {v0}, Lcom/umeng/newxp/view/an;->b(Lcom/umeng/newxp/view/an;)Lcom/umeng/newxp/controller/g;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/newxp/view/aq;->a:Lcom/umeng/newxp/view/an;

    invoke-static {v0}, Lcom/umeng/newxp/view/an;->b(Lcom/umeng/newxp/view/an;)Lcom/umeng/newxp/controller/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/newxp/controller/g;->interrupt()V

    goto :goto_0

    .line 174
    :pswitch_1
    iget-object v0, p0, Lcom/umeng/newxp/view/aq;->a:Lcom/umeng/newxp/view/an;

    invoke-static {v0}, Lcom/umeng/newxp/view/an;->c(Lcom/umeng/newxp/view/an;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/umeng/newxp/view/aq;->a:Lcom/umeng/newxp/view/an;

    invoke-static {v0}, Lcom/umeng/newxp/view/an;->d(Lcom/umeng/newxp/view/an;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/umeng/newxp/view/aq;->a:Lcom/umeng/newxp/view/an;

    new-instance v1, Lcom/umeng/newxp/controller/g;

    iget-object v2, p0, Lcom/umeng/newxp/view/aq;->a:Lcom/umeng/newxp/view/an;

    invoke-direct {v1, v2}, Lcom/umeng/newxp/controller/g;-><init>(Lcom/umeng/newxp/controller/f$a;)V

    invoke-static {v0, v1}, Lcom/umeng/newxp/view/an;->a(Lcom/umeng/newxp/view/an;Lcom/umeng/newxp/controller/g;)V

    .line 176
    iget-object v0, p0, Lcom/umeng/newxp/view/aq;->a:Lcom/umeng/newxp/view/an;

    invoke-static {v0}, Lcom/umeng/newxp/view/an;->b(Lcom/umeng/newxp/view/an;)Lcom/umeng/newxp/controller/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/newxp/controller/g;->start()V

    goto :goto_0

    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
