.class public Lcom/umeng/newxp/view/an;
.super Ljava/lang/Object;
.source "LargeGallery.java"

# interfaces
.implements Lcom/umeng/newxp/controller/f$a;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/view/ViewGroup;

.field private d:Landroid/view/ViewGroup;

.field private e:Landroid/view/ViewGroup;

.field private f:Landroid/view/ViewGroup;

.field private g:Landroid/view/ViewGroup;

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

.field private i:Lcom/umeng/newxp/view/LargeGalleryConfig;

.field private j:Lcom/umeng/newxp/view/UGallery;

.field private k:Lcom/umeng/newxp/controller/ExchangeDataService;

.field private l:Z

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private o:I

.field private final p:I

.field private final q:I

.field private r:Landroid/view/animation/Animation;

.field private s:Z

.field private t:Lcom/umeng/newxp/controller/g;

.field private u:Lcom/umeng/common/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/umeng/newxp/view/an;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/newxp/view/an;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/umeng/newxp/controller/ExchangeDataService;Lcom/umeng/newxp/view/LargeGalleryConfig;)V
    .locals 3

    .prologue
    const/16 v1, 0x1f4

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/newxp/view/an;->l:Z

    .line 62
    iput v1, p0, Lcom/umeng/newxp/view/an;->o:I

    .line 63
    iput v1, p0, Lcom/umeng/newxp/view/an;->p:I

    .line 64
    const/16 v0, 0xa

    iput v0, p0, Lcom/umeng/newxp/view/an;->q:I

    .line 73
    iput-object p1, p0, Lcom/umeng/newxp/view/an;->b:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/umeng/newxp/view/an;->c:Landroid/view/ViewGroup;

    .line 75
    if-nez p4, :cond_0

    new-instance p4, Lcom/umeng/newxp/view/LargeGalleryConfig;

    invoke-direct {p4}, Lcom/umeng/newxp/view/LargeGalleryConfig;-><init>()V

    :cond_0
    iput-object p4, p0, Lcom/umeng/newxp/view/an;->i:Lcom/umeng/newxp/view/LargeGalleryConfig;

    .line 76
    iput-object p3, p0, Lcom/umeng/newxp/view/an;->k:Lcom/umeng/newxp/controller/ExchangeDataService;

    .line 77
    invoke-static {p1}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/newxp/view/an;->u:Lcom/umeng/common/c;

    .line 79
    iget-object v0, p0, Lcom/umeng/newxp/view/an;->b:Landroid/content/Context;

    .line 80
    iget-object v1, p0, Lcom/umeng/newxp/view/an;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/newxp/a/a;->p(Landroid/content/Context;)I

    move-result v1

    .line 79
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/newxp/view/an;->r:Landroid/view/animation/Animation;

    .line 81
    iget-object v0, p0, Lcom/umeng/newxp/view/an;->r:Landroid/view/animation/Animation;

    new-instance v1, Lcom/umeng/newxp/view/ao;

    invoke-direct {v1, p0}, Lcom/umeng/newxp/view/ao;-><init>(Lcom/umeng/newxp/view/an;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 96
    invoke-direct {p0}, Lcom/umeng/newxp/view/an;->d()V

    .line 98
    new-instance v0, Lcom/umeng/newxp/view/ap;

    invoke-direct {v0, p0}, Lcom/umeng/newxp/view/ap;-><init>(Lcom/umeng/newxp/view/an;)V

    .line 111
    iget-object v1, p0, Lcom/umeng/newxp/view/an;->k:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v1, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->preloadData:Lcom/umeng/newxp/a;

    if-eqz v1, :cond_2

    .line 112
    iget-object v1, p0, Lcom/umeng/newxp/view/an;->k:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v1, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->preloadData:Lcom/umeng/newxp/a;

    iget-object v1, v1, Lcom/umeng/newxp/a;->a:Lcom/umeng/newxp/a$a;

    sget-object v2, Lcom/umeng/newxp/a$a;->a:Lcom/umeng/newxp/a$a;

    if-ne v1, v2, :cond_2

    .line 113
    iget-object v1, p0, Lcom/umeng/newxp/view/an;->k:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v1, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->preloadData:Lcom/umeng/newxp/a;

    invoke-virtual {v1}, Lcom/umeng/newxp/a;->b()Ljava/util/List;

    move-result-object v1

    .line 114
    if-nez v1, :cond_1

    .line 115
    iget-object v1, p0, Lcom/umeng/newxp/view/an;->k:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v2, p0, Lcom/umeng/newxp/view/an;->b:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/umeng/newxp/controller/ExchangeDataService;->requestDataAsyn(Landroid/content/Context;Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;)V

    .line 121
    :goto_0
    return-void

    .line 117
    :cond_1
    invoke-direct {p0, v1}, Lcom/umeng/newxp/view/an;->b(Ljava/util/List;)V

    goto :goto_0

    .line 119
    :cond_2
    iget-object v1, p0, Lcom/umeng/newxp/view/an;->k:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v2, p0, Lcom/umeng/newxp/view/an;->b:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/umeng/newxp/controller/ExchangeDataService;->requestDataAsyn(Landroid/content/Context;Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;)V

    goto :goto_0
.end method

.method private a(I)I
    .locals 2

    .prologue
    .line 361
    add-int/lit16 v0, p1, -0x1f4

    iget-object v1, p0, Lcom/umeng/newxp/view/an;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    .line 363
    if-ltz v0, :cond_0

    .line 366
    :goto_0
    return v0

    .line 365
    :cond_0
    iget-object v1, p0, Lcom/umeng/newxp/view/an;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/umeng/newxp/view/an;I)I
    .locals 1

    .prologue
    .line 360
    invoke-direct {p0, p1}, Lcom/umeng/newxp/view/an;->a(I)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/umeng/newxp/view/an;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/umeng/newxp/view/an;->g:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 8

    .prologue
    .line 303
    iget-object v0, p0, Lcom/umeng/newxp/view/an;->u:Lcom/umeng/common/c;

    .line 304
    const-string v1, "umeng_xp_gallery_pointer"

    invoke-virtual {v0, v1}, Lcom/umeng/common/c;->c(Ljava/lang/String;)I

    move-result v0

    .line 303
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 305
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/umeng/newxp/view/an;->m:Ljava/util/List;

    .line 306
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/umeng/newxp/view/an;->n:Ljava/util/List;

    .line 307
    new-instance v1, Lcom/umeng/common/util/j;

    iget-object v2, p0, Lcom/umeng/newxp/view/an;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/umeng/common/util/j;-><init>(Landroid/content/Context;)V

    .line 308
    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lcom/umeng/common/util/j;->a(F)I

    move-result v2

    .line 309
    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v1}, Lcom/umeng/common/util/j;->a(F)I

    move-result v3

    .line 311
    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/umeng/newxp/view/an;->h:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_0

    .line 337
    return-void

    .line 313
    :cond_0
    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/umeng/newxp/view/an;->b:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 314
    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 315
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v3, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 318
    iget-object v6, p0, Lcom/umeng/newxp/view/an;->u:Lcom/umeng/common/c;

    const-string v7, "umeng_xp_point_normal"

    invoke-virtual {v6, v7}, Lcom/umeng/common/c;->d(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 319
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 320
    iget-object v6, p0, Lcom/umeng/newxp/view/an;->m:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 333
    iget-object v4, p0, Lcom/umeng/newxp/view/an;->b:Landroid/content/Context;

    .line 334
    iget-object v5, p0, Lcom/umeng/newxp/view/an;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v5

    const-string v6, "umeng_xp_large_gallery_item"

    invoke-virtual {v5, v6}, Lcom/umeng/common/c;->e(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    .line 333
    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 335
    iget-object v5, p0, Lcom/umeng/newxp/view/an;->n:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 140
    iget-object v0, p0, Lcom/umeng/newxp/view/an;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/umeng/newxp/view/an;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/umeng/newxp/view/an;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 144
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 145
    return-void
.end method

.method static synthetic a(Lcom/umeng/newxp/view/an;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/umeng/newxp/view/an;->a(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic a(Lcom/umeng/newxp/view/an;Lcom/umeng/newxp/controller/g;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/umeng/newxp/view/an;->t:Lcom/umeng/newxp/controller/g;

    return-void
.end method

.method static synthetic a(Lcom/umeng/newxp/view/an;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 369
    invoke-direct {p0, p1}, Lcom/umeng/newxp/view/an;->b(Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/umeng/newxp/view/an;Z)V
    .locals 0

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/umeng/newxp/view/an;->s:Z

    return-void
.end method

.method static synthetic b(Lcom/umeng/newxp/view/an;)Lcom/umeng/newxp/controller/g;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/umeng/newxp/view/an;->t:Lcom/umeng/newxp/controller/g;

    return-object v0
.end method

.method static synthetic b(Lcom/umeng/newxp/view/an;I)V
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lcom/umeng/newxp/view/an;->o:I

    return-void
.end method

.method private b(Ljava/util/List;)V
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
    .line 370
    iput-object p1, p0, Lcom/umeng/newxp/view/an;->h:Ljava/util/List;

    .line 372
    iget-object v0, p0, Lcom/umeng/newxp/view/an;->h:Ljava/util/List;

    if-nez v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/umeng/newxp/view/an;->g:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/umeng/newxp/view/an;->a(Landroid/view/ViewGroup;)V

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/umeng/newxp/view/an;->h:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/an;->a(Ljava/util/List;)V

    .line 377
    iget-object v0, p0, Lcom/umeng/newxp/view/an;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 378
    iget-object v0, p0, Lcom/umeng/newxp/view/an;->g:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/umeng/newxp/view/an;->a(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 382
    :cond_2
    iget-object v0, p0, Lcom/umeng/newxp/view/an;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_3

    const/16 v0, 0x9

    :goto_1
    iget-object v1, p0, Lcom/umeng/newxp/view/an;->h:Ljava/util/List;

    .line 383
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_4

    .line 386
    :cond_3
    invoke-virtual {p0}, Lcom/umeng/newxp/view/an;->b()V

    .line 387
    iget-object v0, p0, Lcom/umeng/newxp/view/an;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/umeng/newxp/view/an;->l:Z

    if-eqz v0, :cond_0

    .line 388
    new-instance v0, Lcom/umeng/newxp/controller/g;

    invoke-direct {v0, p0}, Lcom/umeng/newxp/controller/g;-><init>(Lcom/umeng/newxp/controller/f$a;)V

    iput-object v0, p0, Lcom/umeng/newxp/view/an;->t:Lcom/umeng/newxp/controller/g;

    .line 389
    iget-object v0, p0, Lcom/umeng/newxp/view/an;->t:Lcom/umeng/newxp/controller/g;

    invoke-virtual {v0}, Lcom/umeng/newxp/controller/g;->start()V

    goto :goto_0

    .line 384
    :cond_4
    iget-object v1, p0, Lcom/umeng/newxp/view/an;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 383
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/umeng/newxp/view/an;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/umeng/newxp/view/an;)Ljava/util/List;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/umeng/newxp/view/an;->h:Ljava/util/List;

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 124
    iget-object v0, p0, Lcom/umeng/newxp/view/an;->b:Landroid/content/Context;

    .line 125
    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 124
    check-cast v0, Landroid/view/LayoutInflater;

    .line 126
    iget-object v1, p0, Lcom/umeng/newxp/view/an;->u:Lcom/umeng/common/c;

    const-string v2, "umeng_xp_large_gallery"

    invoke-virtual {v1, v2}, Lcom/umeng/common/c;->e(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/umeng/newxp/view/an;->d:Landroid/view/ViewGroup;

    .line 127
    iget-object v0, p0, Lcom/umeng/newxp/view/an;->d:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/umeng/newxp/view/an;->u:Lcom/umeng/common/c;

    const-string v2, "umeng_xp_gallery"

    invoke-virtual {v1, v2}, Lcom/umeng/common/c;->c(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/view/UGallery;

    iput-object v0, p0, Lcom/umeng/newxp/view/an;->j:Lcom/umeng/newxp/view/UGallery;

    .line 129
    iget-object v0, p0, Lcom/umeng/newxp/view/an;->d:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/umeng/newxp/view/an;->u:Lcom/umeng/common/c;

    const-string v2, "umeng_xp_gallery_entity"

    invoke-virtual {v1, v2}, Lcom/umeng/common/c;->c(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/umeng/newxp/view/an;->e:Landroid/view/ViewGroup;

    .line 130
    iget-object v0, p0, Lcom/umeng/newxp/view/an;->d:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/umeng/newxp/view/an;->u:Lcom/umeng/common/c;

    const-string v2, "umeng_xp_gallery_progress"

    invoke-virtual {v1, v2}, Lcom/umeng/common/c;->c(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/umeng/newxp/view/an;->f:Landroid/view/ViewGroup;

    .line 131
    iget-object v0, p0, Lcom/umeng/newxp/view/an;->d:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/umeng/newxp/view/an;->u:Lcom/umeng/common/c;

    const-string v2, "umeng_xp_gallery_errorpage"

    invoke-virtual {v1, v2}, Lcom/umeng/common/c;->c(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/umeng/newxp/view/an;->g:Landroid/view/ViewGroup;

    .line 132
    iget-object v0, p0, Lcom/umeng/newxp/view/an;->f:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/umeng/newxp/view/an;->a(Landroid/view/ViewGroup;)V

    .line 134
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 135
    iget-object v1, p0, Lcom/umeng/newxp/view/an;->c:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/umeng/newxp/view/an;->d:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    return-void
.end method

.method static synthetic d(Lcom/umeng/newxp/view/an;)Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/umeng/newxp/view/an;->l:Z

    return v0
.end method

.method static synthetic e(Lcom/umeng/newxp/view/an;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/umeng/newxp/view/an;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lcom/umeng/newxp/view/an;)Lcom/umeng/newxp/controller/ExchangeDataService;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/umeng/newxp/view/an;->k:Lcom/umeng/newxp/controller/ExchangeDataService;

    return-object v0
.end method

.method static synthetic g(Lcom/umeng/newxp/view/an;)Ljava/util/List;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/umeng/newxp/view/an;->n:Ljava/util/List;

    return-object v0
.end method

.method static synthetic h(Lcom/umeng/newxp/view/an;)Lcom/umeng/newxp/view/LargeGalleryConfig;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/umeng/newxp/view/an;->i:Lcom/umeng/newxp/view/LargeGalleryConfig;

    return-object v0
.end method

.method static synthetic i(Lcom/umeng/newxp/view/an;)Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/umeng/newxp/view/an;->s:Z

    return v0
.end method

.method static synthetic j(Lcom/umeng/newxp/view/an;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/umeng/newxp/view/an;->r:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic k(Lcom/umeng/newxp/view/an;)I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/umeng/newxp/view/an;->o:I

    return v0
.end method

.method static synthetic l(Lcom/umeng/newxp/view/an;)Ljava/util/List;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/umeng/newxp/view/an;->m:Ljava/util/List;

    return-object v0
.end method

.method static synthetic m(Lcom/umeng/newxp/view/an;)Lcom/umeng/common/c;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/umeng/newxp/view/an;->u:Lcom/umeng/common/c;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 341
    iget-object v0, p0, Lcom/umeng/newxp/view/an;->n:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/newxp/view/an;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/umeng/newxp/view/an;->j:Lcom/umeng/newxp/view/UGallery;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/UGallery;->isTouch()Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    iget-boolean v0, p0, Lcom/umeng/newxp/view/an;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/newxp/view/an;->c:Landroid/view/ViewGroup;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/umeng/newxp/view/an;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 344
    invoke-static {}, Lcom/umeng/newxp/view/aw;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/newxp/view/an;->s:Z

    .line 346
    sget-object v0, Lcom/umeng/newxp/view/an;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "timeup pos="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/umeng/newxp/view/an;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/umeng/newxp/view/an;->j:Lcom/umeng/newxp/view/UGallery;

    iget v1, p0, Lcom/umeng/newxp/view/an;->o:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/umeng/newxp/view/an;->o:I

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/view/UGallery;->setSelection(I)V

    .line 350
    :cond_0
    new-instance v0, Lcom/umeng/newxp/controller/g;

    invoke-direct {v0, p0}, Lcom/umeng/newxp/controller/g;-><init>(Lcom/umeng/newxp/controller/f$a;)V

    iput-object v0, p0, Lcom/umeng/newxp/view/an;->t:Lcom/umeng/newxp/controller/g;

    .line 351
    iget-object v0, p0, Lcom/umeng/newxp/view/an;->t:Lcom/umeng/newxp/controller/g;

    invoke-virtual {v0}, Lcom/umeng/newxp/controller/g;->start()V

    .line 352
    return-void
.end method

.method protected a(Ljava/util/List;)V
    .locals 5
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
    .line 153
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    :goto_0
    if-gtz v1, :cond_0

    .line 160
    return-void

    .line 154
    :cond_0
    add-int/lit8 v0, v1, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/Promoter;

    .line 155
    iget v2, v0, Lcom/umeng/newxp/Promoter;->display_type:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 156
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 157
    sget-object v2, Lcom/umeng/newxp/view/an;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "filter the promoter "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/umeng/newxp/Promoter;->ad_words:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method protected b()V
    .locals 4

    .prologue
    .line 163
    iget-object v0, p0, Lcom/umeng/newxp/view/an;->k:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v0, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->timeLine:[J

    const/4 v1, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 164
    iget-object v0, p0, Lcom/umeng/newxp/view/an;->j:Lcom/umeng/newxp/view/UGallery;

    new-instance v1, Lcom/umeng/newxp/view/aq;

    invoke-direct {v1, p0}, Lcom/umeng/newxp/view/aq;-><init>(Lcom/umeng/newxp/view/an;)V

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/view/UGallery;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 184
    iget-object v0, p0, Lcom/umeng/newxp/view/an;->j:Lcom/umeng/newxp/view/UGallery;

    new-instance v1, Lcom/umeng/newxp/view/ar;

    invoke-direct {v1, p0}, Lcom/umeng/newxp/view/ar;-><init>(Lcom/umeng/newxp/view/an;)V

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/view/UGallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 194
    iget-object v0, p0, Lcom/umeng/newxp/view/an;->d:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/umeng/newxp/view/an;->a(Landroid/view/View;)V

    .line 196
    iget-object v0, p0, Lcom/umeng/newxp/view/an;->j:Lcom/umeng/newxp/view/UGallery;

    new-instance v1, Lcom/umeng/newxp/view/as;

    invoke-direct {v1, p0}, Lcom/umeng/newxp/view/as;-><init>(Lcom/umeng/newxp/view/an;)V

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/view/UGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 261
    iget-object v0, p0, Lcom/umeng/newxp/view/an;->j:Lcom/umeng/newxp/view/UGallery;

    new-instance v1, Lcom/umeng/newxp/view/au;

    invoke-direct {v1, p0}, Lcom/umeng/newxp/view/au;-><init>(Lcom/umeng/newxp/view/an;)V

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/view/UGallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 295
    iget-object v0, p0, Lcom/umeng/newxp/view/an;->j:Lcom/umeng/newxp/view/UGallery;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/view/UGallery;->setSelection(I)V

    .line 297
    iget-object v0, p0, Lcom/umeng/newxp/view/an;->e:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/umeng/newxp/view/an;->a(Landroid/view/ViewGroup;)V

    .line 299
    iget-object v0, p0, Lcom/umeng/newxp/view/an;->k:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v0, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->timeLine:[J

    const/4 v1, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 300
    return-void
.end method
