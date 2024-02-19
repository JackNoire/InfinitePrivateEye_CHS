.class public Lcom/creativefactory/ResponseHandler;
.super Ljava/lang/Object;
.source "ResponseHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ResponseHandler"

.field private static sPurchaseObserver:Lcom/creativefactory/PurchaseObserver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Lcom/creativefactory/PurchaseObserver;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/creativefactory/ResponseHandler;->sPurchaseObserver:Lcom/creativefactory/PurchaseObserver;

    return-object v0
.end method

.method public static buyPageIntentResponse(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 1
    .param p0, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 75
    sget-object v0, Lcom/creativefactory/ResponseHandler;->sPurchaseObserver:Lcom/creativefactory/PurchaseObserver;

    if-nez v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 81
    :cond_0
    sget-object v0, Lcom/creativefactory/ResponseHandler;->sPurchaseObserver:Lcom/creativefactory/PurchaseObserver;

    invoke-virtual {v0, p0, p1}, Lcom/creativefactory/PurchaseObserver;->startBuyPageActivity(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static checkBillingSupportedResponse(Z)V
    .locals 1
    .param p0, "supported"    # Z

    .prologue
    .line 59
    sget-object v0, Lcom/creativefactory/ResponseHandler;->sPurchaseObserver:Lcom/creativefactory/PurchaseObserver;

    if-eqz v0, :cond_0

    .line 60
    sget-object v0, Lcom/creativefactory/ResponseHandler;->sPurchaseObserver:Lcom/creativefactory/PurchaseObserver;

    invoke-virtual {v0, p0}, Lcom/creativefactory/PurchaseObserver;->onBillingSupported(Z)V

    .line 62
    :cond_0
    return-void
.end method

.method public static purchaseResponse(Landroid/content/Context;Lcom/creativefactory/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "purchaseState"    # Lcom/creativefactory/Consts$PurchaseState;
    .param p2, "productId"    # Ljava/lang/String;
    .param p3, "orderId"    # Ljava/lang/String;
    .param p4, "purchaseTime"    # J
    .param p6, "developerPayload"    # Ljava/lang/String;

    .prologue
    .line 112
    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/creativefactory/ResponseHandler$1;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    move-object v4, p1

    move-wide v5, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/creativefactory/ResponseHandler$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/creativefactory/Consts$PurchaseState;JLjava/lang/String;)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 128
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 129
    return-void
.end method

.method public static declared-synchronized register(Lcom/creativefactory/PurchaseObserver;)V
    .locals 2
    .param p0, "observer"    # Lcom/creativefactory/PurchaseObserver;

    .prologue
    .line 41
    const-class v0, Lcom/creativefactory/ResponseHandler;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/creativefactory/ResponseHandler;->sPurchaseObserver:Lcom/creativefactory/PurchaseObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit v0

    return-void

    .line 41
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static responseCodeReceived(Landroid/content/Context;Lcom/creativefactory/BillingService$RequestPurchase;Lcom/creativefactory/Consts$ResponseCode;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Lcom/creativefactory/BillingService$RequestPurchase;
    .param p2, "responseCode"    # Lcom/creativefactory/Consts$ResponseCode;

    .prologue
    .line 146
    sget-object v0, Lcom/creativefactory/ResponseHandler;->sPurchaseObserver:Lcom/creativefactory/PurchaseObserver;

    if-eqz v0, :cond_0

    .line 147
    sget-object v0, Lcom/creativefactory/ResponseHandler;->sPurchaseObserver:Lcom/creativefactory/PurchaseObserver;

    invoke-virtual {v0, p1, p2}, Lcom/creativefactory/PurchaseObserver;->onRequestPurchaseResponse(Lcom/creativefactory/BillingService$RequestPurchase;Lcom/creativefactory/Consts$ResponseCode;)V

    .line 149
    :cond_0
    return-void
.end method

.method public static responseCodeReceived(Landroid/content/Context;Lcom/creativefactory/BillingService$RestoreTransactions;Lcom/creativefactory/Consts$ResponseCode;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Lcom/creativefactory/BillingService$RestoreTransactions;
    .param p2, "responseCode"    # Lcom/creativefactory/Consts$ResponseCode;

    .prologue
    .line 162
    sget-object v0, Lcom/creativefactory/ResponseHandler;->sPurchaseObserver:Lcom/creativefactory/PurchaseObserver;

    if-eqz v0, :cond_0

    .line 163
    sget-object v0, Lcom/creativefactory/ResponseHandler;->sPurchaseObserver:Lcom/creativefactory/PurchaseObserver;

    invoke-virtual {v0, p1, p2}, Lcom/creativefactory/PurchaseObserver;->onRestoreTransactionsResponse(Lcom/creativefactory/BillingService$RestoreTransactions;Lcom/creativefactory/Consts$ResponseCode;)V

    .line 165
    :cond_0
    return-void
.end method

.method public static declared-synchronized unregister(Lcom/creativefactory/PurchaseObserver;)V
    .locals 2
    .param p0, "observer"    # Lcom/creativefactory/PurchaseObserver;

    .prologue
    .line 49
    const-class v0, Lcom/creativefactory/ResponseHandler;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/creativefactory/ResponseHandler;->sPurchaseObserver:Lcom/creativefactory/PurchaseObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit v0

    return-void

    .line 49
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
