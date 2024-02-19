.class public Lcom/umeng/newxp/net/XpReportClient;
.super Lcom/umeng/newxp/net/a;
.source "XpReportClient.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String; = "EXCHANGE_REPORT_CACHE"

.field private static c:Lcom/umeng/newxp/controller/XpListenersCenter$ReportListener;

.field private static d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/controller/XpListenersCenter$ReportListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/umeng/newxp/net/XpReportClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/newxp/net/XpReportClient;->a:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/umeng/newxp/net/a;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/umeng/newxp/net/XpReportClient;->e:Landroid/content/Context;

    .line 43
    return-void
.end method

.method static synthetic a()Ljava/util/List;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/umeng/newxp/net/XpReportClient;->d:Ljava/util/List;

    return-object v0
.end method

.method private a(Landroid/content/SharedPreferences$Editor;Lcom/umeng/common/net/o;)V
    .locals 4

    .prologue
    .line 78
    invoke-virtual {p2}, Lcom/umeng/common/net/o;->b()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-virtual {p2}, Lcom/umeng/common/net/o;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-static {}, Lcom/umeng/common/util/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 82
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 83
    sget-object v1, Lcom/umeng/newxp/net/XpReportClient;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "add failed report : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method private a(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;I)V
    .locals 12

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 96
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    .line 97
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 98
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 99
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    :cond_0
    return-void

    .line 99
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 100
    add-int/lit8 v2, v1, 0x1

    if-ge v2, p3, :cond_0

    .line 102
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 103
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 104
    const-string v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 105
    array-length v3, v7

    const/4 v8, 0x1

    if-lt v3, v8, :cond_0

    .line 107
    array-length v8, v7

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v8, :cond_3

    .line 114
    new-instance v3, Lcom/umeng/newxp/net/e;

    invoke-direct {v3, v6}, Lcom/umeng/newxp/net/e;-><init>(Ljava/util/Map;)V

    invoke-super {p0, v3}, Lcom/umeng/newxp/net/a;->send(Lcom/umeng/common/net/o;)Lcom/umeng/common/net/p$a;

    move-result-object v3

    .line 116
    sget-object v6, Lcom/umeng/common/net/p$a;->a:Lcom/umeng/common/net/p$a;

    if-ne v3, v6, :cond_2

    .line 117
    invoke-interface {p2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 118
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 119
    sget-object v0, Lcom/umeng/newxp/net/XpReportClient;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "clear failed report : "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move v1, v2

    goto :goto_0

    .line 107
    :cond_3
    aget-object v9, v7, v3

    .line 108
    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 109
    array-length v10, v9

    const/4 v11, 0x2

    if-ne v10, v11, :cond_4

    .line 110
    const/4 v10, 0x0

    aget-object v10, v9, v10

    invoke-static {v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 111
    const/4 v11, 0x1

    aget-object v9, v9, v11

    invoke-static {v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 110
    invoke-interface {v6, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static registerReportListener(Lcom/umeng/newxp/controller/XpListenersCenter$ReportListener;)V
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/umeng/newxp/net/XpReportClient;->d:Ljava/util/List;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/umeng/newxp/net/XpReportClient;->d:Ljava/util/List;

    .line 136
    :cond_0
    sget-object v0, Lcom/umeng/newxp/net/XpReportClient;->c:Lcom/umeng/newxp/controller/XpListenersCenter$ReportListener;

    if-nez v0, :cond_1

    .line 137
    new-instance v0, Lcom/umeng/newxp/net/d;

    invoke-direct {v0}, Lcom/umeng/newxp/net/d;-><init>()V

    sput-object v0, Lcom/umeng/newxp/net/XpReportClient;->c:Lcom/umeng/newxp/controller/XpListenersCenter$ReportListener;

    .line 170
    :cond_1
    sget-object v0, Lcom/umeng/newxp/net/XpReportClient;->d:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    return-void
.end method

.method public static unregisterReportListener(Lcom/umeng/newxp/controller/XpListenersCenter$ReportListener;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 180
    sget-object v0, Lcom/umeng/newxp/net/XpReportClient;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/umeng/newxp/net/XpReportClient;->d:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    sget-object v0, Lcom/umeng/newxp/net/XpReportClient;->d:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 184
    :cond_0
    sget-object v0, Lcom/umeng/newxp/net/XpReportClient;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 185
    sput-object v1, Lcom/umeng/newxp/net/XpReportClient;->d:Ljava/util/List;

    .line 186
    sput-object v1, Lcom/umeng/newxp/net/XpReportClient;->c:Lcom/umeng/newxp/controller/XpListenersCenter$ReportListener;

    .line 188
    :cond_1
    return-void
.end method


# virtual methods
.method public send(Lcom/umeng/common/net/o;)Lcom/umeng/common/net/p$a;
    .locals 5

    .prologue
    .line 49
    sget-object v0, Lcom/umeng/newxp/net/XpReportClient;->c:Lcom/umeng/newxp/controller/XpListenersCenter$ReportListener;

    if-eqz v0, :cond_0

    .line 50
    sget-object v1, Lcom/umeng/newxp/net/XpReportClient;->c:Lcom/umeng/newxp/controller/XpListenersCenter$ReportListener;

    move-object v0, p1

    check-cast v0, Lcom/umeng/newxp/net/e;

    iget-object v0, v0, Lcom/umeng/newxp/net/e;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Lcom/umeng/newxp/controller/XpListenersCenter$ReportListener;->onReportStart(Ljava/util/Map;)V

    .line 51
    :cond_0
    invoke-super {p0, p1}, Lcom/umeng/newxp/net/a;->send(Lcom/umeng/common/net/o;)Lcom/umeng/common/net/p$a;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/umeng/newxp/net/XpReportClient;->e:Landroid/content/Context;

    const-string v2, "EXCHANGE_REPORT_CACHE"

    .line 53
    const/4 v3, 0x0

    .line 52
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 55
    monitor-enter v1

    .line 56
    :try_start_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 57
    const/4 v3, 0x5

    .line 58
    sget-object v4, Lcom/umeng/common/net/p$a;->a:Lcom/umeng/common/net/p$a;

    if-ne v0, v4, :cond_2

    .line 59
    invoke-direct {p0, v1, v2, v3}, Lcom/umeng/newxp/net/XpReportClient;->a(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;I)V

    .line 55
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    sget-object v1, Lcom/umeng/newxp/net/XpReportClient;->c:Lcom/umeng/newxp/controller/XpListenersCenter$ReportListener;

    if-eqz v1, :cond_1

    .line 66
    sget-object v1, Lcom/umeng/newxp/net/XpReportClient;->c:Lcom/umeng/newxp/controller/XpListenersCenter$ReportListener;

    invoke-interface {v1, v0}, Lcom/umeng/newxp/controller/XpListenersCenter$ReportListener;->onReportEnd(Lcom/umeng/common/net/p$a;)V

    .line 67
    :cond_1
    return-object v0

    .line 61
    :cond_2
    :try_start_1
    invoke-direct {p0, v2, p1}, Lcom/umeng/newxp/net/XpReportClient;->a(Landroid/content/SharedPreferences$Editor;Lcom/umeng/common/net/o;)V

    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
