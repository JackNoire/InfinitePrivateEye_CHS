.class Lcom/umeng/analytics/a/c;
.super Lorg/json/JSONObject;
.source "EKVHub.java"


# instance fields
.field final synthetic a:Lcom/umeng/analytics/a/b;


# direct methods
.method constructor <init>(Lcom/umeng/analytics/a/b;Lcom/umeng/analytics/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/analytics/a/c;->a:Lcom/umeng/analytics/a/b;

    .line 53
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 55
    invoke-virtual {p2, p0}, Lcom/umeng/analytics/a/a;->b(Lorg/json/JSONObject;)V

    return-void
.end method
