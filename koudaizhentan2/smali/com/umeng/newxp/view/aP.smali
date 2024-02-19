.class Lcom/umeng/newxp/view/aP;
.super Ljava/lang/Object;
.source "WapActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/aN;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/aN;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/aP;->a:Lcom/umeng/newxp/view/aN;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/umeng/newxp/view/aP;->a:Lcom/umeng/newxp/view/aN;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/aN;->finish()V

    .line 196
    return-void
.end method
