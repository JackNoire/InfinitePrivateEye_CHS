.class Lcom/umeng/update/a;
.super Landroid/os/Handler;
.source "UmengUpdateAgent.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 37
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/umeng/update/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-static {}, Lcom/umeng/update/UmengUpdateAgent;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/umeng/update/UpdateResponse;

    invoke-static {v1, v0}, Lcom/umeng/update/UmengUpdateAgent;->showUpdateDialog(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;)V

    .line 41
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/umeng/update/UmengUpdateAgent;->a(Landroid/content/Context;)V

    .line 43
    invoke-static {}, Lcom/umeng/update/UmengUpdateAgent;->b()Lcom/umeng/update/UmengUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 44
    invoke-static {}, Lcom/umeng/update/UmengUpdateAgent;->b()Lcom/umeng/update/UmengUpdateListener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    .line 45
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/umeng/update/UpdateResponse;

    .line 44
    invoke-interface {v1, v2, v0}, Lcom/umeng/update/UmengUpdateListener;->onUpdateReturned(ILcom/umeng/update/UpdateResponse;)V

    .line 47
    :cond_1
    return-void
.end method
