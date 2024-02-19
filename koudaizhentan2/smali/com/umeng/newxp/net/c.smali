.class public Lcom/umeng/newxp/net/c;
.super Ljava/lang/Object;
.source "XpDownloadAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/newxp/net/c$a;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "xp"

.field private static final b:Ljava/lang/String;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Lcom/umeng/common/net/a;

.field private e:Lcom/umeng/newxp/net/e;

.field private f:Lcom/umeng/newxp/Promoter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/umeng/newxp/net/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/newxp/net/c;->b:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/umeng/newxp/Promoter;Lcom/umeng/newxp/net/e$a;)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/umeng/newxp/net/c;->c:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/umeng/newxp/net/c;->f:Lcom/umeng/newxp/Promoter;

    .line 28
    invoke-virtual {p3}, Lcom/umeng/newxp/net/e$a;->a()Lcom/umeng/newxp/net/e;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/newxp/net/c;->e:Lcom/umeng/newxp/net/e;

    .line 29
    new-instance v0, Lcom/umeng/common/net/a;

    iget-object v1, p0, Lcom/umeng/newxp/net/c;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "xp"

    .line 30
    iget-object v3, p2, Lcom/umeng/newxp/Promoter;->title:Ljava/lang/String;

    iget-object v4, p2, Lcom/umeng/newxp/Promoter;->url:Ljava/lang/String;

    new-instance v5, Lcom/umeng/newxp/net/c$a;

    invoke-direct {v5, p0}, Lcom/umeng/newxp/net/c$a;-><init>(Lcom/umeng/newxp/net/c;)V

    invoke-direct/range {v0 .. v5}, Lcom/umeng/common/net/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/common/net/l;)V

    .line 29
    iput-object v0, p0, Lcom/umeng/newxp/net/c;->d:Lcom/umeng/common/net/a;

    .line 33
    invoke-virtual {p3, v7}, Lcom/umeng/newxp/net/e$a;->a(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/newxp/net/e$a;->a()Lcom/umeng/newxp/net/e;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {v0}, Lcom/umeng/newxp/net/e;->e()Ljava/lang/String;

    move-result-object v0

    .line 36
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 38
    :cond_0
    invoke-static {}, Lcom/umeng/newxp/net/a;->getReprotList()[Ljava/lang/String;

    move-result-object v2

    .line 39
    array-length v1, v2

    new-array v3, v1, [Ljava/lang/String;

    move v1, v6

    .line 40
    :goto_0
    array-length v4, v2

    if-lt v1, v4, :cond_2

    .line 43
    iget-object v0, p0, Lcom/umeng/newxp/net/c;->d:Lcom/umeng/common/net/a;

    invoke-virtual {v0, v3}, Lcom/umeng/common/net/a;->a([Ljava/lang/String;)V

    .line 45
    sget-boolean v0, Lcom/umeng/newxp/common/ExchangeConstants;->RICH_NOTIFICATION:Z

    if-eqz v0, :cond_3

    const/16 v0, 0xd

    invoke-static {}, Lcom/umeng/newxp/common/g;->e()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 46
    iget-object v0, p0, Lcom/umeng/newxp/net/c;->d:Lcom/umeng/common/net/a;

    invoke-virtual {v0, v7}, Lcom/umeng/common/net/a;->a(Z)V

    .line 50
    :cond_1
    :goto_1
    return-void

    .line 41
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    aget-object v5, v2, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 40
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    :cond_3
    iget-object v0, p0, Lcom/umeng/newxp/net/c;->d:Lcom/umeng/common/net/a;

    invoke-virtual {v0, v6}, Lcom/umeng/common/net/a;->a(Z)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/umeng/newxp/net/c;)Lcom/umeng/newxp/Promoter;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/umeng/newxp/net/c;->f:Lcom/umeng/newxp/Promoter;

    return-object v0
.end method

.method static synthetic b(Lcom/umeng/newxp/net/c;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/umeng/newxp/net/c;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/umeng/newxp/net/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/umeng/newxp/net/c;)Lcom/umeng/newxp/net/e;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/umeng/newxp/net/c;->e:Lcom/umeng/newxp/net/e;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 53
    sget-object v0, Lcom/umeng/newxp/net/c;->b:Ljava/lang/String;

    const-string v1, "start Download."

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/umeng/newxp/net/c;->d:Lcom/umeng/common/net/a;

    invoke-virtual {v0}, Lcom/umeng/common/net/a;->a()V

    .line 55
    return-void
.end method
