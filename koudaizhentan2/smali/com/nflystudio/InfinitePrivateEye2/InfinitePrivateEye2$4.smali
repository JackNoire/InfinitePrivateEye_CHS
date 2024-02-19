.class Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2$4;
.super Ljava/lang/Object;
.source "InfinitePrivateEye2.java"

# interfaces
.implements Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper$OnIabSetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2$4;->this$0:Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Lcom/nflystudio/InfinitePrivateEye2/util/IabResult;)V
    .locals 2
    .param p1, "result"    # Lcom/nflystudio/InfinitePrivateEye2/util/IabResult;

    .prologue
    .line 89
    invoke-virtual {p1}, Lcom/nflystudio/InfinitePrivateEye2/util/IabResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2$4;->this$0:Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;

    invoke-static {v0}, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;->access$0(Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;)Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2$4;->this$0:Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;

    iget-object v1, v1, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;->mGotInventoryListener:Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper$QueryInventoryFinishedListener;

    invoke-virtual {v0, v1}, Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper;->queryInventoryAsync(Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper$QueryInventoryFinishedListener;)V

    goto :goto_0
.end method
