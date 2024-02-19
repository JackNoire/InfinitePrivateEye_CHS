.class Lcom/umeng/newxp/view/D;
.super Ljava/lang/Object;
.source "ExchangeViewManager.java"

# interfaces
.implements Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/ExchangeViewManager;

.field private final synthetic b:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/ExchangeViewManager;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/D;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    iput-object p2, p0, Lcom/umeng/newxp/view/D;->b:Landroid/view/ViewGroup;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/umeng/newxp/view/D;)Lcom/umeng/newxp/view/ExchangeViewManager;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/umeng/newxp/view/D;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    return-object v0
.end method


# virtual methods
.method public dataReceived(ILjava/util/List;)V
    .locals 4
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
    const/4 v2, -0x2

    .line 119
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/umeng/newxp/view/D;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    iget-object v1, v1, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 120
    iget-object v1, p0, Lcom/umeng/newxp/view/D;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    iget-object v1, v1, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/newxp/a/b;->t(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    new-instance v1, Lcom/umeng/newxp/view/E;

    invoke-direct {v1, p0}, Lcom/umeng/newxp/view/E;-><init>(Lcom/umeng/newxp/view/D;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 132
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 133
    iget-object v2, p0, Lcom/umeng/newxp/view/D;->b:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    iget-object v1, p0, Lcom/umeng/newxp/view/D;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    invoke-static {v1}, Lcom/umeng/newxp/view/ExchangeViewManager;->a(Lcom/umeng/newxp/view/ExchangeViewManager;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v1

    iget-object v1, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->landing_image:Ljava/lang/String;

    invoke-static {v1}, Lcom/umeng/common/util/h;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/umeng/newxp/view/D;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    iget-object v1, v1, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/newxp/view/D;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    invoke-static {v2}, Lcom/umeng/newxp/view/ExchangeViewManager;->a(Lcom/umeng/newxp/view/ExchangeViewManager;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v2

    iget-object v2, v2, Lcom/umeng/newxp/controller/ExchangeDataService;->landing_image:Ljava/lang/String;

    .line 137
    const/4 v3, 0x0

    .line 136
    invoke-static {v1, v0, v2, v3}, Lcom/umeng/common/net/q;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Z)V

    .line 140
    :cond_0
    return-void
.end method
