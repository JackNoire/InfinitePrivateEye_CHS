.class Lcom/creativefactory/ExecuteBilling$GooglePlayPurchaseObserver;
.super Lcom/creativefactory/PurchaseObserver;
.source "ExecuteBilling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/creativefactory/ExecuteBilling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GooglePlayPurchaseObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/creativefactory/ExecuteBilling;


# direct methods
.method public constructor <init>(Lcom/creativefactory/ExecuteBilling;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/creativefactory/ExecuteBilling$GooglePlayPurchaseObserver;->this$0:Lcom/creativefactory/ExecuteBilling;

    .line 85
    invoke-static {}, Lcom/creativefactory/ExecuteBilling;->access$0()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/creativefactory/PurchaseObserver;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    .line 86
    return-void
.end method


# virtual methods
.method public onBillingSupported(Z)V
    .locals 0
    .param p1, "supported"    # Z

    .prologue
    .line 90
    return-void
.end method

.method public onPurchaseStateChange(Lcom/creativefactory/Consts$PurchaseState;Ljava/lang/String;IJLjava/lang/String;)V
    .locals 0
    .param p1, "purchaseState"    # Lcom/creativefactory/Consts$PurchaseState;
    .param p2, "itemId"    # Ljava/lang/String;
    .param p3, "quantity"    # I
    .param p4, "purchaseTime"    # J
    .param p6, "developerPayload"    # Ljava/lang/String;

    .prologue
    .line 123
    return-void
.end method

.method public onRequestPurchaseResponse(Lcom/creativefactory/BillingService$RequestPurchase;Lcom/creativefactory/Consts$ResponseCode;)V
    .locals 2
    .param p1, "request"    # Lcom/creativefactory/BillingService$RequestPurchase;
    .param p2, "responseCode"    # Lcom/creativefactory/Consts$ResponseCode;

    .prologue
    const/4 v1, 0x1

    .line 134
    sget-object v0, Lcom/creativefactory/Consts$ResponseCode;->RESULT_OK:Lcom/creativefactory/Consts$ResponseCode;

    if-ne p2, v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/creativefactory/ExecuteBilling$GooglePlayPurchaseObserver;->this$0:Lcom/creativefactory/ExecuteBilling;

    invoke-static {v0}, Lcom/creativefactory/ExecuteBilling;->access$1(Lcom/creativefactory/ExecuteBilling;)Lcom/creativefactory/TimePrivate;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/creativefactory/TimePrivate;->receiveResult(I)Ljava/lang/String;

    .line 161
    :goto_0
    return-void

    .line 146
    :cond_0
    sget-object v0, Lcom/creativefactory/Consts$ResponseCode;->RESULT_BILLING_UNAVAILABLE:Lcom/creativefactory/Consts$ResponseCode;

    if-ne p2, v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/creativefactory/ExecuteBilling$GooglePlayPurchaseObserver;->this$0:Lcom/creativefactory/ExecuteBilling;

    invoke-static {v0}, Lcom/creativefactory/ExecuteBilling;->access$1(Lcom/creativefactory/ExecuteBilling;)Lcom/creativefactory/TimePrivate;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/creativefactory/TimePrivate;->receiveResult(I)Ljava/lang/String;

    goto :goto_0

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/creativefactory/ExecuteBilling$GooglePlayPurchaseObserver;->this$0:Lcom/creativefactory/ExecuteBilling;

    invoke-static {v0}, Lcom/creativefactory/ExecuteBilling;->access$1(Lcom/creativefactory/ExecuteBilling;)Lcom/creativefactory/TimePrivate;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/creativefactory/TimePrivate;->receiveResult(I)Ljava/lang/String;

    goto :goto_0
.end method

.method public onRestoreTransactionsResponse(Lcom/creativefactory/BillingService$RestoreTransactions;Lcom/creativefactory/Consts$ResponseCode;)V
    .locals 4
    .param p1, "request"    # Lcom/creativefactory/BillingService$RestoreTransactions;
    .param p2, "responseCode"    # Lcom/creativefactory/Consts$ResponseCode;

    .prologue
    .line 172
    sget-object v2, Lcom/creativefactory/Consts$ResponseCode;->RESULT_OK:Lcom/creativefactory/Consts$ResponseCode;

    if-ne p2, v2, :cond_0

    .line 181
    invoke-static {}, Lcom/creativefactory/ExecuteBilling;->access$0()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 182
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 183
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "db_initialized"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 184
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 194
    .end local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method
