.class Lcom/nflystudio/InfinitePrivateEye2/ViewContainer$7;
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
    iput-object p1, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer$7;->this$0:Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 322
    iget-object v2, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer$7;->this$0:Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;

    invoke-static {v2}, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->access$0(Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "discuss"

    invoke-static {v2, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 323
    const-string v2, "http://bbs.ptbus.com/forum-1670-1.html"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 324
    .local v1, "path":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 326
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 328
    iget-object v2, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer$7;->this$0:Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;

    invoke-static {v2}, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->access$0(Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 329
    return-void
.end method
