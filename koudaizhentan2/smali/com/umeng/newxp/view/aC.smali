.class public Lcom/umeng/newxp/view/aC;
.super Ljava/lang/Object;
.source "MoreBanner.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/umeng/newxp/view/aC;->a:Landroid/content/Context;

    .line 23
    iput p2, p0, Lcom/umeng/newxp/view/aC;->b:I

    .line 24
    iget-object v0, p0, Lcom/umeng/newxp/view/aC;->a:Landroid/content/Context;

    .line 25
    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 24
    check-cast v0, Landroid/view/LayoutInflater;

    .line 27
    :try_start_0
    iget v1, p0, Lcom/umeng/newxp/view/aC;->b:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/newxp/view/aC;->c:Landroid/view/View;

    .line 28
    iget-object v0, p0, Lcom/umeng/newxp/view/aC;->c:Landroid/view/View;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to inflate "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/umeng/newxp/view/aC;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    throw v0

    .line 35
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/umeng/newxp/view/aC;->c:Landroid/view/View;

    return-object v0
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/umeng/newxp/view/aC;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/umeng/newxp/view/aC;->c:Landroid/view/View;

    .line 47
    iget-object v1, p0, Lcom/umeng/newxp/view/aC;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/newxp/a/c;->z(Landroid/content/Context;)I

    move-result v1

    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 48
    if-nez v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 50
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 52
    const/4 v1, 0x0

    .line 53
    if-nez v1, :cond_1

    .line 54
    iget-object v1, p0, Lcom/umeng/newxp/view/aC;->a:Landroid/content/Context;

    .line 55
    iget-object v2, p0, Lcom/umeng/newxp/view/aC;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/newxp/a/a;->d(Landroid/content/Context;)I

    move-result v2

    .line 54
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 57
    :cond_1
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 58
    new-instance v2, Lcom/umeng/newxp/view/aD;

    invoke-direct {v2, p0}, Lcom/umeng/newxp/view/aD;-><init>(Lcom/umeng/newxp/view/aC;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 73
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method c()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/umeng/newxp/view/aC;->c:Landroid/view/View;

    .line 78
    iget-object v1, p0, Lcom/umeng/newxp/view/aC;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/newxp/a/c;->z(Landroid/content/Context;)I

    move-result v1

    .line 77
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 79
    if-nez v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 81
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
