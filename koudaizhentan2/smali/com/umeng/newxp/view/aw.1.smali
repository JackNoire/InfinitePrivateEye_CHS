.class public Lcom/umeng/newxp/view/aw;
.super Landroid/app/Dialog;
.source "ListDialog.java"


# static fields
.field private static n:Lcom/umeng/newxp/view/aw;


# instance fields
.field public a:Lcom/umeng/newxp/view/aI;

.field private b:Landroid/content/Context;

.field private c:Lcom/umeng/newxp/controller/ExchangeDataService;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/view/ViewGroup;

.field private f:Z

.field private g:Landroid/widget/RelativeLayout;

.field private h:Landroid/widget/RelativeLayout;

.field private i:Landroid/view/animation/Animation;

.field private j:Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;

.field private k:Lcom/umeng/newxp/view/GridTemplate;

.field private l:Lcom/umeng/newxp/view/GridTemplateConfig;

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/newxp/view/aw;->n:Lcom/umeng/newxp/view/aw;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 63
    .line 65
    sget-boolean v0, Lcom/umeng/newxp/common/ExchangeConstants;->full_screen:Z

    if-eqz v0, :cond_0

    const v0, 0x1030011

    .line 66
    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 44
    iput-object v1, p0, Lcom/umeng/newxp/view/aw;->c:Lcom/umeng/newxp/controller/ExchangeDataService;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/newxp/view/aw;->f:Z

    .line 51
    iput-object v1, p0, Lcom/umeng/newxp/view/aw;->a:Lcom/umeng/newxp/view/aI;

    .line 55
    new-instance v0, Lcom/umeng/newxp/view/GridTemplateConfig;

    invoke-direct {v0}, Lcom/umeng/newxp/view/GridTemplateConfig;-><init>()V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/view/GridTemplateConfig;->setMaxPsize(I)Lcom/umeng/newxp/view/GridTemplateConfig;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/view/GridTemplateConfig;->setNumColumns(I)Lcom/umeng/newxp/view/GridTemplateConfig;

    move-result-object v0

    .line 56
    invoke-virtual {v0, v3}, Lcom/umeng/newxp/view/GridTemplateConfig;->setPaging(Z)Lcom/umeng/newxp/view/GridTemplateConfig;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/umeng/newxp/view/GridTemplateConfig;->setPointer(Z)Lcom/umeng/newxp/view/GridTemplateConfig;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/view/GridTemplateConfig;->setVerticalSpacing(I)Lcom/umeng/newxp/view/GridTemplateConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/newxp/view/aw;->l:Lcom/umeng/newxp/view/GridTemplateConfig;

    .line 58
    iput v2, p0, Lcom/umeng/newxp/view/aw;->m:I

    .line 67
    invoke-virtual {p0}, Lcom/umeng/newxp/view/aw;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 68
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 69
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 70
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 71
    invoke-virtual {p0}, Lcom/umeng/newxp/view/aw;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 73
    invoke-direct {p0, p1}, Lcom/umeng/newxp/view/aw;->a(Landroid/content/Context;)V

    .line 75
    new-instance v0, Lcom/umeng/newxp/view/ax;

    invoke-direct {v0, p0}, Lcom/umeng/newxp/view/ax;-><init>(Lcom/umeng/newxp/view/aw;)V

    iput-object v0, p0, Lcom/umeng/newxp/view/aw;->j:Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;

    .line 89
    return-void

    .line 66
    :cond_0
    const v0, 0x1030010

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 123
    iput-object p1, p0, Lcom/umeng/newxp/view/aw;->b:Landroid/content/Context;

    .line 124
    iget-object v0, p0, Lcom/umeng/newxp/view/aw;->b:Landroid/content/Context;

    .line 125
    iget-object v1, p0, Lcom/umeng/newxp/view/aw;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/newxp/a/d;->l(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    .line 124
    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/umeng/newxp/view/aw;->g:Landroid/widget/RelativeLayout;

    .line 127
    invoke-virtual {p0}, Lcom/umeng/newxp/view/aw;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/newxp/view/aw;->g:Landroid/widget/RelativeLayout;

    .line 128
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 127
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/aw;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/umeng/newxp/view/aw;->e:Landroid/view/ViewGroup;

    .line 132
    new-instance v0, Lcom/umeng/newxp/view/aI;

    iget-object v1, p0, Lcom/umeng/newxp/view/aw;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/newxp/view/aw;->g:Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1, v2}, Lcom/umeng/newxp/view/aI;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/umeng/newxp/view/aw;->a:Lcom/umeng/newxp/view/aI;

    .line 134
    iget-object v0, p0, Lcom/umeng/newxp/view/aw;->a:Lcom/umeng/newxp/view/aI;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/aI;->b()V

    .line 137
    iget-object v0, p0, Lcom/umeng/newxp/view/aw;->g:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/umeng/newxp/view/aw;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v1

    .line 138
    const-string v2, "umeng_xp_template_content"

    .line 137
    invoke-virtual {v1, v2}, Lcom/umeng/common/c;->c(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/umeng/newxp/view/aw;->h:Landroid/widget/RelativeLayout;

    .line 141
    iget-object v0, p0, Lcom/umeng/newxp/view/aw;->b:Landroid/content/Context;

    .line 142
    iget-object v1, p0, Lcom/umeng/newxp/view/aw;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/newxp/a/a;->a(Landroid/content/Context;)I

    move-result v1

    .line 141
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/newxp/view/aw;->i:Landroid/view/animation/Animation;

    .line 143
    iget-object v0, p0, Lcom/umeng/newxp/view/aw;->i:Landroid/view/animation/Animation;

    new-instance v1, Lcom/umeng/newxp/view/ay;

    invoke-direct {v1, p0}, Lcom/umeng/newxp/view/ay;-><init>(Lcom/umeng/newxp/view/aw;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 176
    iget-object v0, p0, Lcom/umeng/newxp/view/aw;->g:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/umeng/newxp/view/aw;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/newxp/a/c;->e(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/umeng/newxp/view/az;

    invoke-direct {v1, p0}, Lcom/umeng/newxp/view/az;-><init>(Lcom/umeng/newxp/view/aw;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/aw;->setCancelable(Z)V

    .line 184
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;Ljava/util/List;Lcom/umeng/newxp/view/GridTemplateConfig;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/umeng/newxp/controller/ExchangeDataService;",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;",
            "Lcom/umeng/newxp/view/GridTemplateConfig;",
            ")V"
        }
    .end annotation

    .prologue
    .line 227
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v0}, Lcom/umeng/common/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    invoke-static {p0}, Lcom/umeng/common/b;->n(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 232
    invoke-static {p0}, Lcom/umeng/common/a/c;->a(Landroid/content/Context;)I

    move-result v1

    .line 231
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 232
    const/4 v1, 0x1

    .line 229
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 253
    :goto_0
    return-void

    .line 237
    :cond_0
    sget-object v0, Lcom/umeng/newxp/view/aw;->n:Lcom/umeng/newxp/view/aw;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/umeng/newxp/view/aw;->n:Lcom/umeng/newxp/view/aw;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/aw;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    :try_start_0
    sget-object v0, Lcom/umeng/newxp/view/aw;->n:Lcom/umeng/newxp/view/aw;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/aw;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :cond_1
    :goto_1
    new-instance v0, Lcom/umeng/newxp/view/aw;

    invoke-direct {v0, p0}, Lcom/umeng/newxp/view/aw;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/umeng/newxp/view/aw;->n:Lcom/umeng/newxp/view/aw;

    .line 246
    if-eqz p3, :cond_2

    .line 247
    sget-object v0, Lcom/umeng/newxp/view/aw;->n:Lcom/umeng/newxp/view/aw;

    invoke-virtual {v0, p3}, Lcom/umeng/newxp/view/aw;->a(Lcom/umeng/newxp/view/GridTemplateConfig;)V

    .line 249
    :cond_2
    iget-object v0, p1, Lcom/umeng/newxp/controller/ExchangeDataService;->initializeListener:Lcom/umeng/newxp/controller/XpListenersCenter$InitializeListener;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/umeng/newxp/controller/ExchangeDataService;->initializeListener:Lcom/umeng/newxp/controller/XpListenersCenter$InitializeListener;

    .line 250
    iget v1, p1, Lcom/umeng/newxp/controller/ExchangeDataService;->layoutType:I

    invoke-interface {v0, v1}, Lcom/umeng/newxp/controller/XpListenersCenter$InitializeListener;->onStartRequestData(I)V

    .line 251
    :cond_3
    sget-object v0, Lcom/umeng/newxp/view/aw;->n:Lcom/umeng/newxp/view/aw;

    invoke-virtual {v0, p1, p2}, Lcom/umeng/newxp/view/aw;->a(Lcom/umeng/newxp/controller/ExchangeDataService;Ljava/util/List;)V

    .line 252
    sget-object v0, Lcom/umeng/newxp/view/aw;->n:Lcom/umeng/newxp/view/aw;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/aw;->show()V

    goto :goto_0

    .line 240
    :catch_0
    move-exception v0

    .line 241
    sget-object v1, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Reset list dialog..."

    invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/umeng/newxp/view/aw;)V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/umeng/newxp/view/aw;->b()V

    return-void
.end method

.method static synthetic a(Lcom/umeng/newxp/view/aw;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/umeng/newxp/view/aw;->d:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/umeng/newxp/view/aw;Z)V
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/umeng/newxp/view/aw;->f:Z

    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 296
    sget-object v0, Lcom/umeng/newxp/view/aw;->n:Lcom/umeng/newxp/view/aw;

    .line 297
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 299
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/umeng/newxp/view/aw;)I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/umeng/newxp/view/aw;->m:I

    return v0
.end method

.method private b()V
    .locals 5

    .prologue
    .line 188
    iget-object v0, p0, Lcom/umeng/newxp/view/aw;->c:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-virtual {v0}, Lcom/umeng/newxp/controller/ExchangeDataService;->getTemplate()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 195
    new-instance v0, Lcom/umeng/newxp/view/w;

    iget-object v1, p0, Lcom/umeng/newxp/view/aw;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/newxp/view/aw;->c:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v3, p0, Lcom/umeng/newxp/view/aw;->d:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/newxp/view/w;-><init>(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;Ljava/util/List;)V

    .line 196
    iget-object v0, v0, Lcom/umeng/newxp/view/w;->a:Landroid/view/View;

    .line 199
    :goto_0
    iget-object v1, p0, Lcom/umeng/newxp/view/aw;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 201
    return-void

    .line 190
    :pswitch_0
    new-instance v0, Lcom/umeng/newxp/view/GridTemplate;

    iget-object v1, p0, Lcom/umeng/newxp/view/aw;->d:Ljava/util/List;

    iget-object v2, p0, Lcom/umeng/newxp/view/aw;->c:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v3, p0, Lcom/umeng/newxp/view/aw;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/umeng/newxp/view/aw;->l:Lcom/umeng/newxp/view/GridTemplateConfig;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/umeng/newxp/view/GridTemplate;-><init>(Ljava/util/List;Lcom/umeng/newxp/controller/ExchangeDataService;Landroid/content/Context;Lcom/umeng/newxp/view/GridTemplateConfig;)V

    iput-object v0, p0, Lcom/umeng/newxp/view/aw;->k:Lcom/umeng/newxp/view/GridTemplate;

    .line 191
    iget-object v0, p0, Lcom/umeng/newxp/view/aw;->k:Lcom/umeng/newxp/view/GridTemplate;

    iget-object v0, v0, Lcom/umeng/newxp/view/GridTemplate;->contentView:Landroid/view/View;

    goto :goto_0

    .line 188
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic c(Lcom/umeng/newxp/view/aw;)Lcom/umeng/newxp/controller/ExchangeDataService;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/umeng/newxp/view/aw;->c:Lcom/umeng/newxp/controller/ExchangeDataService;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/umeng/newxp/view/aw;->b:Landroid/content/Context;

    .line 205
    iget-object v1, p0, Lcom/umeng/newxp/view/aw;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/newxp/a/a;->b(Landroid/content/Context;)I

    move-result v1

    .line 204
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 206
    new-instance v1, Lcom/umeng/newxp/view/aA;

    invoke-direct {v1, p0}, Lcom/umeng/newxp/view/aA;-><init>(Lcom/umeng/newxp/view/aw;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 222
    iget-object v1, p0, Lcom/umeng/newxp/view/aw;->e:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 223
    return-void
.end method

.method static synthetic d(Lcom/umeng/newxp/view/aw;)Ljava/util/List;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/umeng/newxp/view/aw;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/umeng/newxp/view/aw;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/umeng/newxp/view/aw;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lcom/umeng/newxp/view/aw;)Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/umeng/newxp/view/aw;->j:Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;

    return-object v0
.end method

.method static synthetic g(Lcom/umeng/newxp/view/aw;)V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/umeng/newxp/view/aw;->c()V

    return-void
.end method


# virtual methods
.method public a(Lcom/umeng/newxp/controller/ExchangeDataService;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/umeng/newxp/controller/ExchangeDataService;",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 92
    iput-object p1, p0, Lcom/umeng/newxp/view/aw;->c:Lcom/umeng/newxp/controller/ExchangeDataService;

    .line 93
    iget-object v0, p0, Lcom/umeng/newxp/view/aw;->c:Lcom/umeng/newxp/controller/ExchangeDataService;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-direct {v0}, Lcom/umeng/newxp/controller/ExchangeDataService;-><init>()V

    iput-object v0, p0, Lcom/umeng/newxp/view/aw;->c:Lcom/umeng/newxp/controller/ExchangeDataService;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/umeng/newxp/view/aw;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/umeng/newxp/view/aw;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 99
    :cond_1
    iput-object v1, p0, Lcom/umeng/newxp/view/aw;->d:Ljava/util/List;

    .line 101
    iget-boolean v0, p1, Lcom/umeng/newxp/controller/ExchangeDataService;->show_progress_wheel:Z

    if-nez v0, :cond_3

    .line 102
    iget-object v0, p0, Lcom/umeng/newxp/view/aw;->a:Lcom/umeng/newxp/view/aI;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/aI;->b()V

    .line 107
    :goto_0
    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p1, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 108
    iget-object v0, p0, Lcom/umeng/newxp/view/aw;->d:Ljava/util/List;

    invoke-static {v0, p2}, Lcom/umeng/newxp/common/g;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/newxp/view/aw;->d:Ljava/util/List;

    .line 109
    const/4 v0, 0x1

    iput v0, p0, Lcom/umeng/newxp/view/aw;->m:I

    .line 110
    invoke-direct {p0}, Lcom/umeng/newxp/view/aw;->b()V

    .line 111
    iget-object v0, p0, Lcom/umeng/newxp/view/aw;->a:Lcom/umeng/newxp/view/aI;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/aI;->b()V

    .line 120
    :cond_2
    :goto_1
    return-void

    .line 104
    :cond_3
    iget-object v0, p0, Lcom/umeng/newxp/view/aw;->a:Lcom/umeng/newxp/view/aI;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/aI;->a()V

    goto :goto_0

    .line 113
    :cond_4
    iput-object v1, p0, Lcom/umeng/newxp/view/aw;->d:Ljava/util/List;

    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/newxp/view/aw;->m:I

    .line 115
    iget-object v0, p0, Lcom/umeng/newxp/view/aw;->c:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v0, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/umeng/newxp/view/aw;->c:Lcom/umeng/newxp/controller/ExchangeDataService;

    const-string v1, ""

    iput-object v1, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;

    goto :goto_1
.end method

.method public a(Lcom/umeng/newxp/view/GridTemplateConfig;)V
    .locals 0

    .prologue
    .line 303
    if-eqz p1, :cond_0

    .line 304
    iput-object p1, p0, Lcom/umeng/newxp/view/aw;->l:Lcom/umeng/newxp/view/GridTemplateConfig;

    .line 305
    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 3

    .prologue
    .line 269
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 270
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/newxp/view/aw;->n:Lcom/umeng/newxp/view/aw;

    .line 272
    iget-object v0, p0, Lcom/umeng/newxp/view/aw;->c:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-boolean v0, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->broadcast:Z

    if-eqz v0, :cond_0

    .line 273
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/umeng/newxp/view/aw;->c:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v2, p0, Lcom/umeng/newxp/view/aw;->b:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/umeng/newxp/controller/ExchangeDataService;->getBroadCastAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 274
    const-string v1, "boradcast_action_key"

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 275
    iget-object v1, p0, Lcom/umeng/newxp/view/aw;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 277
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 281
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 292
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 283
    :pswitch_0
    invoke-virtual {p0}, Lcom/umeng/newxp/view/aw;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/umeng/newxp/view/aw;->f:Z

    if-nez v1, :cond_0

    .line 284
    monitor-enter p0

    .line 285
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/umeng/newxp/view/aw;->f:Z

    .line 286
    invoke-direct {p0}, Lcom/umeng/newxp/view/aw;->c()V

    .line 287
    monitor-exit p0

    goto :goto_0

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 290
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 281
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public show()V
    .locals 3

    .prologue
    .line 257
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 258
    iget-object v0, p0, Lcom/umeng/newxp/view/aw;->g:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/umeng/newxp/view/aw;->i:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 260
    iget-object v0, p0, Lcom/umeng/newxp/view/aw;->c:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-boolean v0, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->broadcast:Z

    if-eqz v0, :cond_0

    .line 261
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/umeng/newxp/view/aw;->c:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v2, p0, Lcom/umeng/newxp/view/aw;->b:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/umeng/newxp/controller/ExchangeDataService;->getBroadCastAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 262
    const-string v1, "boradcast_action_key"

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 263
    iget-object v1, p0, Lcom/umeng/newxp/view/aw;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 265
    :cond_0
    return-void
.end method
