.class Lcom/umeng/newxp/view/ao;
.super Ljava/lang/Object;
.source "LargeGallery.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/an;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/an;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/ao;->a:Lcom/umeng/newxp/view/an;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/umeng/newxp/view/ao;->a:Lcom/umeng/newxp/view/an;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/newxp/view/an;->a(Lcom/umeng/newxp/view/an;Z)V

    .line 93
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 84
    return-void
.end method
