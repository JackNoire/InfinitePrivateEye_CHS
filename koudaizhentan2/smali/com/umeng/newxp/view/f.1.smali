.class public Lcom/umeng/newxp/view/f;
.super Ljava/lang/Object;
.source "Banner.java"

# interfaces
.implements Lcom/umeng/newxp/controller/f$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/newxp/view/f$a;
    }
.end annotation


# static fields
.field private static c:Z

.field private static j:I


# instance fields
.field a:I

.field b:Landroid/view/View;

.field private d:Landroid/content/Context;

.field private e:Landroid/view/ViewGroup;

.field private f:Lcom/umeng/newxp/controller/ExchangeDataService;

.field private g:Lcom/umeng/newxp/controller/a;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/widget/ViewSwitcher;

.field private k:I

.field private l:Lcom/umeng/newxp/controller/a$a;

.field private m:Lcom/umeng/newxp/controller/a$a;

.field private n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/umeng/newxp/view/f$a;",
            ">;"
        }
    .end annotation
.end field

.field private o:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    sput-boolean v0, Lcom/umeng/newxp/view/f;->c:Z

    .line 68
    const/16 v0, 0x320

    sput v0, Lcom/umeng/newxp/view/f;->j:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;ILcom/umeng/newxp/controller/ExchangeDataService;)V
    .locals 3

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/newxp/view/f;->k:I

    .line 81
    iput-object p1, p0, Lcom/umeng/newxp/view/f;->d:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/umeng/newxp/view/f;->e:Landroid/view/ViewGroup;

    .line 83
    iput p3, p0, Lcom/umeng/newxp/view/f;->a:I

    .line 85
    sget-boolean v0, Lcom/umeng/newxp/view/f;->c:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/umeng/newxp/view/f;->d()V

    .line 87
    :cond_0
    iput-object p4, p0, Lcom/umeng/newxp/view/f;->f:Lcom/umeng/newxp/controller/ExchangeDataService;

    .line 89
    new-instance v0, Lcom/umeng/newxp/view/g;

    invoke-direct {v0, p0}, Lcom/umeng/newxp/view/g;-><init>(Lcom/umeng/newxp/view/f;)V

    .line 103
    iget-object v1, p4, Lcom/umeng/newxp/controller/ExchangeDataService;->initializeListener:Lcom/umeng/newxp/controller/XpListenersCenter$InitializeListener;

    if-eqz v1, :cond_1

    iget-object v1, p4, Lcom/umeng/newxp/controller/ExchangeDataService;->initializeListener:Lcom/umeng/newxp/controller/XpListenersCenter$InitializeListener;

    .line 104
    iget v2, p0, Lcom/umeng/newxp/view/f;->a:I

    invoke-interface {v1, v2}, Lcom/umeng/newxp/controller/XpListenersCenter$InitializeListener;->onStartRequestData(I)V

    .line 106
    :cond_1
    iget-object v1, p0, Lcom/umeng/newxp/view/f;->f:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v1, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->preloadData:Lcom/umeng/newxp/a;

    if-eqz v1, :cond_3

    .line 107
    iget-object v1, p0, Lcom/umeng/newxp/view/f;->f:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v1, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->preloadData:Lcom/umeng/newxp/a;

    iget-object v1, v1, Lcom/umeng/newxp/a;->a:Lcom/umeng/newxp/a$a;

    sget-object v2, Lcom/umeng/newxp/a$a;->a:Lcom/umeng/newxp/a$a;

    if-ne v1, v2, :cond_3

    .line 108
    iget-object v1, p0, Lcom/umeng/newxp/view/f;->f:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v1, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->preloadData:Lcom/umeng/newxp/a;

    invoke-virtual {v1}, Lcom/umeng/newxp/a;->b()Ljava/util/List;

    move-result-object v1

    .line 109
    if-nez v1, :cond_2

    .line 110
    iget-object v1, p0, Lcom/umeng/newxp/view/f;->f:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v2, p0, Lcom/umeng/newxp/view/f;->d:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/umeng/newxp/controller/ExchangeDataService;->requestDataAsyn(Landroid/content/Context;Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;)V

    .line 116
    :goto_0
    return-void

    .line 112
    :cond_2
    invoke-direct {p0, v1}, Lcom/umeng/newxp/view/f;->a(Ljava/util/List;)V

    goto :goto_0

    .line 114
    :cond_3
    iget-object v1, p0, Lcom/umeng/newxp/view/f;->f:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v2, p0, Lcom/umeng/newxp/view/f;->d:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/umeng/newxp/controller/ExchangeDataService;->requestDataAsyn(Landroid/content/Context;Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/umeng/newxp/view/f;)Landroid/widget/ViewSwitcher;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/umeng/newxp/view/f;->i:Landroid/widget/ViewSwitcher;

    return-object v0
.end method

.method private a(I)V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 195
    iget-object v0, p0, Lcom/umeng/newxp/view/f;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 196
    iget-object v0, p0, Lcom/umeng/newxp/view/f;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/newxp/a/c;->i(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 198
    sget v1, Lcom/umeng/newxp/common/ExchangeConstants;->banner_alpha:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 202
    iget-object v1, p0, Lcom/umeng/newxp/view/f;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/newxp/a/c;->a(Landroid/content/Context;)I

    move-result v1

    .line 201
    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewFlipper;

    .line 203
    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setFlipInterval(I)V

    .line 205
    iget-object v2, p0, Lcom/umeng/newxp/view/f;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/newxp/a/c;->s(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 207
    iget-object v4, p0, Lcom/umeng/newxp/view/f;->g:Lcom/umeng/newxp/controller/a;

    invoke-virtual {v4}, Lcom/umeng/newxp/controller/a;->e()Lcom/umeng/newxp/controller/a$a;

    move-result-object v4

    .line 208
    iget-object v5, v4, Lcom/umeng/newxp/controller/a$a;->a:Lcom/umeng/newxp/Promoter;

    .line 210
    iget-object v6, p0, Lcom/umeng/newxp/view/f;->d:Landroid/content/Context;

    invoke-static {v6}, Lcom/umeng/newxp/a/c;->K(Landroid/content/Context;)I

    move-result v6

    if-ne p1, v6, :cond_2

    iput-object v4, p0, Lcom/umeng/newxp/view/f;->l:Lcom/umeng/newxp/controller/a$a;

    .line 215
    :goto_0
    iget v4, v5, Lcom/umeng/newxp/Promoter;->display_type:I

    if-nez v4, :cond_0

    .line 216
    sget-object v4, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "result: adIconUrl: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v5, Lcom/umeng/newxp/Promoter;->icon:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v4, p0, Lcom/umeng/newxp/view/f;->d:Landroid/content/Context;

    iget-object v6, v5, Lcom/umeng/newxp/Promoter;->icon:Ljava/lang/String;

    invoke-static {v4, v2, v6, v8}, Lcom/umeng/common/net/q;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Z)V

    .line 221
    :cond_0
    iget v4, v5, Lcom/umeng/newxp/Promoter;->display_type:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_3

    .line 222
    invoke-virtual {v1, v9}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 223
    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 224
    if-eqz v0, :cond_1

    .line 225
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 226
    iget-object v1, p0, Lcom/umeng/newxp/view/f;->d:Landroid/content/Context;

    iget-object v2, v5, Lcom/umeng/newxp/Promoter;->img:Ljava/lang/String;

    invoke-static {v1, v0, v2, v8}, Lcom/umeng/common/net/q;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Z)V

    .line 235
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/umeng/newxp/view/f;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/newxp/a/c;->l(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 236
    iget-object v1, v5, Lcom/umeng/newxp/Promoter;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v0, p0, Lcom/umeng/newxp/view/f;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/newxp/a/c;->n(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 239
    sget-boolean v1, Lcom/umeng/newxp/common/ExchangeConstants;->show_size:Z

    if-eqz v1, :cond_4

    .line 241
    iget-object v1, p0, Lcom/umeng/newxp/view/f;->d:Landroid/content/Context;

    iget-wide v6, v5, Lcom/umeng/newxp/Promoter;->size:J

    invoke-static {v1, v6, v7}, Lcom/umeng/common/util/h;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 240
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    :goto_2
    iget-object v0, p0, Lcom/umeng/newxp/view/f;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/newxp/a/c;->r(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 247
    iget-object v1, v5, Lcom/umeng/newxp/Promoter;->ad_words:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    return-void

    .line 212
    :cond_2
    iput-object v4, p0, Lcom/umeng/newxp/view/f;->m:Lcom/umeng/newxp/controller/a$a;

    goto :goto_0

    .line 229
    :cond_3
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 230
    invoke-virtual {v1, v8}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 231
    iget-object v1, p0, Lcom/umeng/newxp/view/f;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/newxp/a/b;->s(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 243
    :cond_4
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method private a(Lcom/umeng/newxp/controller/a$a;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 253
    if-nez p1, :cond_0

    .line 258
    :goto_0
    return-void

    .line 254
    :cond_0
    sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "package name:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    iget-object v2, p1, Lcom/umeng/newxp/controller/a$a;->a:Lcom/umeng/newxp/Promoter;

    iget-object v2, v2, Lcom/umeng/newxp/Promoter;->app_package_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  adName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 256
    iget-object v2, p1, Lcom/umeng/newxp/controller/a$a;->a:Lcom/umeng/newxp/Promoter;

    iget-object v2, v2, Lcom/umeng/newxp/Promoter;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 254
    invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v1, p0, Lcom/umeng/newxp/view/f;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/newxp/view/f;->f:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget v3, p0, Lcom/umeng/newxp/view/f;->a:I

    move-object v0, p1

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/umeng/newxp/controller/b;->a(Lcom/umeng/newxp/controller/a$a;Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;IZI)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/umeng/newxp/view/f;I)V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/umeng/newxp/view/f;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/umeng/newxp/view/f;Lcom/umeng/newxp/controller/a$a;)V
    .locals 0

    .prologue
    .line 252
    invoke-direct {p0, p1}, Lcom/umeng/newxp/view/f;->a(Lcom/umeng/newxp/controller/a$a;)V

    return-void
.end method

.method static synthetic a(Lcom/umeng/newxp/view/f;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 460
    invoke-direct {p0, p1}, Lcom/umeng/newxp/view/f;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 461
    if-nez p1, :cond_1

    .line 472
    :cond_0
    :goto_0
    return-void

    .line 462
    :cond_1
    new-instance v0, Lcom/umeng/newxp/controller/a;

    invoke-direct {v0, p1}, Lcom/umeng/newxp/controller/a;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/umeng/newxp/view/f;->g:Lcom/umeng/newxp/controller/a;

    .line 463
    iput-object p1, p0, Lcom/umeng/newxp/view/f;->h:Ljava/util/List;

    .line 465
    iget-object v0, p0, Lcom/umeng/newxp/view/f;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/newxp/view/f;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    invoke-virtual {p0}, Lcom/umeng/newxp/view/f;->b()V

    .line 468
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 469
    new-instance v0, Lcom/umeng/newxp/controller/g;

    invoke-direct {v0, p0}, Lcom/umeng/newxp/controller/g;-><init>(Lcom/umeng/newxp/controller/f$a;)V

    invoke-virtual {v0}, Lcom/umeng/newxp/controller/g;->start()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/umeng/newxp/view/f;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/umeng/newxp/view/f;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c()I
    .locals 1

    .prologue
    .line 68
    sget v0, Lcom/umeng/newxp/view/f;->j:I

    return v0
.end method

.method static synthetic c(Lcom/umeng/newxp/view/f;)Lcom/umeng/newxp/controller/ExchangeDataService;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/umeng/newxp/view/f;->f:Lcom/umeng/newxp/controller/ExchangeDataService;

    return-object v0
.end method

.method static synthetic d(Lcom/umeng/newxp/view/f;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/umeng/newxp/view/f;->o:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private d()V
    .locals 12

    .prologue
    .line 262
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/umeng/newxp/view/f;->n:Ljava/util/Map;

    .line 265
    iget-object v0, p0, Lcom/umeng/newxp/view/f;->n:Ljava/util/Map;

    .line 266
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 267
    new-instance v2, Lcom/umeng/newxp/view/f$a;

    iget-object v3, p0, Lcom/umeng/newxp/view/f;->d:Landroid/content/Context;

    .line 268
    iget-object v4, p0, Lcom/umeng/newxp/view/f;->d:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/newxp/a/a;->e(Landroid/content/Context;)I

    move-result v4

    .line 267
    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 269
    iget-object v4, p0, Lcom/umeng/newxp/view/f;->d:Landroid/content/Context;

    .line 270
    iget-object v5, p0, Lcom/umeng/newxp/view/f;->d:Landroid/content/Context;

    invoke-static {v5}, Lcom/umeng/newxp/a/a;->j(Landroid/content/Context;)I

    move-result v5

    .line 269
    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    .line 267
    invoke-direct {v2, p0, v3, v4}, Lcom/umeng/newxp/view/f$a;-><init>(Lcom/umeng/newxp/view/f;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 266
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget-object v0, p0, Lcom/umeng/newxp/view/f;->n:Ljava/util/Map;

    .line 274
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 275
    new-instance v2, Lcom/umeng/newxp/view/f$a;

    iget-object v3, p0, Lcom/umeng/newxp/view/f;->d:Landroid/content/Context;

    .line 276
    iget-object v4, p0, Lcom/umeng/newxp/view/f;->d:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/newxp/a/a;->f(Landroid/content/Context;)I

    move-result v4

    .line 275
    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 277
    iget-object v4, p0, Lcom/umeng/newxp/view/f;->d:Landroid/content/Context;

    .line 278
    iget-object v5, p0, Lcom/umeng/newxp/view/f;->d:Landroid/content/Context;

    invoke-static {v5}, Lcom/umeng/newxp/a/a;->i(Landroid/content/Context;)I

    move-result v5

    .line 277
    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    .line 275
    invoke-direct {v2, p0, v3, v4}, Lcom/umeng/newxp/view/f$a;-><init>(Lcom/umeng/newxp/view/f;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 273
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    iget-object v0, p0, Lcom/umeng/newxp/view/f;->n:Ljava/util/Map;

    .line 282
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 283
    new-instance v2, Lcom/umeng/newxp/view/f$a;

    iget-object v3, p0, Lcom/umeng/newxp/view/f;->d:Landroid/content/Context;

    .line 284
    iget-object v4, p0, Lcom/umeng/newxp/view/f;->d:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/newxp/a/a;->g(Landroid/content/Context;)I

    move-result v4

    .line 283
    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 285
    iget-object v4, p0, Lcom/umeng/newxp/view/f;->d:Landroid/content/Context;

    .line 286
    iget-object v5, p0, Lcom/umeng/newxp/view/f;->d:Landroid/content/Context;

    invoke-static {v5}, Lcom/umeng/newxp/a/a;->l(Landroid/content/Context;)I

    move-result v5

    .line 285
    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    .line 283
    invoke-direct {v2, p0, v3, v4}, Lcom/umeng/newxp/view/f$a;-><init>(Lcom/umeng/newxp/view/f;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 281
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    iget-object v0, p0, Lcom/umeng/newxp/view/f;->n:Ljava/util/Map;

    .line 290
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 291
    new-instance v2, Lcom/umeng/newxp/view/f$a;

    iget-object v3, p0, Lcom/umeng/newxp/view/f;->d:Landroid/content/Context;

    .line 292
    iget-object v4, p0, Lcom/umeng/newxp/view/f;->d:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/newxp/a/a;->h(Landroid/content/Context;)I

    move-result v4

    .line 291
    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 293
    iget-object v4, p0, Lcom/umeng/newxp/view/f;->d:Landroid/content/Context;

    .line 294
    iget-object v5, p0, Lcom/umeng/newxp/view/f;->d:Landroid/content/Context;

    invoke-static {v5}, Lcom/umeng/newxp/a/a;->k(Landroid/content/Context;)I

    move-result v5

    .line 293
    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    .line 291
    invoke-direct {v2, p0, v3, v4}, Lcom/umeng/newxp/view/f$a;-><init>(Lcom/umeng/newxp/view/f;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 290
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    iget-object v0, p0, Lcom/umeng/newxp/view/f;->n:Ljava/util/Map;

    .line 298
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 299
    new-instance v2, Lcom/umeng/newxp/view/f$a;

    iget-object v3, p0, Lcom/umeng/newxp/view/f;->d:Landroid/content/Context;

    .line 300
    iget-object v4, p0, Lcom/umeng/newxp/view/f;->d:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/newxp/a/a;->m(Landroid/content/Context;)I

    move-result v4

    .line 299
    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 301
    iget-object v4, p0, Lcom/umeng/newxp/view/f;->d:Landroid/content/Context;

    iget-object v5, p0, Lcom/umeng/newxp/view/f;->d:Landroid/content/Context;

    invoke-static {v5}, Lcom/umeng/newxp/a/a;->n(Landroid/content/Context;)I

    move-result v5

    .line 300
    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    .line 299
    invoke-direct {v2, p0, v3, v4}, Lcom/umeng/newxp/view/f$a;-><init>(Lcom/umeng/newxp/view/f;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 297
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    iget-object v0, p0, Lcom/umeng/newxp/view/f;->d:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 305
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    .line 306
    new-instance v0, Lcom/umeng/common/util/j;

    iget-object v1, p0, Lcom/umeng/newxp/view/f;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/umeng/common/util/j;-><init>(Landroid/content/Context;)V

    .line 307
    const/high16 v0, 0x425c0000    # 55.0f

    invoke-static {v0}, Lcom/umeng/common/util/j;->a(F)I

    move-result v9

    .line 309
    new-instance v0, Lcom/umeng/newxp/common/f;

    const/high16 v1, -0x3d4c0000    # -90.0f

    const/4 v2, 0x0

    invoke-virtual {v8}, Landroid/view/Display;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    div-int/lit8 v4, v9, 0x2

    int-to-float v4, v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/umeng/newxp/common/f;-><init>(FFFFZZ)V

    .line 310
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/common/f;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 312
    new-instance v1, Lcom/umeng/newxp/common/f;

    const/4 v2, 0x0

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {v8}, Landroid/view/Display;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    div-int/lit8 v5, v9, 0x2

    int-to-float v5, v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v1 .. v7}, Lcom/umeng/newxp/common/f;-><init>(FFFFZZ)V

    .line 313
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Lcom/umeng/newxp/common/f;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 314
    iget-object v10, p0, Lcom/umeng/newxp/view/f;->n:Ljava/util/Map;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-instance v2, Lcom/umeng/newxp/view/f$a;

    .line 315
    sget v3, Lcom/umeng/newxp/view/f;->j:I

    int-to-long v6, v3

    move-object v3, p0

    move-object v4, v0

    move-object v5, v1

    invoke-direct/range {v2 .. v7}, Lcom/umeng/newxp/view/f$a;-><init>(Lcom/umeng/newxp/view/f;Landroid/view/animation/Animation;Landroid/view/animation/Animation;J)V

    .line 314
    invoke-interface {v10, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    new-instance v0, Lcom/umeng/newxp/common/f;

    const/high16 v1, -0x3d4c0000    # -90.0f

    const/4 v2, 0x0

    invoke-virtual {v8}, Landroid/view/Display;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    div-int/lit8 v4, v9, 0x2

    int-to-float v4, v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/umeng/newxp/common/f;-><init>(FFFFZZ)V

    .line 319
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/common/f;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 321
    new-instance v1, Lcom/umeng/newxp/common/f;

    const/4 v2, 0x0

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {v8}, Landroid/view/Display;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    div-int/lit8 v5, v9, 0x2

    int-to-float v5, v5

    const/4 v6, 0x0

    .line 322
    const/4 v7, 0x0

    .line 321
    invoke-direct/range {v1 .. v7}, Lcom/umeng/newxp/common/f;-><init>(FFFFZZ)V

    .line 323
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Lcom/umeng/newxp/common/f;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 324
    iget-object v8, p0, Lcom/umeng/newxp/view/f;->n:Ljava/util/Map;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v2, Lcom/umeng/newxp/view/f$a;

    .line 325
    sget v3, Lcom/umeng/newxp/view/f;->j:I

    int-to-long v6, v3

    move-object v3, p0

    move-object v4, v0

    move-object v5, v1

    invoke-direct/range {v2 .. v7}, Lcom/umeng/newxp/view/f$a;-><init>(Lcom/umeng/newxp/view/f;Landroid/view/animation/Animation;Landroid/view/animation/Animation;J)V

    .line 324
    invoke-interface {v8, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    return-void
.end method

.method static synthetic e(Lcom/umeng/newxp/view/f;)Lcom/umeng/newxp/controller/a$a;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/umeng/newxp/view/f;->l:Lcom/umeng/newxp/controller/a$a;

    return-object v0
.end method

.method private e()Lcom/umeng/newxp/view/f$a;
    .locals 4

    .prologue
    .line 378
    iget-object v0, p0, Lcom/umeng/newxp/view/f;->n:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/newxp/view/f;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 379
    :cond_0
    new-instance v0, Lcom/umeng/newxp/view/f$a;

    iget-object v1, p0, Lcom/umeng/newxp/view/f;->d:Landroid/content/Context;

    .line 380
    iget-object v2, p0, Lcom/umeng/newxp/view/f;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/newxp/a/a;->e(Landroid/content/Context;)I

    move-result v2

    .line 379
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 381
    iget-object v2, p0, Lcom/umeng/newxp/view/f;->d:Landroid/content/Context;

    .line 382
    iget-object v3, p0, Lcom/umeng/newxp/view/f;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/newxp/a/a;->j(Landroid/content/Context;)I

    move-result v3

    .line 381
    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 379
    invoke-direct {v0, p0, v1, v2}, Lcom/umeng/newxp/view/f$a;-><init>(Lcom/umeng/newxp/view/f;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 390
    :goto_0
    return-object v0

    .line 385
    :cond_1
    iget-object v0, p0, Lcom/umeng/newxp/view/f;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 386
    iget-object v1, p0, Lcom/umeng/newxp/view/f;->n:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    .line 388
    const/4 v2, 0x0

    new-array v2, v2, [Lcom/umeng/newxp/view/f$a;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/newxp/view/f$a;

    .line 389
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 390
    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method static synthetic f(Lcom/umeng/newxp/view/f;)Lcom/umeng/newxp/controller/a$a;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/umeng/newxp/view/f;->m:Lcom/umeng/newxp/controller/a$a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 395
    iget-object v0, p0, Lcom/umeng/newxp/view/f;->b:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/umeng/newxp/view/f;->b:Landroid/view/View;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 396
    iget-object v0, p0, Lcom/umeng/newxp/view/f;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/umeng/newxp/view/aw;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 397
    iget v0, p0, Lcom/umeng/newxp/view/f;->k:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/umeng/newxp/view/f;->k:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    move v1, v2

    .line 398
    :goto_0
    sget-boolean v0, Lcom/umeng/newxp/view/f;->c:Z

    if-eqz v0, :cond_0

    .line 400
    if-nez v1, :cond_4

    iget-object v0, p0, Lcom/umeng/newxp/view/f;->m:Lcom/umeng/newxp/controller/a$a;

    iget-object v0, v0, Lcom/umeng/newxp/controller/a$a;->a:Lcom/umeng/newxp/Promoter;

    iget v0, v0, Lcom/umeng/newxp/Promoter;->anim_in:I

    .line 405
    :goto_1
    if-lez v0, :cond_5

    iget-object v4, p0, Lcom/umeng/newxp/view/f;->n:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/umeng/newxp/view/f;->n:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/view/f$a;

    .line 409
    :goto_2
    iget-object v4, p0, Lcom/umeng/newxp/view/f;->i:Landroid/widget/ViewSwitcher;

    iget-object v5, v0, Lcom/umeng/newxp/view/f$a;->a:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 410
    iget-object v4, p0, Lcom/umeng/newxp/view/f;->i:Landroid/widget/ViewSwitcher;

    iget-object v0, v0, Lcom/umeng/newxp/view/f$a;->b:Landroid/view/animation/Animation;

    invoke-virtual {v4, v0}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/umeng/newxp/view/f;->i:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 415
    sget-boolean v0, Lcom/umeng/newxp/view/f;->c:Z

    if-nez v0, :cond_1

    .line 416
    packed-switch v1, :pswitch_data_0

    .line 428
    :cond_1
    :goto_3
    if-nez v1, :cond_6

    .line 429
    new-instance v0, Lcom/umeng/newxp/net/e$a;

    iget-object v1, p0, Lcom/umeng/newxp/view/f;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/umeng/newxp/net/e$a;-><init>(Landroid/content/Context;)V

    .line 430
    invoke-virtual {v0, v3}, Lcom/umeng/newxp/net/e$a;->a(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/umeng/newxp/net/e$a;->b(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 431
    invoke-virtual {v0, v6}, Lcom/umeng/newxp/net/e$a;->d(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    iget v1, p0, Lcom/umeng/newxp/view/f;->a:I

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->c(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    new-array v1, v2, [Lcom/umeng/newxp/Promoter;

    iget-object v2, p0, Lcom/umeng/newxp/view/f;->l:Lcom/umeng/newxp/controller/a$a;

    iget-object v2, v2, Lcom/umeng/newxp/controller/a$a;->a:Lcom/umeng/newxp/Promoter;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a([Lcom/umeng/newxp/Promoter;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 432
    iget-object v1, p0, Lcom/umeng/newxp/view/f;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/newxp/view/f;->f:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v1, v2}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->b(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/newxp/view/f;->f:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v1, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/newxp/view/f;->f:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-virtual {v1}, Lcom/umeng/newxp/controller/ExchangeDataService;->getTimeConsuming()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->d(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 433
    iget-object v1, p0, Lcom/umeng/newxp/view/f;->f:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v1, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->c(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/newxp/net/e$a;->a()Lcom/umeng/newxp/net/e;

    move-result-object v0

    .line 434
    new-instance v1, Lcom/umeng/newxp/net/XpReportClient;

    iget-object v2, p0, Lcom/umeng/newxp/view/f;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/umeng/newxp/net/XpReportClient;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0, v7}, Lcom/umeng/newxp/net/XpReportClient;->sendAsync(Lcom/umeng/common/net/o;Lcom/umeng/common/net/n$a;)V

    .line 435
    sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "report "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/umeng/newxp/view/f;->l:Lcom/umeng/newxp/controller/a$a;

    iget-object v2, v2, Lcom/umeng/newxp/controller/a$a;->a:Lcom/umeng/newxp/Promoter;

    iget-object v2, v2, Lcom/umeng/newxp/Promoter;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    :cond_2
    :goto_4
    new-instance v0, Lcom/umeng/newxp/controller/g;

    invoke-direct {v0, p0}, Lcom/umeng/newxp/controller/g;-><init>(Lcom/umeng/newxp/controller/f$a;)V

    invoke-virtual {v0}, Lcom/umeng/newxp/controller/g;->start()V

    .line 447
    return-void

    :cond_3
    move v1, v3

    .line 397
    goto/16 :goto_0

    .line 402
    :cond_4
    iget-object v0, p0, Lcom/umeng/newxp/view/f;->l:Lcom/umeng/newxp/controller/a$a;

    iget-object v0, v0, Lcom/umeng/newxp/controller/a$a;->a:Lcom/umeng/newxp/Promoter;

    iget v0, v0, Lcom/umeng/newxp/Promoter;->anim_in:I

    goto/16 :goto_1

    .line 407
    :cond_5
    invoke-direct {p0}, Lcom/umeng/newxp/view/f;->e()Lcom/umeng/newxp/view/f$a;

    move-result-object v0

    goto/16 :goto_2

    .line 418
    :pswitch_0
    iget-object v0, p0, Lcom/umeng/newxp/view/f;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/newxp/a/c;->J(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/umeng/newxp/view/f;->a(I)V

    goto/16 :goto_3

    .line 421
    :pswitch_1
    iget-object v0, p0, Lcom/umeng/newxp/view/f;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/newxp/a/c;->K(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/umeng/newxp/view/f;->a(I)V

    goto/16 :goto_3

    .line 437
    :cond_6
    new-instance v0, Lcom/umeng/newxp/net/e$a;

    iget-object v1, p0, Lcom/umeng/newxp/view/f;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/umeng/newxp/net/e$a;-><init>(Landroid/content/Context;)V

    .line 438
    invoke-virtual {v0, v3}, Lcom/umeng/newxp/net/e$a;->a(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/umeng/newxp/net/e$a;->b(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 439
    invoke-virtual {v0, v6}, Lcom/umeng/newxp/net/e$a;->d(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    iget v1, p0, Lcom/umeng/newxp/view/f;->a:I

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->c(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    new-array v1, v2, [Lcom/umeng/newxp/Promoter;

    iget-object v2, p0, Lcom/umeng/newxp/view/f;->m:Lcom/umeng/newxp/controller/a$a;

    iget-object v2, v2, Lcom/umeng/newxp/controller/a$a;->a:Lcom/umeng/newxp/Promoter;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a([Lcom/umeng/newxp/Promoter;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 440
    iget-object v1, p0, Lcom/umeng/newxp/view/f;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/newxp/view/f;->f:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v1, v2}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->b(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/newxp/view/f;->f:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v1, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/newxp/view/f;->f:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-virtual {v1}, Lcom/umeng/newxp/controller/ExchangeDataService;->getTimeConsuming()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->d(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 441
    iget-object v1, p0, Lcom/umeng/newxp/view/f;->f:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v1, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->c(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/newxp/net/e$a;->a()Lcom/umeng/newxp/net/e;

    move-result-object v0

    .line 442
    new-instance v1, Lcom/umeng/newxp/net/XpReportClient;

    iget-object v2, p0, Lcom/umeng/newxp/view/f;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/umeng/newxp/net/XpReportClient;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0, v7}, Lcom/umeng/newxp/net/XpReportClient;->sendAsync(Lcom/umeng/common/net/o;Lcom/umeng/common/net/n$a;)V

    goto/16 :goto_4

    .line 416
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 457
    iput-object p1, p0, Lcom/umeng/newxp/view/f;->o:Landroid/view/View$OnClickListener;

    .line 458
    return-void
.end method

.method protected b()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 119
    iget-object v0, p0, Lcom/umeng/newxp/view/f;->f:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v0, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->timeLine:[J

    const/4 v1, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 120
    iget-object v0, p0, Lcom/umeng/newxp/view/f;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/umeng/newxp/view/f;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/newxp/a/d;->y(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/newxp/view/f;->b:Landroid/view/View;

    .line 121
    iget-object v0, p0, Lcom/umeng/newxp/view/f;->b:Landroid/view/View;

    .line 122
    iget-object v1, p0, Lcom/umeng/newxp/view/f;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/newxp/a/c;->L(Landroid/content/Context;)I

    move-result v1

    .line 121
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/umeng/newxp/view/f;->i:Landroid/widget/ViewSwitcher;

    .line 123
    iget-object v0, p0, Lcom/umeng/newxp/view/f;->i:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v4}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 125
    iget-object v0, p0, Lcom/umeng/newxp/view/f;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/newxp/a/c;->K(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/umeng/newxp/view/f;->a(I)V

    .line 126
    iget-object v0, p0, Lcom/umeng/newxp/view/f;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/newxp/a/c;->J(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/umeng/newxp/view/f;->a(I)V

    .line 131
    sget-boolean v0, Lcom/umeng/newxp/view/f;->c:Z

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/umeng/newxp/view/f;->l:Lcom/umeng/newxp/controller/a$a;

    iget-object v0, v0, Lcom/umeng/newxp/controller/a$a;->a:Lcom/umeng/newxp/Promoter;

    iget v0, v0, Lcom/umeng/newxp/Promoter;->anim_in:I

    .line 134
    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/umeng/newxp/view/f;->n:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/umeng/newxp/view/f;->n:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/view/f$a;

    .line 138
    :goto_0
    iget-object v1, p0, Lcom/umeng/newxp/view/f;->i:Landroid/widget/ViewSwitcher;

    iget-object v2, v0, Lcom/umeng/newxp/view/f$a;->a:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 139
    iget-object v1, p0, Lcom/umeng/newxp/view/f;->i:Landroid/widget/ViewSwitcher;

    iget-object v0, v0, Lcom/umeng/newxp/view/f$a;->b:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/umeng/newxp/view/f;->b:Landroid/view/View;

    new-instance v1, Lcom/umeng/newxp/view/h;

    invoke-direct {v1, p0}, Lcom/umeng/newxp/view/h;-><init>(Lcom/umeng/newxp/view/f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    new-instance v0, Lcom/umeng/common/util/j;

    iget-object v1, p0, Lcom/umeng/newxp/view/f;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/umeng/common/util/j;-><init>(Landroid/content/Context;)V

    .line 169
    const/high16 v0, 0x425c0000    # 55.0f

    invoke-static {v0}, Lcom/umeng/common/util/j;->a(F)I

    move-result v0

    .line 172
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/umeng/newxp/view/f;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 173
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 175
    iget-object v2, p0, Lcom/umeng/newxp/view/f;->e:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 178
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 179
    const/16 v0, 0xc

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 180
    iget-object v0, p0, Lcom/umeng/newxp/view/f;->b:Landroid/view/View;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    iget-object v0, p0, Lcom/umeng/newxp/view/f;->f:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v0, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->timeLine:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    aput-wide v1, v0, v6

    .line 185
    new-instance v0, Lcom/umeng/newxp/net/e$a;

    iget-object v1, p0, Lcom/umeng/newxp/view/f;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/umeng/newxp/net/e$a;-><init>(Landroid/content/Context;)V

    .line 186
    invoke-virtual {v0, v4}, Lcom/umeng/newxp/net/e$a;->a(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/umeng/newxp/net/e$a;->b(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 187
    invoke-virtual {v0, v6}, Lcom/umeng/newxp/net/e$a;->d(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    iget v1, p0, Lcom/umeng/newxp/view/f;->a:I

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->c(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/umeng/newxp/Promoter;

    iget-object v2, p0, Lcom/umeng/newxp/view/f;->l:Lcom/umeng/newxp/controller/a$a;

    iget-object v2, v2, Lcom/umeng/newxp/controller/a$a;->a:Lcom/umeng/newxp/Promoter;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a([Lcom/umeng/newxp/Promoter;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/umeng/newxp/view/f;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/newxp/view/f;->f:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v1, v2}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->b(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/newxp/view/f;->f:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v1, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/newxp/view/f;->f:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-virtual {v1}, Lcom/umeng/newxp/controller/ExchangeDataService;->getTimeConsuming()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->d(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 189
    iget-object v1, p0, Lcom/umeng/newxp/view/f;->f:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v1, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->c(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/newxp/net/e$a;->a()Lcom/umeng/newxp/net/e;

    move-result-object v0

    .line 190
    new-instance v1, Lcom/umeng/newxp/net/XpReportClient;

    iget-object v2, p0, Lcom/umeng/newxp/view/f;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/umeng/newxp/net/XpReportClient;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0, v7}, Lcom/umeng/newxp/net/XpReportClient;->sendAsync(Lcom/umeng/common/net/o;Lcom/umeng/common/net/n$a;)V

    .line 191
    return-void

    .line 136
    :cond_1
    invoke-direct {p0}, Lcom/umeng/newxp/view/f;->e()Lcom/umeng/newxp/view/f$a;

    move-result-object v0

    goto/16 :goto_0
.end method
