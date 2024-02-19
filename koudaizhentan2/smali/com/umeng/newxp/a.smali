.class public Lcom/umeng/newxp/a;
.super Ljava/lang/Object;
.source "PreloadData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/newxp/a$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field public a:Lcom/umeng/newxp/a$a;

.field public b:Lcom/umeng/newxp/controller/ExchangeDataService;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/content/Context;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Lcom/umeng/newxp/controller/XpListenersCenter$NTipsChangedListener;

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/umeng/newxp/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/newxp/a;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;Lcom/umeng/newxp/controller/XpListenersCenter$NTipsChangedListener;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/newxp/a;->d:Ljava/util/List;

    .line 28
    sget-object v0, Lcom/umeng/newxp/a$a;->b:Lcom/umeng/newxp/a$a;

    iput-object v0, p0, Lcom/umeng/newxp/a;->a:Lcom/umeng/newxp/a$a;

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/umeng/newxp/a;->h:I

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/newxp/a;->j:Z

    .line 40
    iput-object p1, p0, Lcom/umeng/newxp/a;->e:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/umeng/newxp/a;->b:Lcom/umeng/newxp/controller/ExchangeDataService;

    .line 42
    iput-object p3, p0, Lcom/umeng/newxp/a;->i:Lcom/umeng/newxp/controller/XpListenersCenter$NTipsChangedListener;

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/umeng/newxp/a;Ljava/util/List;Z)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/umeng/newxp/a;->a(Ljava/util/List;Z)V

    return-void
.end method

.method private a(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 93
    if-eqz p2, :cond_0

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/newxp/a;->d:Ljava/util/List;

    .line 95
    iget-object v0, p0, Lcom/umeng/newxp/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 99
    :goto_0
    iget-object v0, p0, Lcom/umeng/newxp/a;->b:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v0, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/newxp/a;->f:Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/umeng/newxp/a;->b:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v0, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->opensize:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/newxp/a;->g:Ljava/lang/String;

    .line 102
    sget-object v0, Lcom/umeng/newxp/a$a;->a:Lcom/umeng/newxp/a$a;

    iput-object v0, p0, Lcom/umeng/newxp/a;->a:Lcom/umeng/newxp/a$a;

    .line 103
    return-void

    .line 97
    :cond_0
    iput-object p1, p0, Lcom/umeng/newxp/a;->d:Ljava/util/List;

    goto :goto_0
.end method

.method static synthetic a(Lcom/umeng/newxp/a;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/umeng/newxp/a;->j:Z

    return v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/umeng/newxp/a;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 3

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/umeng/newxp/a;->b:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v0, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/umeng/newxp/a;->b:Lcom/umeng/newxp/controller/ExchangeDataService;

    const-string v1, ""

    iput-object v1, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/umeng/newxp/a;->b:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v1, p0, Lcom/umeng/newxp/a;->e:Landroid/content/Context;

    new-instance v2, Lcom/umeng/newxp/b;

    invoke-direct {v2, p0}, Lcom/umeng/newxp/b;-><init>(Lcom/umeng/newxp/a;)V

    invoke-virtual {v0, v1, v2}, Lcom/umeng/newxp/controller/ExchangeDataService;->requestDataAsyn(Landroid/content/Context;Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit p0

    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(I)V
    .locals 4

    .prologue
    .line 82
    sget-object v0, Lcom/umeng/newxp/a;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/umeng/newxp/a;->b:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-wide v2, v2, Lcom/umeng/newxp/controller/ExchangeDataService;->oid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "  PreloadData set tips "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget v0, p0, Lcom/umeng/newxp/a;->h:I

    .line 84
    iput p1, p0, Lcom/umeng/newxp/a;->h:I

    .line 85
    iget v1, p0, Lcom/umeng/newxp/a;->h:I

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/umeng/newxp/a;->i:Lcom/umeng/newxp/controller/XpListenersCenter$NTipsChangedListener;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/umeng/newxp/a;->i:Lcom/umeng/newxp/controller/XpListenersCenter$NTipsChangedListener;

    iget v1, p0, Lcom/umeng/newxp/a;->h:I

    invoke-interface {v0, v1}, Lcom/umeng/newxp/controller/XpListenersCenter$NTipsChangedListener;->onChanged(I)V

    .line 87
    :cond_0
    iget-boolean v0, p0, Lcom/umeng/newxp/a;->j:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/umeng/newxp/a;->i:Lcom/umeng/newxp/controller/XpListenersCenter$NTipsChangedListener;

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/umeng/newxp/a;->i:Lcom/umeng/newxp/controller/XpListenersCenter$NTipsChangedListener;

    iget-object v1, p0, Lcom/umeng/newxp/a;->b:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-wide v1, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->oid:J

    long-to-int v1, v1

    invoke-interface {v0, v1}, Lcom/umeng/newxp/controller/XpListenersCenter$NTipsChangedListener;->onChanged(I)V

    .line 90
    :cond_1
    return-void
.end method

.method public a(Lcom/umeng/newxp/controller/XpListenersCenter$NTipsChangedListener;)V
    .locals 1

    .prologue
    .line 130
    iput-object p1, p0, Lcom/umeng/newxp/a;->i:Lcom/umeng/newxp/controller/XpListenersCenter$NTipsChangedListener;

    .line 131
    sget-object v0, Lcom/umeng/newxp/a$a;->b:Lcom/umeng/newxp/a$a;

    iput-object v0, p0, Lcom/umeng/newxp/a;->a:Lcom/umeng/newxp/a$a;

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/newxp/a;->d:Ljava/util/List;

    .line 133
    return-void
.end method

.method public declared-synchronized a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 67
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v1, :cond_2

    .line 68
    :cond_0
    sget-object v0, Lcom/umeng/newxp/a$a;->b:Lcom/umeng/newxp/a$a;

    iput-object v0, p0, Lcom/umeng/newxp/a;->a:Lcom/umeng/newxp/a$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :cond_1
    monitor-exit p0

    return-void

    .line 71
    :cond_2
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/umeng/newxp/a;->a(Ljava/util/List;Z)V

    .line 72
    iget-object v0, p0, Lcom/umeng/newxp/a;->b:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget v0, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->newTips:I

    invoke-virtual {p0, v0}, Lcom/umeng/newxp/a;->a(I)V

    .line 73
    sget-object v0, Lcom/umeng/newxp/a;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/umeng/newxp/a;->b:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-wide v2, v2, Lcom/umeng/newxp/controller/ExchangeDataService;->oid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "  : init preload data with promoters..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-boolean v0, p0, Lcom/umeng/newxp/a;->j:Z

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/umeng/newxp/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/Promoter;

    .line 76
    sget-object v2, Lcom/umeng/newxp/a;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/umeng/newxp/a;->b:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-wide v4, v4, Lcom/umeng/newxp/controller/ExchangeDataService;->oid:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "  promoter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/umeng/newxp/Promoter;->title:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Ljava/util/List;
    .locals 6
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
    const/4 v1, 0x0

    const/4 v5, -0x1

    .line 110
    sget-object v0, Lcom/umeng/newxp/a;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/umeng/newxp/a;->b:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-wide v3, v3, Lcom/umeng/newxp/controller/ExchangeDataService;->oid:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "  PreloadData use preload data.. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/umeng/newxp/a;->a:Lcom/umeng/newxp/a$a;

    sget-object v2, Lcom/umeng/newxp/a$a;->a:Lcom/umeng/newxp/a$a;

    if-ne v0, v2, :cond_2

    .line 112
    iget-object v0, p0, Lcom/umeng/newxp/a;->d:Ljava/util/List;

    .line 113
    sget-object v2, Lcom/umeng/newxp/a$a;->b:Lcom/umeng/newxp/a$a;

    iput-object v2, p0, Lcom/umeng/newxp/a;->a:Lcom/umeng/newxp/a$a;

    .line 114
    iput-object v1, p0, Lcom/umeng/newxp/a;->d:Ljava/util/List;

    .line 115
    iget v1, p0, Lcom/umeng/newxp/a;->h:I

    if-eq v1, v5, :cond_0

    iget-object v1, p0, Lcom/umeng/newxp/a;->i:Lcom/umeng/newxp/controller/XpListenersCenter$NTipsChangedListener;

    if-eqz v1, :cond_0

    .line 116
    iput v5, p0, Lcom/umeng/newxp/a;->h:I

    .line 117
    iget-object v1, p0, Lcom/umeng/newxp/a;->i:Lcom/umeng/newxp/controller/XpListenersCenter$NTipsChangedListener;

    iget v2, p0, Lcom/umeng/newxp/a;->h:I

    invoke-interface {v1, v2}, Lcom/umeng/newxp/controller/XpListenersCenter$NTipsChangedListener;->onChanged(I)V

    .line 119
    :cond_0
    iget-boolean v1, p0, Lcom/umeng/newxp/a;->j:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/umeng/newxp/a;->i:Lcom/umeng/newxp/controller/XpListenersCenter$NTipsChangedListener;

    if-eqz v1, :cond_1

    .line 120
    iget-object v1, p0, Lcom/umeng/newxp/a;->i:Lcom/umeng/newxp/controller/XpListenersCenter$NTipsChangedListener;

    iget v2, p0, Lcom/umeng/newxp/a;->h:I

    invoke-interface {v1, v2}, Lcom/umeng/newxp/controller/XpListenersCenter$NTipsChangedListener;->onChanged(I)V

    .line 121
    :cond_1
    sget-object v1, Lcom/umeng/newxp/a;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/umeng/newxp/a;->b:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-wide v3, v3, Lcom/umeng/newxp/controller/ExchangeDataService;->oid:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "  EXIST preload data  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/umeng/newxp/a;->b:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v2, p0, Lcom/umeng/newxp/a;->f:Ljava/lang/String;

    iput-object v2, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;

    .line 123
    iget-object v1, p0, Lcom/umeng/newxp/a;->b:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v2, p0, Lcom/umeng/newxp/a;->g:Ljava/lang/String;

    iput-object v2, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->opensize:Ljava/lang/String;

    .line 126
    :goto_0
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method
