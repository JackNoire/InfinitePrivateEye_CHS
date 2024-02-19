.class Lcom/umeng/newxp/view/aD;
.super Ljava/lang/Object;
.source "MoreBanner.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/aC;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/aC;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/aD;->a:Lcom/umeng/newxp/view/aC;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/umeng/newxp/view/aD;->a:Lcom/umeng/newxp/view/aC;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/aC;->c()V

    .line 62
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 71
    return-void
.end method
