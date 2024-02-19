.class Lcom/nflystudio/InfinitePrivateEye2/ViewContainer$1;
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
    iput-object p1, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer$1;->this$0:Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer$1;->this$0:Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;

    invoke-static {v0}, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->access$0(Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "ControlerButton"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer$1;->this$0:Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;

    invoke-static {v0}, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->access$1(Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer$1;->this$0:Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;

    invoke-static {v0}, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->access$2(Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;)V

    .line 238
    :goto_0
    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer$1;->this$0:Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;

    invoke-static {v0}, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->access$3(Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;)V

    goto :goto_0
.end method
