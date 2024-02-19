.class Lcom/nflystudio/InfinitePrivateEye2/ViewContainer$3;
.super Ljava/lang/Object;
.source "ViewContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->regListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;


# direct methods
.method constructor <init>(Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer$3;->this$0:Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 262
    iget-object v1, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer$3;->this$0:Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;

    invoke-static {v1}, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->access$0(Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "StrategyNoImages"

    invoke-static {v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 263
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer$3;->this$0:Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;

    invoke-static {v1}, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->access$0(Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 264
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "url"

    const-string v2, "http://api.ptbus.com/test/?type=html5&aid=193977"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    iget-object v1, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer$3;->this$0:Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;

    invoke-static {v1}, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->access$0(Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 267
    return-void
.end method
