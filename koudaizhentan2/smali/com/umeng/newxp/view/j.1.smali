.class Lcom/umeng/newxp/view/j;
.super Ljava/lang/Object;
.source "CloudDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/i;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/i;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/j;->a:Lcom/umeng/newxp/view/i;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/umeng/newxp/view/j;->a:Lcom/umeng/newxp/view/i;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/i;->dismiss()V

    .line 109
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/umeng/newxp/view/j;->a:Lcom/umeng/newxp/view/i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/umeng/newxp/view/i;->a(Lcom/umeng/newxp/view/i;Z)V

    .line 100
    return-void
.end method
