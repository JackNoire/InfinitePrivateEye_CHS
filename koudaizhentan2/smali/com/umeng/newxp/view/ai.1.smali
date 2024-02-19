.class Lcom/umeng/newxp/view/ai;
.super Ljava/lang/Object;
.source "LandingWebViewDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/LandingWebViewDialog;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/LandingWebViewDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/ai;->a:Lcom/umeng/newxp/view/LandingWebViewDialog;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/umeng/newxp/view/ai;->a:Lcom/umeng/newxp/view/LandingWebViewDialog;

    invoke-static {v0}, Lcom/umeng/newxp/view/LandingWebViewDialog;->a(Lcom/umeng/newxp/view/LandingWebViewDialog;)V

    .line 52
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 60
    return-void
.end method
