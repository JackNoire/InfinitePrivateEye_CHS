.class Lcom/umeng/newxp/view/Q;
.super Ljava/lang/Object;
.source "FImageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/P;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/P;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/Q;->a:Lcom/umeng/newxp/view/P;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 89
    iget-object v0, p0, Lcom/umeng/newxp/view/Q;->a:Lcom/umeng/newxp/view/P;

    iget-object v0, v0, Lcom/umeng/newxp/view/P;->a:Lcom/umeng/newxp/Promoter;

    iget-object v1, p0, Lcom/umeng/newxp/view/Q;->a:Lcom/umeng/newxp/view/P;

    invoke-virtual {v1}, Lcom/umeng/newxp/view/P;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/newxp/view/Q;->a:Lcom/umeng/newxp/view/P;

    invoke-static {v2}, Lcom/umeng/newxp/view/P;->a(Lcom/umeng/newxp/view/P;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/newxp/view/Q;->a:Lcom/umeng/newxp/view/P;

    invoke-static {v3}, Lcom/umeng/newxp/view/P;->a(Lcom/umeng/newxp/view/P;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v3

    iget v3, v3, Lcom/umeng/newxp/controller/ExchangeDataService;->layoutType:I

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/umeng/newxp/controller/b;->a(Lcom/umeng/newxp/Promoter;Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;IZ)V

    .line 90
    return-void
.end method
