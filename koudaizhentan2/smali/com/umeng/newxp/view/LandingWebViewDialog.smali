.class public Lcom/umeng/newxp/view/LandingWebViewDialog;
.super Landroid/app/Dialog;
.source "LandingWebViewDialog.java"


# instance fields
.field a:Landroid/view/animation/Animation;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/16 v5, 0x8

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 73
    .line 74
    sget-boolean v0, Lcom/umeng/newxp/common/ExchangeConstants;->full_screen:Z

    if-eqz v0, :cond_3

    const v0, 0x1030011

    .line 75
    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 76
    iput-object p1, p0, Lcom/umeng/newxp/view/LandingWebViewDialog;->b:Landroid/content/Context;

    .line 77
    invoke-virtual {p0}, Lcom/umeng/newxp/view/LandingWebViewDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 78
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 79
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 80
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 81
    invoke-virtual {p0}, Lcom/umeng/newxp/view/LandingWebViewDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 83
    invoke-static {p1}, Lcom/umeng/newxp/a/d;->r(Landroid/content/Context;)I

    move-result v0

    .line 85
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 87
    invoke-virtual {p0}, Lcom/umeng/newxp/view/LandingWebViewDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 88
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 89
    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 88
    invoke-virtual {v1, v0, v2}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    if-eqz p2, :cond_2

    .line 94
    invoke-direct {p0}, Lcom/umeng/newxp/view/LandingWebViewDialog;->a()V

    .line 96
    iget-object v0, p0, Lcom/umeng/newxp/view/LandingWebViewDialog;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/newxp/a/c;->G(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/LandingWebViewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 99
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 100
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 101
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v5, :cond_4

    .line 102
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    .line 106
    :goto_1
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 107
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 108
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 109
    sget-object v2, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 110
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 112
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v5, :cond_0

    .line 113
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 114
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 115
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 116
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 117
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 120
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_1

    .line 123
    :try_start_0
    const-class v2, Landroid/webkit/WebSettings;

    const-string v3, "setDisplayZoomControls"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    .line 124
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    .line 123
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 125
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 126
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :cond_1
    :goto_2
    new-instance v1, Lcom/umeng/newxp/view/aj;

    invoke-direct {v1, p0}, Lcom/umeng/newxp/view/aj;-><init>(Lcom/umeng/newxp/view/LandingWebViewDialog;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 141
    new-instance v1, Lcom/umeng/newxp/view/ak;

    invoke-direct {v1, p0}, Lcom/umeng/newxp/view/ak;-><init>(Lcom/umeng/newxp/view/LandingWebViewDialog;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 150
    new-instance v1, Lcom/umeng/newxp/view/al;

    invoke-direct {v1, p0}, Lcom/umeng/newxp/view/al;-><init>(Lcom/umeng/newxp/view/LandingWebViewDialog;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 164
    invoke-virtual {v0, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/umeng/newxp/view/LandingWebViewDialog;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/newxp/a/c;->e(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/LandingWebViewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 167
    new-instance v1, Lcom/umeng/newxp/view/am;

    invoke-direct {v1, p0}, Lcom/umeng/newxp/view/am;-><init>(Lcom/umeng/newxp/view/LandingWebViewDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    :cond_2
    return-void

    .line 75
    :cond_3
    const v0, 0x1030010

    goto/16 :goto_0

    .line 104
    :cond_4
    sget-object v2, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    goto/16 :goto_1

    .line 128
    :catch_0
    move-exception v1

    .line 129
    sget-object v2, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v1}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2
.end method

.method private a()V
    .locals 3

    .prologue
    .line 41
    iget-object v0, p0, Lcom/umeng/newxp/view/LandingWebViewDialog;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/newxp/a/c;->z(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/LandingWebViewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 42
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 44
    iget-object v1, p0, Lcom/umeng/newxp/view/LandingWebViewDialog;->a:Landroid/view/animation/Animation;

    if-nez v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/umeng/newxp/view/LandingWebViewDialog;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/newxp/view/LandingWebViewDialog;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/newxp/a/a;->d(Landroid/content/Context;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/newxp/view/LandingWebViewDialog;->a:Landroid/view/animation/Animation;

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/umeng/newxp/view/LandingWebViewDialog;->a:Landroid/view/animation/Animation;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 48
    iget-object v1, p0, Lcom/umeng/newxp/view/LandingWebViewDialog;->a:Landroid/view/animation/Animation;

    new-instance v2, Lcom/umeng/newxp/view/ai;

    invoke-direct {v2, p0}, Lcom/umeng/newxp/view/ai;-><init>(Lcom/umeng/newxp/view/LandingWebViewDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 62
    iget-object v1, p0, Lcom/umeng/newxp/view/LandingWebViewDialog;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 63
    return-void
.end method

.method static synthetic a(Lcom/umeng/newxp/view/LandingWebViewDialog;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/umeng/newxp/view/LandingWebViewDialog;->b()V

    return-void
.end method

.method static synthetic b(Lcom/umeng/newxp/view/LandingWebViewDialog;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/umeng/newxp/view/LandingWebViewDialog;->b:Landroid/content/Context;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/umeng/newxp/view/LandingWebViewDialog;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/newxp/a/c;->z(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/LandingWebViewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 67
    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 68
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 69
    return-void
.end method
