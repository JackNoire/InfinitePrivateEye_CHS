.class Lcom/umeng/newxp/view/aJ;
.super Ljava/lang/Object;
.source "ProgressWheel.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/aI;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/aI;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/aJ;->a:Lcom/umeng/newxp/view/aI;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/umeng/newxp/view/aJ;->a:Lcom/umeng/newxp/view/aI;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/aI;->b()V

    .line 63
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 72
    return-void
.end method
