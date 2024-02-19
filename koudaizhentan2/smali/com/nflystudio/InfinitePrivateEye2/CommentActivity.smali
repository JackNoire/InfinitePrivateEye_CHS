.class public Lcom/nflystudio/InfinitePrivateEye2/CommentActivity;
.super Landroid/app/Activity;
.source "CommentActivity.java"


# instance fields
.field private BACK_RID:I

.field private FLUSH_RID:I

.field private FORWARD_RID:I

.field private backEnable:Landroid/graphics/drawable/Drawable;

.field private backPress:Landroid/graphics/drawable/Drawable;

.field private density:F

.field private flushEnable:Landroid/graphics/drawable/Drawable;

.field private flushPress:Landroid/graphics/drawable/Drawable;

.field private forwardEnable:Landroid/graphics/drawable/Drawable;

.field private forwardPress:Landroid/graphics/drawable/Drawable;

.field private height:I

.field private url:Ljava/lang/String;

.field private webVeiw:Landroid/webkit/WebView;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 19
    sget-object v0, Lcom/nflystudio/Service/PushDateItem;->wapurl:Ljava/lang/String;

    iput-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/CommentActivity;->url:Ljava/lang/String;

    .line 192
    const/4 v0, 0x3

    iput v0, p0, Lcom/nflystudio/InfinitePrivateEye2/CommentActivity;->BACK_RID:I

    .line 193
    const/4 v0, 0x4

    iput v0, p0, Lcom/nflystudio/InfinitePrivateEye2/CommentActivity;->FORWARD_RID:I

    .line 194
    const/4 v0, 0x5

    iput v0, p0, Lcom/nflystudio/InfinitePrivateEye2/CommentActivity;->FLUSH_RID:I

    .line 18
    return-void
.end method

.method private getDensity()V
    .locals 3

    .prologue
    .line 176
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 177
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/nflystudio/InfinitePrivateEye2/CommentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 178
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/nflystudio/InfinitePrivateEye2/CommentActivity;->density:F

    .line 179
    return-void
.end method

.method private onBack()V
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/CommentActivity;->webVeiw:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/CommentActivity;->webVeiw:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 351
    :goto_0
    return-void

    .line 349
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 355
    invoke-direct {p0}, Lcom/nflystudio/InfinitePrivateEye2/CommentActivity;->onBack()V

    .line 356
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-direct {p0}, Lcom/nflystudio/InfinitePrivateEye2/CommentActivity;->getDensity()V

    .line 43
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 44
    .local v0, "container":Landroid/widget/RelativeLayout;
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 119
    new-instance v3, Landroid/webkit/WebView;

    invoke-direct {v3, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/nflystudio/InfinitePrivateEye2/CommentActivity;->webVeiw:Landroid/webkit/WebView;

    .line 120
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 123
    .local v2, "webViewParam":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/nflystudio/InfinitePrivateEye2/CommentActivity;->webVeiw:Landroid/webkit/WebView;

    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    iget-object v3, p0, Lcom/nflystudio/InfinitePrivateEye2/CommentActivity;->webVeiw:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 131
    invoke-virtual {p0, v0}, Lcom/nflystudio/InfinitePrivateEye2/CommentActivity;->setContentView(Landroid/view/View;)V

    .line 133
    iget-object v3, p0, Lcom/nflystudio/InfinitePrivateEye2/CommentActivity;->webVeiw:Landroid/webkit/WebView;

    invoke-virtual {v3, v6}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 134
    iget-object v3, p0, Lcom/nflystudio/InfinitePrivateEye2/CommentActivity;->webVeiw:Landroid/webkit/WebView;

    invoke-virtual {v3, v6}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 135
    iget-object v3, p0, Lcom/nflystudio/InfinitePrivateEye2/CommentActivity;->webVeiw:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 136
    .local v1, "webSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 137
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 138
    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 139
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 140
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 141
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 143
    const-string v3, "ptbus"

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 147
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 148
    iget-object v3, p0, Lcom/nflystudio/InfinitePrivateEye2/CommentActivity;->webVeiw:Landroid/webkit/WebView;

    new-instance v4, Lcom/nflystudio/InfinitePrivateEye2/CommentActivity$1;

    invoke-direct {v4, p0}, Lcom/nflystudio/InfinitePrivateEye2/CommentActivity$1;-><init>(Lcom/nflystudio/InfinitePrivateEye2/CommentActivity;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 156
    iget-object v3, p0, Lcom/nflystudio/InfinitePrivateEye2/CommentActivity;->webVeiw:Landroid/webkit/WebView;

    iget-object v4, p0, Lcom/nflystudio/InfinitePrivateEye2/CommentActivity;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 157
    iget-object v3, p0, Lcom/nflystudio/InfinitePrivateEye2/CommentActivity;->webVeiw:Landroid/webkit/WebView;

    new-instance v4, Lcom/nflystudio/InfinitePrivateEye2/CommentActivity$2;

    invoke-direct {v4, p0}, Lcom/nflystudio/InfinitePrivateEye2/CommentActivity$2;-><init>(Lcom/nflystudio/InfinitePrivateEye2/CommentActivity;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 171
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 367
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 368
    const-string v0, "StrategyTime"

    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->onEventEnd(Landroid/content/Context;Ljava/lang/String;)V

    .line 369
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 370
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 360
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 361
    const-string v0, "StrategyTime"

    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->onEventBegin(Landroid/content/Context;Ljava/lang/String;)V

    .line 362
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 363
    return-void
.end method
