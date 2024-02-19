.class Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2$1;
.super Ljava/lang/Object;
.source "InfinitePrivateEye2.java"

# interfaces
.implements Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper$QueryInventoryFinishedListener;


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
    iput-object p1, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2$1;->this$0:Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/nflystudio/InfinitePrivateEye2/util/IabResult;Lcom/nflystudio/InfinitePrivateEye2/util/Inventory;)V
    .locals 1
    .param p1, "result"    # Lcom/nflystudio/InfinitePrivateEye2/util/IabResult;
    .param p2, "inv"    # Lcom/nflystudio/InfinitePrivateEye2/util/Inventory;

    .prologue
    .line 274
    invoke-virtual {p1}, Lcom/nflystudio/InfinitePrivateEye2/util/IabResult;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    :cond_0
    return-void
.end method
