.class Lcom/creativefactory/ResponseHandler$1;
.super Ljava/lang/Object;
.source "ResponseHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/creativefactory/ResponseHandler;->purchaseResponse(Landroid/content/Context;Lcom/creativefactory/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$developerPayload:Ljava/lang/String;

.field private final synthetic val$orderId:Ljava/lang/String;

.field private final synthetic val$productId:Ljava/lang/String;

.field private final synthetic val$purchaseState:Lcom/creativefactory/Consts$PurchaseState;

.field private final synthetic val$purchaseTime:J


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/creativefactory/Consts$PurchaseState;JLjava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/creativefactory/ResponseHandler$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/creativefactory/ResponseHandler$1;->val$orderId:Ljava/lang/String;

    iput-object p3, p0, Lcom/creativefactory/ResponseHandler$1;->val$productId:Ljava/lang/String;

    iput-object p4, p0, Lcom/creativefactory/ResponseHandler$1;->val$purchaseState:Lcom/creativefactory/Consts$PurchaseState;

    iput-wide p5, p0, Lcom/creativefactory/ResponseHandler$1;->val$purchaseTime:J

    iput-object p7, p0, Lcom/creativefactory/ResponseHandler$1;->val$developerPayload:Ljava/lang/String;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 114
    new-instance v0, Lcom/creativefactory/PurchaseDatabase;

    iget-object v1, p0, Lcom/creativefactory/ResponseHandler$1;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/creativefactory/PurchaseDatabase;-><init>(Landroid/content/Context;)V

    .line 116
    .local v0, "db":Lcom/creativefactory/PurchaseDatabase;
    iget-object v1, p0, Lcom/creativefactory/ResponseHandler$1;->val$orderId:Ljava/lang/String;

    iget-object v2, p0, Lcom/creativefactory/ResponseHandler$1;->val$productId:Ljava/lang/String;

    iget-object v3, p0, Lcom/creativefactory/ResponseHandler$1;->val$purchaseState:Lcom/creativefactory/Consts$PurchaseState;

    iget-wide v4, p0, Lcom/creativefactory/ResponseHandler$1;->val$purchaseTime:J

    iget-object v6, p0, Lcom/creativefactory/ResponseHandler$1;->val$developerPayload:Ljava/lang/String;

    .line 115
    invoke-virtual/range {v0 .. v6}, Lcom/creativefactory/PurchaseDatabase;->updatePurchase(Ljava/lang/String;Ljava/lang/String;Lcom/creativefactory/Consts$PurchaseState;JLjava/lang/String;)I

    move-result v4

    .line 117
    .local v4, "quantity":I
    invoke-virtual {v0}, Lcom/creativefactory/PurchaseDatabase;->close()V

    .line 121
    const-class v8, Lcom/creativefactory/ResponseHandler;

    monitor-enter v8

    .line 122
    :try_start_0
    invoke-static {}, Lcom/creativefactory/ResponseHandler;->access$0()Lcom/creativefactory/PurchaseObserver;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 123
    invoke-static {}, Lcom/creativefactory/ResponseHandler;->access$0()Lcom/creativefactory/PurchaseObserver;

    move-result-object v1

    .line 124
    iget-object v2, p0, Lcom/creativefactory/ResponseHandler$1;->val$purchaseState:Lcom/creativefactory/Consts$PurchaseState;

    iget-object v3, p0, Lcom/creativefactory/ResponseHandler$1;->val$productId:Ljava/lang/String;

    iget-wide v5, p0, Lcom/creativefactory/ResponseHandler$1;->val$purchaseTime:J

    iget-object v7, p0, Lcom/creativefactory/ResponseHandler$1;->val$developerPayload:Ljava/lang/String;

    .line 123
    invoke-virtual/range {v1 .. v7}, Lcom/creativefactory/PurchaseObserver;->postPurchaseStateChange(Lcom/creativefactory/Consts$PurchaseState;Ljava/lang/String;IJLjava/lang/String;)V

    .line 121
    :cond_0
    monitor-exit v8

    .line 127
    return-void

    .line 121
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
