.class Lcom/umeng/newxp/view/aF$a;
.super Ljava/lang/Object;
.source "PartnersBanner.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/newxp/view/aF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/view/animation/Animation;

.field b:Landroid/view/animation/Animation;

.field final synthetic c:Lcom/umeng/newxp/view/aF;


# direct methods
.method public constructor <init>(Lcom/umeng/newxp/view/aF;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 305
    iput-object p1, p0, Lcom/umeng/newxp/view/aF$a;->c:Lcom/umeng/newxp/view/aF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iput-object p2, p0, Lcom/umeng/newxp/view/aF$a;->a:Landroid/view/animation/Animation;

    .line 307
    iput-object p3, p0, Lcom/umeng/newxp/view/aF$a;->b:Landroid/view/animation/Animation;

    .line 309
    invoke-static {}, Lcom/umeng/newxp/view/aF;->c()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p3, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 310
    invoke-static {}, Lcom/umeng/newxp/view/aF;->c()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 312
    invoke-virtual {p2, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 313
    return-void
.end method

.method public constructor <init>(Lcom/umeng/newxp/view/aF;Landroid/view/animation/Animation;Landroid/view/animation/Animation;J)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/umeng/newxp/view/aF$a;->c:Lcom/umeng/newxp/view/aF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput-object p2, p0, Lcom/umeng/newxp/view/aF$a;->a:Landroid/view/animation/Animation;

    .line 317
    iput-object p3, p0, Lcom/umeng/newxp/view/aF$a;->b:Landroid/view/animation/Animation;

    .line 319
    invoke-virtual {p3, p4, p5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 320
    invoke-virtual {p2, p4, p5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 322
    invoke-virtual {p2, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 323
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/umeng/newxp/view/aF$a;->c:Lcom/umeng/newxp/view/aF;

    invoke-static {v0}, Lcom/umeng/newxp/view/aF;->a(Lcom/umeng/newxp/view/aF;)Landroid/widget/ViewSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getDisplayedChild()I

    move-result v0

    .line 336
    packed-switch v0, :pswitch_data_0

    .line 346
    :goto_0
    return-void

    .line 338
    :pswitch_0
    iget-object v0, p0, Lcom/umeng/newxp/view/aF$a;->c:Lcom/umeng/newxp/view/aF;

    iget-object v1, p0, Lcom/umeng/newxp/view/aF$a;->c:Lcom/umeng/newxp/view/aF;

    invoke-static {v1}, Lcom/umeng/newxp/view/aF;->b(Lcom/umeng/newxp/view/aF;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/newxp/a/c;->J(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/umeng/newxp/view/aF;->a(Lcom/umeng/newxp/view/aF;I)V

    goto :goto_0

    .line 341
    :pswitch_1
    iget-object v0, p0, Lcom/umeng/newxp/view/aF$a;->c:Lcom/umeng/newxp/view/aF;

    iget-object v1, p0, Lcom/umeng/newxp/view/aF$a;->c:Lcom/umeng/newxp/view/aF;

    invoke-static {v1}, Lcom/umeng/newxp/view/aF;->b(Lcom/umeng/newxp/view/aF;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/newxp/a/c;->K(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/umeng/newxp/view/aF;->a(Lcom/umeng/newxp/view/aF;I)V

    goto :goto_0

    .line 336
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 331
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 327
    return-void
.end method
