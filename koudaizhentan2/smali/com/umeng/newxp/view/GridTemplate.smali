.class public Lcom/umeng/newxp/view/GridTemplate;
.super Ljava/lang/Object;
.source "GridTemplate.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/umeng/newxp/view/widget/SwipeViewPointer;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;"
        }
    .end annotation
.end field

.field public contentView:Landroid/view/View;

.field private d:Landroid/content/Context;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/view/widget/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/umeng/newxp/view/widget/SwipeView;

.field private g:Lcom/umeng/newxp/controller/ExchangeDataService;

.field private h:I

.field private i:Lcom/umeng/newxp/view/GridTemplateConfig;

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/umeng/newxp/view/widget/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/umeng/newxp/view/GridTemplate;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/newxp/view/GridTemplate;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/umeng/newxp/controller/ExchangeDataService;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;",
            "Lcom/umeng/newxp/controller/ExchangeDataService;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/umeng/newxp/view/GridTemplate;-><init>(Ljava/util/List;Lcom/umeng/newxp/controller/ExchangeDataService;Landroid/content/Context;Lcom/umeng/newxp/view/GridTemplateConfig;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/umeng/newxp/controller/ExchangeDataService;Landroid/content/Context;Lcom/umeng/newxp/view/GridTemplateConfig;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;",
            "Lcom/umeng/newxp/controller/ExchangeDataService;",
            "Landroid/content/Context;",
            "Lcom/umeng/newxp/view/GridTemplateConfig;",
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->j:Ljava/util/Map;

    .line 60
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->c:Ljava/util/List;

    .line 62
    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 65
    :cond_0
    iput-object p3, p0, Lcom/umeng/newxp/view/GridTemplate;->d:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/umeng/newxp/view/GridTemplate;->g:Lcom/umeng/newxp/controller/ExchangeDataService;

    .line 67
    if-nez p4, :cond_1

    new-instance p4, Lcom/umeng/newxp/view/GridTemplateConfig;

    invoke-direct {p4}, Lcom/umeng/newxp/view/GridTemplateConfig;-><init>()V

    :cond_1
    iput-object p4, p0, Lcom/umeng/newxp/view/GridTemplate;->i:Lcom/umeng/newxp/view/GridTemplateConfig;

    .line 69
    iget v0, p2, Lcom/umeng/newxp/controller/ExchangeDataService;->layoutType:I

    iput v0, p0, Lcom/umeng/newxp/view/GridTemplate;->h:I

    .line 71
    invoke-direct {p0}, Lcom/umeng/newxp/view/GridTemplate;->e()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->contentView:Landroid/view/View;

    .line 73
    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->c:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 74
    invoke-direct {p0}, Lcom/umeng/newxp/view/GridTemplate;->b()V

    .line 87
    :goto_0
    return-void

    .line 76
    :cond_2
    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->g:Lcom/umeng/newxp/controller/ExchangeDataService;

    const-string v1, ""

    iput-object v1, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->g:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v1, p0, Lcom/umeng/newxp/view/GridTemplate;->d:Landroid/content/Context;

    new-instance v2, Lcom/umeng/newxp/view/Y;

    invoke-direct {v2, p0}, Lcom/umeng/newxp/view/Y;-><init>(Lcom/umeng/newxp/view/GridTemplate;)V

    invoke-virtual {v0, v1, v2}, Lcom/umeng/newxp/controller/ExchangeDataService;->requestDataAsyn(Landroid/content/Context;Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Lcom/umeng/newxp/view/widget/a$b;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 309
    new-instance v0, Lcom/umeng/newxp/view/aa;

    iget-object v1, p0, Lcom/umeng/newxp/view/GridTemplate;->c:Ljava/util/List;

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/umeng/newxp/view/aa;-><init>(Lcom/umeng/newxp/view/GridTemplate;Ljava/util/List;Lcom/umeng/newxp/view/widget/a$b;Landroid/content/Context;)V

    .line 351
    new-instance v1, Lcom/umeng/newxp/view/widget/a;

    iget-object v2, p0, Lcom/umeng/newxp/view/GridTemplate;->i:Lcom/umeng/newxp/view/GridTemplateConfig;

    invoke-direct {v1, p1, v0, v2}, Lcom/umeng/newxp/view/widget/a;-><init>(Landroid/content/Context;Lcom/umeng/newxp/view/widget/a$a;Lcom/umeng/newxp/view/GridTemplateConfig;)V

    .line 352
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Lcom/umeng/newxp/view/widget/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 354
    return-object v1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/umeng/newxp/view/GridTemplate;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/util/List;III)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;III)",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/view/widget/a$b;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 216
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 217
    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->i:Lcom/umeng/newxp/view/GridTemplateConfig;

    iget-boolean v0, v0, Lcom/umeng/newxp/view/GridTemplateConfig;->c:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    move-object v0, v4

    .line 243
    :goto_0
    return-object v0

    .line 220
    :cond_0
    if-nez p1, :cond_5

    move v0, v2

    .line 221
    :goto_1
    sub-int v1, p3, p2

    if-ge v1, v0, :cond_1

    sub-int v0, p3, p2

    .line 223
    :cond_1
    iget-object v1, p0, Lcom/umeng/newxp/view/GridTemplate;->i:Lcom/umeng/newxp/view/GridTemplateConfig;

    iget v1, v1, Lcom/umeng/newxp/view/GridTemplateConfig;->maxPsize:I

    rem-int v1, v0, v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/umeng/newxp/view/GridTemplate;->i:Lcom/umeng/newxp/view/GridTemplateConfig;

    iget v1, v1, Lcom/umeng/newxp/view/GridTemplateConfig;->maxPsize:I

    div-int/2addr v0, v1

    .line 226
    :goto_2
    add-int/lit8 v6, p3, -0x1

    move v1, v2

    .line 227
    :goto_3
    iget-object v3, p0, Lcom/umeng/newxp/view/GridTemplate;->i:Lcom/umeng/newxp/view/GridTemplateConfig;

    iget-boolean v3, v3, Lcom/umeng/newxp/view/GridTemplateConfig;->c:Z

    if-eqz v3, :cond_9

    move v3, v0

    :goto_4
    if-lt v1, v3, :cond_7

    .line 238
    if-lez p4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v5, :cond_4

    .line 239
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/view/widget/a$b;

    .line 240
    iget v1, v0, Lcom/umeng/newxp/view/widget/a$b;->b:I

    iget-object v3, p0, Lcom/umeng/newxp/view/GridTemplate;->i:Lcom/umeng/newxp/view/GridTemplateConfig;

    iget v3, v3, Lcom/umeng/newxp/view/GridTemplateConfig;->maxPsize:I

    if-ge v1, v3, :cond_4

    iput-boolean v2, v0, Lcom/umeng/newxp/view/widget/a$b;->e:Z

    :cond_4
    move-object v0, v4

    .line 243
    goto :goto_0

    .line 220
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1

    .line 223
    :cond_6
    iget-object v1, p0, Lcom/umeng/newxp/view/GridTemplate;->i:Lcom/umeng/newxp/view/GridTemplateConfig;

    iget v1, v1, Lcom/umeng/newxp/view/GridTemplateConfig;->maxPsize:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 228
    :cond_7
    iget-object v3, p0, Lcom/umeng/newxp/view/GridTemplate;->i:Lcom/umeng/newxp/view/GridTemplateConfig;

    iget v3, v3, Lcom/umeng/newxp/view/GridTemplateConfig;->maxPsize:I

    add-int/2addr v3, p2

    add-int/lit8 v3, v3, -0x1

    sub-int v3, v6, v3

    .line 229
    new-instance v7, Lcom/umeng/newxp/view/widget/a$b;

    if-gez v3, :cond_8

    iget-object v8, p0, Lcom/umeng/newxp/view/GridTemplate;->i:Lcom/umeng/newxp/view/GridTemplateConfig;

    iget v8, v8, Lcom/umeng/newxp/view/GridTemplateConfig;->maxPsize:I

    add-int/2addr v3, v8

    :goto_5
    invoke-direct {v7, p2, v3}, Lcom/umeng/newxp/view/widget/a$b;-><init>(II)V

    .line 231
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    add-int v3, p4, v1

    iput v3, v7, Lcom/umeng/newxp/view/widget/a$b;->c:I

    .line 233
    iget v3, v7, Lcom/umeng/newxp/view/widget/a$b;->d:I

    add-int/lit8 p2, v3, 0x1

    .line 234
    iput-boolean v5, v7, Lcom/umeng/newxp/view/widget/a$b;->e:Z

    .line 227
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 230
    :cond_8
    iget-object v3, p0, Lcom/umeng/newxp/view/GridTemplate;->i:Lcom/umeng/newxp/view/GridTemplateConfig;

    iget v3, v3, Lcom/umeng/newxp/view/GridTemplateConfig;->maxPsize:I

    goto :goto_5

    :cond_9
    move v3, v5

    .line 227
    goto :goto_4
.end method

.method private a(III)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 284
    sub-int v0, p2, p1

    add-int/lit8 v3, v0, 0x1

    .line 285
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 286
    :goto_0
    if-lt v1, v3, :cond_0

    .line 294
    sget-object v0, Lcom/umeng/newxp/view/GridTemplate;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "============"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "============="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 296
    new-instance v0, Lcom/umeng/newxp/net/e$a;

    iget-object v1, p0, Lcom/umeng/newxp/view/GridTemplate;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/umeng/newxp/net/e$a;-><init>(Landroid/content/Context;)V

    .line 297
    invoke-virtual {v0, v2}, Lcom/umeng/newxp/net/e$a;->a(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/umeng/newxp/net/e$a;->b(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 298
    iget-object v1, p0, Lcom/umeng/newxp/view/GridTemplate;->g:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-virtual {v1}, Lcom/umeng/newxp/controller/ExchangeDataService;->getTimeConsuming()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->d(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->d(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 299
    iget-object v1, p0, Lcom/umeng/newxp/view/GridTemplate;->g:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget v1, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->layoutType:I

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->c(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v1

    .line 300
    new-array v0, v2, [Lcom/umeng/newxp/Promoter;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/newxp/Promoter;

    invoke-virtual {v1, v0}, Lcom/umeng/newxp/net/e$a;->a([Lcom/umeng/newxp/Promoter;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/newxp/view/GridTemplate;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/newxp/view/GridTemplate;->g:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v1, v2}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->b(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/newxp/view/GridTemplate;->g:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v1, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 301
    iget-object v1, p0, Lcom/umeng/newxp/view/GridTemplate;->g:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v1, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->c(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/newxp/net/e$a;->a()Lcom/umeng/newxp/net/e;

    move-result-object v0

    .line 302
    new-instance v1, Lcom/umeng/newxp/net/XpReportClient;

    iget-object v2, p0, Lcom/umeng/newxp/view/GridTemplate;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/umeng/newxp/net/XpReportClient;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/umeng/newxp/net/XpReportClient;->sendAsync(Lcom/umeng/common/net/o;Lcom/umeng/common/net/n$a;)V

    .line 305
    :goto_1
    return-void

    .line 288
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->c:Ljava/util/List;

    add-int v5, p1, v1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/Promoter;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    sget-object v5, Lcom/umeng/newxp/view/GridTemplate;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v0, "Report :"

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->c:Ljava/util/List;

    add-int v7, p1, v1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/Promoter;

    iget-object v0, v0, Lcom/umeng/newxp/Promoter;->title:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 290
    :catch_0
    move-exception v0

    .line 291
    sget-object v5, Lcom/umeng/newxp/view/GridTemplate;->a:Ljava/lang/String;

    const-string v6, "report error "

    invoke-static {v5, v6, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    .line 304
    :cond_1
    sget-object v0, Lcom/umeng/newxp/view/GridTemplate;->a:Ljava/lang/String;

    const-string v1, "report error no promoter need report."

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/umeng/newxp/view/GridTemplate;)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/umeng/newxp/view/GridTemplate;->b()V

    return-void
.end method

.method static synthetic a(Lcom/umeng/newxp/view/GridTemplate;III)V
    .locals 0

    .prologue
    .line 283
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/newxp/view/GridTemplate;->a(III)V

    return-void
.end method

.method static synthetic a(Lcom/umeng/newxp/view/GridTemplate;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/umeng/newxp/view/GridTemplate;->c:Ljava/util/List;

    return-void
.end method

.method static synthetic b(Lcom/umeng/newxp/view/GridTemplate;)Ljava/util/List;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->e:Ljava/util/List;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 97
    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->g:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v0, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->initializeListener:Lcom/umeng/newxp/controller/XpListenersCenter$InitializeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->g:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v2, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->initializeListener:Lcom/umeng/newxp/controller/XpListenersCenter$InitializeListener;

    .line 98
    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->c:Ljava/util/List;

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-interface {v2, v0}, Lcom/umeng/newxp/controller/XpListenersCenter$InitializeListener;->onReceived(I)V

    .line 99
    :cond_0
    iget-object v2, p0, Lcom/umeng/newxp/view/GridTemplate;->c:Ljava/util/List;

    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->c:Ljava/util/List;

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-direct {p0, v2, v1, v0, v1}, Lcom/umeng/newxp/view/GridTemplate;->a(Ljava/util/List;III)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->e:Ljava/util/List;

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->e:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/view/widget/a$b;

    .line 102
    iget v1, v0, Lcom/umeng/newxp/view/widget/a$b;->a:I

    iget v2, v0, Lcom/umeng/newxp/view/widget/a$b;->d:I

    iget v0, v0, Lcom/umeng/newxp/view/widget/a$b;->c:I

    invoke-direct {p0, v1, v2, v0}, Lcom/umeng/newxp/view/GridTemplate;->a(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_2
    invoke-direct {p0}, Lcom/umeng/newxp/view/GridTemplate;->c()V

    .line 107
    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->i:Lcom/umeng/newxp/view/GridTemplateConfig;

    iget-boolean v0, v0, Lcom/umeng/newxp/view/GridTemplateConfig;->c:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/umeng/newxp/view/GridTemplate;->requestNextPage()V

    .line 108
    :cond_1
    return-void

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 99
    :cond_3
    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1

    .line 103
    :catch_0
    move-exception v0

    .line 104
    sget-object v1, Lcom/umeng/newxp/view/GridTemplate;->a:Ljava/lang/String;

    const-string v2, "can`t send init page report "

    invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2
.end method

.method static synthetic c(Lcom/umeng/newxp/view/GridTemplate;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->d:Landroid/content/Context;

    return-object v0
.end method

.method private c()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x0

    .line 168
    move v2, v3

    :goto_0
    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_0

    .line 195
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/view/widget/a$b;

    .line 171
    iget-boolean v1, v0, Lcom/umeng/newxp/view/widget/a$b;->e:Z

    if-eqz v1, :cond_1

    .line 173
    iget-object v1, p0, Lcom/umeng/newxp/view/GridTemplate;->j:Ljava/util/Map;

    iget v4, v0, Lcom/umeng/newxp/view/widget/a$b;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 174
    iget-object v1, p0, Lcom/umeng/newxp/view/GridTemplate;->j:Ljava/util/Map;

    iget v4, v0, Lcom/umeng/newxp/view/widget/a$b;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/newxp/view/widget/a;

    .line 175
    iget-boolean v4, v0, Lcom/umeng/newxp/view/widget/a$b;->f:Z

    if-eqz v4, :cond_1

    .line 176
    invoke-virtual {v1, v3}, Lcom/umeng/newxp/view/widget/a;->a(Z)V

    .line 177
    iput-boolean v3, v0, Lcom/umeng/newxp/view/widget/a$b;->f:Z

    .line 168
    :cond_1
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 180
    :cond_2
    iget-object v1, p0, Lcom/umeng/newxp/view/GridTemplate;->d:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lcom/umeng/newxp/view/GridTemplate;->a(Landroid/content/Context;Lcom/umeng/newxp/view/widget/a$b;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/umeng/newxp/view/widget/a;

    .line 181
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Lcom/umeng/newxp/view/widget/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    iget-object v4, p0, Lcom/umeng/newxp/view/GridTemplate;->j:Ljava/util/Map;

    iget v0, v0, Lcom/umeng/newxp/view/widget/a$b;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->f:Lcom/umeng/newxp/view/widget/SwipeView;

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/view/widget/SwipeView;->addView(Landroid/view/View;)V

    .line 185
    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->i:Lcom/umeng/newxp/view/GridTemplateConfig;

    iget-boolean v0, v0, Lcom/umeng/newxp/view/GridTemplateConfig;->d:Z

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->f:Lcom/umeng/newxp/view/widget/SwipeView;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/widget/SwipeView;->getPageControl()Lcom/umeng/newxp/view/widget/SwipeViewPointer;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->f:Lcom/umeng/newxp/view/widget/SwipeView;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/widget/SwipeView;->getPageControl()Lcom/umeng/newxp/view/widget/SwipeViewPointer;

    move-result-object v0

    .line 187
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->addPageCount(I)V

    goto :goto_1

    .line 189
    :cond_3
    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->f:Lcom/umeng/newxp/view/widget/SwipeView;

    iget-object v1, p0, Lcom/umeng/newxp/view/GridTemplate;->b:Lcom/umeng/newxp/view/widget/SwipeViewPointer;

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/view/widget/SwipeView;->setPageControl(Lcom/umeng/newxp/view/widget/SwipeViewPointer;)V

    goto :goto_1
.end method

.method private d()I
    .locals 3

    .prologue
    .line 198
    const/4 v0, 0x0

    .line 199
    iget-object v1, p0, Lcom/umeng/newxp/view/GridTemplate;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 202
    return v1

    .line 199
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/view/widget/a$b;

    .line 200
    iget-boolean v0, v0, Lcom/umeng/newxp/view/widget/a$b;->e:Z

    if-eqz v0, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic d(Lcom/umeng/newxp/view/GridTemplate;)Lcom/umeng/newxp/controller/ExchangeDataService;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->g:Lcom/umeng/newxp/controller/ExchangeDataService;

    return-object v0
.end method

.method static synthetic e(Lcom/umeng/newxp/view/GridTemplate;)I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/umeng/newxp/view/GridTemplate;->h:I

    return v0
.end method

.method private e()Landroid/view/View;
    .locals 3

    .prologue
    .line 247
    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->d:Landroid/content/Context;

    .line 248
    iget-object v1, p0, Lcom/umeng/newxp/view/GridTemplate;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v1

    const-string v2, "umeng_xp_handler_gallery"

    invoke-virtual {v1, v2}, Lcom/umeng/common/c;->e(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    .line 247
    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 250
    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v0

    .line 251
    const-string v2, "umeng_xp_gallery"

    .line 250
    invoke-virtual {v0, v2}, Lcom/umeng/common/c;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/view/widget/SwipeView;

    iput-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->f:Lcom/umeng/newxp/view/widget/SwipeView;

    .line 253
    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->f:Lcom/umeng/newxp/view/widget/SwipeView;

    new-instance v2, Lcom/umeng/newxp/view/Z;

    invoke-direct {v2, p0}, Lcom/umeng/newxp/view/Z;-><init>(Lcom/umeng/newxp/view/GridTemplate;)V

    invoke-virtual {v0, v2}, Lcom/umeng/newxp/view/widget/SwipeView;->setOnPageChangedListener(Lcom/umeng/newxp/view/widget/SwipeView$a;)V

    .line 268
    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v0

    .line 269
    const-string v2, "umeng_xp_gallery_page_pointer"

    .line 268
    invoke-virtual {v0, v2}, Lcom/umeng/common/c;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/view/widget/SwipeViewPointer;

    iput-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->b:Lcom/umeng/newxp/view/widget/SwipeViewPointer;

    .line 271
    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->i:Lcom/umeng/newxp/view/GridTemplateConfig;

    iget-boolean v0, v0, Lcom/umeng/newxp/view/GridTemplateConfig;->d:Z

    if-eqz v0, :cond_2

    .line 272
    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->b:Lcom/umeng/newxp/view/widget/SwipeViewPointer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->i:Lcom/umeng/newxp/view/GridTemplateConfig;

    iget-object v0, v0, Lcom/umeng/newxp/view/GridTemplateConfig;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->b:Lcom/umeng/newxp/view/widget/SwipeViewPointer;

    iget-object v2, p0, Lcom/umeng/newxp/view/GridTemplate;->i:Lcom/umeng/newxp/view/GridTemplateConfig;

    iget-object v2, v2, Lcom/umeng/newxp/view/GridTemplateConfig;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->setActiveDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->i:Lcom/umeng/newxp/view/GridTemplateConfig;

    iget-object v0, v0, Lcom/umeng/newxp/view/GridTemplateConfig;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->b:Lcom/umeng/newxp/view/widget/SwipeViewPointer;

    .line 275
    iget-object v2, p0, Lcom/umeng/newxp/view/GridTemplate;->i:Lcom/umeng/newxp/view/GridTemplateConfig;

    iget-object v2, v2, Lcom/umeng/newxp/view/GridTemplateConfig;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->setInactiveDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 279
    :cond_1
    :goto_0
    return-object v1

    .line 277
    :cond_2
    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->b:Lcom/umeng/newxp/view/widget/SwipeViewPointer;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/umeng/newxp/view/GridTemplate;)Ljava/util/List;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->c:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public changed()V
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 91
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    return-void

    .line 91
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 92
    iget-object v2, p0, Lcom/umeng/newxp/view/GridTemplate;->j:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/view/widget/a;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/umeng/newxp/view/widget/a;->a(Z)V

    goto :goto_0
.end method

.method public debugNextPage(Ljava/util/List;)V
    .locals 3
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
    .line 381
    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 382
    invoke-virtual {p0}, Lcom/umeng/newxp/view/GridTemplate;->notifyTotalDataChanged()V

    .line 383
    sget-object v0, Lcom/umeng/newxp/view/GridTemplate;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Total Data changed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/umeng/newxp/view/GridTemplate;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    return-void
.end method

.method public notifyTotalDataChanged()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 115
    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/umeng/newxp/view/GridTemplate;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/view/widget/a$b;

    .line 118
    iget-object v1, p0, Lcom/umeng/newxp/view/GridTemplate;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v6, :cond_6

    .line 119
    iget-object v1, p0, Lcom/umeng/newxp/view/GridTemplate;->e:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/newxp/view/widget/a$b;

    iget v1, v1, Lcom/umeng/newxp/view/widget/a$b;->d:I

    .line 122
    :goto_0
    iget v3, v0, Lcom/umeng/newxp/view/widget/a$b;->d:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/umeng/newxp/view/GridTemplate;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_2

    .line 123
    sget-object v3, Lcom/umeng/newxp/view/GridTemplate;->a:Ljava/lang/String;

    const-string v4, "No data update...."

    invoke-static {v3, v4}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iput-boolean v6, v0, Lcom/umeng/newxp/view/widget/a$b;->e:Z

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/umeng/newxp/view/GridTemplate;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/view/widget/a$b;

    .line 158
    if-lez v1, :cond_1

    iget v2, v0, Lcom/umeng/newxp/view/widget/a$b;->d:I

    if-ge v1, v2, :cond_1

    .line 159
    add-int/lit8 v1, v1, 0x1

    iget v2, v0, Lcom/umeng/newxp/view/widget/a$b;->d:I

    iget v0, v0, Lcom/umeng/newxp/view/widget/a$b;->c:I

    invoke-direct {p0, v1, v2, v0}, Lcom/umeng/newxp/view/GridTemplate;->a(III)V

    .line 162
    :cond_1
    sget-object v0, Lcom/umeng/newxp/view/GridTemplate;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "new PageSize "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/umeng/newxp/view/GridTemplate;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " show size :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/umeng/newxp/view/GridTemplate;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-direct {p0}, Lcom/umeng/newxp/view/GridTemplate;->c()V

    .line 165
    return-void

    .line 128
    :cond_2
    iget v3, v0, Lcom/umeng/newxp/view/widget/a$b;->b:I

    iget-object v4, p0, Lcom/umeng/newxp/view/GridTemplate;->i:Lcom/umeng/newxp/view/GridTemplateConfig;

    iget v4, v4, Lcom/umeng/newxp/view/GridTemplateConfig;->maxPsize:I

    if-ge v3, v4, :cond_3

    .line 130
    iget-object v3, p0, Lcom/umeng/newxp/view/GridTemplate;->i:Lcom/umeng/newxp/view/GridTemplateConfig;

    iget v3, v3, Lcom/umeng/newxp/view/GridTemplateConfig;->maxPsize:I

    iget v4, v0, Lcom/umeng/newxp/view/widget/a$b;->b:I

    sub-int/2addr v3, v4

    .line 131
    iget-object v4, p0, Lcom/umeng/newxp/view/GridTemplate;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 133
    iget v5, v0, Lcom/umeng/newxp/view/widget/a$b;->d:I

    add-int/2addr v3, v5

    .line 134
    if-ge v3, v4, :cond_5

    .line 135
    iput v3, v0, Lcom/umeng/newxp/view/widget/a$b;->d:I

    .line 136
    iput-boolean v6, v0, Lcom/umeng/newxp/view/widget/a$b;->e:Z

    .line 140
    :goto_1
    iget v3, v0, Lcom/umeng/newxp/view/widget/a$b;->d:I

    iget v4, v0, Lcom/umeng/newxp/view/widget/a$b;->a:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/umeng/newxp/view/widget/a$b;->b:I

    .line 141
    iput-boolean v6, v0, Lcom/umeng/newxp/view/widget/a$b;->f:Z

    .line 143
    :cond_3
    iget v3, v0, Lcom/umeng/newxp/view/widget/a$b;->d:I

    add-int/lit8 v3, v3, 0x1

    .line 145
    iget-object v4, p0, Lcom/umeng/newxp/view/GridTemplate;->e:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    iget-object v4, p0, Lcom/umeng/newxp/view/GridTemplate;->i:Lcom/umeng/newxp/view/GridTemplateConfig;

    iget-boolean v4, v4, Lcom/umeng/newxp/view/GridTemplateConfig;->c:Z

    if-eqz v4, :cond_0

    .line 147
    :cond_4
    iget-object v4, p0, Lcom/umeng/newxp/view/GridTemplate;->c:Ljava/util/List;

    iget-object v5, p0, Lcom/umeng/newxp/view/GridTemplate;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 148
    iget v0, v0, Lcom/umeng/newxp/view/widget/a$b;->c:I

    add-int/lit8 v0, v0, 0x1

    .line 147
    invoke-direct {p0, v4, v3, v5, v0}, Lcom/umeng/newxp/view/GridTemplate;->a(Ljava/util/List;III)Ljava/util/List;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/view/widget/a$b;

    .line 150
    iget-object v4, p0, Lcom/umeng/newxp/view/GridTemplate;->e:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 138
    :cond_5
    add-int/lit8 v3, v4, -0x1

    iput v3, v0, Lcom/umeng/newxp/view/widget/a$b;->d:I

    goto :goto_1

    :cond_6
    move v1, v2

    goto/16 :goto_0
.end method

.method public requestNextPage()V
    .locals 4

    .prologue
    .line 358
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/umeng/newxp/view/ac;

    invoke-direct {v1, p0}, Lcom/umeng/newxp/view/ac;-><init>(Lcom/umeng/newxp/view/GridTemplate;)V

    .line 377
    const-wide/16 v2, 0x12c

    .line 358
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 378
    return-void
.end method
