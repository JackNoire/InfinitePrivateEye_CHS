.class Lcom/umeng/newxp/controller/ExchangeDataService$a;
.super Ljava/lang/Thread;
.source "ExchangeDataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/newxp/controller/ExchangeDataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/newxp/controller/ExchangeDataService;

.field private b:Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;

.field private c:I

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/umeng/newxp/controller/ExchangeDataService;Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;ILjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 687
    iput-object p1, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    .line 686
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 648
    new-instance v0, Lcom/umeng/newxp/controller/e;

    invoke-direct {v0, p0}, Lcom/umeng/newxp/controller/e;-><init>(Lcom/umeng/newxp/controller/ExchangeDataService$a;)V

    iput-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->e:Landroid/os/Handler;

    .line 688
    iput-object p2, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->b:Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;

    .line 689
    iput p3, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->c:I

    .line 690
    iput-object p4, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->d:Ljava/util/Map;

    .line 691
    return-void
.end method

.method static synthetic a(Lcom/umeng/newxp/controller/ExchangeDataService$a;)Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->b:Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;

    return-object v0
.end method

.method private a()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 694
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v4, 0x3e8

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    .line 696
    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->d:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->d:Ljava/util/Map;

    move-object v4, v0

    .line 701
    :goto_0
    if-nez v4, :cond_1

    move-object v0, v3

    .line 749
    :goto_1
    return-object v0

    .line 699
    :cond_0
    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v0}, Lcom/umeng/newxp/controller/ExchangeDataService;->b(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/util/Map;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    .line 704
    :cond_1
    const-string v0, "sid"

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 705
    const-string v0, "sid"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 709
    :goto_2
    new-instance v1, Lcom/umeng/newxp/net/b;

    invoke-direct {v1}, Lcom/umeng/newxp/net/b;-><init>()V

    new-instance v2, Lcom/umeng/newxp/net/f;

    invoke-direct {v2, v4}, Lcom/umeng/newxp/net/f;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/umeng/newxp/net/b;->a(Lcom/umeng/newxp/net/f;)Lcom/umeng/newxp/net/g;

    move-result-object v2

    .line 711
    if-eqz v2, :cond_2

    iget-object v1, v2, Lcom/umeng/newxp/net/g;->m:Lorg/json/JSONObject;

    if-nez v1, :cond_4

    :cond_2
    move-object v0, v3

    goto :goto_1

    :cond_3
    move v0, v2

    .line 706
    goto :goto_2

    .line 713
    :cond_4
    sget-object v1, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    .line 714
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "\trequestLive get resStr:\t"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v2, Lcom/umeng/newxp/net/g;->m:Lorg/json/JSONObject;

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 713
    invoke-static {v1, v4}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    :try_start_0
    invoke-direct {p0, v2}, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a(Lcom/umeng/newxp/net/g;)Ljava/util/List;

    move-result-object v1

    .line 719
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_6

    :cond_5
    move-object v0, v3

    .line 720
    goto :goto_1

    .line 728
    :cond_6
    iget-object v4, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->b:Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;

    if-nez v4, :cond_7

    .line 729
    iget-object v4, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v4, v4, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    .line 730
    iget-object v6, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v6}, Lcom/umeng/newxp/controller/ExchangeDataService;->c(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 729
    invoke-virtual {v4, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 731
    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 732
    :try_start_1
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 734
    iget-object v7, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v7}, Lcom/umeng/newxp/controller/ExchangeDataService;->d(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 735
    if-eqz v0, :cond_8

    .line 736
    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v0}, Lcom/umeng/newxp/controller/ExchangeDataService;->e(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v2, Lcom/umeng/newxp/net/g;->m:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 737
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 731
    :goto_3
    monitor-exit v4

    :cond_7
    move-object v0, v1

    .line 745
    goto/16 :goto_1

    .line 739
    :cond_8
    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v0}, Lcom/umeng/newxp/controller/ExchangeDataService;->f(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v2, Lcom/umeng/newxp/net/g;->m:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 740
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_3

    .line 731
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 747
    :catch_0
    move-exception v0

    .line 748
    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v1}, Lcom/umeng/newxp/controller/ExchangeDataService;->g(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "  request from network error:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v0, v3

    .line 749
    goto/16 :goto_1

    :cond_9
    move v0, v1

    goto/16 :goto_2
.end method

.method private a(Lcom/umeng/newxp/net/g;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/umeng/newxp/net/g;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 760
    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v0}, Lcom/umeng/newxp/controller/ExchangeDataService;->h(Lcom/umeng/newxp/controller/ExchangeDataService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 761
    iget-object v3, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget v0, p1, Lcom/umeng/newxp/net/g;->c:I

    if-ne v0, v1, :cond_6

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Lcom/umeng/newxp/controller/ExchangeDataService;->a(Lcom/umeng/newxp/controller/ExchangeDataService;Z)V

    .line 762
    :cond_0
    iget v0, p1, Lcom/umeng/newxp/net/g;->b:I

    if-ne v0, v1, :cond_7

    :goto_1
    sput-boolean v1, Lcom/umeng/newxp/common/ExchangeConstants;->show_size:Z

    .line 763
    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v0, p1, Lcom/umeng/newxp/net/g;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, ""

    :goto_2
    iput-object v0, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->opensize:Ljava/lang/String;

    .line 764
    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v0}, Lcom/umeng/newxp/controller/ExchangeDataService;->i(Lcom/umeng/newxp/controller/ExchangeDataService;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 765
    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget v1, p1, Lcom/umeng/newxp/net/g;->k:I

    invoke-static {v0, v1}, Lcom/umeng/newxp/controller/ExchangeDataService;->a(Lcom/umeng/newxp/controller/ExchangeDataService;I)V

    .line 767
    :cond_1
    sget-boolean v0, Lcom/umeng/newxp/common/ExchangeConstants;->DEBUG_MODE:Z

    if-eqz v0, :cond_9

    sget v0, Lcom/umeng/newxp/controller/ExchangeDataService;->DEBUG_NEW_TIPS:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_9

    .line 768
    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    sget v1, Lcom/umeng/newxp/controller/ExchangeDataService;->DEBUG_NEW_TIPS:I

    iput v1, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->newTips:I

    .line 772
    :goto_3
    iget-object v0, p1, Lcom/umeng/newxp/net/g;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/common/util/h;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v1, p1, Lcom/umeng/newxp/net/g;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;

    .line 774
    :cond_2
    iget v0, p1, Lcom/umeng/newxp/net/g;->e:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_3

    sget-boolean v0, Lcom/umeng/newxp/common/ExchangeConstants;->IGNORE_SERVER_INTERVAL:Z

    if-nez v0, :cond_3

    iget v0, p1, Lcom/umeng/newxp/net/g;->e:I

    mul-int/lit16 v0, v0, 0x3e8

    sput v0, Lcom/umeng/newxp/common/ExchangeConstants;->REFRESH_INTERVAL:I

    .line 778
    :cond_3
    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v0, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v1}, Lcom/umeng/newxp/controller/ExchangeDataService;->c(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 780
    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v1}, Lcom/umeng/newxp/controller/ExchangeDataService;->j(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget v2, p1, Lcom/umeng/newxp/net/g;->g:I

    if-eq v1, v2, :cond_4

    .line 781
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 782
    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v1}, Lcom/umeng/newxp/controller/ExchangeDataService;->j(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/umeng/newxp/net/g;->g:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 783
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 784
    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v0}, Lcom/umeng/newxp/controller/ExchangeDataService;->g(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Change the "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v2}, Lcom/umeng/newxp/controller/ExchangeDataService;->j(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/umeng/newxp/net/g;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    :cond_4
    iget-object v0, p1, Lcom/umeng/newxp/net/g;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/common/util/h;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v1, p1, Lcom/umeng/newxp/net/g;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->landing_image:Ljava/lang/String;

    .line 789
    :cond_5
    iget-object v0, p1, Lcom/umeng/newxp/net/g;->l:Ljava/util/List;

    return-object v0

    :cond_6
    move v0, v2

    .line 761
    goto/16 :goto_0

    :cond_7
    move v1, v2

    .line 762
    goto/16 :goto_1

    .line 763
    :cond_8
    iget-object v0, p1, Lcom/umeng/newxp/net/g;->i:Ljava/lang/String;

    goto/16 :goto_2

    .line 770
    :cond_9
    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget v1, p1, Lcom/umeng/newxp/net/g;->j:I

    iput v1, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->newTips:I

    goto/16 :goto_3
.end method

.method static synthetic b(Lcom/umeng/newxp/controller/ExchangeDataService$a;)Lcom/umeng/newxp/controller/ExchangeDataService;
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    return-object v0
.end method

.method private b()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 794
    :try_start_0
    iget-object v3, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v3, v3, Lcom/umeng/newxp/controller/ExchangeDataService;->mContext:Landroid/content/Context;

    .line 795
    iget-object v4, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v4}, Lcom/umeng/newxp/controller/ExchangeDataService;->c(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 794
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 797
    iget-object v3, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v3, v3, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    .line 800
    :goto_0
    if-eqz v3, :cond_4

    .line 801
    iget-object v3, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v3}, Lcom/umeng/newxp/controller/ExchangeDataService;->g(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Request data from first-cache.."

    invoke-static {v3, v5}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    iget-object v3, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v3}, Lcom/umeng/newxp/controller/ExchangeDataService;->d(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v5, 0x0

    invoke-interface {v4, v3, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 805
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    const-wide/32 v7, 0x294f0

    cmp-long v3, v5, v7

    if-lez v3, :cond_2

    .line 807
    :goto_1
    if-eqz v1, :cond_3

    .line 809
    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 810
    :try_start_1
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 811
    iget-object v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v2}, Lcom/umeng/newxp/controller/ExchangeDataService;->e(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 812
    iget-object v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v2}, Lcom/umeng/newxp/controller/ExchangeDataService;->f(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 813
    iget-object v2, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v2}, Lcom/umeng/newxp/controller/ExchangeDataService;->d(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 814
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 809
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 816
    :try_start_2
    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v1}, Lcom/umeng/newxp/controller/ExchangeDataService;->g(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cache data is inactivation..."

    invoke-static {v1, v2}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 844
    :cond_0
    :goto_2
    return-object v0

    :cond_1
    move v3, v2

    .line 797
    goto :goto_0

    :cond_2
    move v1, v2

    .line 806
    goto :goto_1

    .line 809
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 842
    :catch_0
    move-exception v1

    .line 843
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 819
    :cond_3
    :try_start_5
    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v1}, Lcom/umeng/newxp/controller/ExchangeDataService;->e(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v1

    .line 824
    :goto_3
    const/4 v2, 0x0

    invoke-interface {v4, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 826
    if-eqz v2, :cond_0

    .line 828
    monitor-enter v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 829
    :try_start_6
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 830
    invoke-interface {v3, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 831
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 828
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 834
    :try_start_7
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 837
    new-instance v2, Lcom/umeng/newxp/net/g;

    invoke-direct {v2, v1}, Lcom/umeng/newxp/net/g;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {p0, v2}, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a(Lcom/umeng/newxp/net/g;)Ljava/util/List;

    move-result-object v1

    .line 838
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    move-object v0, v1

    .line 841
    goto :goto_2

    .line 821
    :cond_4
    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v1}, Lcom/umeng/newxp/controller/ExchangeDataService;->g(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Request data from second-cache.."

    invoke-static {v1, v2}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v1}, Lcom/umeng/newxp/controller/ExchangeDataService;->f(Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-result-object v1

    goto :goto_3

    .line 828
    :catchall_1
    move-exception v1

    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 850
    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v0, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 851
    if-eqz v1, :cond_0

    .line 852
    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v0, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->timeLine:[J

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    aput-wide v3, v0, v2

    .line 854
    :cond_0
    iget v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->c:I

    if-ne v0, v5, :cond_2

    .line 855
    invoke-direct {p0}, Lcom/umeng/newxp/controller/ExchangeDataService$a;->b()Ljava/util/List;

    move-result-object v0

    .line 860
    :goto_0
    if-eqz v1, :cond_1

    .line 861
    iget-object v1, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v1, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->timeLine:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    aput-wide v2, v1, v5

    .line 863
    :cond_1
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 864
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 865
    iget-object v0, p0, Lcom/umeng/newxp/controller/ExchangeDataService$a;->e:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 866
    return-void

    .line 857
    :cond_2
    invoke-direct {p0}, Lcom/umeng/newxp/controller/ExchangeDataService$a;->a()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
