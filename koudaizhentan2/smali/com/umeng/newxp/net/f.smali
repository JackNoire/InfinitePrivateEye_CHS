.class public Lcom/umeng/newxp/net/f;
.super Lcom/umeng/common/net/t;
.source "XpReqeust.java"


# instance fields
.field private a:Ljava/util/Map;
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


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/umeng/common/net/t;-><init>(Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lcom/umeng/newxp/net/f;->a:Ljava/util/Map;

    .line 29
    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/umeng/newxp/net/f;->d:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/umeng/newxp/net/f;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/umeng/newxp/net/f;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/umeng/common/util/i;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/umeng/common/net/t;->c:Ljava/lang/String;

    return-object v0
.end method
