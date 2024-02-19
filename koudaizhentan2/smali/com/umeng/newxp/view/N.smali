.class Lcom/umeng/newxp/view/N;
.super Ljava/lang/Object;
.source "ExchangeViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/ExchangeViewManager;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/ExchangeViewManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/N;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/umeng/newxp/view/N;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/ExchangeViewManager;->hideBanner()V

    .line 477
    return-void
.end method
