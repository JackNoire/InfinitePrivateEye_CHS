.class Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper$3;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper$OnConsumeFinishedListener;Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper$OnConsumeMultiFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper;

.field private final synthetic val$handler:Landroid/os/Handler;

.field private final synthetic val$multiListener:Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper$OnConsumeMultiFinishedListener;

.field private final synthetic val$purchases:Ljava/util/List;

.field private final synthetic val$singleListener:Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper$OnConsumeFinishedListener;


# direct methods
.method constructor <init>(Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper;Ljava/util/List;Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper$OnConsumeFinishedListener;Landroid/os/Handler;Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper$3;->this$0:Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper;

    iput-object p2, p0, Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper$3;->val$purchases:Ljava/util/List;

    iput-object p3, p0, Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper$3;->val$singleListener:Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper$OnConsumeFinishedListener;

    iput-object p4, p0, Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper$3;->val$handler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper$3;->val$multiListener:Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper$OnConsumeMultiFinishedListener;

    .line 916
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 918
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 919
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Lcom/nflystudio/InfinitePrivateEye2/util/IabResult;>;"
    iget-object v3, p0, Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper$3;->val$purchases:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 929
    iget-object v3, p0, Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper$3;->this$0:Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper;

    invoke-virtual {v3}, Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper;->flagEndAsync()V

    .line 930
    iget-object v3, p0, Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper$3;->val$singleListener:Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper$OnConsumeFinishedListener;

    if-eqz v3, :cond_0

    .line 931
    iget-object v3, p0, Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper$3;->val$handler:Landroid/os/Handler;

    new-instance v4, Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper$3$1;

    iget-object v5, p0, Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper$3;->val$singleListener:Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper$OnConsumeFinishedListener;

    iget-object v6, p0, Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper$3;->val$purchases:Ljava/util/List;

    invoke-direct {v4, p0, v5, v6, v2}, Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper$3$1;-><init>(Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper$3;Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper$OnConsumeFinishedListener;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 937
    :cond_0
    iget-object v3, p0, Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper$3;->val$multiListener:Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper$OnConsumeMultiFinishedListener;

    if-eqz v3, :cond_1

    .line 938
    iget-object v3, p0, Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper$3;->val$handler:Landroid/os/Handler;

    new-instance v4, Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper$3$2;

    iget-object v5, p0, Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper$3;->val$multiListener:Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper$OnConsumeMultiFinishedListener;

    iget-object v6, p0, Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper$3;->val$purchases:Ljava/util/List;

    invoke-direct {v4, p0, v5, v6, v2}, Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper$3$2;-><init>(Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper$3;Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper$OnConsumeMultiFinishedListener;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 944
    :cond_1
    return-void

    .line 919
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nflystudio/InfinitePrivateEye2/util/Purchase;

    .line 921
    .local v1, "purchase":Lcom/nflystudio/InfinitePrivateEye2/util/Purchase;
    :try_start_0
    iget-object v4, p0, Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper$3;->this$0:Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper;

    invoke-virtual {v4, v1}, Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper;->consume(Lcom/nflystudio/InfinitePrivateEye2/util/Purchase;)V

    .line 922
    new-instance v4, Lcom/nflystudio/InfinitePrivateEye2/util/IabResult;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Successful consume of sku "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/nflystudio/InfinitePrivateEye2/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/nflystudio/InfinitePrivateEye2/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/nflystudio/InfinitePrivateEye2/util/IabException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 924
    :catch_0
    move-exception v0

    .line 925
    .local v0, "ex":Lcom/nflystudio/InfinitePrivateEye2/util/IabException;
    invoke-virtual {v0}, Lcom/nflystudio/InfinitePrivateEye2/util/IabException;->getResult()Lcom/nflystudio/InfinitePrivateEye2/util/IabResult;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
