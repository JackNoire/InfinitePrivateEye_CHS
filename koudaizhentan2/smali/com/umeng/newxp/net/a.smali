.class public Lcom/umeng/newxp/net/a;
.super Lcom/umeng/common/net/n;
.source "BaseXpReportClient.java"


# static fields
.field private static a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 18
    const-string v2, "http://ex.puata.info/api/r?"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 19
    const-string v2, "http://ex.umengcloud.com/api/r?"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 20
    const-string v2, "http://ex.mobmore.com/api/r?"

    aput-object v2, v0, v1

    .line 16
    sput-object v0, Lcom/umeng/newxp/net/a;->a:[Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/umeng/common/net/n;-><init>()V

    return-void
.end method

.method public static final getReprotList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/umeng/newxp/net/a;->a:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public send(Lcom/umeng/common/net/o;)Lcom/umeng/common/net/p$a;
    .locals 3

    .prologue
    .line 34
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/umeng/newxp/net/a;->a:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 42
    sget-object v0, Lcom/umeng/common/net/p$a;->b:Lcom/umeng/common/net/p$a;

    :goto_1
    return-object v0

    .line 35
    :cond_0
    sget-object v1, Lcom/umeng/newxp/net/a;->a:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/umeng/common/net/o;->a(Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lcom/umeng/newxp/common/g;->d()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/umeng/newxp/net/a;->setHeader(Ljava/util/Map;)Lcom/umeng/common/net/s;

    .line 37
    invoke-super {p0, p1}, Lcom/umeng/common/net/n;->send(Lcom/umeng/common/net/o;)Lcom/umeng/common/net/p$a;

    move-result-object v1

    .line 38
    sget-object v2, Lcom/umeng/common/net/p$a;->a:Lcom/umeng/common/net/p$a;

    if-ne v1, v2, :cond_1

    move-object v0, v1

    .line 39
    goto :goto_1

    .line 34
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
