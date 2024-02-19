.class public Lcom/creativefactory/BillingService;
.super Landroid/app/Service;
.source "BillingService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/creativefactory/BillingService$BillingRequest;,
        Lcom/creativefactory/BillingService$CheckBillingSupported;,
        Lcom/creativefactory/BillingService$ConfirmNotifications;,
        Lcom/creativefactory/BillingService$GetPurchaseInformation;,
        Lcom/creativefactory/BillingService$RequestPurchase;,
        Lcom/creativefactory/BillingService$RestoreTransactions;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BillingService"

.field private static mPendingRequests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/creativefactory/BillingService$BillingRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static mSentRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/creativefactory/BillingService$BillingRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static mService:Lcom/android/vending/billing/IMarketBillingService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/creativefactory/BillingService;->mPendingRequests:Ljava/util/LinkedList;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 67
    sput-object v0, Lcom/creativefactory/BillingService;->mSentRequests:Ljava/util/HashMap;

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 351
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 352
    return-void
.end method

.method static synthetic access$0(Lcom/creativefactory/BillingService;)Z
    .locals 1

    .prologue
    .line 417
    invoke-direct {p0}, Lcom/creativefactory/BillingService;->bindToMarketBillingService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1()Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/creativefactory/BillingService;->mPendingRequests:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$2()Lcom/android/vending/billing/IMarketBillingService;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/creativefactory/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    return-object v0
.end method

.method static synthetic access$3()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/creativefactory/BillingService;->mSentRequests:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4(Lcom/android/vending/billing/IMarketBillingService;)V
    .locals 0

    .prologue
    .line 54
    sput-object p0, Lcom/creativefactory/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    return-void
.end method

.method private bindToMarketBillingService()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 422
    .line 423
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.vending.billing.MarketBillingService.BIND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 425
    const/4 v4, 0x1

    .line 422
    invoke-virtual {p0, v3, p0, v4}, Lcom/creativefactory/BillingService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 427
    .local v0, "bindResult":Z
    if-eqz v0, :cond_0

    .line 435
    .end local v0    # "bindResult":Z
    :goto_0
    return v2

    .line 430
    .restart local v0    # "bindResult":Z
    :cond_0
    const-string v2, "BillingService"

    const-string v3, "Could not bind to service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    .end local v0    # "bindResult":Z
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 432
    :catch_0
    move-exception v1

    .line 433
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v2, "BillingService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Security exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private checkResponseCode(JLcom/creativefactory/Consts$ResponseCode;)V
    .locals 3
    .param p1, "requestId"    # J
    .param p3, "responseCode"    # Lcom/creativefactory/Consts$ResponseCode;

    .prologue
    .line 544
    sget-object v1, Lcom/creativefactory/BillingService;->mSentRequests:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/creativefactory/BillingService$BillingRequest;

    .line 545
    .local v0, "request":Lcom/creativefactory/BillingService$BillingRequest;
    if-eqz v0, :cond_0

    .line 549
    invoke-virtual {v0, p3}, Lcom/creativefactory/BillingService$BillingRequest;->responseCodeReceived(Lcom/creativefactory/Consts$ResponseCode;)V

    .line 551
    :cond_0
    sget-object v1, Lcom/creativefactory/BillingService;->mSentRequests:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    return-void
.end method

.method private confirmNotifications(I[Ljava/lang/String;)Z
    .locals 1
    .param p1, "startId"    # I
    .param p2, "notifyIds"    # [Ljava/lang/String;

    .prologue
    .line 482
    new-instance v0, Lcom/creativefactory/BillingService$ConfirmNotifications;

    invoke-direct {v0, p0, p1, p2}, Lcom/creativefactory/BillingService$ConfirmNotifications;-><init>(Lcom/creativefactory/BillingService;I[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/creativefactory/BillingService$ConfirmNotifications;->runRequest()Z

    move-result v0

    return v0
.end method

.method private getPurchaseInformation(I[Ljava/lang/String;)Z
    .locals 1
    .param p1, "startId"    # I
    .param p2, "notifyIds"    # [Ljava/lang/String;

    .prologue
    .line 499
    new-instance v0, Lcom/creativefactory/BillingService$GetPurchaseInformation;

    invoke-direct {v0, p0, p1, p2}, Lcom/creativefactory/BillingService$GetPurchaseInformation;-><init>(Lcom/creativefactory/BillingService;I[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/creativefactory/BillingService$GetPurchaseInformation;->runRequest()Z

    move-result v0

    return v0
.end method

.method private purchaseStateChanged(ILjava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "startId"    # I
    .param p2, "signedData"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;

    .prologue
    .line 512
    invoke-static {p2, p3}, Lcom/creativefactory/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 513
    .local v9, "purchases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/creativefactory/Security$VerifiedPurchase;>;"
    if-nez v9, :cond_1

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 518
    .local v8, "notifyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 525
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 526
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 527
    .local v7, "notifyIds":[Ljava/lang/String;
    invoke-direct {p0, p1, v7}, Lcom/creativefactory/BillingService;->confirmNotifications(I[Ljava/lang/String;)Z

    goto :goto_0

    .line 518
    .end local v7    # "notifyIds":[Ljava/lang/String;
    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/creativefactory/Security$VerifiedPurchase;

    .line 519
    .local v10, "vp":Lcom/creativefactory/Security$VerifiedPurchase;
    iget-object v0, v10, Lcom/creativefactory/Security$VerifiedPurchase;->notificationId:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 520
    iget-object v0, v10, Lcom/creativefactory/Security$VerifiedPurchase;->notificationId:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    :cond_3
    iget-object v1, v10, Lcom/creativefactory/Security$VerifiedPurchase;->purchaseState:Lcom/creativefactory/Consts$PurchaseState;

    iget-object v2, v10, Lcom/creativefactory/Security$VerifiedPurchase;->productId:Ljava/lang/String;

    .line 523
    iget-object v3, v10, Lcom/creativefactory/Security$VerifiedPurchase;->orderId:Ljava/lang/String;

    iget-wide v4, v10, Lcom/creativefactory/Security$VerifiedPurchase;->purchaseTime:J

    iget-object v6, v10, Lcom/creativefactory/Security$VerifiedPurchase;->developerPayload:Ljava/lang/String;

    move-object v0, p0

    .line 522
    invoke-static/range {v0 .. v6}, Lcom/creativefactory/ResponseHandler;->purchaseResponse(Landroid/content/Context;Lcom/creativefactory/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_1
.end method

.method private runPendingRequests()V
    .locals 3

    .prologue
    .line 559
    const/4 v0, -0x1

    .line 561
    .local v0, "maxStartId":I
    :cond_0
    :goto_0
    sget-object v2, Lcom/creativefactory/BillingService;->mPendingRequests:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/creativefactory/BillingService$BillingRequest;

    .local v1, "request":Lcom/creativefactory/BillingService$BillingRequest;
    if-nez v1, :cond_2

    .line 582
    if-ltz v0, :cond_1

    .line 586
    invoke-virtual {p0, v0}, Lcom/creativefactory/BillingService;->stopSelf(I)V

    .line 588
    :cond_1
    :goto_1
    return-void

    .line 562
    :cond_2
    invoke-virtual {v1}, Lcom/creativefactory/BillingService$BillingRequest;->runIfConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 564
    sget-object v2, Lcom/creativefactory/BillingService;->mPendingRequests:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 568
    invoke-virtual {v1}, Lcom/creativefactory/BillingService$BillingRequest;->getStartId()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 569
    invoke-virtual {v1}, Lcom/creativefactory/BillingService$BillingRequest;->getStartId()I

    move-result v0

    goto :goto_0

    .line 574
    :cond_3
    invoke-direct {p0}, Lcom/creativefactory/BillingService;->bindToMarketBillingService()Z

    goto :goto_1
.end method


# virtual methods
.method public checkBillingSupported()Z
    .locals 1

    .prologue
    .line 443
    new-instance v0, Lcom/creativefactory/BillingService$CheckBillingSupported;

    invoke-direct {v0, p0}, Lcom/creativefactory/BillingService$CheckBillingSupported;-><init>(Lcom/creativefactory/BillingService;)V

    invoke-virtual {v0}, Lcom/creativefactory/BillingService$CheckBillingSupported;->runRequest()Z

    move-result v0

    return v0
.end method

.method public handleCommand(Landroid/content/Intent;I)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 381
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, "action":Ljava/lang/String;
    const-string v10, "com.creativefactory.CONFIRM_NOTIFICATION"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 386
    const-string v10, "notification_id"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 387
    .local v3, "notifyIds":[Ljava/lang/String;
    invoke-direct {p0, p2, v3}, Lcom/creativefactory/BillingService;->confirmNotifications(I[Ljava/lang/String;)Z

    .line 410
    .end local v0    # "action":Ljava/lang/String;
    .end local v3    # "notifyIds":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 388
    .restart local v0    # "action":Ljava/lang/String;
    :cond_1
    const-string v10, "com.creativefactory.GET_PURCHASE_INFORMATION"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 389
    const-string v10, "notification_id"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 390
    .local v2, "notifyId":Ljava/lang/String;
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    invoke-direct {p0, p2, v10}, Lcom/creativefactory/BillingService;->getPurchaseInformation(I[Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 406
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "notifyId":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 408
    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-virtual {p0}, Lcom/creativefactory/BillingService;->unbind()V

    goto :goto_0

    .line 391
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .restart local v0    # "action":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v10, "com.android.vending.billing.PURCHASE_STATE_CHANGED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 392
    const-string v10, "inapp_signed_data"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 393
    .local v9, "signedData":Ljava/lang/String;
    const-string v10, "inapp_signature"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 394
    .local v8, "signature":Ljava/lang/String;
    invoke-direct {p0, p2, v9, v8}, Lcom/creativefactory/BillingService;->purchaseStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 395
    .end local v8    # "signature":Ljava/lang/String;
    .end local v9    # "signedData":Ljava/lang/String;
    :cond_3
    const-string v10, "com.android.vending.billing.RESPONSE_CODE"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 396
    const-string v10, "request_id"

    const-wide/16 v11, -0x1

    invoke-virtual {p1, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 397
    .local v4, "requestId":J
    const-string v10, "response_code"

    .line 398
    sget-object v11, Lcom/creativefactory/Consts$ResponseCode;->RESULT_ERROR:Lcom/creativefactory/Consts$ResponseCode;

    invoke-virtual {v11}, Lcom/creativefactory/Consts$ResponseCode;->ordinal()I

    move-result v11

    .line 397
    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 400
    .local v7, "responseCodeIndex":I
    const-string v10, "BillingService"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "request Id: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", Reponse Code: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-static {v7}, Lcom/creativefactory/Consts$ResponseCode;->valueOf(I)Lcom/creativefactory/Consts$ResponseCode;

    move-result-object v6

    .line 403
    .local v6, "responseCode":Lcom/creativefactory/Consts$ResponseCode;
    invoke-direct {p0, v4, v5, v6}, Lcom/creativefactory/BillingService;->checkResponseCode(JLcom/creativefactory/Consts$ResponseCode;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 363
    const/4 v0, 0x0

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 598
    invoke-static {p2}, Lcom/android/vending/billing/IMarketBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IMarketBillingService;

    move-result-object v0

    sput-object v0, Lcom/creativefactory/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    .line 599
    invoke-direct {p0}, Lcom/creativefactory/BillingService;->runPendingRequests()V

    .line 600
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 606
    const-string v0, "BillingService"

    const-string v1, "Billing service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    const/4 v0, 0x0

    sput-object v0, Lcom/creativefactory/BillingService;->mService:Lcom/android/vending/billing/IMarketBillingService;

    .line 608
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 368
    invoke-virtual {p0, p1, p2}, Lcom/creativefactory/BillingService;->handleCommand(Landroid/content/Intent;I)V

    .line 369
    return-void
.end method

.method public requestPurchase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "productId"    # Ljava/lang/String;
    .param p2, "developerPayload"    # Ljava/lang/String;

    .prologue
    .line 457
    new-instance v0, Lcom/creativefactory/BillingService$RequestPurchase;

    invoke-direct {v0, p0, p1, p2}, Lcom/creativefactory/BillingService$RequestPurchase;-><init>(Lcom/creativefactory/BillingService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/creativefactory/BillingService$RequestPurchase;->runRequest()Z

    move-result v0

    return v0
.end method

.method public restoreTransactions()Z
    .locals 1

    .prologue
    .line 467
    new-instance v0, Lcom/creativefactory/BillingService$RestoreTransactions;

    invoke-direct {v0, p0}, Lcom/creativefactory/BillingService$RestoreTransactions;-><init>(Lcom/creativefactory/BillingService;)V

    invoke-virtual {v0}, Lcom/creativefactory/BillingService$RestoreTransactions;->runRequest()Z

    move-result v0

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 355
    invoke-virtual {p0, p1}, Lcom/creativefactory/BillingService;->attachBaseContext(Landroid/content/Context;)V

    .line 356
    return-void
.end method

.method public unbind()V
    .locals 1

    .prologue
    .line 616
    :try_start_0
    invoke-virtual {p0, p0}, Lcom/creativefactory/BillingService;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 620
    :goto_0
    return-void

    .line 617
    :catch_0
    move-exception v0

    goto :goto_0
.end method
