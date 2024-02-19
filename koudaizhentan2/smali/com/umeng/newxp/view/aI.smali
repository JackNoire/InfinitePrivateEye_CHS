.class public Lcom/umeng/newxp/view/aI;
.super Ljava/lang/Object;
.source "ProgressWheel.java"


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:Landroid/content/Context;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 3

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p2, p0, Lcom/umeng/newxp/view/aI;->a:Landroid/view/ViewGroup;

    .line 28
    iput-object p1, p0, Lcom/umeng/newxp/view/aI;->b:Landroid/content/Context;

    .line 30
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/umeng/newxp/view/aI;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/newxp/view/aI;->c:Landroid/widget/ImageView;

    .line 31
    iget-object v0, p0, Lcom/umeng/newxp/view/aI;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/umeng/newxp/view/aI;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 32
    iget-object v2, p0, Lcom/umeng/newxp/view/aI;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/newxp/a/b;->f(Landroid/content/Context;)I

    move-result v2

    .line 31
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/newxp/view/aI;->e:Z

    .line 34
    new-instance v0, Lcom/umeng/common/util/j;

    iget-object v1, p0, Lcom/umeng/newxp/view/aI;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/umeng/common/util/j;-><init>(Landroid/content/Context;)V

    .line 35
    const/high16 v0, 0x42700000    # 60.0f

    invoke-static {v0}, Lcom/umeng/common/util/j;->a(F)I

    move-result v0

    .line 36
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 38
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 39
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/umeng/newxp/view/aI;->b:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/newxp/view/aI;->d:Landroid/widget/RelativeLayout;

    .line 40
    iget-object v0, p0, Lcom/umeng/newxp/view/aI;->d:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/umeng/newxp/view/aI;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 44
    iget-boolean v0, p0, Lcom/umeng/newxp/view/aI;->e:Z

    if-eqz v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/newxp/view/aI;->e:Z

    .line 49
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 52
    iget-object v1, p0, Lcom/umeng/newxp/view/aI;->a:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/umeng/newxp/view/aI;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    iget-object v0, p0, Lcom/umeng/newxp/view/aI;->d:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 55
    iget-object v0, p0, Lcom/umeng/newxp/view/aI;->b:Landroid/content/Context;

    .line 56
    iget-object v1, p0, Lcom/umeng/newxp/view/aI;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/newxp/a/a;->d(Landroid/content/Context;)I

    move-result v1

    .line 55
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 58
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 59
    new-instance v1, Lcom/umeng/newxp/view/aJ;

    invoke-direct {v1, p0}, Lcom/umeng/newxp/view/aJ;-><init>(Lcom/umeng/newxp/view/aI;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 74
    iget-object v1, p0, Lcom/umeng/newxp/view/aI;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/umeng/newxp/view/aI;->e:Z

    if-nez v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/newxp/view/aI;->e:Z

    .line 81
    iget-object v0, p0, Lcom/umeng/newxp/view/aI;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/umeng/newxp/view/aI;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method
