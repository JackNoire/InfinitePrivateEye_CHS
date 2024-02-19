.class public Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;
.super Landroid/app/Activity;
.source "StrategyActivity.java"


# static fields
.field private static final BUTTON_RID:I = 0x1

.field private static final TITLE_RID:I = 0x6

.field private static final TOP_RID:I = 0x2


# instance fields
.field private BACK_RID:I

.field private FLUSH_RID:I

.field private FORWARD_RID:I

.field private backBtn:Landroid/graphics/drawable/Drawable;

.field private backBtnPress:Landroid/graphics/drawable/Drawable;

.field private backDisable:Landroid/graphics/drawable/Drawable;

.field private backEnable:Landroid/graphics/drawable/Drawable;

.field private backPress:Landroid/graphics/drawable/Drawable;

.field private bottomBackground:Landroid/graphics/drawable/Drawable;

.field private currentUrl:Ljava/lang/String;

.field private density:F

.field private flushDisable:Landroid/graphics/drawable/Drawable;

.field private flushEnable:Landroid/graphics/drawable/Drawable;

.field private flushPress:Landroid/graphics/drawable/Drawable;

.field private forwardDisable:Landroid/graphics/drawable/Drawable;

.field private forwardEnable:Landroid/graphics/drawable/Drawable;

.field private forwardPress:Landroid/graphics/drawable/Drawable;

.field private height:I

.field private logo:Landroid/graphics/drawable/Drawable;

.field private progressBar:Landroid/widget/ProgressBar;

.field private url:Ljava/lang/String;

.field private webVeiw:Landroid/webkit/WebView;

.field private webViewControler:Landroid/widget/RelativeLayout;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 195
    const/4 v0, 0x3

    iput v0, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->BACK_RID:I

    .line 196
    const/4 v0, 0x4

    iput v0, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->FORWARD_RID:I

    .line 197
    const/4 v0, 0x5

    iput v0, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->FLUSH_RID:I

    .line 29
    return-void
.end method

.method static synthetic access$0(Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->backBtn:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1(Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->backBtnPress:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$10(Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->flushPress:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$2(Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->currentUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$4(Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->webVeiw:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->backEnable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$6(Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->backPress:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$7(Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->forwardEnable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$8(Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->forwardPress:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$9(Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->flushEnable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private bottomControler()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/high16 v13, 0x41a00000    # 20.0f

    const/16 v12, 0xf

    const/4 v11, -0x1

    .line 206
    const/high16 v7, 0x428c0000    # 70.0f

    iget v8, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->density:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->height:I

    .line 207
    iget v7, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->height:I

    int-to-double v7, v7

    const-wide v9, 0x3fed95810624dd2fL    # 0.9245

    mul-double/2addr v7, v9

    double-to-int v7, v7

    iput v7, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->width:I

    .line 208
    invoke-direct {p0}, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->initDrawable()V

    .line 209
    new-instance v7, Landroid/widget/RelativeLayout;

    invoke-direct {v7, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->webViewControler:Landroid/widget/RelativeLayout;

    .line 210
    iget-object v7, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->webViewControler:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v14}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 211
    iget-object v7, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->webViewControler:Landroid/widget/RelativeLayout;

    iget-object v8, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->bottomBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 212
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v7, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->height:I

    invoke-direct {v2, v11, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 213
    .local v2, "controlerParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v7, 0xc

    invoke-virtual {v2, v7, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 214
    iget-object v7, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->webViewControler:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v7, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->width:I

    iget v8, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->height:I

    invoke-direct {v1, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 217
    .local v1, "backParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 218
    iget v7, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->density:F

    mul-float/2addr v7, v13

    float-to-int v7, v7

    iput v7, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 220
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    iget v7, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->width:I

    iget v8, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->height:I

    invoke-direct {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 221
    .local v6, "forwardParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v6, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 222
    iget v7, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->BACK_RID:I

    invoke-virtual {v6, v14, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 223
    const/high16 v7, 0x42c80000    # 100.0f

    iget v8, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->density:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 225
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    iget v7, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->width:I

    iget v8, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->height:I

    invoke-direct {v4, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 226
    .local v4, "flushParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v4, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 227
    const/16 v7, 0xb

    invoke-virtual {v4, v7, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 228
    iget v7, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->density:F

    mul-float/2addr v7, v13

    float-to-int v7, v7

    iput v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 230
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 231
    .local v0, "back":Landroid/widget/ImageView;
    iget v7, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->BACK_RID:I

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setId(I)V

    .line 232
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    iget-object v7, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->backEnable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 234
    new-instance v7, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity$4;

    invoke-direct {v7, p0}, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity$4;-><init>(Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;)V

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    new-instance v7, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity$5;

    invoke-direct {v7, p0, v0}, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity$5;-><init>(Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 260
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 261
    .local v5, "forward":Landroid/widget/ImageView;
    iget v7, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->FORWARD_RID:I

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setId(I)V

    .line 262
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    iget-object v7, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->forwardEnable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 264
    new-instance v7, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity$6;

    invoke-direct {v7, p0}, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity$6;-><init>(Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;)V

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    new-instance v7, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity$7;

    invoke-direct {v7, p0, v5}, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity$7;-><init>(Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;Landroid/widget/ImageView;)V

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 290
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 291
    .local v3, "flush":Landroid/widget/ImageView;
    iget v7, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->FLUSH_RID:I

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setId(I)V

    .line 292
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 293
    iget-object v7, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->flushEnable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 294
    new-instance v7, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity$8;

    invoke-direct {v7, p0}, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity$8;-><init>(Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;)V

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    new-instance v7, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity$9;

    invoke-direct {v7, p0, v3}, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity$9;-><init>(Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 317
    iget-object v7, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->webViewControler:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 318
    iget-object v7, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->webViewControler:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 319
    iget-object v7, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->webViewControler:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 320
    return-void
.end method

.method private getDensity()V
    .locals 3

    .prologue
    .line 179
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 180
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 181
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->density:F

    .line 182
    return-void
.end method

.method private getDrawableByName(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 338
    .local v0, "am":Landroid/content/res/AssetManager;
    const/4 v3, 0x0

    .line 340
    .local v3, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 344
    :goto_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 345
    .local v1, "bd":Landroid/graphics/drawable/BitmapDrawable;
    return-object v1

    .line 341
    .end local v1    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    :catch_0
    move-exception v2

    .line 342
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private initDrawable()V
    .locals 1

    .prologue
    .line 323
    const-string v0, "bottom_background.png"

    invoke-direct {p0, v0}, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->getDrawableByName(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->bottomBackground:Landroid/graphics/drawable/Drawable;

    .line 324
    const-string v0, "back_disable.png"

    invoke-direct {p0, v0}, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->getDrawableByName(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->backDisable:Landroid/graphics/drawable/Drawable;

    .line 325
    const-string v0, "back_enable.png"

    invoke-direct {p0, v0}, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->getDrawableByName(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->backEnable:Landroid/graphics/drawable/Drawable;

    .line 326
    const-string v0, "back_press.png"

    invoke-direct {p0, v0}, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->getDrawableByName(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->backPress:Landroid/graphics/drawable/Drawable;

    .line 327
    const-string v0, "forward_disable.png"

    invoke-direct {p0, v0}, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->getDrawableByName(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->forwardDisable:Landroid/graphics/drawable/Drawable;

    .line 328
    const-string v0, "forward_enable.png"

    invoke-direct {p0, v0}, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->getDrawableByName(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->forwardEnable:Landroid/graphics/drawable/Drawable;

    .line 329
    const-string v0, "forward_press.png"

    invoke-direct {p0, v0}, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->getDrawableByName(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->forwardPress:Landroid/graphics/drawable/Drawable;

    .line 330
    const-string v0, "flush_disable.png"

    invoke-direct {p0, v0}, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->getDrawableByName(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->flushDisable:Landroid/graphics/drawable/Drawable;

    .line 331
    const-string v0, "flush_enable.png"

    invoke-direct {p0, v0}, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->getDrawableByName(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->flushEnable:Landroid/graphics/drawable/Drawable;

    .line 332
    const-string v0, "flush_press.png"

    invoke-direct {p0, v0}, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->getDrawableByName(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->flushPress:Landroid/graphics/drawable/Drawable;

    .line 333
    const-string v0, "logo.png"

    invoke-direct {p0, v0}, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->getDrawableByName(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->logo:Landroid/graphics/drawable/Drawable;

    .line 334
    return-void
.end method

.method private onBack()V
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->webVeiw:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->webVeiw:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 354
    :goto_0
    return-void

    .line 352
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 358
    invoke-direct {p0}, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->onBack()V

    .line 359
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 17
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    const-string v15, "url"

    invoke-virtual {v14, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->url:Ljava/lang/String;

    .line 53
    invoke-direct/range {p0 .. p0}, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->getDensity()V

    .line 56
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v14, -0x1

    const/4 v15, -0x1

    invoke-direct {v3, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 57
    .local v3, "containerParams":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v2, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 58
    .local v2, "container":Landroid/widget/RelativeLayout;
    const/4 v14, -0x1

    invoke-virtual {v2, v14}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 59
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v14, -0x1

    const/high16 v15, 0x428c0000    # 70.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->density:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    float-to-int v15, v15

    invoke-direct {v11, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 63
    .local v11, "viewGroupParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v14, 0xa

    const/4 v15, -0x1

    invoke-virtual {v11, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 64
    new-instance v10, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 65
    .local v10, "topBar":Landroid/widget/RelativeLayout;
    const/4 v14, 0x2

    invoke-virtual {v10, v14}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 66
    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    invoke-direct/range {p0 .. p0}, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->bottomControler()V

    .line 72
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v14, -0x2

    const/4 v15, -0x2

    invoke-direct {v8, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 73
    .local v8, "textViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v14, 0xd

    invoke-virtual {v8, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 74
    new-instance v9, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 75
    .local v9, "titleName":Landroid/widget/TextView;
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    const-string v14, "\u6e38\u620f\u653b\u7565"

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    const/high16 v14, 0x41700000    # 15.0f

    move-object/from16 v0, p0

    iget v15, v0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->density:F

    mul-float/2addr v14, v15

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setTextSize(F)V

    .line 78
    const/4 v14, 0x6

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setId(I)V

    .line 79
    const/high16 v14, -0x1000000

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v14, 0x420c0000    # 35.0f

    move-object/from16 v0, p0

    iget v15, v0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->density:F

    mul-float/2addr v14, v15

    float-to-int v14, v14

    const/high16 v15, 0x420c0000    # 35.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->density:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    float-to-int v15, v15

    invoke-direct {v7, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 83
    .local v7, "progressParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v14, 0x1

    const/4 v15, 0x6

    invoke-virtual {v7, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 84
    const/16 v14, 0xf

    invoke-virtual {v7, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 85
    const/high16 v14, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    iget v15, v0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->density:F

    mul-float/2addr v14, v15

    float-to-int v14, v14

    iput v14, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 86
    new-instance v14, Landroid/widget/ProgressBar;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 87
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v14, v7}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    new-instance v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 91
    .local v4, "logoTv":Landroid/widget/TextView;
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v14, 0x42a00000    # 80.0f

    move-object/from16 v0, p0

    iget v15, v0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->density:F

    mul-float/2addr v14, v15

    float-to-int v14, v14

    const/high16 v15, 0x42200000    # 40.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->density:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    float-to-int v15, v15

    invoke-direct {v6, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 92
    .local v6, "paramsLogo":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v14, 0x9

    invoke-virtual {v6, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 93
    const/16 v14, 0xf

    invoke-virtual {v6, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 94
    const/high16 v14, 0x41700000    # 15.0f

    move-object/from16 v0, p0

    iget v15, v0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->density:F

    mul-float/2addr v14, v15

    float-to-int v14, v14

    iput v14, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 95
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    const/4 v14, -0x1

    invoke-virtual {v10, v14}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 97
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->logo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v14}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    new-instance v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 101
    .local v1, "back":Landroid/widget/TextView;
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v14, 0x42a00000    # 80.0f

    move-object/from16 v0, p0

    iget v15, v0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->density:F

    mul-float/2addr v14, v15

    float-to-int v14, v14

    const/high16 v15, 0x42200000    # 40.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->density:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    float-to-int v15, v15

    invoke-direct {v5, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 102
    .local v5, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v14, 0xb

    invoke-virtual {v5, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 103
    const/16 v14, 0xf

    invoke-virtual {v5, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 104
    const/high16 v14, 0x41700000    # 15.0f

    move-object/from16 v0, p0

    iget v15, v0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->density:F

    mul-float/2addr v14, v15

    float-to-int v14, v14

    iput v14, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 105
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    const-string v14, "back_game_press.png"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->getDrawableByName(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->backBtn:Landroid/graphics/drawable/Drawable;

    .line 107
    const-string v14, "back_game.png"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->getDrawableByName(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->backBtnPress:Landroid/graphics/drawable/Drawable;

    .line 108
    const/4 v14, -0x1

    invoke-virtual {v10, v14}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 109
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->backBtn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    new-instance v14, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v1}, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity$1;-><init>(Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;Landroid/widget/TextView;)V

    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 128
    invoke-virtual {v10, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 129
    invoke-virtual {v10, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 130
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v10, v14}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 131
    invoke-virtual {v10, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 132
    new-instance v14, Landroid/webkit/WebView;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->webVeiw:Landroid/webkit/WebView;

    .line 133
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v14, -0x1

    const/4 v15, -0x1

    invoke-direct {v13, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 134
    .local v13, "webViewParam":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v14, 0x3

    const/4 v15, 0x2

    invoke-virtual {v13, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 135
    const/4 v14, 0x2

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 136
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->webVeiw:Landroid/webkit/WebView;

    invoke-virtual {v14, v13}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    invoke-virtual {v2, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 140
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->webViewControler:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v14}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 141
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->webVeiw:Landroid/webkit/WebView;

    invoke-virtual {v2, v14}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 144
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->setContentView(Landroid/view/View;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->webVeiw:Landroid/webkit/WebView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 147
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->webVeiw:Landroid/webkit/WebView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 148
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->webVeiw:Landroid/webkit/WebView;

    invoke-virtual {v14}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v12

    .line 149
    .local v12, "webSettings":Landroid/webkit/WebSettings;
    const/4 v14, 0x1

    invoke-virtual {v12, v14}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 150
    sget-object v14, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v12, v14}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 151
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->webVeiw:Landroid/webkit/WebView;

    new-instance v15, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity$2;-><init>(Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;)V

    invoke-virtual {v14, v15}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->webVeiw:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->url:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 160
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;->webVeiw:Landroid/webkit/WebView;

    new-instance v15, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity$3;-><init>(Lcom/nflystudio/InfinitePrivateEye2/StrategyActivity;)V

    invoke-virtual {v14, v15}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 174
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 370
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 371
    const-string v0, "StrategyTime"

    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->onEventEnd(Landroid/content/Context;Ljava/lang/String;)V

    .line 372
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 373
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 363
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 364
    const-string v0, "StrategyTime"

    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->onEventBegin(Landroid/content/Context;Ljava/lang/String;)V

    .line 365
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 366
    return-void
.end method
