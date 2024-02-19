.class Lcom/umeng/newxp/view/am;
.super Ljava/lang/Object;
.source "LandingWebViewDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/LandingWebViewDialog;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/LandingWebViewDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/am;->a:Lcom/umeng/newxp/view/LandingWebViewDialog;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/umeng/newxp/view/am;->a:Lcom/umeng/newxp/view/LandingWebViewDialog;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/LandingWebViewDialog;->cancel()V

    .line 170
    return-void
.end method
