.class Lcom/umeng/newxp/view/EmbededContainer$a;
.super Ljava/lang/Object;
.source "EmbededContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/newxp/view/EmbededContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/newxp/view/EmbededContainer$a$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/EmbededContainer;

.field private b:Lcom/umeng/newxp/view/d;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/umeng/newxp/view/EmbededContainer;Landroid/widget/ListView;Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;)V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 189
    iput-object p1, p0, Lcom/umeng/newxp/view/EmbededContainer$a;->a:Lcom/umeng/newxp/view/EmbededContainer;

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    invoke-direct {p0}, Lcom/umeng/newxp/view/EmbededContainer$a;->a()V

    .line 194
    invoke-static {p1}, Lcom/umeng/newxp/view/EmbededContainer;->d(Lcom/umeng/newxp/view/EmbededContainer;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v0

    iget-object v0, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->timeLine:[J

    const/4 v1, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 195
    iget-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer$a;->c:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 196
    invoke-static {p1}, Lcom/umeng/newxp/view/EmbededContainer;->c(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/newxp/view/EmbededContainer$a;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 198
    new-instance v0, Lcom/umeng/newxp/view/s;

    invoke-static {p1}, Lcom/umeng/newxp/view/EmbededContainer;->c(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/widget/ListView;

    move-result-object v2

    invoke-static {p1}, Lcom/umeng/newxp/view/EmbededContainer;->b(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/content/Context;

    move-result-object v3

    .line 199
    invoke-static {p1}, Lcom/umeng/newxp/view/EmbededContainer;->b(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/newxp/a/d;->p(Landroid/content/Context;)I

    move-result v4

    invoke-static {p1}, Lcom/umeng/newxp/view/EmbededContainer;->e(Lcom/umeng/newxp/view/EmbededContainer;)Ljava/util/List;

    move-result-object v6

    .line 200
    const/16 v7, 0x8

    invoke-static {p1}, Lcom/umeng/newxp/view/EmbededContainer;->d(Lcom/umeng/newxp/view/EmbededContainer;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v8

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/umeng/newxp/view/s;-><init>(Lcom/umeng/newxp/view/EmbededContainer$a;Landroid/widget/ListView;Landroid/content/Context;IZLjava/util/List;ILcom/umeng/newxp/controller/ExchangeDataService;)V

    .line 198
    iput-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer$a;->b:Lcom/umeng/newxp/view/d;

    .line 216
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer$a;->b:Lcom/umeng/newxp/view/d;

    invoke-virtual {v0, p3}, Lcom/umeng/newxp/view/d;->a(Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;)V

    .line 218
    :cond_0
    sget-boolean v0, Lcom/umeng/newxp/common/ExchangeConstants;->CONTAINER_AUTOEXPANDED:Z

    if-nez v0, :cond_1

    .line 219
    invoke-static {p1}, Lcom/umeng/newxp/view/EmbededContainer;->g(Lcom/umeng/newxp/view/EmbededContainer;)V

    .line 221
    :cond_1
    new-instance v0, Lcom/umeng/newxp/view/EmbededContainer$a$a;

    invoke-static {p1}, Lcom/umeng/newxp/view/EmbededContainer;->d(Lcom/umeng/newxp/view/EmbededContainer;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/umeng/newxp/view/EmbededContainer$a$a;-><init>(Lcom/umeng/newxp/view/EmbededContainer$a;Lcom/umeng/newxp/controller/ExchangeDataService;)V

    .line 222
    invoke-static {p1}, Lcom/umeng/newxp/view/EmbededContainer;->c(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 223
    invoke-static {p1}, Lcom/umeng/newxp/view/EmbededContainer;->c(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 224
    invoke-static {p1}, Lcom/umeng/newxp/view/EmbededContainer;->d(Lcom/umeng/newxp/view/EmbededContainer;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v0

    iput v5, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->page_index:I

    .line 227
    :cond_2
    invoke-static {p1}, Lcom/umeng/newxp/view/EmbededContainer;->d(Lcom/umeng/newxp/view/EmbededContainer;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v0

    iget-object v0, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->timeLine:[J

    const/4 v1, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 229
    new-instance v0, Lcom/umeng/newxp/net/e$a;

    invoke-static {p1}, Lcom/umeng/newxp/view/EmbededContainer;->b(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/newxp/net/e$a;-><init>(Landroid/content/Context;)V

    .line 230
    invoke-virtual {v0, v5}, Lcom/umeng/newxp/net/e$a;->a(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/umeng/newxp/net/e$a;->b(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 231
    invoke-static {p1}, Lcom/umeng/newxp/view/EmbededContainer;->d(Lcom/umeng/newxp/view/EmbededContainer;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/newxp/controller/ExchangeDataService;->getTimeConsuming()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->d(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 232
    invoke-static {p1}, Lcom/umeng/newxp/view/EmbededContainer;->h(Lcom/umeng/newxp/view/EmbededContainer;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->d(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    iget v1, p1, Lcom/umeng/newxp/view/EmbededContainer;->mType:I

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->c(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v1

    .line 233
    invoke-static {p1}, Lcom/umeng/newxp/view/EmbededContainer;->e(Lcom/umeng/newxp/view/EmbededContainer;)Ljava/util/List;

    move-result-object v0

    new-array v2, v5, [Lcom/umeng/newxp/Promoter;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/newxp/Promoter;

    invoke-virtual {v1, v0}, Lcom/umeng/newxp/net/e$a;->a([Lcom/umeng/newxp/Promoter;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 234
    invoke-static {p1}, Lcom/umeng/newxp/view/EmbededContainer;->b(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Lcom/umeng/newxp/view/EmbededContainer;->d(Lcom/umeng/newxp/view/EmbededContainer;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->b(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    invoke-static {p1}, Lcom/umeng/newxp/view/EmbededContainer;->d(Lcom/umeng/newxp/view/EmbededContainer;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v1

    iget-object v1, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    invoke-static {p1}, Lcom/umeng/newxp/view/EmbededContainer;->d(Lcom/umeng/newxp/view/EmbededContainer;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v1

    iget-object v1, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->c(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Lcom/umeng/newxp/net/e$a;->a()Lcom/umeng/newxp/net/e;

    move-result-object v0

    .line 236
    new-instance v1, Lcom/umeng/newxp/net/XpReportClient;

    invoke-static {p1}, Lcom/umeng/newxp/view/EmbededContainer;->b(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/umeng/newxp/net/XpReportClient;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/umeng/newxp/net/XpReportClient;->sendAsync(Lcom/umeng/common/net/o;Lcom/umeng/common/net/n$a;)V

    .line 237
    return-void
.end method

.method static synthetic a(Lcom/umeng/newxp/view/EmbededContainer$a;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer$a;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 240
    iget-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer$a;->a:Lcom/umeng/newxp/view/EmbededContainer;

    invoke-static {v0}, Lcom/umeng/newxp/view/EmbededContainer;->b(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/content/Context;

    move-result-object v0

    .line 241
    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 240
    check-cast v0, Landroid/view/LayoutInflater;

    .line 242
    iget-object v1, p0, Lcom/umeng/newxp/view/EmbededContainer$a;->a:Lcom/umeng/newxp/view/EmbededContainer;

    invoke-static {v1}, Lcom/umeng/newxp/view/EmbededContainer;->b(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/newxp/a/d;->q(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer$a;->c:Landroid/view/View;

    .line 244
    iget-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer$a;->c:Landroid/view/View;

    .line 245
    iget-object v1, p0, Lcom/umeng/newxp/view/EmbededContainer$a;->a:Lcom/umeng/newxp/view/EmbededContainer;

    invoke-static {v1}, Lcom/umeng/newxp/view/EmbededContainer;->b(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/newxp/a/c;->I(Landroid/content/Context;)I

    move-result v1

    .line 244
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer$a;->d:Landroid/widget/TextView;

    .line 247
    invoke-direct {p0}, Lcom/umeng/newxp/view/EmbededContainer$a;->c()Landroid/text/SpannableString;

    move-result-object v0

    .line 248
    iget-object v1, p0, Lcom/umeng/newxp/view/EmbededContainer$a;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer$a;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/umeng/newxp/view/EmbededContainer$a;->a:Lcom/umeng/newxp/view/EmbededContainer;

    invoke-static {v1}, Lcom/umeng/newxp/view/EmbededContainer;->b(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/newxp/a/c;->z(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer$a;->e:Landroid/widget/ImageView;

    .line 251
    iget-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer$a;->e:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer$a;->a:Lcom/umeng/newxp/view/EmbededContainer;

    iget-object v1, p0, Lcom/umeng/newxp/view/EmbededContainer$a;->a:Lcom/umeng/newxp/view/EmbededContainer;

    invoke-static {v1}, Lcom/umeng/newxp/view/EmbededContainer;->b(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/content/Context;

    move-result-object v1

    .line 254
    iget-object v2, p0, Lcom/umeng/newxp/view/EmbededContainer$a;->a:Lcom/umeng/newxp/view/EmbededContainer;

    invoke-static {v2}, Lcom/umeng/newxp/view/EmbededContainer;->b(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/newxp/a/a;->d(Landroid/content/Context;)I

    move-result v2

    .line 253
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/newxp/view/EmbededContainer;->a(Lcom/umeng/newxp/view/EmbededContainer;Landroid/view/animation/Animation;)V

    .line 255
    return-void
.end method

.method static synthetic b(Lcom/umeng/newxp/view/EmbededContainer$a;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer$a;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 289
    new-instance v0, Lcom/umeng/newxp/view/t;

    invoke-direct {v0, p0}, Lcom/umeng/newxp/view/t;-><init>(Lcom/umeng/newxp/view/EmbededContainer$a;)V

    .line 348
    iget-object v1, p0, Lcom/umeng/newxp/view/EmbededContainer$a;->a:Lcom/umeng/newxp/view/EmbededContainer;

    invoke-static {v1}, Lcom/umeng/newxp/view/EmbededContainer;->d(Lcom/umeng/newxp/view/EmbededContainer;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v1

    iput-boolean v2, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->pagination:Z

    .line 349
    iget-object v1, p0, Lcom/umeng/newxp/view/EmbededContainer$a;->a:Lcom/umeng/newxp/view/EmbededContainer;

    invoke-static {v1}, Lcom/umeng/newxp/view/EmbededContainer;->d(Lcom/umeng/newxp/view/EmbededContainer;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v1

    iget v1, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->page_index:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/umeng/newxp/view/EmbededContainer$a;->a:Lcom/umeng/newxp/view/EmbededContainer;

    invoke-static {v1}, Lcom/umeng/newxp/view/EmbededContainer;->d(Lcom/umeng/newxp/view/EmbededContainer;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v1

    iput v2, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->page_index:I

    .line 350
    :cond_0
    iget-object v1, p0, Lcom/umeng/newxp/view/EmbededContainer$a;->a:Lcom/umeng/newxp/view/EmbededContainer;

    invoke-static {v1}, Lcom/umeng/newxp/view/EmbededContainer;->d(Lcom/umeng/newxp/view/EmbededContainer;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v1

    iget v2, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->page_index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->page_index:I

    .line 351
    iget-object v1, p0, Lcom/umeng/newxp/view/EmbededContainer$a;->a:Lcom/umeng/newxp/view/EmbededContainer;

    invoke-static {v1}, Lcom/umeng/newxp/view/EmbededContainer;->d(Lcom/umeng/newxp/view/EmbededContainer;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/newxp/view/EmbededContainer$a;->a:Lcom/umeng/newxp/view/EmbededContainer;

    invoke-static {v2}, Lcom/umeng/newxp/view/EmbededContainer;->b(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/umeng/newxp/controller/ExchangeDataService;->requestDataAsyn(Landroid/content/Context;Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;)V

    .line 352
    return-void
.end method

.method private c()Landroid/text/SpannableString;
    .locals 6

    .prologue
    const/16 v5, 0x21

    const/4 v4, 0x4

    .line 355
    invoke-static {}, Lcom/umeng/common/util/h;->a()Ljava/lang/String;

    move-result-object v0

    .line 356
    new-instance v1, Landroid/text/SpannableString;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u66f4\u65b0\u4e8e:     "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 357
    const/4 v0, 0x2

    const/high16 v2, 0x41400000    # 12.0f

    iget-object v3, p0, Lcom/umeng/newxp/view/EmbededContainer$a;->a:Lcom/umeng/newxp/view/EmbededContainer;

    invoke-static {v3}, Lcom/umeng/newxp/view/EmbededContainer;->b(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/content/Context;

    move-result-object v3

    .line 358
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 357
    invoke-static {v0, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 359
    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    float-to-int v0, v0

    invoke-direct {v2, v0}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v0

    invoke-virtual {v1, v2, v4, v0, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 361
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const v2, -0x777778

    invoke-direct {v0, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v1, v0, v4, v2, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 363
    return-object v1
.end method

.method static synthetic c(Lcom/umeng/newxp/view/EmbededContainer$a;)V
    .locals 0

    .prologue
    .line 288
    invoke-direct {p0}, Lcom/umeng/newxp/view/EmbededContainer$a;->b()V

    return-void
.end method

.method static synthetic d(Lcom/umeng/newxp/view/EmbededContainer$a;)Lcom/umeng/newxp/view/d;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer$a;->b:Lcom/umeng/newxp/view/d;

    return-object v0
.end method

.method static synthetic e(Lcom/umeng/newxp/view/EmbededContainer$a;)Landroid/text/SpannableString;
    .locals 1

    .prologue
    .line 354
    invoke-direct {p0}, Lcom/umeng/newxp/view/EmbededContainer$a;->c()Landroid/text/SpannableString;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/umeng/newxp/view/EmbededContainer$a;)Landroid/view/View;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer$a;->c:Landroid/view/View;

    return-object v0
.end method

.method static synthetic g(Lcom/umeng/newxp/view/EmbededContainer$a;)Lcom/umeng/newxp/view/EmbededContainer;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer$a;->a:Lcom/umeng/newxp/view/EmbededContainer;

    return-object v0
.end method
