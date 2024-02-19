.class public Lcom/creativefactory/ExecuteBilling;
.super Ljava/lang/Object;
.source "ExecuteBilling.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/creativefactory/ExecuteBilling$GooglePlayPurchaseObserver;
    }
.end annotation


# static fields
.field private static final DB_INITIALIZED:Ljava/lang/String; = "db_initialized"

.field private static _executeBilling:Lcom/creativefactory/ExecuteBilling;

.field private static _myActivity:Landroid/app/Activity;


# instance fields
.field private _timePrivate:Lcom/creativefactory/TimePrivate;

.field private mBillingService:Lcom/creativefactory/BillingService;

.field public mGooglePlayPurchaseObserver:Lcom/creativefactory/ExecuteBilling$GooglePlayPurchaseObserver;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/creativefactory/ExecuteBilling;->_executeBilling:Lcom/creativefactory/ExecuteBilling;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method static synthetic access$0()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/creativefactory/ExecuteBilling;->_myActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/creativefactory/ExecuteBilling;)Lcom/creativefactory/TimePrivate;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/creativefactory/ExecuteBilling;->_timePrivate:Lcom/creativefactory/TimePrivate;

    return-object v0
.end method

.method static synthetic access$2(Lcom/creativefactory/ExecuteBilling;)Lcom/creativefactory/BillingService;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/creativefactory/ExecuteBilling;->mBillingService:Lcom/creativefactory/BillingService;

    return-object v0
.end method

.method public static getInstance()Lcom/creativefactory/ExecuteBilling;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/creativefactory/ExecuteBilling;->_executeBilling:Lcom/creativefactory/ExecuteBilling;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/creativefactory/ExecuteBilling;

    invoke-direct {v0}, Lcom/creativefactory/ExecuteBilling;-><init>()V

    sput-object v0, Lcom/creativefactory/ExecuteBilling;->_executeBilling:Lcom/creativefactory/ExecuteBilling;

    .line 47
    :cond_0
    sget-object v0, Lcom/creativefactory/ExecuteBilling;->_executeBilling:Lcom/creativefactory/ExecuteBilling;

    return-object v0
.end method


# virtual methods
.method public initExecuteBilling(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 52
    sput-object p1, Lcom/creativefactory/ExecuteBilling;->_myActivity:Landroid/app/Activity;

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/creativefactory/ExecuteBilling;->mHandler:Landroid/os/Handler;

    .line 55
    new-instance v0, Lcom/creativefactory/ExecuteBilling$GooglePlayPurchaseObserver;

    iget-object v1, p0, Lcom/creativefactory/ExecuteBilling;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/creativefactory/ExecuteBilling$GooglePlayPurchaseObserver;-><init>(Lcom/creativefactory/ExecuteBilling;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/creativefactory/ExecuteBilling;->mGooglePlayPurchaseObserver:Lcom/creativefactory/ExecuteBilling$GooglePlayPurchaseObserver;

    .line 56
    new-instance v0, Lcom/creativefactory/BillingService;

    invoke-direct {v0}, Lcom/creativefactory/BillingService;-><init>()V

    iput-object v0, p0, Lcom/creativefactory/ExecuteBilling;->mBillingService:Lcom/creativefactory/BillingService;

    .line 57
    iget-object v0, p0, Lcom/creativefactory/ExecuteBilling;->mBillingService:Lcom/creativefactory/BillingService;

    invoke-virtual {v0, p1}, Lcom/creativefactory/BillingService;->setContext(Landroid/content/Context;)V

    .line 59
    iget-object v0, p0, Lcom/creativefactory/ExecuteBilling;->mGooglePlayPurchaseObserver:Lcom/creativefactory/ExecuteBilling$GooglePlayPurchaseObserver;

    invoke-static {v0}, Lcom/creativefactory/ResponseHandler;->register(Lcom/creativefactory/PurchaseObserver;)V

    .line 60
    iget-object v0, p0, Lcom/creativefactory/ExecuteBilling;->mBillingService:Lcom/creativefactory/BillingService;

    invoke-virtual {v0}, Lcom/creativefactory/BillingService;->checkBillingSupported()Z

    .line 61
    return-void
.end method

.method public purchaseItem(Ljava/lang/String;)V
    .locals 2
    .param p1, "pID"    # Ljava/lang/String;

    .prologue
    .line 70
    const-string v0, "GOOGLE PLAY IN APP BILLING"

    const-string v1, "RUN PURCHASE !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lcom/creativefactory/ExecuteBilling;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/creativefactory/ExecuteBilling$1;

    invoke-direct {v1, p0, p1}, Lcom/creativefactory/ExecuteBilling$1;-><init>(Lcom/creativefactory/ExecuteBilling;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77
    return-void
.end method

.method public setTimePrivate(Lcom/creativefactory/TimePrivate;)V
    .locals 0
    .param p1, "timePrivate"    # Lcom/creativefactory/TimePrivate;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/creativefactory/ExecuteBilling;->_timePrivate:Lcom/creativefactory/TimePrivate;

    .line 66
    return-void
.end method
