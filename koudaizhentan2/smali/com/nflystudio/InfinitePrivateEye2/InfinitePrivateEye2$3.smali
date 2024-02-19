.class Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2$3;
.super Ljava/lang/Object;
.source "InfinitePrivateEye2.java"

# interfaces
.implements Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper$OnConsumeFinishedListener;


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
    iput-object p1, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2$3;->this$0:Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeFinished(Lcom/nflystudio/InfinitePrivateEye2/util/Purchase;Lcom/nflystudio/InfinitePrivateEye2/util/IabResult;)V
    .locals 3
    .param p1, "purchase"    # Lcom/nflystudio/InfinitePrivateEye2/util/Purchase;
    .param p2, "result"    # Lcom/nflystudio/InfinitePrivateEye2/util/IabResult;

    .prologue
    .line 346
    const-string v0, "InfinitePrivateEye2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Consumption finished. Purchase: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-virtual {p2}, Lcom/nflystudio/InfinitePrivateEye2/util/IabResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    const-string v0, "InfinitePrivateEye2"

    const-string v1, "Consumption successful. Provisioning."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_0
    const-string v0, "InfinitePrivateEye2"

    const-string v1, "End consumption flow."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    return-void
.end method
