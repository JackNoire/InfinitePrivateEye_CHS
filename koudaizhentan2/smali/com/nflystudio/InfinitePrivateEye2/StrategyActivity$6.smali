.class Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity$6;
.super Ljava/lang/Object;
.source "StrategyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->bottomControler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;


# direct methods
.method constructor <init>(Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity$6;->this$0:Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity$6;->this$0:Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;

    const-string v1, "PageForward"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity$6;->this$0:Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;

    invoke-static {v0}, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->access$4(Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity$6;->this$0:Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;

    invoke-static {v0}, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->access$4(Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    .line 272
    :cond_0
    return-void
.end method
