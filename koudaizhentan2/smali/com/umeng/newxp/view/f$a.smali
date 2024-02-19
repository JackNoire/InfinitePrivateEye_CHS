.class Lcom/umeng/newxp/view/f$a;
.super Ljava/lang/Object;
.source "Banner.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/newxp/view/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/view/animation/Animation;

.field b:Landroid/view/animation/Animation;

.field final synthetic c:Lcom/umeng/newxp/view/f;


# direct methods
.method public constructor <init>(Lcom/umeng/newxp/view/f;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 333
    iput-object p1, p0, Lcom/umeng/newxp/view/f$a;->c:Lcom/umeng/newxp/view/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    iput-object p2, p0, Lcom/umeng/newxp/view/f$a;->a:Landroid/view/animation/Animation;

    .line 335
    iput-object p3, p0, Lcom/umeng/newxp/view/f$a;->b:Landroid/view/animation/Animation;

    .line 337
    invoke-static {}, Lcom/umeng/newxp/view/f;->c()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p3, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 338
    invoke-static {}, Lcom/umeng/newxp/view/f;->c()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 340
    invoke-virtual {p2, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 341
    return-void
.end method

.method public constructor <init>(Lcom/umeng/newxp/view/f;Landroid/view/animation/Animation;Landroid/view/animation/Animation;J)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/umeng/newxp/view/f$a;->c:Lcom/umeng/newxp/view/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    iput-object p2, p0, Lcom/umeng/newxp/view/f$a;->a:Landroid/view/animation/Animation;

    .line 345
    iput-object p3, p0, Lcom/umeng/newxp/view/f$a;->b:Landroid/view/animation/Animation;

    .line 347
    invoke-virtual {p3, p4, p5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 348
    invoke-virtual {p2, p4, p5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 350
    invoke-virtual {p2, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 351
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/umeng/newxp/view/f$a;->c:Lcom/umeng/newxp/view/f;

    invoke-static {v0}, Lcom/umeng/newxp/view/f;->a(Lcom/umeng/newxp/view/f;)Landroid/widget/ViewSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getDisplayedChild()I

    move-result v0

    .line 364
    packed-switch v0, :pswitch_data_0

    .line 374
    :goto_0
    return-void

    .line 366
    :pswitch_0
    iget-object v0, p0, Lcom/umeng/newxp/view/f$a;->c:Lcom/umeng/newxp/view/f;

    iget-object v1, p0, Lcom/umeng/newxp/view/f$a;->c:Lcom/umeng/newxp/view/f;

    invoke-static {v1}, Lcom/umeng/newxp/view/f;->b(Lcom/umeng/newxp/view/f;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/newxp/a/c;->J(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/umeng/newxp/view/f;->a(Lcom/umeng/newxp/view/f;I)V

    goto :goto_0

    .line 369
    :pswitch_1
    iget-object v0, p0, Lcom/umeng/newxp/view/f$a;->c:Lcom/umeng/newxp/view/f;

    iget-object v1, p0, Lcom/umeng/newxp/view/f$a;->c:Lcom/umeng/newxp/view/f;

    invoke-static {v1}, Lcom/umeng/newxp/view/f;->b(Lcom/umeng/newxp/view/f;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/newxp/a/c;->K(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/umeng/newxp/view/f;->a(Lcom/umeng/newxp/view/f;I)V

    goto :goto_0

    .line 364
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 359
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 355
    return-void
.end method
