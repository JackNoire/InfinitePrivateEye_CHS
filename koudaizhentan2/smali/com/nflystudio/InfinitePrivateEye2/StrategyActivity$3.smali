.class Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity$3;
.super Landroid/webkit/WebChromeClient;
.source "StrategyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity$3;->this$0:Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;

    .line 160
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 164
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity$3;->this$0:Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;

    invoke-static {v0}, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->access$3(Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 165
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 166
    const/16 v0, 0x64

    if-eq p2, v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity$3;->this$0:Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;

    invoke-static {v0}, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->access$3(Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity$3;->this$0:Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;

    invoke-static {v0}, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->access$3(Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
