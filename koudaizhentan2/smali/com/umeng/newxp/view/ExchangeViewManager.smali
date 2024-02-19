.class public Lcom/umeng/newxp/view/ExchangeViewManager;
.super Ljava/lang/Object;
.source "ExchangeViewManager.java"


# instance fields
.field a:Lcom/umeng/newxp/view/f;

.field b:Lcom/umeng/newxp/view/aF;

.field c:Landroid/content/Context;

.field d:I

.field e:Lcom/umeng/newxp/controller/XpListenersCenter$EntryOnClickListener;

.field private f:Ljava/lang/String;

.field private g:Lcom/umeng/newxp/view/LargeGalleryConfig;

.field private h:Lcom/umeng/newxp/view/FloatDialogConfig;

.field private i:Lcom/umeng/newxp/view/GridTemplateConfig;

.field private j:Lcom/umeng/newxp/controller/ExchangeDataService;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/view/View;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/ImageView;

.field public predata:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-direct {v0}, Lcom/umeng/newxp/controller/ExchangeDataService;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/umeng/newxp/view/ExchangeViewManager;-><init>(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-class v0, Lcom/umeng/newxp/view/ExchangeViewManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->f:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->a:Lcom/umeng/newxp/view/f;

    .line 54
    iput-object v1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->b:Lcom/umeng/newxp/view/aF;

    .line 55
    iput-object v1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->g:Lcom/umeng/newxp/view/LargeGalleryConfig;

    .line 56
    iput-object v1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->h:Lcom/umeng/newxp/view/FloatDialogConfig;

    .line 57
    iput-object v1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->i:Lcom/umeng/newxp/view/GridTemplateConfig;

    .line 73
    iput-object p1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    .line 74
    if-nez p2, :cond_0

    .line 75
    new-instance v0, Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-direct {v0}, Lcom/umeng/newxp/controller/ExchangeDataService;-><init>()V

    iput-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->j:Lcom/umeng/newxp/controller/ExchangeDataService;

    .line 79
    :goto_0
    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->j:Lcom/umeng/newxp/controller/ExchangeDataService;

    const/4 v1, 0x7

    iput v1, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->layoutType:I

    .line 80
    return-void

    .line 77
    :cond_0
    iput-object p2, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->j:Lcom/umeng/newxp/controller/ExchangeDataService;

    goto :goto_0
.end method

.method static synthetic a(Lcom/umeng/newxp/view/ExchangeViewManager;)Lcom/umeng/newxp/controller/ExchangeDataService;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->j:Lcom/umeng/newxp/controller/ExchangeDataService;

    return-object v0
.end method

.method private a(Lcom/umeng/newxp/Promoter;Lcom/umeng/newxp/controller/XpListenersCenter$FloatDialogListener;)V
    .locals 3

    .prologue
    .line 575
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 576
    iget-object v1, p1, Lcom/umeng/newxp/Promoter;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 577
    const-string v1, "\u786e\u8ba4"

    new-instance v2, Lcom/umeng/newxp/view/O;

    invoke-direct {v2, p0, p1, p2}, Lcom/umeng/newxp/view/O;-><init>(Lcom/umeng/newxp/view/ExchangeViewManager;Lcom/umeng/newxp/Promoter;Lcom/umeng/newxp/controller/XpListenersCenter$FloatDialogListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 599
    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/umeng/newxp/view/F;

    invoke-direct {v2, p0}, Lcom/umeng/newxp/view/F;-><init>(Lcom/umeng/newxp/view/ExchangeViewManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 608
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 610
    new-instance v0, Lcom/umeng/newxp/net/e$a;

    iget-object v1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/umeng/newxp/net/e$a;-><init>(Landroid/content/Context;)V

    .line 611
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->b(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->d(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 612
    iget-object v1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->j:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-virtual {v1}, Lcom/umeng/newxp/controller/ExchangeDataService;->getTimeConsuming()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->d(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 613
    iget v1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->d:I

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->c(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/umeng/newxp/Promoter;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a([Lcom/umeng/newxp/Promoter;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 614
    iget-object v1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->j:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v1, v2}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->b(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->j:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v1, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 615
    iget-object v1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->j:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v1, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->c(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/newxp/net/e$a;->a()Lcom/umeng/newxp/net/e;

    move-result-object v0

    .line 616
    new-instance v1, Lcom/umeng/newxp/net/XpReportClient;

    iget-object v2, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/umeng/newxp/net/XpReportClient;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/umeng/newxp/net/XpReportClient;->sendAsync(Lcom/umeng/common/net/o;Lcom/umeng/common/net/n$a;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    :goto_0
    return-void

    .line 618
    :catch_0
    move-exception v0

    .line 619
    iget-object v1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->f:Ljava/lang/String;

    const-string v2, "Can`t show dialog "

    invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/umeng/newxp/view/ExchangeViewManager;Lcom/umeng/newxp/Promoter;Lcom/umeng/newxp/controller/XpListenersCenter$FloatDialogListener;)V
    .locals 0

    .prologue
    .line 574
    invoke-direct {p0, p1, p2}, Lcom/umeng/newxp/view/ExchangeViewManager;->a(Lcom/umeng/newxp/Promoter;Lcom/umeng/newxp/controller/XpListenersCenter$FloatDialogListener;)V

    return-void
.end method

.method private a(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 246
    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    const/16 v1, 0xc

    if-ne p1, v1, :cond_1

    .line 252
    :cond_0
    :goto_0
    return v0

    .line 249
    :cond_1
    iget-object v1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/newxp/a/e;->h(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 250
    sget-object v2, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v2, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    invoke-static {v2, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 252
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/umeng/newxp/view/ExchangeViewManager;)Lcom/umeng/newxp/view/GridTemplateConfig;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->i:Lcom/umeng/newxp/view/GridTemplateConfig;

    return-object v0
.end method

.method static synthetic c(Lcom/umeng/newxp/view/ExchangeViewManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/umeng/newxp/view/ExchangeViewManager;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->k:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic e(Lcom/umeng/newxp/view/ExchangeViewManager;)Landroid/view/View;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->l:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Lcom/umeng/newxp/view/ExchangeViewManager;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->n:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic g(Lcom/umeng/newxp/view/ExchangeViewManager;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->m:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public varargs addView(ILandroid/view/View;[Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 266
    invoke-direct {p0, p1}, Lcom/umeng/newxp/view/ExchangeViewManager;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->j:Lcom/umeng/newxp/controller/ExchangeDataService;

    iput p1, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->layoutType:I

    .line 271
    if-nez p2, :cond_2

    .line 272
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 274
    :sswitch_0
    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->j:Lcom/umeng/newxp/controller/ExchangeDataService;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->i:Lcom/umeng/newxp/view/GridTemplateConfig;

    invoke-static {v0, v1, v2, v3}, Lcom/umeng/newxp/view/aw;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;Ljava/util/List;Lcom/umeng/newxp/view/GridTemplateConfig;)V

    goto :goto_0

    .line 277
    :sswitch_1
    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->j:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v0, v1}, Lcom/umeng/newxp/common/g;->b(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v0

    .line 278
    if-eqz v0, :cond_0

    .line 279
    new-instance v1, Lcom/umeng/newxp/view/i;

    iget-object v2, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/umeng/newxp/view/i;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/umeng/newxp/view/i;->show()V

    goto :goto_0

    .line 285
    :cond_2
    instance-of v0, p2, Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->k:Landroid/widget/ImageView;

    .line 308
    :cond_3
    :goto_1
    new-instance v0, Lcom/umeng/newxp/view/H;

    invoke-direct {v0, p0}, Lcom/umeng/newxp/view/H;-><init>(Lcom/umeng/newxp/view/ExchangeViewManager;)V

    .line 342
    new-instance v1, Lcom/umeng/newxp/view/I;

    invoke-direct {v1, p0}, Lcom/umeng/newxp/view/I;-><init>(Lcom/umeng/newxp/view/ExchangeViewManager;)V

    .line 368
    iput p1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->d:I

    .line 369
    sparse-switch p1, :sswitch_data_1

    goto :goto_0

    .line 371
    :sswitch_2
    array-length v0, p3

    if-nez v0, :cond_5

    .line 372
    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->k:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 373
    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->k:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->j:Lcom/umeng/newxp/controller/ExchangeDataService;

    .line 374
    new-instance v4, Lcom/umeng/newxp/view/J;

    invoke-direct {v4, p0, v1}, Lcom/umeng/newxp/view/J;-><init>(Lcom/umeng/newxp/view/ExchangeViewManager;Lcom/umeng/newxp/controller/XpListenersCenter$NTipsChangedListener;)V

    .line 373
    invoke-static {v0, v2, v3, v4}, Lcom/umeng/newxp/common/g;->a(Landroid/widget/ImageView;Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;Lcom/umeng/newxp/common/g$a;)V

    goto :goto_0

    .line 286
    :cond_4
    instance-of v0, p2, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    .line 287
    check-cast p2, Landroid/widget/RelativeLayout;

    .line 288
    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v0

    const-string v1, "imageview"

    invoke-virtual {v0, v1}, Lcom/umeng/common/c;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->k:Landroid/widget/ImageView;

    .line 289
    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v0

    const-string v1, "newtip_area"

    invoke-virtual {v0, v1}, Lcom/umeng/common/c;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->l:Landroid/view/View;

    .line 290
    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v0

    const-string v1, "newtip_tv"

    invoke-virtual {v0, v1}, Lcom/umeng/common/c;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->m:Landroid/widget/TextView;

    .line 291
    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v0

    const-string v1, "newtip_iv"

    invoke-virtual {v0, v1}, Lcom/umeng/common/c;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->n:Landroid/widget/ImageView;

    goto :goto_1

    .line 410
    :cond_5
    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->k:Landroid/widget/ImageView;

    aget-object v2, p3, v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 411
    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->j:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v2, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    .line 412
    const/4 v3, 0x7

    .line 411
    invoke-virtual {v0, v2, v1, v3}, Lcom/umeng/newxp/controller/ExchangeDataService;->preloadData(Landroid/content/Context;Lcom/umeng/newxp/controller/XpListenersCenter$NTipsChangedListener;I)V

    .line 413
    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->k:Landroid/widget/ImageView;

    new-instance v1, Lcom/umeng/newxp/view/L;

    invoke-direct {v1, p0}, Lcom/umeng/newxp/view/L;-><init>(Lcom/umeng/newxp/view/ExchangeViewManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 424
    :sswitch_3
    array-length v1, p3

    if-nez v1, :cond_6

    .line 425
    iget-object v1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->k:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->j:Lcom/umeng/newxp/controller/ExchangeDataService;

    .line 426
    new-instance v4, Lcom/umeng/newxp/view/M;

    invoke-direct {v4, p0, v0}, Lcom/umeng/newxp/view/M;-><init>(Lcom/umeng/newxp/view/ExchangeViewManager;Landroid/view/View$OnClickListener;)V

    .line 425
    invoke-static {v1, v2, v3, v4}, Lcom/umeng/newxp/common/g;->a(Landroid/widget/ImageView;Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;Lcom/umeng/newxp/common/g$a;)V

    goto/16 :goto_0

    .line 443
    :cond_6
    iget-object v1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->k:Landroid/widget/ImageView;

    aget-object v2, p3, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 444
    iget-object v1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->k:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 272
    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x1f5 -> :sswitch_1
    .end sparse-switch

    .line 369
    :sswitch_data_1
    .sparse-switch
        0x7 -> :sswitch_2
        0x1f5 -> :sswitch_3
    .end sparse-switch
.end method

.method public varargs addView(Landroid/view/ViewGroup;I[Ljava/lang/String;)V
    .locals 6

    .prologue
    const/16 v2, 0xb

    const/4 v1, 0x1

    .line 94
    invoke-direct {p0, p2}, Lcom/umeng/newxp/view/ExchangeViewManager;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->j:Lcom/umeng/newxp/controller/ExchangeDataService;

    iput p2, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->layoutType:I

    .line 98
    iput p2, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->d:I

    .line 100
    if-eqz p3, :cond_2

    :try_start_0
    array-length v0, p3

    if-lez v0, :cond_2

    .line 101
    array-length v0, p3

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    aget-object v0, p3, v0

    sput-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->CHANNEL:Ljava/lang/String;

    .line 104
    :cond_2
    sget-boolean v0, Lcom/umeng/newxp/common/ExchangeConstants;->ONLY_CHINESE:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/common/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 105
    sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    const-string v1, "English os can not show ads"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 240
    :catch_0
    move-exception v0

    .line 241
    sget-object v1, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "add view error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 108
    :cond_3
    :try_start_1
    iget v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->d:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4

    .line 109
    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->j:Lcom/umeng/newxp/controller/ExchangeDataService;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->i:Lcom/umeng/newxp/view/GridTemplateConfig;

    invoke-static {v0, v1, v2, v3}, Lcom/umeng/newxp/view/aw;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;Ljava/util/List;Lcom/umeng/newxp/view/GridTemplateConfig;)V

    goto :goto_0

    .line 113
    :cond_4
    iget v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->d:I

    if-ne v0, v2, :cond_5

    .line 114
    new-instance v0, Lcom/umeng/newxp/view/D;

    invoke-direct {v0, p0, p1}, Lcom/umeng/newxp/view/D;-><init>(Lcom/umeng/newxp/view/ExchangeViewManager;Landroid/view/ViewGroup;)V

    .line 142
    iget-object v1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->j:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v2, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/umeng/newxp/controller/ExchangeDataService;->requestDataAsyn(Landroid/content/Context;Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;)V

    goto :goto_0

    .line 146
    :cond_5
    iget v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->d:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_6

    .line 147
    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->j:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v0, v1}, Lcom/umeng/newxp/common/g;->b(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v0

    .line 148
    if-eqz v0, :cond_0

    .line 149
    new-instance v1, Lcom/umeng/newxp/view/i;

    iget-object v2, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/umeng/newxp/view/i;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/umeng/newxp/view/i;->show()V

    goto :goto_0

    .line 153
    :cond_6
    iget v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->d:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_7

    .line 154
    new-instance v0, Lcom/umeng/newxp/view/GridTemplate;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->j:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v3, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    iget-object v4, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->i:Lcom/umeng/newxp/view/GridTemplateConfig;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/umeng/newxp/view/GridTemplate;-><init>(Ljava/util/List;Lcom/umeng/newxp/controller/ExchangeDataService;Landroid/content/Context;Lcom/umeng/newxp/view/GridTemplateConfig;)V

    .line 155
    iget-object v0, v0, Lcom/umeng/newxp/view/GridTemplate;->contentView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 159
    :cond_7
    iget v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->d:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_f

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 161
    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->h:Lcom/umeng/newxp/view/FloatDialogConfig;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->h:Lcom/umeng/newxp/view/FloatDialogConfig;

    move-object v1, v0

    .line 163
    :goto_1
    invoke-virtual {v1, v2, v3}, Lcom/umeng/newxp/view/FloatDialogConfig;->setStartTime(J)Lcom/umeng/newxp/view/FloatDialogConfig;

    .line 165
    invoke-virtual {v1}, Lcom/umeng/newxp/view/FloatDialogConfig;->getListener()Lcom/umeng/newxp/controller/XpListenersCenter$FloatDialogListener;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v1}, Lcom/umeng/newxp/view/FloatDialogConfig;->getListener()Lcom/umeng/newxp/controller/XpListenersCenter$FloatDialogListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/newxp/controller/XpListenersCenter$FloatDialogListener;->onStart()V

    .line 166
    :cond_8
    new-instance v0, Lcom/umeng/newxp/view/G;

    invoke-direct {v0, p0, v1}, Lcom/umeng/newxp/view/G;-><init>(Lcom/umeng/newxp/view/ExchangeViewManager;Lcom/umeng/newxp/view/FloatDialogConfig;)V

    .line 187
    iget-object v2, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->j:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v2, v2, Lcom/umeng/newxp/controller/ExchangeDataService;->preloadData:Lcom/umeng/newxp/a;

    if-eqz v2, :cond_e

    .line 188
    iget-object v2, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->j:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v2, v2, Lcom/umeng/newxp/controller/ExchangeDataService;->preloadData:Lcom/umeng/newxp/a;

    iget-object v2, v2, Lcom/umeng/newxp/a;->a:Lcom/umeng/newxp/a$a;

    sget-object v3, Lcom/umeng/newxp/a$a;->a:Lcom/umeng/newxp/a$a;

    if-ne v2, v3, :cond_e

    .line 189
    iget-object v2, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->j:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v2, v2, Lcom/umeng/newxp/controller/ExchangeDataService;->preloadData:Lcom/umeng/newxp/a;

    invoke-virtual {v2}, Lcom/umeng/newxp/a;->b()Ljava/util/List;

    move-result-object v2

    .line 190
    if-nez v2, :cond_a

    .line 191
    iget-object v1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->j:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v2, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/umeng/newxp/controller/ExchangeDataService;->requestDataAsyn(Landroid/content/Context;Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;)V

    goto/16 :goto_0

    .line 162
    :cond_9
    new-instance v0, Lcom/umeng/newxp/view/FloatDialogConfig;

    invoke-direct {v0}, Lcom/umeng/newxp/view/FloatDialogConfig;-><init>()V

    move-object v1, v0

    goto :goto_1

    .line 193
    :cond_a
    invoke-virtual {v1}, Lcom/umeng/newxp/view/FloatDialogConfig;->getListener()Lcom/umeng/newxp/controller/XpListenersCenter$FloatDialogListener;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v1}, Lcom/umeng/newxp/view/FloatDialogConfig;->getListener()Lcom/umeng/newxp/controller/XpListenersCenter$FloatDialogListener;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/umeng/newxp/controller/XpListenersCenter$FloatDialogListener;->onPrepared(I)V

    .line 195
    :cond_b
    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->j:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v0, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->opensize:Ljava/lang/String;

    .line 197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 198
    if-eqz v2, :cond_c

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_c

    .line 199
    const-string v3, "0.04"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 200
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/Promoter;

    .line 201
    invoke-virtual {v1}, Lcom/umeng/newxp/view/FloatDialogConfig;->getListener()Lcom/umeng/newxp/controller/XpListenersCenter$FloatDialogListener;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/umeng/newxp/view/ExchangeViewManager;->a(Lcom/umeng/newxp/Promoter;Lcom/umeng/newxp/controller/XpListenersCenter$FloatDialogListener;)V

    goto/16 :goto_0

    .line 204
    :cond_c
    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->j:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v0, v3, v1, v2}, Lcom/umeng/newxp/view/W;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;Lcom/umeng/newxp/view/FloatDialogConfig;Ljava/util/List;)V

    goto/16 :goto_0

    .line 206
    :cond_d
    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->f:Ljava/lang/String;

    const-string v1, "Unshow the suspended window. opensize is null"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 210
    :cond_e
    iget-object v1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->j:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v2, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/umeng/newxp/controller/ExchangeDataService;->requestDataAsyn(Landroid/content/Context;Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;)V

    goto/16 :goto_0

    .line 216
    :cond_f
    iget v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->d:I

    sparse-switch v0, :sswitch_data_0

    .line 235
    sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    .line 236
    const-string v1, "Paramter type  %1$s cannot be handled. It may be deprecated."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 235
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 218
    :sswitch_0
    new-instance v0, Lcom/umeng/newxp/view/f;

    iget-object v1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    iget v2, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->d:I

    iget-object v3, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->j:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/umeng/newxp/view/f;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;ILcom/umeng/newxp/controller/ExchangeDataService;)V

    iput-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->a:Lcom/umeng/newxp/view/f;

    goto/16 :goto_0

    .line 223
    :sswitch_1
    new-instance v0, Lcom/umeng/newxp/view/aF;

    iget-object v1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    .line 224
    const/16 v2, 0xb

    iget-object v3, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->j:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/umeng/newxp/view/aF;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;ILcom/umeng/newxp/controller/ExchangeDataService;)V

    .line 223
    iput-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->b:Lcom/umeng/newxp/view/aF;

    goto/16 :goto_0

    .line 227
    :sswitch_2
    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->g:Lcom/umeng/newxp/view/LargeGalleryConfig;

    if-nez v0, :cond_10

    new-instance v0, Lcom/umeng/newxp/view/LargeGalleryConfig;

    invoke-direct {v0}, Lcom/umeng/newxp/view/LargeGalleryConfig;-><init>()V

    .line 228
    :goto_2
    new-instance v1, Lcom/umeng/newxp/view/an;

    iget-object v2, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->j:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-direct {v1, v2, p1, v3, v0}, Lcom/umeng/newxp/view/an;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/umeng/newxp/controller/ExchangeDataService;Lcom/umeng/newxp/view/LargeGalleryConfig;)V

    goto/16 :goto_0

    .line 227
    :cond_10
    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->g:Lcom/umeng/newxp/view/LargeGalleryConfig;

    goto :goto_2

    .line 231
    :sswitch_3
    const/4 v4, 0x0

    .line 232
    new-instance v0, Lcom/umeng/newxp/view/ae;

    iget-object v1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    iget v3, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->d:I

    iget-object v5, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->j:Lcom/umeng/newxp/controller/ExchangeDataService;

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/umeng/newxp/view/ae;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;IILcom/umeng/newxp/controller/ExchangeDataService;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 216
    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xb -> :sswitch_1
        0xd -> :sswitch_3
        0x2b -> :sswitch_2
    .end sparse-switch
.end method

.method public addView(Landroid/view/ViewGroup;Landroid/widget/ListView;)V
    .locals 1

    .prologue
    .line 520
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/umeng/newxp/view/ExchangeViewManager;->addView(Landroid/view/ViewGroup;Landroid/widget/ListView;Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;)V

    .line 521
    return-void
.end method

.method public addView(Landroid/view/ViewGroup;Landroid/widget/ListView;Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;)V
    .locals 8

    .prologue
    const/16 v1, 0x8

    .line 504
    invoke-direct {p0, v1}, Lcom/umeng/newxp/view/ExchangeViewManager;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    :goto_0
    return-void

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->j:Lcom/umeng/newxp/controller/ExchangeDataService;

    iput v1, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->layoutType:I

    .line 508
    new-instance v0, Lcom/umeng/newxp/view/EmbededContainer;

    iget-object v1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    iget-object v4, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->j:Lcom/umeng/newxp/controller/ExchangeDataService;

    .line 509
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->i:Lcom/umeng/newxp/view/GridTemplateConfig;

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    .line 508
    invoke-direct/range {v0 .. v7}, Lcom/umeng/newxp/view/EmbededContainer;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/ListView;Lcom/umeng/newxp/controller/ExchangeDataService;Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;Ljava/util/List;Lcom/umeng/newxp/view/GridTemplateConfig;)V

    goto :goto_0
.end method

.method public hideBanner()V
    .locals 2

    .prologue
    .line 455
    :try_start_0
    iget v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->d:I

    sparse-switch v0, :sswitch_data_0

    .line 465
    sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    const-string v1, "paramter type cannot be handled"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 457
    :sswitch_0
    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->a:Lcom/umeng/newxp/view/f;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->a:Lcom/umeng/newxp/view/f;

    iget-object v0, v0, Lcom/umeng/newxp/view/f;->b:Landroid/view/View;

    invoke-static {v0}, Lcom/umeng/newxp/common/a;->a(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 468
    :catch_0
    move-exception v0

    .line 469
    sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    const-string v1, "hideBanner error"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 461
    :sswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->b:Lcom/umeng/newxp/view/aF;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->b:Lcom/umeng/newxp/view/aF;

    iget-object v0, v0, Lcom/umeng/newxp/view/aF;->b:Landroid/view/View;

    invoke-static {v0}, Lcom/umeng/newxp/common/a;->a(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 455
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xb -> :sswitch_1
    .end sparse-switch
.end method

.method public hideBanner(I)V
    .locals 4

    .prologue
    .line 474
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/umeng/newxp/view/N;

    invoke-direct {v1, p0}, Lcom/umeng/newxp/view/N;-><init>(Lcom/umeng/newxp/view/ExchangeViewManager;)V

    .line 478
    mul-int/lit16 v2, p1, 0x3e8

    int-to-long v2, v2

    .line 474
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 479
    return-void
.end method

.method public onOrientationChanaged(I)V
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->j:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget v0, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->layoutType:I

    packed-switch v0, :pswitch_data_0

    .line 572
    :goto_0
    return-void

    .line 566
    :pswitch_0
    invoke-static {p1}, Lcom/umeng/newxp/view/W;->a(I)V

    goto :goto_0

    .line 564
    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
    .end packed-switch
.end method

.method public setBannerOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->a:Lcom/umeng/newxp/view/f;

    if-eqz v0, :cond_1

    .line 525
    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->a:Lcom/umeng/newxp/view/f;

    invoke-virtual {v0, p1}, Lcom/umeng/newxp/view/f;->a(Landroid/view/View$OnClickListener;)V

    .line 527
    :cond_0
    :goto_0
    return-void

    .line 526
    :cond_1
    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->b:Lcom/umeng/newxp/view/aF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->b:Lcom/umeng/newxp/view/aF;

    invoke-virtual {v0, p1}, Lcom/umeng/newxp/view/aF;->a(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setEntryOnClickListener(Lcom/umeng/newxp/controller/XpListenersCenter$EntryOnClickListener;)Lcom/umeng/newxp/view/ExchangeViewManager;
    .locals 2

    .prologue
    .line 552
    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->e:Lcom/umeng/newxp/controller/XpListenersCenter$EntryOnClickListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->e:Lcom/umeng/newxp/controller/XpListenersCenter$EntryOnClickListener;

    if-eq v0, p1, :cond_1

    .line 553
    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->f:Ljava/lang/String;

    const-string v1, "EntryOnClickListener is exist, and make old listener invalid..."

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    iput-object p1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->e:Lcom/umeng/newxp/controller/XpListenersCenter$EntryOnClickListener;

    .line 560
    :cond_0
    :goto_0
    return-object p0

    .line 555
    :cond_1
    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->e:Lcom/umeng/newxp/controller/XpListenersCenter$EntryOnClickListener;

    if-nez v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->f:Ljava/lang/String;

    const-string v1, "EntryOnClickListener set up..."

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    iput-object p1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->e:Lcom/umeng/newxp/controller/XpListenersCenter$EntryOnClickListener;

    goto :goto_0
.end method

.method public setFloatDialogConfig(Lcom/umeng/newxp/view/FloatDialogConfig;)V
    .locals 0

    .prologue
    .line 534
    iput-object p1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->h:Lcom/umeng/newxp/view/FloatDialogConfig;

    .line 535
    return-void
.end method

.method public setGridTemplateConfig(Lcom/umeng/newxp/view/GridTemplateConfig;)V
    .locals 0

    .prologue
    .line 542
    iput-object p1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->i:Lcom/umeng/newxp/view/GridTemplateConfig;

    .line 543
    return-void
.end method

.method public setLargeGalleryConfig(Lcom/umeng/newxp/view/LargeGalleryConfig;)V
    .locals 0

    .prologue
    .line 538
    iput-object p1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->g:Lcom/umeng/newxp/view/LargeGalleryConfig;

    .line 539
    return-void
.end method

.method public setLoopInterval(I)V
    .locals 1

    .prologue
    .line 488
    const/16 v0, 0xbb8

    if-le p1, v0, :cond_0

    .line 489
    sput p1, Lcom/umeng/newxp/common/ExchangeConstants;->REFRESH_INTERVAL:I

    .line 490
    const/4 v0, 0x1

    sput-boolean v0, Lcom/umeng/newxp/common/ExchangeConstants;->IGNORE_SERVER_INTERVAL:Z

    .line 492
    :cond_0
    return-void
.end method

.method public setReportListener(Lcom/umeng/newxp/controller/XpListenersCenter$ReportListener;)V
    .locals 0

    .prologue
    .line 530
    invoke-static {p1}, Lcom/umeng/newxp/net/XpReportClient;->registerReportListener(Lcom/umeng/newxp/controller/XpListenersCenter$ReportListener;)V

    .line 531
    return-void
.end method
