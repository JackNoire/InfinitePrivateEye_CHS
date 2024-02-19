.class Lcom/umeng/newxp/view/ag;
.super Ljava/lang/Object;
.source "Hypertextlink.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/ae;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/ae;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/ag;->a:Lcom/umeng/newxp/view/ae;

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/umeng/newxp/view/ag;->a:Lcom/umeng/newxp/view/ae;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/ae;->a()V

    .line 249
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 243
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 239
    return-void
.end method
