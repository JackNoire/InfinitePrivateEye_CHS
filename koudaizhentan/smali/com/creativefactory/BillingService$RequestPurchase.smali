.class Lcom/creativefactory/BillingService$RequestPurchase;
.super Lcom/creativefactory/BillingService$BillingRequest;
.source "BillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/creativefactory/BillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RequestPurchase"
.end annotation


# instance fields
.field public final mDeveloperPayload:Ljava/lang/String;

.field public final mProductId:Ljava/lang/String;

.field final synthetic this$0:Lcom/creativefactory/BillingService;


# direct methods
.method public constructor <init>(Lcom/creativefactory/BillingService;Ljava/lang/String;)V
    .locals 1
    .param p2, "itemId"    # Ljava/lang/String;

    .prologue
    .line 210
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/creativefactory/BillingService$RequestPurchase;-><init>(Lcom/creativefactory/BillingService;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method public constructor <init>(Lcom/creativefactory/BillingService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "itemId"    # Ljava/lang/String;
    .param p3, "developerPayload"    # Ljava/lang/String;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/creativefactory/BillingService$RequestPurchase;->this$0:Lcom/creativefactory/BillingService;

    .line 217
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/creativefactory/BillingService$BillingRequest;-><init>(Lcom/creativefactory/BillingService;I)V

    .line 218
    iput-object p2, p0, Lcom/creativefactory/BillingService$RequestPurchase;->mProductId:Ljava/lang/String;

    .line 219
    iput-object p3, p0, Lcom/creativefactory/BillingService$RequestPurchase;->mDeveloperPayload:Ljava/lang/String;

    .line 220
    return-void
.end method


# virtual methods
.method protected responseCodeReceived(Lcom/creativefactory/Consts$ResponseCode;)V
    .locals 1
    .param p1, "responseCode"    # Lcom/creativefactory/Consts$ResponseCode;

    .prologue
    .line 249
    iget-object v0, p0, Lcom/creativefactory/BillingService$RequestPurchase;->this$0:Lcom/creativefactory/BillingService;

    invoke-static {v0, p0, p1}, Lcom/creativefactory/ResponseHandler;->responseCodeReceived(Landroid/content/Context;Lcom/creativefactory/BillingService$RequestPurchase;Lcom/creativefactory/Consts$ResponseCode;)V

    .line 250
    return-void
.end method

.method protected run()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 225
    const-string v4, "TIME PRIVATE"

    const-string v5, "REQUEST PURCHASE ITEM !!!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const-string v4, "REQUEST_PURCHASE"

    invoke-virtual {p0, v4}, Lcom/creativefactory/BillingService$RequestPurchase;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 228
    .local v2, "request":Landroid/os/Bundle;
    const-string v4, "ITEM_ID"

    iget-object v5, p0, Lcom/creativefactory/BillingService$RequestPurchase;->mProductId:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v4, p0, Lcom/creativefactory/BillingService$RequestPurchase;->mDeveloperPayload:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 231
    const-string v4, "DEVELOPER_PAYLOAD"

    iget-object v5, p0, Lcom/creativefactory/BillingService$RequestPurchase;->mDeveloperPayload:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :cond_0
    invoke-static {}, Lcom/creativefactory/BillingService;->access$2()Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/android/vending/billing/IMarketBillingService;->sendBillingRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 235
    .local v3, "response":Landroid/os/Bundle;
    const-string v4, "PURCHASE_INTENT"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 236
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    if-nez v1, :cond_1

    .line 237
    const-string v4, "BillingService"

    const-string v5, "Error with requestPurchase"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    sget-wide v4, Lcom/creativefactory/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    .line 243
    :goto_0
    return-wide v4

    .line 241
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 242
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {v1, v0}, Lcom/creativefactory/ResponseHandler;->buyPageIntentResponse(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 243
    const-string v4, "REQUEST_ID"

    .line 244
    sget-wide v5, Lcom/creativefactory/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    .line 243
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    goto :goto_0
.end method
