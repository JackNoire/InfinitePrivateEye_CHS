.class Lcom/umeng/analytics/a/j;
.super Lorg/json/JSONObject;
.source "LogBody.java"


# instance fields
.field final synthetic a:Lcom/umeng/analytics/a/i;


# direct methods
.method constructor <init>(Lcom/umeng/analytics/a/i;Lcom/umeng/analytics/a/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/analytics/a/j;->a:Lcom/umeng/analytics/a/i;

    .line 178
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 180
    invoke-interface {p2, p0}, Lcom/umeng/analytics/a/g;->b(Lorg/json/JSONObject;)V

    return-void
.end method
