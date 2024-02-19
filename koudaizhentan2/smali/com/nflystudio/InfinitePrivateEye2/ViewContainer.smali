.class public Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;
.super Landroid/widget/LinearLayout;
.source "ViewContainer.java"


# static fields
.field private static final UMENG_KEY:Ljava/lang/String; = "532ba64156240b2cdc06eaa6"

.field private static final URL_DISCUSS:Ljava/lang/String; = "http://bbs.ptbus.com/forum-1670-1.html"

.field private static final URL_NO:Ljava/lang/String; = "http://api.ptbus.com/test/?type=html5&aid=193977"

.field private static final URL_YES:Ljava/lang/String; = "http://api.ptbus.com/test/?type=html5&aid=194100"


# instance fields
.field private app:Landroid/graphics/drawable/Drawable;

.field private app_press:Landroid/graphics/drawable/Drawable;

.field private background:Landroid/graphics/drawable/Drawable;

.field private context:Landroid/content/Context;

.field private controler:Landroid/graphics/drawable/Drawable;

.field private controlerView:Lcom/nflystudio/InfinitePrivateEye2/ControlerView;

.field private controler_press:Landroid/graphics/drawable/Drawable;

.field private density:F

.field private discuss:Landroid/graphics/drawable/Drawable;

.field private discussView:Landroid/widget/ImageView;

.field private discuss_press:Landroid/graphics/drawable/Drawable;

.field private downloadView:Landroid/widget/ImageView;

.field private height:I

.field private isShow:Z

.field private leftMargin:I

.field private listener:Landroid/view/View$OnClickListener;

.field private strategyViewNo:Landroid/widget/ImageView;

.field private strategyViewYes:Landroid/widget/ImageView;

.field private strategy_1:Landroid/graphics/drawable/Drawable;

.field private strategy_1_press:Landroid/graphics/drawable/Drawable;

.field private strategy_2:Landroid/graphics/drawable/Drawable;

.field private strategy_2_press:Landroid/graphics/drawable/Drawable;

.field private width:I

.field private windowManager:Landroid/view/WindowManager;

.field private windowManagerParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;F)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "density"    # F

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->isShow:Z

    .line 61
    invoke-virtual {p0}, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->windowManager:Landroid/view/WindowManager;

    .line 62
    invoke-virtual {p0}, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/nflystudio/InfinitePrivateEye2/MyApplication;

    invoke-virtual {v0}, Lcom/nflystudio/InfinitePrivateEye2/MyApplication;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->windowManagerParams:Landroid/view/WindowManager$LayoutParams;

    .line 67
    iput-object p1, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->context:Landroid/content/Context;

    .line 68
    iput p2, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->density:F

    .line 69
    invoke-direct {p0}, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->initRes()V

    .line 70
    invoke-direct {p0}, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->init()V

    .line 71
    invoke-direct {p0}, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->regListener()V

    .line 72
    return-void
.end method

.method static synthetic access$0(Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;)Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->isShow:Z

    return v0
.end method

.method static synthetic access$10(Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->strategyViewYes:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->strategy_1_press:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$12(Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->strategy_1:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$13(Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->discussView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$14(Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->discuss:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$15(Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->discuss_press:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$16(Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;)V
    .locals 0

    .prologue
    .line 376
    invoke-direct {p0}, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->showInstallAppDialog()V

    return-void
.end method

.method static synthetic access$17(Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->downloadView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$18(Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->app:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$19(Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->app_press:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$2(Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;)V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->show()V

    return-void
.end method

.method static synthetic access$3(Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;)V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->hide()V

    return-void
.end method

.method static synthetic access$4(Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;)Lcom/nflystudio/InfinitePrivateEye2/ControlerView;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->controlerView:Lcom/nflystudio/InfinitePrivateEye2/ControlerView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->controler:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$6(Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->controler_press:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$7(Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->strategyViewNo:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->strategy_2_press:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$9(Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->strategy_2:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private config()V
    .locals 10

    .prologue
    const/high16 v6, 0x42700000    # 60.0f

    const/16 v9, 0x10

    const/16 v8, 0xd

    const/4 v7, 0x0

    .line 107
    iget v5, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->density:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->width:I

    .line 108
    iget v5, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->density:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->height:I

    .line 109
    const/high16 v5, 0x41200000    # 10.0f

    iget v6, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->density:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->leftMargin:I

    .line 111
    iget-object v5, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->controlerView:Lcom/nflystudio/InfinitePrivateEye2/ControlerView;

    iget-object v6, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->controler:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Lcom/nflystudio/InfinitePrivateEye2/ControlerView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    iget-object v5, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->strategyViewNo:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->strategy_2_press:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    iget-object v5, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->strategyViewYes:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->strategy_1_press:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 114
    iget-object v5, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->downloadView:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->app:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    iget-object v5, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->discussView:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->discuss:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    iget-object v5, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->controlerView:Lcom/nflystudio/InfinitePrivateEye2/ControlerView;

    iget-object v6, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->controler:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Lcom/nflystudio/InfinitePrivateEye2/ControlerView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    iget-object v5, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->controlerView:Lcom/nflystudio/InfinitePrivateEye2/ControlerView;

    iget-object v6, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Lcom/nflystudio/InfinitePrivateEye2/ControlerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->width:I

    iget v6, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->height:I

    invoke-direct {v0, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 122
    .local v0, "lp1":Landroid/widget/LinearLayout$LayoutParams;
    iput v9, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 123
    const/high16 v5, 0x40a00000    # 5.0f

    iget v6, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->density:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 125
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->width:I

    iget v6, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->height:I

    invoke-direct {v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 126
    .local v1, "lp2":Landroid/widget/LinearLayout$LayoutParams;
    iget v5, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->leftMargin:I

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 127
    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 130
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->width:I

    iget v6, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->height:I

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 131
    .local v2, "lp3":Landroid/widget/LinearLayout$LayoutParams;
    iget v5, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->leftMargin:I

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 132
    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 137
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->width:I

    iget v6, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->height:I

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 138
    .local v4, "lp5":Landroid/widget/LinearLayout$LayoutParams;
    iget v5, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->leftMargin:I

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 139
    iput v9, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 144
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->width:I

    iget v6, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->height:I

    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 145
    .local v3, "lp4":Landroid/widget/LinearLayout$LayoutParams;
    iget v5, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->leftMargin:I

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 146
    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 148
    iget-object v5, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->controlerView:Lcom/nflystudio/InfinitePrivateEye2/ControlerView;

    invoke-virtual {v5, v0}, Lcom/nflystudio/InfinitePrivateEye2/ControlerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    iget-object v5, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->strategyViewNo:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    iget-object v5, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->strategyViewNo:Landroid/widget/ImageView;

    invoke-virtual {v5, v7, v8, v7, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 151
    iget-object v5, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->strategyViewYes:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    iget-object v5, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->strategyViewYes:Landroid/widget/ImageView;

    invoke-virtual {v5, v7, v8, v7, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 153
    iget-object v5, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->downloadView:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    iget-object v5, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->downloadView:Landroid/widget/ImageView;

    invoke-virtual {v5, v7, v8, v7, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 156
    iget-object v5, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->discussView:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    iget-object v5, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->discussView:Landroid/widget/ImageView;

    invoke-virtual {v5, v7, v8, v7, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 158
    iget-object v5, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v5}, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 159
    iget-object v5, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->windowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/high16 v6, 0x43af0000    # 350.0f

    iget v7, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->density:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 170
    return-void
.end method

.method private getDrawableByName(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 213
    iget-object v4, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 214
    .local v0, "am":Landroid/content/res/AssetManager;
    const/4 v3, 0x0

    .line 216
    .local v3, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 220
    :goto_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 221
    .local v1, "bd":Landroid/graphics/drawable/BitmapDrawable;
    return-object v1

    .line 217
    .end local v1    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    :catch_0
    move-exception v2

    .line 218
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private hide()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 173
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->windowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, 0x428c0000    # 70.0f

    iget v2, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 174
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 175
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->strategyViewNo:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->strategyViewYes:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->downloadView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->discussView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->isShow:Z

    .line 180
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 76
    new-instance v0, Lcom/nflystudio/InfinitePrivateEye2/ControlerView;

    iget-object v1, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/nflystudio/InfinitePrivateEye2/ControlerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->controlerView:Lcom/nflystudio/InfinitePrivateEye2/ControlerView;

    .line 77
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->strategyViewNo:Landroid/widget/ImageView;

    .line 78
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->strategyViewYes:Landroid/widget/ImageView;

    .line 79
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->downloadView:Landroid/widget/ImageView;

    .line 80
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->discussView:Landroid/widget/ImageView;

    .line 82
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->controlerView:Lcom/nflystudio/InfinitePrivateEye2/ControlerView;

    invoke-virtual {v0, p0}, Lcom/nflystudio/InfinitePrivateEye2/ControlerView;->addParent(Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;)V

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->setOrientation(I)V

    .line 85
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->controlerView:Lcom/nflystudio/InfinitePrivateEye2/ControlerView;

    invoke-virtual {p0, v0}, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->addView(Landroid/view/View;)V

    .line 86
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->strategyViewYes:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->addView(Landroid/view/View;)V

    .line 87
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->strategyViewNo:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->addView(Landroid/view/View;)V

    .line 88
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->discussView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->addView(Landroid/view/View;)V

    .line 89
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->downloadView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->addView(Landroid/view/View;)V

    .line 91
    invoke-direct {p0}, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->config()V

    .line 92
    return-void
.end method

.method private initRes()V
    .locals 1

    .prologue
    .line 198
    const-string v0, "controler.png"

    invoke-direct {p0, v0}, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->getDrawableByName(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->controler:Landroid/graphics/drawable/Drawable;

    .line 199
    const-string v0, "controler.png"

    invoke-direct {p0, v0}, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->getDrawableByName(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->controler_press:Landroid/graphics/drawable/Drawable;

    .line 200
    const-string v0, "background.png"

    invoke-direct {p0, v0}, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->getDrawableByName(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->background:Landroid/graphics/drawable/Drawable;

    .line 201
    const-string v0, "app_press.png"

    invoke-direct {p0, v0}, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->getDrawableByName(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->app:Landroid/graphics/drawable/Drawable;

    .line 202
    const-string v0, "app.png"

    invoke-direct {p0, v0}, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->getDrawableByName(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->app_press:Landroid/graphics/drawable/Drawable;

    .line 203
    const-string v0, "strategy_2.png"

    invoke-direct {p0, v0}, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->getDrawableByName(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->strategy_2:Landroid/graphics/drawable/Drawable;

    .line 204
    const-string v0, "strategy_1.png"

    invoke-direct {p0, v0}, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->getDrawableByName(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->strategy_1:Landroid/graphics/drawable/Drawable;

    .line 205
    const-string v0, "strategy_2_press.png"

    invoke-direct {p0, v0}, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->getDrawableByName(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->strategy_2_press:Landroid/graphics/drawable/Drawable;

    .line 206
    const-string v0, "strategy_1_press.png"

    invoke-direct {p0, v0}, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->getDrawableByName(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->strategy_1_press:Landroid/graphics/drawable/Drawable;

    .line 208
    const-string v0, "discuss_press.png"

    invoke-direct {p0, v0}, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->getDrawableByName(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->discuss_press:Landroid/graphics/drawable/Drawable;

    .line 209
    const-string v0, "discuss.png"

    invoke-direct {p0, v0}, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->getDrawableByName(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->discuss:Landroid/graphics/drawable/Drawable;

    .line 210
    return-void
.end method

.method private regListener()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->controlerView:Lcom/nflystudio/InfinitePrivateEye2/ControlerView;

    new-instance v1, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer$1;

    invoke-direct {v1, p0}, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer$1;-><init>(Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;)V

    invoke-virtual {v0, v1}, Lcom/nflystudio/InfinitePrivateEye2/ControlerView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->controlerView:Lcom/nflystudio/InfinitePrivateEye2/ControlerView;

    new-instance v1, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer$2;

    invoke-direct {v1, p0}, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer$2;-><init>(Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;)V

    invoke-virtual {v0, v1}, Lcom/nflystudio/InfinitePrivateEye2/ControlerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 258
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->strategyViewNo:Landroid/widget/ImageView;

    new-instance v1, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer$3;

    invoke-direct {v1, p0}, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer$3;-><init>(Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->strategyViewNo:Landroid/widget/ImageView;

    new-instance v1, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer$4;

    invoke-direct {v1, p0}, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer$4;-><init>(Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 287
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->strategyViewYes:Landroid/widget/ImageView;

    new-instance v1, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer$5;

    invoke-direct {v1, p0}, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer$5;-><init>(Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->strategyViewYes:Landroid/widget/ImageView;

    new-instance v1, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer$6;

    invoke-direct {v1, p0}, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer$6;-><init>(Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 317
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->discussView:Landroid/widget/ImageView;

    new-instance v1, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer$7;

    invoke-direct {v1, p0}, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer$7;-><init>(Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->discussView:Landroid/widget/ImageView;

    new-instance v1, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer$8;

    invoke-direct {v1, p0}, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer$8;-><init>(Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 350
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->downloadView:Landroid/widget/ImageView;

    new-instance v1, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer$9;

    invoke-direct {v1, p0}, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer$9;-><init>(Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->downloadView:Landroid/widget/ImageView;

    new-instance v1, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer$10;

    invoke-direct {v1, p0}, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer$10;-><init>(Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 373
    return-void
.end method

.method private show()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 184
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->windowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, 0x43af0000    # 350.0f

    iget v2, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 185
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->windowManagerParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 187
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->strategyViewNo:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->strategyViewYes:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->downloadView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->discussView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->isShow:Z

    .line 192
    return-void
.end method

.method private showInstallAppDialog()V
    .locals 3

    .prologue
    .line 377
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 378
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v1, "\u53e3\u888b\u5df4\u58eb\u662f\u9488\u5bf9\u79fb\u52a8\u7aef\u7528\u6237\u5f00\u53d1\u7684\u624b\u6e38\u5e73\u53f0\u8f6f\u4ef6\uff0c\u8fd9\u91cc\u6709\u6700\u5168\u7684\u624b\u6e38\u4e0b\u8f7d\u3001\u6700\u7cbe\u7684\u6c49\u5316\u6e38\u620f\u3001\u6700\u7a00\u6709\u7684VIP\u793c\u5305\u3001\u6700\u4e13\u4e1a\u7684\u653b\u7565\u8bc4\u6d4b\u3001\u6700\u65b0\u9c9c\u7684\u6e38\u620f\u8d44\u8baf\uff0c\u4eb2\u8fd8\u5728\u7b49\u4ec0\u4e48\uff0c\u9a6c\u4e0a\u5427~~ "

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 379
    const-string v1, "\u5b89\u88c5"

    new-instance v2, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer$11;

    invoke-direct {v2, p0}, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer$11;-><init>(Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 388
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 389
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 390
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 394
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 399
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->controlerView:Lcom/nflystudio/InfinitePrivateEye2/ControlerView;

    invoke-virtual {v0, p1}, Lcom/nflystudio/InfinitePrivateEye2/ControlerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->listener:Landroid/view/View$OnClickListener;

    .line 96
    return-void
.end method
