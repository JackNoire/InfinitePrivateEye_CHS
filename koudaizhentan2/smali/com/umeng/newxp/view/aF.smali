.class public Lcom/umeng/newxp/view/aF;
.super Ljava/lang/Object;
.source "PartnersBanner.java"

# interfaces
.implements Lcom/umeng/newxp/controller/f$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/newxp/view/aF$a;,
        Lcom/umeng/newxp/view/aF$b;
    }
.end annotation


# static fields
.field private static final c:I = 0x3

.field private static d:Z

.field private static k:I


# instance fields
.field a:I

.field b:Landroid/view/View;

.field private e:Landroid/content/Context;

.field private f:Landroid/view/ViewGroup;

.field private g:Lcom/umeng/newxp/controller/ExchangeDataService;

.field private h:Lcom/umeng/newxp/controller/a;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/widget/ViewSwitcher;

.field private l:I

.field private m:Landroid/widget/GridView;

.field private n:Landroid/widget/GridView;

.field private o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/umeng/newxp/view/aF$a;",
            ">;"
        }
    .end annotation
.end field

.field private p:Landroid/view/animation/Animation;

.field private q:Landroid/view/View$OnClickListener;

.field private r:Lcom/umeng/newxp/view/aF$b;

.field private s:Landroid/widget/GridView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    sput-boolean v0, Lcom/umeng/newxp/view/aF;->d:Z

    .line 69
    const/16 v0, 0x3e8

    sput v0, Lcom/umeng/newxp/view/aF;->k:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;ILcom/umeng/newxp/controller/ExchangeDataService;)V
    .locals 3

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/newxp/view/aF;->l:I

    .line 83
    iput-object p1, p0, Lcom/umeng/newxp/view/aF;->e:Landroid/content/Context;

    .line 84
    iput-object p2, p0, Lcom/umeng/newxp/view/aF;->f:Landroid/view/ViewGroup;

    .line 85
    iput p3, p0, Lcom/umeng/newxp/view/aF;->a:I

    .line 87
    sget-boolean v0, Lcom/umeng/newxp/view/aF;->d:Z

    if-eqz v0, :cond_0

    .line 88
    invoke-direct {p0}, Lcom/umeng/newxp/view/aF;->d()V

    .line 89
    iget-object v0, p0, Lcom/umeng/newxp/view/aF;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/umeng/newxp/view/aF;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/newxp/a/a;->o(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/newxp/view/aF;->p:Landroid/view/animation/Animation;

    .line 90
    iget-object v0, p0, Lcom/umeng/newxp/view/aF;->p:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 93
    :cond_0
    iput-object p4, p0, Lcom/umeng/newxp/view/aF;->g:Lcom/umeng/newxp/controller/ExchangeDataService;

    .line 95
    new-instance v0, Lcom/umeng/newxp/view/aG;

    invoke-direct {v0, p0}, Lcom/umeng/newxp/view/aG;-><init>(Lcom/umeng/newxp/view/aF;)V

    .line 116
    iget-object v1, p0, Lcom/umeng/newxp/view/aF;->g:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v2, p0, Lcom/umeng/newxp/view/aF;->e:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/umeng/newxp/controller/ExchangeDataService;->requestDataAsyn(Landroid/content/Context;Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;)V

    .line 117
    return-void
.end method

.method static synthetic a(Lcom/umeng/newxp/view/aF;)Landroid/widget/ViewSwitcher;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/umeng/newxp/view/aF;->j:Landroid/widget/ViewSwitcher;

    return-object v0
.end method

.method private a(I)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 188
    iput-object v8, p0, Lcom/umeng/newxp/view/aF;->s:Landroid/widget/GridView;

    .line 191
    iget-object v0, p0, Lcom/umeng/newxp/view/aF;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/newxp/a/c;->K(Landroid/content/Context;)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/umeng/newxp/view/aF;->h:Lcom/umeng/newxp/controller/a;

    invoke-virtual {v0, v4}, Lcom/umeng/newxp/controller/a;->a(I)Ljava/util/List;

    move-result-object v0

    .line 193
    iget-object v1, p0, Lcom/umeng/newxp/view/aF;->m:Landroid/widget/GridView;

    iput-object v1, p0, Lcom/umeng/newxp/view/aF;->s:Landroid/widget/GridView;

    .line 194
    iget-object v1, p0, Lcom/umeng/newxp/view/aF;->s:Landroid/widget/GridView;

    invoke-virtual {v1, v4}, Landroid/widget/GridView;->setNumColumns(I)V

    move v1, v2

    move-object v4, v0

    .line 202
    :goto_0
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 223
    :cond_0
    :goto_1
    return-void

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/umeng/newxp/view/aF;->h:Lcom/umeng/newxp/controller/a;

    invoke-virtual {v0, v4}, Lcom/umeng/newxp/controller/a;->a(I)Ljava/util/List;

    move-result-object v0

    .line 198
    iget-object v1, p0, Lcom/umeng/newxp/view/aF;->n:Landroid/widget/GridView;

    iput-object v1, p0, Lcom/umeng/newxp/view/aF;->s:Landroid/widget/GridView;

    move v1, v3

    move-object v4, v0

    .line 199
    goto :goto_0

    .line 203
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 213
    iget-object v0, p0, Lcom/umeng/newxp/view/aF;->s:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/view/aF$b;

    iput-object v0, p0, Lcom/umeng/newxp/view/aF;->r:Lcom/umeng/newxp/view/aF$b;

    .line 214
    iget-object v0, p0, Lcom/umeng/newxp/view/aF;->r:Lcom/umeng/newxp/view/aF$b;

    if-nez v0, :cond_4

    .line 216
    new-instance v0, Lcom/umeng/newxp/view/aF$b;

    iget-object v2, p0, Lcom/umeng/newxp/view/aF;->e:Landroid/content/Context;

    invoke-direct {v0, p0, v2, v4, v1}, Lcom/umeng/newxp/view/aF$b;-><init>(Lcom/umeng/newxp/view/aF;Landroid/content/Context;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/umeng/newxp/view/aF;->r:Lcom/umeng/newxp/view/aF$b;

    .line 217
    iget-object v0, p0, Lcom/umeng/newxp/view/aF;->s:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/umeng/newxp/view/aF;->r:Lcom/umeng/newxp/view/aF$b;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1

    .line 203
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/controller/a$a;

    .line 204
    new-instance v6, Lcom/umeng/newxp/net/e$a;

    iget-object v7, p0, Lcom/umeng/newxp/view/aF;->e:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/umeng/newxp/net/e$a;-><init>(Landroid/content/Context;)V

    .line 205
    invoke-virtual {v6, v2}, Lcom/umeng/newxp/net/e$a;->a(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/umeng/newxp/net/e$a;->b(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v6

    .line 206
    iget-object v7, p0, Lcom/umeng/newxp/view/aF;->g:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-virtual {v7}, Lcom/umeng/newxp/controller/ExchangeDataService;->getTimeConsuming()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/umeng/newxp/net/e$a;->d(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v6

    .line 207
    invoke-virtual {v6, v3}, Lcom/umeng/newxp/net/e$a;->d(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v6

    iget v7, p0, Lcom/umeng/newxp/view/aF;->a:I

    invoke-virtual {v6, v7}, Lcom/umeng/newxp/net/e$a;->c(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v6

    new-array v7, v3, [Lcom/umeng/newxp/Promoter;

    iget-object v0, v0, Lcom/umeng/newxp/controller/a$a;->a:Lcom/umeng/newxp/Promoter;

    aput-object v0, v7, v2

    invoke-virtual {v6, v7}, Lcom/umeng/newxp/net/e$a;->a([Lcom/umeng/newxp/Promoter;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 208
    iget-object v6, p0, Lcom/umeng/newxp/view/aF;->e:Landroid/content/Context;

    iget-object v7, p0, Lcom/umeng/newxp/view/aF;->g:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v6, v7}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/umeng/newxp/net/e$a;->b(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    iget-object v6, p0, Lcom/umeng/newxp/view/aF;->g:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v6, v6, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/umeng/newxp/net/e$a;->a(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 209
    iget-object v6, p0, Lcom/umeng/newxp/view/aF;->g:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v6, v6, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/umeng/newxp/net/e$a;->c(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/newxp/net/e$a;->a()Lcom/umeng/newxp/net/e;

    move-result-object v0

    .line 210
    new-instance v6, Lcom/umeng/newxp/net/XpReportClient;

    iget-object v7, p0, Lcom/umeng/newxp/view/aF;->e:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/umeng/newxp/net/XpReportClient;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v0, v8}, Lcom/umeng/newxp/net/XpReportClient;->sendAsync(Lcom/umeng/common/net/o;Lcom/umeng/common/net/n$a;)V

    goto/16 :goto_2

    .line 219
    :cond_4
    iget-object v0, p0, Lcom/umeng/newxp/view/aF;->r:Lcom/umeng/newxp/view/aF$b;

    iput-object v4, v0, Lcom/umeng/newxp/view/aF$b;->a:Ljava/util/List;

    .line 220
    iget-object v0, p0, Lcom/umeng/newxp/view/aF;->r:Lcom/umeng/newxp/view/aF$b;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/aF$b;->notifyDataSetChanged()V

    goto/16 :goto_1
.end method

.method private a(Lcom/umeng/newxp/controller/a$a;Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 226
    iget-object v0, p0, Lcom/umeng/newxp/view/aF;->q:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/umeng/newxp/view/aF;->q:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 229
    :cond_0
    if-nez p1, :cond_1

    .line 231
    :goto_0
    return-void

    .line 230
    :cond_1
    iget-object v1, p0, Lcom/umeng/newxp/view/aF;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/newxp/view/aF;->g:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget v3, p0, Lcom/umeng/newxp/view/aF;->a:I

    move-object v0, p1

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/umeng/newxp/controller/b;->a(Lcom/umeng/newxp/controller/a$a;Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;IZI)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/umeng/newxp/view/aF;I)V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/umeng/newxp/view/aF;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/umeng/newxp/view/aF;Lcom/umeng/newxp/controller/a$a;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 225
    invoke-direct {p0, p1, p2}, Lcom/umeng/newxp/view/aF;->a(Lcom/umeng/newxp/controller/a$a;Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/umeng/newxp/view/aF;Lcom/umeng/newxp/controller/a;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/umeng/newxp/view/aF;->h:Lcom/umeng/newxp/controller/a;

    return-void
.end method

.method static synthetic a(Lcom/umeng/newxp/view/aF;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/umeng/newxp/view/aF;->i:Ljava/util/List;

    return-void
.end method

.method static synthetic b(Lcom/umeng/newxp/view/aF;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/umeng/newxp/view/aF;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c()I
    .locals 1

    .prologue
    .line 69
    sget v0, Lcom/umeng/newxp/view/aF;->k:I

    return v0
.end method

.method static synthetic c(Lcom/umeng/newxp/view/aF;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/umeng/newxp/view/aF;->p:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic d(Lcom/umeng/newxp/view/aF;)Ljava/util/List;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/umeng/newxp/view/aF;->i:Ljava/util/List;

    return-object v0
.end method

.method private d()V
    .locals 12

    .prologue
    .line 234
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/umeng/newxp/view/aF;->o:Ljava/util/Map;

    .line 237
    iget-object v0, p0, Lcom/umeng/newxp/view/aF;->o:Ljava/util/Map;

    .line 238
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 239
    new-instance v2, Lcom/umeng/newxp/view/aF$a;

    iget-object v3, p0, Lcom/umeng/newxp/view/aF;->e:Landroid/content/Context;

    .line 240
    iget-object v4, p0, Lcom/umeng/newxp/view/aF;->e:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/newxp/a/a;->e(Landroid/content/Context;)I

    move-result v4

    .line 239
    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 241
    iget-object v4, p0, Lcom/umeng/newxp/view/aF;->e:Landroid/content/Context;

    .line 242
    iget-object v5, p0, Lcom/umeng/newxp/view/aF;->e:Landroid/content/Context;

    invoke-static {v5}, Lcom/umeng/newxp/a/a;->j(Landroid/content/Context;)I

    move-result v5

    .line 241
    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    .line 239
    invoke-direct {v2, p0, v3, v4}, Lcom/umeng/newxp/view/aF$a;-><init>(Lcom/umeng/newxp/view/aF;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 238
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object v0, p0, Lcom/umeng/newxp/view/aF;->o:Ljava/util/Map;

    .line 246
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 247
    new-instance v2, Lcom/umeng/newxp/view/aF$a;

    iget-object v3, p0, Lcom/umeng/newxp/view/aF;->e:Landroid/content/Context;

    .line 248
    iget-object v4, p0, Lcom/umeng/newxp/view/aF;->e:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/newxp/a/a;->f(Landroid/content/Context;)I

    move-result v4

    .line 247
    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 249
    iget-object v4, p0, Lcom/umeng/newxp/view/aF;->e:Landroid/content/Context;

    .line 250
    iget-object v5, p0, Lcom/umeng/newxp/view/aF;->e:Landroid/content/Context;

    invoke-static {v5}, Lcom/umeng/newxp/a/a;->i(Landroid/content/Context;)I

    move-result v5

    .line 249
    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    .line 247
    invoke-direct {v2, p0, v3, v4}, Lcom/umeng/newxp/view/aF$a;-><init>(Lcom/umeng/newxp/view/aF;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 245
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget-object v0, p0, Lcom/umeng/newxp/view/aF;->o:Ljava/util/Map;

    .line 254
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 255
    new-instance v2, Lcom/umeng/newxp/view/aF$a;

    iget-object v3, p0, Lcom/umeng/newxp/view/aF;->e:Landroid/content/Context;

    .line 256
    iget-object v4, p0, Lcom/umeng/newxp/view/aF;->e:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/newxp/a/a;->g(Landroid/content/Context;)I

    move-result v4

    .line 255
    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 257
    iget-object v4, p0, Lcom/umeng/newxp/view/aF;->e:Landroid/content/Context;

    .line 258
    iget-object v5, p0, Lcom/umeng/newxp/view/aF;->e:Landroid/content/Context;

    invoke-static {v5}, Lcom/umeng/newxp/a/a;->l(Landroid/content/Context;)I

    move-result v5

    .line 257
    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    .line 255
    invoke-direct {v2, p0, v3, v4}, Lcom/umeng/newxp/view/aF$a;-><init>(Lcom/umeng/newxp/view/aF;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 253
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    iget-object v0, p0, Lcom/umeng/newxp/view/aF;->o:Ljava/util/Map;

    .line 262
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 263
    new-instance v2, Lcom/umeng/newxp/view/aF$a;

    iget-object v3, p0, Lcom/umeng/newxp/view/aF;->e:Landroid/content/Context;

    .line 264
    iget-object v4, p0, Lcom/umeng/newxp/view/aF;->e:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/newxp/a/a;->h(Landroid/content/Context;)I

    move-result v4

    .line 263
    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 265
    iget-object v4, p0, Lcom/umeng/newxp/view/aF;->e:Landroid/content/Context;

    .line 266
    iget-object v5, p0, Lcom/umeng/newxp/view/aF;->e:Landroid/content/Context;

    invoke-static {v5}, Lcom/umeng/newxp/a/a;->k(Landroid/content/Context;)I

    move-result v5

    .line 265
    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    .line 263
    invoke-direct {v2, p0, v3, v4}, Lcom/umeng/newxp/view/aF$a;-><init>(Lcom/umeng/newxp/view/aF;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 262
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    iget-object v0, p0, Lcom/umeng/newxp/view/aF;->o:Ljava/util/Map;

    .line 270
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 271
    new-instance v2, Lcom/umeng/newxp/view/aF$a;

    iget-object v3, p0, Lcom/umeng/newxp/view/aF;->e:Landroid/content/Context;

    .line 272
    iget-object v4, p0, Lcom/umeng/newxp/view/aF;->e:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/newxp/a/a;->m(Landroid/content/Context;)I

    move-result v4

    .line 271
    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 273
    iget-object v4, p0, Lcom/umeng/newxp/view/aF;->e:Landroid/content/Context;

    iget-object v5, p0, Lcom/umeng/newxp/view/aF;->e:Landroid/content/Context;

    invoke-static {v5}, Lcom/umeng/newxp/a/a;->n(Landroid/content/Context;)I

    move-result v5

    .line 272
    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    .line 271
    invoke-direct {v2, p0, v3, v4}, Lcom/umeng/newxp/view/aF$a;-><init>(Lcom/umeng/newxp/view/aF;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 269
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    iget-object v0, p0, Lcom/umeng/newxp/view/aF;->e:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 277
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    .line 278
    new-instance v0, Lcom/umeng/common/util/j;

    iget-object v1, p0, Lcom/umeng/newxp/view/aF;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/umeng/common/util/j;-><init>(Landroid/content/Context;)V

    .line 279
    const/high16 v0, 0x425c0000    # 55.0f

    invoke-static {v0}, Lcom/umeng/common/util/j;->a(F)I

    move-result v9

    .line 281
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

    .line 282
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/common/f;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 284
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

    .line 285
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Lcom/umeng/newxp/common/f;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 286
    iget-object v10, p0, Lcom/umeng/newxp/view/aF;->o:Ljava/util/Map;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-instance v2, Lcom/umeng/newxp/view/aF$a;

    .line 287
    sget v3, Lcom/umeng/newxp/view/aF;->k:I

    int-to-long v6, v3

    move-object v3, p0

    move-object v4, v0

    move-object v5, v1

    invoke-direct/range {v2 .. v7}, Lcom/umeng/newxp/view/aF$a;-><init>(Lcom/umeng/newxp/view/aF;Landroid/view/animation/Animation;Landroid/view/animation/Animation;J)V

    .line 286
    invoke-interface {v10, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
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

    .line 291
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/common/f;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 293
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

    .line 294
    const/4 v7, 0x0

    .line 293
    invoke-direct/range {v1 .. v7}, Lcom/umeng/newxp/common/f;-><init>(FFFFZZ)V

    .line 295
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Lcom/umeng/newxp/common/f;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 296
    iget-object v8, p0, Lcom/umeng/newxp/view/aF;->o:Ljava/util/Map;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v2, Lcom/umeng/newxp/view/aF$a;

    .line 297
    sget v3, Lcom/umeng/newxp/view/aF;->k:I

    int-to-long v6, v3

    move-object v3, p0

    move-object v4, v0

    move-object v5, v1

    invoke-direct/range {v2 .. v7}, Lcom/umeng/newxp/view/aF$a;-><init>(Lcom/umeng/newxp/view/aF;Landroid/view/animation/Animation;Landroid/view/animation/Animation;J)V

    .line 296
    invoke-interface {v8, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    return-void
.end method

.method private e()Lcom/umeng/newxp/view/aF$a;
    .locals 4

    .prologue
    .line 350
    iget-object v0, p0, Lcom/umeng/newxp/view/aF;->o:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/newxp/view/aF;->o:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 351
    :cond_0
    new-instance v0, Lcom/umeng/newxp/view/aF$a;

    iget-object v1, p0, Lcom/umeng/newxp/view/aF;->e:Landroid/content/Context;

    .line 352
    iget-object v2, p0, Lcom/umeng/newxp/view/aF;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/newxp/a/a;->e(Landroid/content/Context;)I

    move-result v2

    .line 351
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 353
    iget-object v2, p0, Lcom/umeng/newxp/view/aF;->e:Landroid/content/Context;

    .line 354
    iget-object v3, p0, Lcom/umeng/newxp/view/aF;->e:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/newxp/a/a;->j(Landroid/content/Context;)I

    move-result v3

    .line 353
    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 351
    invoke-direct {v0, p0, v1, v2}, Lcom/umeng/newxp/view/aF$a;-><init>(Lcom/umeng/newxp/view/aF;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 362
    :goto_0
    return-object v0

    .line 357
    :cond_1
    iget-object v0, p0, Lcom/umeng/newxp/view/aF;->o:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 358
    iget-object v1, p0, Lcom/umeng/newxp/view/aF;->o:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    .line 360
    const/4 v2, 0x0

    new-array v2, v2, [Lcom/umeng/newxp/view/aF$a;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/newxp/view/aF$a;

    .line 361
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 362
    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget-object v0, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 367
    iget-object v0, p0, Lcom/umeng/newxp/view/aF;->b:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/umeng/newxp/view/aF;->b:Landroid/view/View;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 368
    iget-object v0, p0, Lcom/umeng/newxp/view/aF;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/umeng/newxp/view/aw;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 369
    iget v0, p0, Lcom/umeng/newxp/view/aF;->l:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/umeng/newxp/view/aF;->l:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 370
    :goto_0
    sget-boolean v1, Lcom/umeng/newxp/view/aF;->d:Z

    if-eqz v1, :cond_0

    .line 380
    invoke-direct {p0}, Lcom/umeng/newxp/view/aF;->e()Lcom/umeng/newxp/view/aF$a;

    move-result-object v1

    .line 382
    iget-object v2, p0, Lcom/umeng/newxp/view/aF;->j:Landroid/widget/ViewSwitcher;

    iget-object v3, v1, Lcom/umeng/newxp/view/aF$a;->a:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 383
    iget-object v2, p0, Lcom/umeng/newxp/view/aF;->j:Landroid/widget/ViewSwitcher;

    iget-object v1, v1, Lcom/umeng/newxp/view/aF$a;->b:Landroid/view/animation/Animation;

    invoke-virtual {v2, v1}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 386
    :cond_0
    iget-object v1, p0, Lcom/umeng/newxp/view/aF;->j:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1, v0}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 388
    sget-boolean v1, Lcom/umeng/newxp/view/aF;->d:Z

    if-nez v1, :cond_1

    .line 389
    packed-switch v0, :pswitch_data_0

    .line 402
    :cond_1
    :goto_1
    new-instance v0, Lcom/umeng/newxp/controller/g;

    invoke-direct {v0, p0}, Lcom/umeng/newxp/controller/g;-><init>(Lcom/umeng/newxp/controller/f$a;)V

    invoke-virtual {v0}, Lcom/umeng/newxp/controller/g;->start()V

    .line 403
    return-void

    .line 369
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 391
    :pswitch_0
    iget-object v0, p0, Lcom/umeng/newxp/view/aF;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/newxp/a/c;->J(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/umeng/newxp/view/aF;->a(I)V

    goto :goto_1

    .line 394
    :pswitch_1
    iget-object v0, p0, Lcom/umeng/newxp/view/aF;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/newxp/a/c;->K(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/umeng/newxp/view/aF;->a(I)V

    goto :goto_1

    .line 389
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 413
    iput-object p1, p0, Lcom/umeng/newxp/view/aF;->q:Landroid/view/View$OnClickListener;

    .line 414
    return-void
.end method

.method protected b()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 120
    iget-object v0, p0, Lcom/umeng/newxp/view/aF;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/umeng/newxp/view/aF;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/newxp/a/d;->z(Landroid/content/Context;)I

    move-result v1

    .line 121
    const/4 v2, 0x0

    .line 120
    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/newxp/view/aF;->b:Landroid/view/View;

    .line 123
    iget-object v0, p0, Lcom/umeng/newxp/view/aF;->b:Landroid/view/View;

    .line 124
    iget-object v1, p0, Lcom/umeng/newxp/view/aF;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/newxp/a/c;->L(Landroid/content/Context;)I

    move-result v1

    .line 123
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/umeng/newxp/view/aF;->j:Landroid/widget/ViewSwitcher;

    .line 125
    iget-object v0, p0, Lcom/umeng/newxp/view/aF;->j:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v5}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 127
    iget-object v0, p0, Lcom/umeng/newxp/view/aF;->j:Landroid/widget/ViewSwitcher;

    .line 128
    iget-object v1, p0, Lcom/umeng/newxp/view/aF;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/newxp/a/c;->K(Landroid/content/Context;)I

    move-result v1

    .line 127
    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/umeng/newxp/view/aF;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/newxp/a/c;->x(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 127
    iput-object v0, p0, Lcom/umeng/newxp/view/aF;->m:Landroid/widget/GridView;

    .line 129
    iget-object v0, p0, Lcom/umeng/newxp/view/aF;->j:Landroid/widget/ViewSwitcher;

    .line 130
    iget-object v1, p0, Lcom/umeng/newxp/view/aF;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/newxp/a/c;->J(Landroid/content/Context;)I

    move-result v1

    .line 129
    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/umeng/newxp/view/aF;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/newxp/a/c;->x(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 129
    iput-object v0, p0, Lcom/umeng/newxp/view/aF;->n:Landroid/widget/GridView;

    .line 132
    new-instance v0, Lcom/umeng/newxp/view/aH;

    invoke-direct {v0, p0}, Lcom/umeng/newxp/view/aH;-><init>(Lcom/umeng/newxp/view/aF;)V

    .line 143
    iget-object v1, p0, Lcom/umeng/newxp/view/aF;->m:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 144
    iget-object v1, p0, Lcom/umeng/newxp/view/aF;->n:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 146
    iget-object v0, p0, Lcom/umeng/newxp/view/aF;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/newxp/a/c;->K(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/umeng/newxp/view/aF;->a(I)V

    .line 147
    iget-object v0, p0, Lcom/umeng/newxp/view/aF;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/newxp/a/c;->J(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/umeng/newxp/view/aF;->a(I)V

    .line 152
    sget-boolean v0, Lcom/umeng/newxp/view/aF;->d:Z

    if-eqz v0, :cond_0

    .line 158
    invoke-direct {p0}, Lcom/umeng/newxp/view/aF;->e()Lcom/umeng/newxp/view/aF$a;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/umeng/newxp/view/aF;->j:Landroid/widget/ViewSwitcher;

    iget-object v2, v0, Lcom/umeng/newxp/view/aF$a;->a:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 161
    iget-object v1, p0, Lcom/umeng/newxp/view/aF;->j:Landroid/widget/ViewSwitcher;

    iget-object v0, v0, Lcom/umeng/newxp/view/aF$a;->b:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 167
    :cond_0
    new-instance v0, Lcom/umeng/common/util/j;

    iget-object v1, p0, Lcom/umeng/newxp/view/aF;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/umeng/common/util/j;-><init>(Landroid/content/Context;)V

    .line 168
    const/high16 v0, 0x425c0000    # 55.0f

    invoke-static {v0}, Lcom/umeng/common/util/j;->a(F)I

    move-result v0

    .line 171
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/umeng/newxp/view/aF;->e:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 172
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 173
    const/4 v3, -0x2

    invoke-direct {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 172
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 175
    iget-object v2, p0, Lcom/umeng/newxp/view/aF;->f:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 178
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 180
    iget-object v0, p0, Lcom/umeng/newxp/view/aF;->b:Landroid/view/View;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    return-void
.end method
