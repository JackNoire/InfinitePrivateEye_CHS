.class Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2$2;
.super Ljava/lang/Object;
.source "InfinitePrivateEye2.java"

# interfaces
.implements Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper$OnIabPurchaseFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;


# direct methods
.method constructor <init>(Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2$2;->this$0:Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabPurchaseFinished(Lcom/nflystudio/InfinitePrivateEye2/util/IabResult;Lcom/nflystudio/InfinitePrivateEye2/util/Purchase;)V
    .locals 5
    .param p1, "result"    # Lcom/nflystudio/InfinitePrivateEye2/util/IabResult;
    .param p2, "purchase"    # Lcom/nflystudio/InfinitePrivateEye2/util/Purchase;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 314
    const-string v0, "InfinitePrivateEye2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Purchase finished: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", purchase: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-virtual {p1}, Lcom/nflystudio/InfinitePrivateEye2/util/IabResult;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2$2;->this$0:Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;

    invoke-virtual {v0, v3}, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;->receiveResult(I)Ljava/lang/String;

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2$2;->this$0:Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;

    invoke-virtual {v0, v4}, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;->receiveResult(I)Ljava/lang/String;

    .line 325
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2$2;->this$0:Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;

    invoke-static {v0}, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;->access$0(Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;)Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {p1}, Lcom/nflystudio/InfinitePrivateEye2/util/IabResult;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 328
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2$2;->this$0:Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;

    invoke-virtual {v0, v3}, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;->receiveResult(I)Ljava/lang/String;

    goto :goto_0

    .line 331
    :cond_2
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2$2;->this$0:Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;

    invoke-virtual {v0, p2}, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;->verifyDeveloperPayload(Lcom/nflystudio/InfinitePrivateEye2/util/Purchase;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 332
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2$2;->this$0:Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;

    invoke-virtual {v0, v3}, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;->receiveResult(I)Ljava/lang/String;

    goto :goto_0

    .line 336
    :cond_3
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2$2;->this$0:Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;

    invoke-virtual {v0, v4}, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;->receiveResult(I)Ljava/lang/String;

    .line 338
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2$2;->this$0:Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;

    invoke-static {v0}, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;->access$0(Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;)Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2$2;->this$0:Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;

    iget-object v1, v1, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;->mConsumeFinishedListener:Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper$OnConsumeFinishedListener;

    invoke-virtual {v0, p2, v1}, Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper;->consumeAsync(Lcom/nflystudio/InfinitePrivateEye2/util/Purchase;Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper$OnConsumeFinishedListener;)V

    goto :goto_0
.end method
