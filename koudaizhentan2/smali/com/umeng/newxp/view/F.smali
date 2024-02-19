.class Lcom/umeng/newxp/view/F;
.super Ljava/lang/Object;
.source "ExchangeViewManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/ExchangeViewManager;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/ExchangeViewManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/F;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    .line 599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 602
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 604
    return-void
.end method
