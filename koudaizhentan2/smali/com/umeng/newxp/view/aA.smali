.class Lcom/umeng/newxp/view/aA;
.super Ljava/lang/Object;
.source "ListDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/aw;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/aw;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/aA;->a:Lcom/umeng/newxp/view/aw;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/umeng/newxp/view/aA;->a:Lcom/umeng/newxp/view/aw;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/aw;->dismiss()V

    .line 218
    iget-object v0, p0, Lcom/umeng/newxp/view/aA;->a:Lcom/umeng/newxp/view/aw;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/newxp/view/aw;->a(Lcom/umeng/newxp/view/aw;Z)V

    .line 219
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 213
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 209
    return-void
.end method
