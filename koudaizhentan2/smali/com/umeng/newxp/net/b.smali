.class public Lcom/umeng/newxp/net/b;
.super Lcom/umeng/common/net/s;
.source "XpClient.java"


# static fields
.field private static a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 15
    const-string v2, "http://ex.puata.info/api/q?"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 16
    const-string v2, "http://ex.umengcloud.com/api/q?"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 17
    const-string v2, "http://ex.mobmore.com/api/q?"

    aput-object v2, v0, v1

    .line 13
    sput-object v0, Lcom/umeng/newxp/net/b;->a:[Ljava/lang/String;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/umeng/common/net/s;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/umeng/newxp/net/f;)Lcom/umeng/newxp/net/g;
    .locals 4

    .prologue
    .line 21
    const/4 v1, 0x0

    .line 22
    const/4 v0, 0x0

    move v3, v0

    move-object v0, v1

    move v1, v3

    :goto_0
    sget-object v2, Lcom/umeng/newxp/net/b;->a:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 29
    :cond_0
    return-object v0

    .line 23
    :cond_1
    sget-object v0, Lcom/umeng/newxp/net/b;->a:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/umeng/newxp/net/f;->a(Ljava/lang/String;)V

    .line 24
    new-instance v0, Lcom/umeng/common/net/s;

    invoke-direct {v0}, Lcom/umeng/common/net/s;-><init>()V

    invoke-static {}, Lcom/umeng/newxp/common/g;->d()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/umeng/common/net/s;->setHeader(Ljava/util/Map;)Lcom/umeng/common/net/s;

    move-result-object v0

    const-class v2, Lcom/umeng/newxp/net/g;

    invoke-virtual {v0, p1, v2}, Lcom/umeng/common/net/s;->execute(Lcom/umeng/common/net/t;Ljava/lang/Class;)Lcom/umeng/common/net/u;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/net/g;

    .line 25
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/umeng/newxp/net/g;->m:Lorg/json/JSONObject;

    if-nez v2, :cond_0

    .line 22
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
