.class Lcom/nflystudio/Service/PollingService$1;
.super Ljava/util/TimerTask;
.source "PollingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nflystudio/Service/PollingService;->requestServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nflystudio/Service/PollingService;


# direct methods
.method constructor <init>(Lcom/nflystudio/Service/PollingService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nflystudio/Service/PollingService$1;->this$0:Lcom/nflystudio/Service/PollingService;

    .line 93
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 97
    new-instance v0, Lcom/nflystudio/net/BaseRequest;

    invoke-direct {v0}, Lcom/nflystudio/net/BaseRequest;-><init>()V

    .line 98
    .local v0, "baserequest":Lcom/nflystudio/net/BaseRequest;
    const/16 v2, 0x33

    invoke-virtual {v0, v2}, Lcom/nflystudio/net/BaseRequest;->SetRequestType(I)V

    .line 99
    iget-object v2, p0, Lcom/nflystudio/Service/PollingService$1;->this$0:Lcom/nflystudio/Service/PollingService;

    .line 100
    iget-object v3, p0, Lcom/nflystudio/Service/PollingService$1;->this$0:Lcom/nflystudio/Service/PollingService;

    .line 99
    invoke-virtual {v0, v2, v3}, Lcom/nflystudio/net/BaseRequest;->SetResponeObserver(Lcom/nflystudio/net/ResponeObserver;Landroid/content/Context;)V

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://api.ptbus.com/shouji/?type=newmsg&class=hh&begindate="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nflystudio/Service/PollingService$1;->this$0:Lcom/nflystudio/Service/PollingService;

    invoke-static {v3}, Lcom/nflystudio/Service/PollingService;->access$0(Lcom/nflystudio/Service/PollingService;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 103
    iget-object v3, p0, Lcom/nflystudio/Service/PollingService$1;->this$0:Lcom/nflystudio/Service/PollingService;

    invoke-virtual {v3}, Lcom/nflystudio/Service/PollingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nflystudio/Service/NetUtil;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 102
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "url":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/nflystudio/net/BaseRequest;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 105
    return-void
.end method
