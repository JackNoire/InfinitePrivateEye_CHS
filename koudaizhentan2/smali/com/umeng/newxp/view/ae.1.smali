.class public Lcom/umeng/newxp/view/ae;
.super Ljava/lang/Object;
.source "Hypertextlink.java"


# static fields
.field protected static d:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:I = 0x12c

.field private static final f:I = -0x1000000


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/view/ViewGroup;

.field public c:Lcom/umeng/newxp/controller/ExchangeDataService;

.field private g:I

.field private h:Landroid/widget/ViewFlipper;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Lcom/umeng/newxp/controller/a$a;

.field private l:Lcom/umeng/newxp/controller/a$a;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;"
        }
    .end annotation
.end field

.field private n:I

.field private o:Lcom/umeng/newxp/controller/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;IILcom/umeng/newxp/controller/ExchangeDataService;)V
    .locals 3

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/umeng/newxp/view/ae;->a:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/umeng/newxp/view/ae;->b:Landroid/view/ViewGroup;

    .line 65
    iput-object p5, p0, Lcom/umeng/newxp/view/ae;->c:Lcom/umeng/newxp/controller/ExchangeDataService;

    .line 66
    iput p3, p0, Lcom/umeng/newxp/view/ae;->g:I

    .line 67
    iput p4, p0, Lcom/umeng/newxp/view/ae;->n:I

    .line 68
    sget-object v0, Lcom/umeng/newxp/view/ae;->d:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/umeng/newxp/view/ae;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/umeng/newxp/view/ae;->b()V

    .line 70
    :cond_1
    new-instance v0, Lcom/umeng/newxp/view/af;

    invoke-direct {v0, p0}, Lcom/umeng/newxp/view/af;-><init>(Lcom/umeng/newxp/view/ae;)V

    .line 81
    iget-object v1, p0, Lcom/umeng/newxp/view/ae;->c:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v1, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->preloadData:Lcom/umeng/newxp/a;

    if-eqz v1, :cond_3

    .line 82
    iget-object v1, p0, Lcom/umeng/newxp/view/ae;->c:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v1, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->preloadData:Lcom/umeng/newxp/a;

    iget-object v1, v1, Lcom/umeng/newxp/a;->a:Lcom/umeng/newxp/a$a;

    sget-object v2, Lcom/umeng/newxp/a$a;->a:Lcom/umeng/newxp/a$a;

    if-ne v1, v2, :cond_3

    .line 83
    iget-object v1, p0, Lcom/umeng/newxp/view/ae;->c:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v1, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->preloadData:Lcom/umeng/newxp/a;

    invoke-virtual {v1}, Lcom/umeng/newxp/a;->b()Ljava/util/List;

    move-result-object v1

    .line 84
    if-nez v1, :cond_2

    .line 85
    iget-object v1, p0, Lcom/umeng/newxp/view/ae;->c:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v2, p0, Lcom/umeng/newxp/view/ae;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/umeng/newxp/controller/ExchangeDataService;->requestDataAsyn(Landroid/content/Context;Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;)V

    .line 91
    :goto_0
    return-void

    .line 87
    :cond_2
    invoke-direct {p0, v1}, Lcom/umeng/newxp/view/ae;->b(Ljava/util/List;)V

    goto :goto_0

    .line 89
    :cond_3
    iget-object v1, p0, Lcom/umeng/newxp/view/ae;->c:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v2, p0, Lcom/umeng/newxp/view/ae;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/umeng/newxp/controller/ExchangeDataService;->requestDataAsyn(Landroid/content/Context;Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;)V

    goto :goto_0
.end method

.method private a(Lcom/umeng/newxp/Promoter;)Landroid/text/SpannableString;
    .locals 5

    .prologue
    .line 286
    iget-object v0, p1, Lcom/umeng/newxp/Promoter;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/umeng/newxp/Promoter;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 313
    :goto_0
    return-object v0

    .line 288
    :cond_1
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p1, Lcom/umeng/newxp/Promoter;->title:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 289
    new-instance v1, Lcom/umeng/newxp/view/ah;

    invoke-direct {v1, p0, p1}, Lcom/umeng/newxp/view/ah;-><init>(Lcom/umeng/newxp/view/ae;Lcom/umeng/newxp/Promoter;)V

    .line 312
    const/4 v2, 0x0

    iget-object v3, p1, Lcom/umeng/newxp/Promoter;->title:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/umeng/newxp/view/ae;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/umeng/newxp/view/ae;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method private a(Landroid/widget/TextView;Lcom/umeng/newxp/Promoter;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 217
    invoke-direct {p0, p2}, Lcom/umeng/newxp/view/ae;->a(Lcom/umeng/newxp/Promoter;)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget v0, p0, Lcom/umeng/newxp/view/ae;->n:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/umeng/newxp/view/ae;->n:I

    int-to-float v0, v0

    invoke-virtual {p1, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 229
    :goto_0
    return-void

    .line 223
    :cond_0
    const/4 v1, 0x3

    :try_start_0
    sget-object v0, Lcom/umeng/newxp/view/ae;->d:Ljava/util/Map;

    iget-object v2, p2, Lcom/umeng/newxp/Promoter;->text_size:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Hypertextlink adapter textsize error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 226
    iget-object v2, p2, Lcom/umeng/newxp/Promoter;->text_size:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 225
    invoke-static {v0, v1}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget v0, p0, Lcom/umeng/newxp/view/ae;->n:I

    int-to-float v0, v0

    invoke-virtual {p1, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0
.end method

.method private a(Landroid/widget/ViewFlipper;)V
    .locals 5

    .prologue
    const-wide/16 v3, 0x12c

    .line 232
    iget-object v0, p0, Lcom/umeng/newxp/view/ae;->a:Landroid/content/Context;

    .line 233
    iget-object v1, p0, Lcom/umeng/newxp/view/ae;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/newxp/a/a;->e(Landroid/content/Context;)I

    move-result v1

    .line 232
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 234
    iget-object v1, p0, Lcom/umeng/newxp/view/ae;->a:Landroid/content/Context;

    .line 235
    iget-object v2, p0, Lcom/umeng/newxp/view/ae;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/newxp/a/a;->j(Landroid/content/Context;)I

    move-result v2

    .line 234
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 236
    new-instance v2, Lcom/umeng/newxp/view/ag;

    invoke-direct {v2, p0}, Lcom/umeng/newxp/view/ag;-><init>(Lcom/umeng/newxp/view/ae;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 251
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 252
    invoke-virtual {v1, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 253
    invoke-virtual {p1, v0}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 254
    invoke-virtual {p1, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 255
    return-void
.end method

.method private a(Lcom/umeng/newxp/controller/a$a;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 276
    new-instance v0, Lcom/umeng/newxp/net/e$a;

    iget-object v1, p0, Lcom/umeng/newxp/view/ae;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/umeng/newxp/net/e$a;-><init>(Landroid/content/Context;)V

    .line 277
    invoke-virtual {v0, v3}, Lcom/umeng/newxp/net/e$a;->a(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/umeng/newxp/net/e$a;->b(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/umeng/newxp/net/e$a;->d(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 278
    iget-object v1, p0, Lcom/umeng/newxp/view/ae;->c:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-virtual {v1}, Lcom/umeng/newxp/controller/ExchangeDataService;->getTimeConsuming()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->d(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 279
    iget v1, p0, Lcom/umeng/newxp/view/ae;->g:I

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->c(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/umeng/newxp/Promoter;

    iget-object v2, p1, Lcom/umeng/newxp/controller/a$a;->a:Lcom/umeng/newxp/Promoter;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a([Lcom/umeng/newxp/Promoter;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 280
    iget-object v1, p0, Lcom/umeng/newxp/view/ae;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/newxp/view/ae;->c:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v1, v2}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->b(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/newxp/view/ae;->c:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v1, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/newxp/view/ae;->c:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v1, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->c(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 281
    invoke-virtual {v0}, Lcom/umeng/newxp/net/e$a;->a()Lcom/umeng/newxp/net/e;

    move-result-object v0

    .line 282
    new-instance v1, Lcom/umeng/newxp/net/XpReportClient;

    iget-object v2, p0, Lcom/umeng/newxp/view/ae;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/umeng/newxp/net/XpReportClient;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/umeng/newxp/net/XpReportClient;->sendAsync(Lcom/umeng/common/net/o;Lcom/umeng/common/net/n$a;)V

    .line 283
    return-void
.end method

.method static synthetic a(Lcom/umeng/newxp/view/ae;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 317
    invoke-direct {p0, p1}, Lcom/umeng/newxp/view/ae;->b(Ljava/util/List;)V

    return-void
.end method

.method static synthetic b(Lcom/umeng/newxp/view/ae;)Lcom/umeng/newxp/controller/a$a;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/umeng/newxp/view/ae;->k:Lcom/umeng/newxp/controller/a$a;

    return-object v0
.end method

.method private b()V
    .locals 8

    .prologue
    const/high16 v7, 0x41100000    # 9.0f

    const/high16 v6, 0x40f00000    # 7.5f

    const/high16 v5, 0x40d00000    # 6.5f

    const/high16 v4, 0x40b00000    # 5.5f

    const/high16 v3, 0x40a00000    # 5.0f

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/newxp/view/ae;->d:Ljava/util/Map;

    .line 104
    sget-object v0, Lcom/umeng/newxp/view/ae;->d:Ljava/util/Map;

    const-string v1, "\u521d\u53f7"

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/umeng/newxp/view/ae;->d:Ljava/util/Map;

    const-string v1, "\u5c0f\u521d"

    const/high16 v2, 0x42100000    # 36.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/umeng/newxp/view/ae;->d:Ljava/util/Map;

    const-string v1, "\u4e00\u53f7"

    const/high16 v2, 0x41d00000    # 26.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/umeng/newxp/view/ae;->d:Ljava/util/Map;

    const-string v1, "\u5c0f\u4e00"

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/umeng/newxp/view/ae;->d:Ljava/util/Map;

    const-string v1, "\u4e8c\u53f7"

    const/high16 v2, 0x41b00000    # 22.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/umeng/newxp/view/ae;->d:Ljava/util/Map;

    const-string v1, "\u5c0f\u4e8c"

    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/umeng/newxp/view/ae;->d:Ljava/util/Map;

    const-string v1, "\u4e09\u53f7"

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/umeng/newxp/view/ae;->d:Ljava/util/Map;

    const-string v1, "\u5c0f\u4e09"

    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/umeng/newxp/view/ae;->d:Ljava/util/Map;

    const-string v1, "\u56db\u53f7"

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/umeng/newxp/view/ae;->d:Ljava/util/Map;

    const-string v1, "\u5c0f\u56db"

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/umeng/newxp/view/ae;->d:Ljava/util/Map;

    const-string v1, "\u4e94\u53f7"

    const/high16 v2, 0x41280000    # 10.5f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/umeng/newxp/view/ae;->d:Ljava/util/Map;

    const-string v1, "\u5c0f\u4e94"

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/umeng/newxp/view/ae;->d:Ljava/util/Map;

    const-string v1, "\u516d\u53f7"

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/umeng/newxp/view/ae;->d:Ljava/util/Map;

    const-string v1, "\u5c0f\u516d"

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/umeng/newxp/view/ae;->d:Ljava/util/Map;

    const-string v1, "\u4e03\u53f7"

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/umeng/newxp/view/ae;->d:Ljava/util/Map;

    const-string v1, "\u516b\u53f7"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/umeng/newxp/view/ae;->d:Ljava/util/Map;

    const-string v1, "5"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/umeng/newxp/view/ae;->d:Ljava/util/Map;

    const-string v1, "5.5"

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/umeng/newxp/view/ae;->d:Ljava/util/Map;

    const-string v1, "6.5"

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/umeng/newxp/view/ae;->d:Ljava/util/Map;

    const-string v1, "7.5"

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/umeng/newxp/view/ae;->d:Ljava/util/Map;

    const-string v1, "8"

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/umeng/newxp/view/ae;->d:Ljava/util/Map;

    const-string v1, "9"

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/umeng/newxp/view/ae;->d:Ljava/util/Map;

    const-string v1, "10"

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/umeng/newxp/view/ae;->d:Ljava/util/Map;

    const-string v1, "10.5"

    const/high16 v2, 0x41280000    # 10.5f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/umeng/newxp/view/ae;->d:Ljava/util/Map;

    const-string v1, "11"

    const/high16 v2, 0x41300000    # 11.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/umeng/newxp/view/ae;->d:Ljava/util/Map;

    const-string v1, "12"

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/umeng/newxp/view/ae;->d:Ljava/util/Map;

    const-string v1, "14"

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/umeng/newxp/view/ae;->d:Ljava/util/Map;

    const-string v1, "16"

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/umeng/newxp/view/ae;->d:Ljava/util/Map;

    const-string v1, "18"

    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/umeng/newxp/view/ae;->d:Ljava/util/Map;

    const-string v1, "20"

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/umeng/newxp/view/ae;->d:Ljava/util/Map;

    const-string v1, "22"

    const/high16 v2, 0x41b00000    # 22.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/umeng/newxp/view/ae;->d:Ljava/util/Map;

    const-string v1, "24"

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/umeng/newxp/view/ae;->d:Ljava/util/Map;

    const-string v1, "26"

    const/high16 v2, 0x41d00000    # 26.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/umeng/newxp/view/ae;->d:Ljava/util/Map;

    const-string v1, "28"

    const/high16 v2, 0x41e00000    # 28.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/umeng/newxp/view/ae;->d:Ljava/util/Map;

    const-string v1, "36"

    const/high16 v2, 0x42100000    # 36.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/umeng/newxp/view/ae;->d:Ljava/util/Map;

    const-string v1, "48"

    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/umeng/newxp/view/ae;->d:Ljava/util/Map;

    const-string v1, "72"

    const/high16 v2, 0x42900000    # 72.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
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
    .line 318
    invoke-virtual {p0, p1}, Lcom/umeng/newxp/view/ae;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/newxp/view/ae;->m:Ljava/util/List;

    .line 319
    new-instance v0, Lcom/umeng/newxp/controller/a;

    iget-object v1, p0, Lcom/umeng/newxp/view/ae;->m:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/umeng/newxp/controller/a;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/umeng/newxp/view/ae;->o:Lcom/umeng/newxp/controller/a;

    .line 321
    iget-object v0, p0, Lcom/umeng/newxp/view/ae;->m:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/newxp/view/ae;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/umeng/newxp/view/ae;->b:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/ae;->a(Landroid/view/ViewGroup;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/umeng/newxp/view/ae;)Lcom/umeng/newxp/controller/a$a;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/umeng/newxp/view/ae;->l:Lcom/umeng/newxp/controller/a$a;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 198
    iget-object v0, p0, Lcom/umeng/newxp/view/ae;->i:Landroid/widget/TextView;

    .line 199
    iget-object v1, p0, Lcom/umeng/newxp/view/ae;->j:Landroid/widget/TextView;

    .line 201
    iget-object v2, p0, Lcom/umeng/newxp/view/ae;->o:Lcom/umeng/newxp/controller/a;

    invoke-virtual {v2}, Lcom/umeng/newxp/controller/a;->e()Lcom/umeng/newxp/controller/a$a;

    move-result-object v2

    iput-object v2, p0, Lcom/umeng/newxp/view/ae;->k:Lcom/umeng/newxp/controller/a$a;

    .line 202
    iget-object v2, p0, Lcom/umeng/newxp/view/ae;->o:Lcom/umeng/newxp/controller/a;

    invoke-virtual {v2}, Lcom/umeng/newxp/controller/a;->e()Lcom/umeng/newxp/controller/a$a;

    move-result-object v2

    iput-object v2, p0, Lcom/umeng/newxp/view/ae;->l:Lcom/umeng/newxp/controller/a$a;

    .line 203
    iget-object v2, p0, Lcom/umeng/newxp/view/ae;->k:Lcom/umeng/newxp/controller/a$a;

    iget-object v2, v2, Lcom/umeng/newxp/controller/a$a;->a:Lcom/umeng/newxp/Promoter;

    invoke-direct {p0, v0, v2}, Lcom/umeng/newxp/view/ae;->a(Landroid/widget/TextView;Lcom/umeng/newxp/Promoter;)V

    .line 204
    iget-object v2, p0, Lcom/umeng/newxp/view/ae;->l:Lcom/umeng/newxp/controller/a$a;

    iget-object v2, v2, Lcom/umeng/newxp/controller/a$a;->a:Lcom/umeng/newxp/Promoter;

    invoke-direct {p0, v1, v2}, Lcom/umeng/newxp/view/ae;->a(Landroid/widget/TextView;Lcom/umeng/newxp/Promoter;)V

    .line 206
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLinksClickable(Z)V

    .line 207
    invoke-virtual {v0}, Landroid/widget/TextView;->getLinksClickable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    .line 207
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 210
    :cond_0
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLinksClickable(Z)V

    .line 211
    invoke-virtual {v1}, Landroid/widget/TextView;->getLinksClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    .line 211
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 214
    :cond_1
    return-void
.end method

.method static synthetic d(Lcom/umeng/newxp/view/ae;)I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/umeng/newxp/view/ae;->g:I

    return v0
.end method


# virtual methods
.method protected a(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 145
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 151
    return-object v1

    .line 145
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/Promoter;

    .line 146
    iget v3, v0, Lcom/umeng/newxp/Promoter;->display_type:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    iget-object v3, v0, Lcom/umeng/newxp/Promoter;->title:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/umeng/newxp/Promoter;->url:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 147
    iget-object v3, v0, Lcom/umeng/newxp/Promoter;->text_size:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/umeng/newxp/Promoter;->text_color:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 148
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected a()V
    .locals 3

    .prologue
    .line 258
    iget-object v0, p0, Lcom/umeng/newxp/view/ae;->h:Landroid/widget/ViewFlipper;

    .line 259
    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 261
    iget-object v1, p0, Lcom/umeng/newxp/view/ae;->o:Lcom/umeng/newxp/controller/a;

    invoke-virtual {v1}, Lcom/umeng/newxp/controller/a;->e()Lcom/umeng/newxp/controller/a$a;

    move-result-object v1

    .line 262
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/umeng/newxp/view/ae;->i:Landroid/widget/TextView;

    if-ne v0, v2, :cond_0

    .line 263
    iget-object v0, p0, Lcom/umeng/newxp/view/ae;->j:Landroid/widget/TextView;

    .line 264
    iget-object v2, p0, Lcom/umeng/newxp/view/ae;->k:Lcom/umeng/newxp/controller/a$a;

    invoke-direct {p0, v2}, Lcom/umeng/newxp/view/ae;->a(Lcom/umeng/newxp/controller/a$a;)V

    .line 265
    iput-object v1, p0, Lcom/umeng/newxp/view/ae;->l:Lcom/umeng/newxp/controller/a$a;

    .line 272
    :goto_0
    iget-object v1, v1, Lcom/umeng/newxp/controller/a$a;->a:Lcom/umeng/newxp/Promoter;

    invoke-direct {p0, v0, v1}, Lcom/umeng/newxp/view/ae;->a(Landroid/widget/TextView;Lcom/umeng/newxp/Promoter;)V

    .line 273
    return-void

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/umeng/newxp/view/ae;->i:Landroid/widget/TextView;

    .line 268
    iget-object v2, p0, Lcom/umeng/newxp/view/ae;->l:Lcom/umeng/newxp/controller/a$a;

    invoke-direct {p0, v2}, Lcom/umeng/newxp/view/ae;->a(Lcom/umeng/newxp/controller/a$a;)V

    .line 269
    iput-object v1, p0, Lcom/umeng/newxp/view/ae;->k:Lcom/umeng/newxp/controller/a$a;

    goto :goto_0
.end method

.method protected a(Landroid/view/ViewGroup;)V
    .locals 7

    .prologue
    const/high16 v6, -0x1000000

    const/4 v5, 0x1

    const/4 v4, -0x2

    .line 155
    iget-object v0, p0, Lcom/umeng/newxp/view/ae;->c:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v0, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->timeLine:[J

    const/4 v1, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 156
    new-instance v0, Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/umeng/newxp/view/ae;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/newxp/view/ae;->h:Landroid/widget/ViewFlipper;

    .line 157
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {v1, v0, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 159
    iget-object v2, p0, Lcom/umeng/newxp/view/ae;->h:Landroid/widget/ViewFlipper;

    sget-boolean v0, Lcom/umeng/newxp/common/ExchangeConstants;->DEBUG_MODE:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xbb8

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ViewFlipper;->setFlipInterval(I)V

    .line 162
    iget-object v0, p0, Lcom/umeng/newxp/view/ae;->h:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/umeng/newxp/view/ae;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/newxp/view/ae;->i:Landroid/widget/TextView;

    .line 165
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 167
    iget-object v1, p0, Lcom/umeng/newxp/view/ae;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 168
    iget-object v1, p0, Lcom/umeng/newxp/view/ae;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 169
    iget-object v1, p0, Lcom/umeng/newxp/view/ae;->i:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 170
    iget-object v1, p0, Lcom/umeng/newxp/view/ae;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/umeng/newxp/view/ae;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/newxp/view/ae;->j:Landroid/widget/TextView;

    .line 173
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 175
    iget-object v1, p0, Lcom/umeng/newxp/view/ae;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 176
    iget-object v1, p0, Lcom/umeng/newxp/view/ae;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 177
    iget-object v1, p0, Lcom/umeng/newxp/view/ae;->j:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 178
    iget-object v1, p0, Lcom/umeng/newxp/view/ae;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    invoke-direct {p0}, Lcom/umeng/newxp/view/ae;->c()V

    .line 181
    iget-object v0, p0, Lcom/umeng/newxp/view/ae;->h:Landroid/widget/ViewFlipper;

    invoke-direct {p0, v0}, Lcom/umeng/newxp/view/ae;->a(Landroid/widget/ViewFlipper;)V

    .line 183
    iget-object v0, p0, Lcom/umeng/newxp/view/ae;->h:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/umeng/newxp/view/ae;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 184
    iget-object v0, p0, Lcom/umeng/newxp/view/ae;->h:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/umeng/newxp/view/ae;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 186
    iget-object v0, p0, Lcom/umeng/newxp/view/ae;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v5, :cond_0

    .line 187
    iget-object v0, p0, Lcom/umeng/newxp/view/ae;->h:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->startFlipping()V

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/umeng/newxp/view/ae;->h:Landroid/widget/ViewFlipper;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 192
    iget-object v0, p0, Lcom/umeng/newxp/view/ae;->c:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v0, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->timeLine:[J

    const/4 v1, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 194
    iget-object v0, p0, Lcom/umeng/newxp/view/ae;->k:Lcom/umeng/newxp/controller/a$a;

    invoke-direct {p0, v0}, Lcom/umeng/newxp/view/ae;->a(Lcom/umeng/newxp/controller/a$a;)V

    .line 195
    return-void

    .line 160
    :cond_1
    sget v0, Lcom/umeng/newxp/common/ExchangeConstants;->REFRESH_INTERVAL:I

    goto/16 :goto_0
.end method
