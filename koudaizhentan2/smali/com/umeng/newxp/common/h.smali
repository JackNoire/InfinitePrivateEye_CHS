.class Lcom/umeng/newxp/common/h;
.super Ljava/lang/Object;
.source "XpUtils.java"

# interfaces
.implements Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;


# instance fields
.field private final synthetic a:Lcom/umeng/newxp/common/g$a;

.field private final synthetic b:Lcom/umeng/newxp/controller/ExchangeDataService;

.field private final synthetic c:Landroid/content/Context;

.field private final synthetic d:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/common/g$a;Lcom/umeng/newxp/controller/ExchangeDataService;Landroid/content/Context;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/common/h;->a:Lcom/umeng/newxp/common/g$a;

    iput-object p2, p0, Lcom/umeng/newxp/common/h;->b:Lcom/umeng/newxp/controller/ExchangeDataService;

    iput-object p3, p0, Lcom/umeng/newxp/common/h;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/umeng/newxp/common/h;->d:Landroid/widget/ImageView;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dataReceived(ILjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    if-nez p1, :cond_1

    .line 155
    iget-object v0, p0, Lcom/umeng/newxp/common/h;->a:Lcom/umeng/newxp/common/g$a;

    invoke-interface {v0, p1}, Lcom/umeng/newxp/common/g$a;->a(I)V

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/umeng/newxp/common/h;->b:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v0, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->landing_image:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 159
    new-instance v4, Lcom/umeng/newxp/common/i;

    iget-object v0, p0, Lcom/umeng/newxp/common/h;->a:Lcom/umeng/newxp/common/g$a;

    iget-object v1, p0, Lcom/umeng/newxp/common/h;->d:Landroid/widget/ImageView;

    invoke-direct {v4, p0, v0, v1, p2}, Lcom/umeng/newxp/common/i;-><init>(Lcom/umeng/newxp/common/h;Lcom/umeng/newxp/common/g$a;Landroid/widget/ImageView;Ljava/util/List;)V

    .line 175
    iget-object v0, p0, Lcom/umeng/newxp/common/h;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/umeng/newxp/common/h;->d:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/umeng/newxp/common/h;->b:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v2, v2, Lcom/umeng/newxp/controller/ExchangeDataService;->landing_image:Ljava/lang/String;

    .line 176
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 175
    invoke-static/range {v0 .. v5}, Lcom/umeng/common/net/q;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ZLcom/umeng/common/net/q$a;Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
