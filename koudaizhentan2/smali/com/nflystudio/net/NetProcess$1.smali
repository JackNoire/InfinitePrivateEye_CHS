.class Lcom/nflystudio/net/NetProcess$1;
.super Ljava/lang/Object;
.source "NetProcess.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nflystudio/net/NetProcess;->regListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nflystudio/net/NetProcess;


# direct methods
.method constructor <init>(Lcom/nflystudio/net/NetProcess;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nflystudio/net/NetProcess$1;->this$0:Lcom/nflystudio/net/NetProcess;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 78
    iget-object v1, p0, Lcom/nflystudio/net/NetProcess$1;->this$0:Lcom/nflystudio/net/NetProcess;

    invoke-static {v1}, Lcom/nflystudio/net/NetProcess;->access$0(Lcom/nflystudio/net/NetProcess;)Landroid/widget/ProgressBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/nflystudio/net/NetProcess$1;->this$0:Lcom/nflystudio/net/NetProcess;

    invoke-static {v1}, Lcom/nflystudio/net/NetProcess;->access$0(Lcom/nflystudio/net/NetProcess;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/nflystudio/net/NetProcess$1;->this$0:Lcom/nflystudio/net/NetProcess;

    invoke-static {v1}, Lcom/nflystudio/net/NetProcess;->access$1(Lcom/nflystudio/net/NetProcess;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nflystudio/net/NetProcess$1;->this$0:Lcom/nflystudio/net/NetProcess;

    invoke-static {v1}, Lcom/nflystudio/net/NetProcess;->access$1(Lcom/nflystudio/net/NetProcess;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 82
    new-instance v0, Lcom/nflystudio/net/BaseRequest;

    invoke-direct {v0}, Lcom/nflystudio/net/BaseRequest;-><init>()V

    .line 83
    .local v0, "request":Lcom/nflystudio/net/BaseRequest;
    iget-object v1, p0, Lcom/nflystudio/net/NetProcess$1;->this$0:Lcom/nflystudio/net/NetProcess;

    invoke-static {v1}, Lcom/nflystudio/net/NetProcess;->access$2(Lcom/nflystudio/net/NetProcess;)Lcom/nflystudio/net/ResponeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/nflystudio/net/NetProcess$1;->this$0:Lcom/nflystudio/net/NetProcess;

    invoke-static {v2}, Lcom/nflystudio/net/NetProcess;->access$3(Lcom/nflystudio/net/NetProcess;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nflystudio/net/BaseRequest;->SetResponeObserver(Lcom/nflystudio/net/ResponeObserver;Landroid/content/Context;)V

    .line 84
    iget-object v1, p0, Lcom/nflystudio/net/NetProcess$1;->this$0:Lcom/nflystudio/net/NetProcess;

    invoke-static {v1}, Lcom/nflystudio/net/NetProcess;->access$4(Lcom/nflystudio/net/NetProcess;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nflystudio/net/BaseRequest;->SetRequestType(I)V

    .line 85
    const-string v1, "NetProcess"

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/nflystudio/net/NetProcess$1;->this$0:Lcom/nflystudio/net/NetProcess;

    invoke-static {v3}, Lcom/nflystudio/net/NetProcess;->access$4(Lcom/nflystudio/net/NetProcess;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const-string v1, "NetProcess"

    iget-object v2, p0, Lcom/nflystudio/net/NetProcess$1;->this$0:Lcom/nflystudio/net/NetProcess;

    invoke-static {v2}, Lcom/nflystudio/net/NetProcess;->access$1(Lcom/nflystudio/net/NetProcess;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/nflystudio/net/NetProcess$1;->this$0:Lcom/nflystudio/net/NetProcess;

    invoke-static {v2}, Lcom/nflystudio/net/NetProcess;->access$1(Lcom/nflystudio/net/NetProcess;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/nflystudio/net/BaseRequest;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 89
    .end local v0    # "request":Lcom/nflystudio/net/BaseRequest;
    :cond_1
    return-void
.end method
