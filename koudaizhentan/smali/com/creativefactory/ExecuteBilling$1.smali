.class Lcom/creativefactory/ExecuteBilling$1;
.super Ljava/lang/Object;
.source "ExecuteBilling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/creativefactory/ExecuteBilling;->purchaseItem(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/creativefactory/ExecuteBilling;

.field private final synthetic val$pID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/creativefactory/ExecuteBilling;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/creativefactory/ExecuteBilling$1;->this$0:Lcom/creativefactory/ExecuteBilling;

    iput-object p2, p0, Lcom/creativefactory/ExecuteBilling$1;->val$pID:Ljava/lang/String;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/creativefactory/ExecuteBilling$1;->this$0:Lcom/creativefactory/ExecuteBilling;

    invoke-static {v0}, Lcom/creativefactory/ExecuteBilling;->access$2(Lcom/creativefactory/ExecuteBilling;)Lcom/creativefactory/BillingService;

    move-result-object v0

    iget-object v1, p0, Lcom/creativefactory/ExecuteBilling$1;->val$pID:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/creativefactory/BillingService;->requestPurchase(Ljava/lang/String;Ljava/lang/String;)Z

    .line 75
    return-void
.end method
