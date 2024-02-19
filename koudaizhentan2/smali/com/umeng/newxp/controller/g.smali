.class public Lcom/umeng/newxp/controller/g;
.super Ljava/lang/Thread;
.source "SwithAdThread.java"


# instance fields
.field public a:Lcom/umeng/newxp/controller/f$a;

.field final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/umeng/newxp/controller/f$a;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 21
    new-instance v0, Lcom/umeng/newxp/controller/h;

    invoke-direct {v0, p0}, Lcom/umeng/newxp/controller/h;-><init>(Lcom/umeng/newxp/controller/g;)V

    iput-object v0, p0, Lcom/umeng/newxp/controller/g;->b:Landroid/os/Handler;

    .line 18
    iput-object p1, p0, Lcom/umeng/newxp/controller/g;->a:Lcom/umeng/newxp/controller/f$a;

    .line 19
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 29
    :try_start_0
    sget-boolean v0, Lcom/umeng/newxp/common/ExchangeConstants;->DEBUG_MODE:Z

    if-eqz v0, :cond_0

    .line 30
    const/16 v0, 0xbb8

    sput v0, Lcom/umeng/newxp/common/ExchangeConstants;->REFRESH_INTERVAL:I

    .line 32
    :cond_0
    sget v0, Lcom/umeng/newxp/common/ExchangeConstants;->REFRESH_INTERVAL:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 33
    iget-object v0, p0, Lcom/umeng/newxp/controller/g;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    goto :goto_0
.end method
