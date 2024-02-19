.class public Lcom/umeng/newxp/view/S;
.super Ljava/lang/Object;
.source "FloatContentHelper.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/Boolean;

.field private c:Z

.field private d:Lcom/umeng/newxp/view/FloatDialogConfig;

.field private e:Landroid/content/Context;

.field private f:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/umeng/newxp/view/S;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/newxp/view/S;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/umeng/newxp/view/FloatDialogConfig;Landroid/content/Context;Landroid/app/Dialog;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/newxp/view/S;->b:Ljava/lang/Boolean;

    .line 40
    iput-boolean v1, p0, Lcom/umeng/newxp/view/S;->c:Z

    .line 47
    iput-object p1, p0, Lcom/umeng/newxp/view/S;->d:Lcom/umeng/newxp/view/FloatDialogConfig;

    .line 48
    iput-object p2, p0, Lcom/umeng/newxp/view/S;->e:Landroid/content/Context;

    .line 49
    iput-object p3, p0, Lcom/umeng/newxp/view/S;->f:Landroid/app/Dialog;

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/umeng/newxp/view/S;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/umeng/newxp/view/S;->b:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic a(Lcom/umeng/newxp/view/S;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/umeng/newxp/view/S;->b:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic a(Lcom/umeng/newxp/view/S;Z)V
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/umeng/newxp/view/S;->c:Z

    return-void
.end method

.method static synthetic b(Lcom/umeng/newxp/view/S;)Lcom/umeng/newxp/view/FloatDialogConfig;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/umeng/newxp/view/S;->d:Lcom/umeng/newxp/view/FloatDialogConfig;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/umeng/newxp/view/S;->a:Ljava/lang/String;

    return-object v0
.end method

.method private b(Landroid/webkit/WebView;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 110
    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 111
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 112
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 114
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 115
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 116
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 117
    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 119
    new-instance v0, Lcom/umeng/newxp/view/U;

    invoke-direct {v0, p0}, Lcom/umeng/newxp/view/U;-><init>(Lcom/umeng/newxp/view/S;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 134
    new-instance v0, Lcom/umeng/newxp/view/V;

    invoke-direct {v0, p0, p1}, Lcom/umeng/newxp/view/V;-><init>(Lcom/umeng/newxp/view/S;Landroid/webkit/WebView;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 163
    return-void
.end method

.method static synthetic c(Lcom/umeng/newxp/view/S;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/umeng/newxp/view/S;->f:Landroid/app/Dialog;

    return-object v0
.end method

.method private c()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 176
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 177
    iget-object v1, p0, Lcom/umeng/newxp/view/S;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/common/b;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 178
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "device_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/umeng/newxp/view/S;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/common/b;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 181
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "mc"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    :cond_1
    return-object v0
.end method

.method static synthetic d(Lcom/umeng/newxp/view/S;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/umeng/newxp/view/S;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/umeng/newxp/view/S;)Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/umeng/newxp/view/S;->c:Z

    return v0
.end method


# virtual methods
.method protected a(Ljava/util/List;Lcom/umeng/newxp/controller/ExchangeDataService;)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;",
            "Lcom/umeng/newxp/controller/ExchangeDataService;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 53
    new-instance v0, Lcom/umeng/newxp/view/GridTemplateConfig;

    invoke-direct {v0}, Lcom/umeng/newxp/view/GridTemplateConfig;-><init>()V

    .line 54
    new-instance v1, Lcom/umeng/newxp/view/GridTemplate;

    iget-object v2, p0, Lcom/umeng/newxp/view/S;->e:Landroid/content/Context;

    invoke-direct {v1, p1, p2, v2, v0}, Lcom/umeng/newxp/view/GridTemplate;-><init>(Ljava/util/List;Lcom/umeng/newxp/controller/ExchangeDataService;Landroid/content/Context;Lcom/umeng/newxp/view/GridTemplateConfig;)V

    .line 55
    iget-object v0, v1, Lcom/umeng/newxp/view/GridTemplate;->contentView:Landroid/view/View;

    return-object v0
.end method

.method protected a()Landroid/webkit/WebView;
    .locals 2

    .prologue
    .line 103
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/umeng/newxp/view/S;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 104
    invoke-direct {p0, v0}, Lcom/umeng/newxp/view/S;->b(Landroid/webkit/WebView;)V

    .line 105
    return-object v0
.end method

.method protected a(Landroid/webkit/WebView;)V
    .locals 4

    .prologue
    .line 166
    const/4 v0, 0x0

    .line 168
    :try_start_0
    invoke-direct {p0}, Lcom/umeng/newxp/view/S;->c()Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 171
    :goto_0
    sget-object v1, Lcom/umeng/newxp/view/S;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "send device info "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:uGap.setDeviceInfo("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 173
    return-void

    .line 169
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected b(Ljava/util/List;Lcom/umeng/newxp/controller/ExchangeDataService;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;",
            "Lcom/umeng/newxp/controller/ExchangeDataService;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Lcom/umeng/newxp/view/w;

    iget-object v1, p0, Lcom/umeng/newxp/view/S;->e:Landroid/content/Context;

    invoke-direct {v0, v1, p2, p1}, Lcom/umeng/newxp/view/w;-><init>(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;Ljava/util/List;)V

    .line 60
    iget-object v0, v0, Lcom/umeng/newxp/view/w;->a:Landroid/view/View;

    return-object v0
.end method

.method protected c(Ljava/util/List;Lcom/umeng/newxp/controller/ExchangeDataService;)Lcom/umeng/newxp/view/P;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;",
            "Lcom/umeng/newxp/controller/ExchangeDataService;",
            ")",
            "Lcom/umeng/newxp/view/P;"
        }
    .end annotation

    .prologue
    .line 70
    new-instance v1, Lcom/umeng/newxp/view/P;

    iget-object v0, p0, Lcom/umeng/newxp/view/S;->e:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/umeng/newxp/view/P;-><init>(Landroid/content/Context;)V

    .line 72
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 73
    :goto_0
    new-instance v2, Lcom/umeng/newxp/view/T;

    invoke-direct {v2, p0}, Lcom/umeng/newxp/view/T;-><init>(Lcom/umeng/newxp/view/S;)V

    invoke-virtual {v1, p2, v0, v2}, Lcom/umeng/newxp/view/P;->a(Lcom/umeng/newxp/controller/ExchangeDataService;Lcom/umeng/newxp/Promoter;Lcom/umeng/common/net/q$a;)Z

    move-result v2

    .line 93
    if-nez v2, :cond_1

    .line 94
    sget-object v2, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "float-window use FImageView style.but set no match promoter.["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    if-nez v0, :cond_3

    const-string v0, "promoter is null(may be promoter has filtered by installed-filter.)"

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 96
    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {v2, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_1
    return-object v1

    .line 72
    :cond_2
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/Promoter;

    goto :goto_0

    .line 96
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "promoter.img ="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/umeng/newxp/Promoter;->img:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
