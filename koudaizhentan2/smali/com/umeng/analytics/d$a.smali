.class final Lcom/umeng/analytics/d$a;
.super Ljava/lang/Object;
.source "PolicyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/analytics/d;

.field private b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/umeng/analytics/d;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 435
    iput-object p1, p0, Lcom/umeng/analytics/d$a;->a:Lcom/umeng/analytics/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/d$a;->b:Landroid/content/Context;

    .line 437
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 441
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/d$a;->a:Lcom/umeng/analytics/d;

    invoke-static {v0}, Lcom/umeng/analytics/d;->a(Lcom/umeng/analytics/d;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 442
    :try_start_1
    iget-object v0, p0, Lcom/umeng/analytics/d$a;->a:Lcom/umeng/analytics/d;

    iget-object v0, v0, Lcom/umeng/analytics/d;->d:Lcom/umeng/analytics/c;

    iget-object v2, p0, Lcom/umeng/analytics/d$a;->b:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/umeng/analytics/c;->a(Landroid/content/Context;)V

    .line 441
    monitor-exit v1

    .line 454
    :goto_0
    return-void

    .line 441
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1

    .line 444
    :catch_0
    move-exception v0

    .line 445
    const-string v1, "MobclickAgent"

    const-string v2, "Exception occurred in ReportMessageHandler"

    invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 446
    :catch_1
    move-exception v0

    .line 447
    const-string v1, "MobclickAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    :try_start_3
    iget-object v0, p0, Lcom/umeng/analytics/d$a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/j;->j(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 450
    :catch_2
    move-exception v0

    .line 451
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
