.class final Lcom/umeng/analytics/b$a;
.super Ljava/lang/Object;
.source "InternalAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/analytics/b;

.field private final b:Ljava/lang/Object;

.field private c:Landroid/content/Context;

.field private d:I


# direct methods
.method constructor <init>(Lcom/umeng/analytics/b;Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 136
    iput-object p1, p0, Lcom/umeng/analytics/b$a;->a:Lcom/umeng/analytics/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/b$a;->b:Ljava/lang/Object;

    .line 137
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/b$a;->c:Landroid/content/Context;

    .line 138
    iput p3, p0, Lcom/umeng/analytics/b$a;->d:I

    .line 139
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/umeng/analytics/b$a;->b:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :try_start_1
    iget v0, p0, Lcom/umeng/analytics/b$a;->d:I

    packed-switch v0, :pswitch_data_0

    .line 143
    :goto_0
    monitor-exit v1

    .line 158
    :goto_1
    return-void

    .line 146
    :pswitch_0
    iget-object v0, p0, Lcom/umeng/analytics/b$a;->a:Lcom/umeng/analytics/b;

    iget-object v2, p0, Lcom/umeng/analytics/b$a;->c:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/umeng/analytics/b;->a(Lcom/umeng/analytics/b;Landroid/content/Context;)V

    goto :goto_0

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    const-string v1, "MobclickAgent"

    .line 155
    const-string v2, "Exception occurred in invokehander."

    .line 154
    invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 149
    :pswitch_1
    :try_start_3
    iget-object v0, p0, Lcom/umeng/analytics/b$a;->a:Lcom/umeng/analytics/b;

    iget-object v2, p0, Lcom/umeng/analytics/b$a;->c:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/umeng/analytics/b;->b(Lcom/umeng/analytics/b;Landroid/content/Context;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 144
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
