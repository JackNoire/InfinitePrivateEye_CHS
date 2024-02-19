.class public Lcom/umeng/newxp/view/EmbededContainer;
.super Ljava/lang/Object;
.source "EmbededContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/newxp/view/EmbededContainer$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:Landroid/widget/ListView;

.field private c:Landroid/content/Context;

.field private d:Lcom/umeng/newxp/controller/ExchangeDataService;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;

.field private g:I

.field private h:Lcom/umeng/newxp/view/GridTemplateConfig;

.field private i:Landroid/view/animation/Animation;

.field private j:Z

.field private k:Z

.field private l:Z

.field public mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/ListView;Lcom/umeng/newxp/controller/ExchangeDataService;Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;Ljava/util/List;Lcom/umeng/newxp/view/GridTemplateConfig;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            "Landroid/widget/ListView;",
            "Lcom/umeng/newxp/controller/ExchangeDataService;",
            "Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;",
            "Lcom/umeng/newxp/view/GridTemplateConfig;",
            ")V"
        }
    .end annotation

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput v2, p0, Lcom/umeng/newxp/view/EmbededContainer;->mType:I

    .line 57
    const/4 v0, 0x5

    iput v0, p0, Lcom/umeng/newxp/view/EmbededContainer;->g:I

    .line 62
    iput-boolean v1, p0, Lcom/umeng/newxp/view/EmbededContainer;->j:Z

    iput-boolean v1, p0, Lcom/umeng/newxp/view/EmbededContainer;->k:Z

    iput-boolean v1, p0, Lcom/umeng/newxp/view/EmbededContainer;->l:Z

    .line 68
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p1, v0}, Lcom/umeng/common/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-static {p1}, Lcom/umeng/common/b;->n(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 73
    invoke-static {p1}, Lcom/umeng/common/a/c;->a(Landroid/content/Context;)I

    move-result v1

    .line 72
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 131
    :goto_0
    return-void

    .line 77
    :cond_0
    iput-object p1, p0, Lcom/umeng/newxp/view/EmbededContainer;->c:Landroid/content/Context;

    .line 78
    iput-object p7, p0, Lcom/umeng/newxp/view/EmbededContainer;->h:Lcom/umeng/newxp/view/GridTemplateConfig;

    .line 79
    iput-object p5, p0, Lcom/umeng/newxp/view/EmbededContainer;->f:Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;

    .line 81
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    .line 82
    sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    .line 83
    const-string v1, "this container integrated approach is failed! [view params neither ListView nor ViewGroup]"

    .line 82
    invoke-static {v0, v1}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_1
    if-eqz p2, :cond_3

    .line 88
    iput-boolean v4, p0, Lcom/umeng/newxp/view/EmbededContainer;->l:Z

    .line 89
    iput-object p2, p0, Lcom/umeng/newxp/view/EmbededContainer;->a:Landroid/view/ViewGroup;

    .line 94
    :goto_1
    if-eqz p3, :cond_4

    .line 95
    iput-boolean v4, p0, Lcom/umeng/newxp/view/EmbededContainer;->k:Z

    .line 96
    iput-object p3, p0, Lcom/umeng/newxp/view/EmbededContainer;->b:Landroid/widget/ListView;

    .line 101
    :goto_2
    iput v2, p4, Lcom/umeng/newxp/controller/ExchangeDataService;->layoutType:I

    .line 102
    iput-object p4, p0, Lcom/umeng/newxp/view/EmbededContainer;->d:Lcom/umeng/newxp/controller/ExchangeDataService;

    .line 104
    new-instance v0, Lcom/umeng/newxp/view/aI;

    iget-object v1, p0, Lcom/umeng/newxp/view/EmbededContainer;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/newxp/view/EmbededContainer;->a:Landroid/view/ViewGroup;

    invoke-direct {v0, v1, v2}, Lcom/umeng/newxp/view/aI;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 106
    iget-boolean v1, p4, Lcom/umeng/newxp/controller/ExchangeDataService;->show_progress_wheel:Z

    if-eqz v1, :cond_2

    .line 107
    invoke-virtual {v0}, Lcom/umeng/newxp/view/aI;->a()V

    .line 110
    :cond_2
    new-instance v1, Lcom/umeng/newxp/view/r;

    invoke-direct {v1, p0, v0}, Lcom/umeng/newxp/view/r;-><init>(Lcom/umeng/newxp/view/EmbededContainer;Lcom/umeng/newxp/view/aI;)V

    .line 117
    if-eqz p6, :cond_5

    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 118
    invoke-direct {p0, v0, v4, p6}, Lcom/umeng/newxp/view/EmbededContainer;->a(Lcom/umeng/newxp/view/aI;ILjava/util/List;)V

    .line 119
    sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init view use setData.... "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_3
    sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    .line 92
    const-string v1, "this container integrated approach is not support grid template!"

    .line 91
    invoke-static {v0, v1}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 98
    :cond_4
    sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    .line 99
    const-string v1, "this container integrated approach is not support list template!"

    .line 98
    invoke-static {v0, v1}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 120
    :cond_5
    iget-object v2, p0, Lcom/umeng/newxp/view/EmbededContainer;->d:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v2, v2, Lcom/umeng/newxp/controller/ExchangeDataService;->preloadData:Lcom/umeng/newxp/a;

    if-eqz v2, :cond_6

    .line 121
    iget-object v2, p0, Lcom/umeng/newxp/view/EmbededContainer;->d:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v2, v2, Lcom/umeng/newxp/controller/ExchangeDataService;->preloadData:Lcom/umeng/newxp/a;

    iget-object v2, v2, Lcom/umeng/newxp/a;->a:Lcom/umeng/newxp/a$a;

    sget-object v3, Lcom/umeng/newxp/a$a;->a:Lcom/umeng/newxp/a$a;

    if-ne v2, v3, :cond_6

    .line 122
    iget-object v1, p0, Lcom/umeng/newxp/view/EmbededContainer;->d:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v1, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->preloadData:Lcom/umeng/newxp/a;

    invoke-virtual {v1}, Lcom/umeng/newxp/a;->b()Ljava/util/List;

    move-result-object v1

    .line 123
    invoke-direct {p0, v0, v4, v1}, Lcom/umeng/newxp/view/EmbededContainer;->a(Lcom/umeng/newxp/view/aI;ILjava/util/List;)V

    .line 124
    sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "init view use preloadData.... "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 126
    :cond_6
    iget-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer;->d:Lcom/umeng/newxp/controller/ExchangeDataService;

    const-string v2, ""

    iput-object v2, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer;->d:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v2, p0, Lcom/umeng/newxp/view/EmbededContainer;->c:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcom/umeng/newxp/controller/ExchangeDataService;->requestDataAsyn(Landroid/content/Context;Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;)V

    .line 128
    sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    const-string v1, "init view use server data.... "

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer;->i:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    .line 172
    sget v0, Lcom/umeng/newxp/common/ExchangeConstants;->CONTAINER_LIST_COUNT:I

    iget-object v1, p0, Lcom/umeng/newxp/view/EmbededContainer;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 174
    :goto_0
    iget-object v1, p0, Lcom/umeng/newxp/view/EmbededContainer;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 175
    new-instance v2, Lcom/umeng/common/util/j;

    iget-object v3, p0, Lcom/umeng/newxp/view/EmbededContainer;->c:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/umeng/common/util/j;-><init>(Landroid/content/Context;)V

    .line 177
    sget v2, Lcom/umeng/newxp/common/ExchangeConstants;->CONTAINER_HEIGHT:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v0, v2

    int-to-float v0, v0

    invoke-static {v0}, Lcom/umeng/common/util/j;->a(F)I

    move-result v0

    .line 178
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 179
    iget-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    return-void

    .line 173
    :cond_0
    sget v0, Lcom/umeng/newxp/common/ExchangeConstants;->CONTAINER_LIST_COUNT:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/umeng/newxp/view/EmbededContainer;Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/umeng/newxp/view/EmbededContainer;->i:Landroid/view/animation/Animation;

    return-void
.end method

.method static synthetic a(Lcom/umeng/newxp/view/EmbededContainer;Lcom/umeng/newxp/view/aI;ILjava/util/List;)V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/newxp/view/EmbededContainer;->a(Lcom/umeng/newxp/view/aI;ILjava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/umeng/newxp/view/EmbededContainer;Z)V
    .locals 0

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/umeng/newxp/view/EmbededContainer;->j:Z

    return-void
.end method

.method private a(Lcom/umeng/newxp/view/aI;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/umeng/newxp/view/aI;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer;->d:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v0, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->initializeListener:Lcom/umeng/newxp/controller/XpListenersCenter$InitializeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer;->d:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v1, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->initializeListener:Lcom/umeng/newxp/controller/XpListenersCenter$InitializeListener;

    .line 135
    if-nez p3, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Lcom/umeng/newxp/controller/XpListenersCenter$InitializeListener;->onReceived(I)V

    .line 136
    :cond_0
    if-eqz p1, :cond_1

    .line 137
    invoke-virtual {p1}, Lcom/umeng/newxp/view/aI;->b()V

    .line 139
    :cond_1
    if-nez p2, :cond_3

    .line 145
    :goto_1
    return-void

    .line 135
    :cond_2
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 142
    :cond_3
    iput-object p3, p0, Lcom/umeng/newxp/view/EmbededContainer;->e:Ljava/util/List;

    .line 143
    invoke-virtual {p0}, Lcom/umeng/newxp/view/EmbededContainer;->setInteraction()V

    goto :goto_1
.end method

.method static synthetic b(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer;->b:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic d(Lcom/umeng/newxp/view/EmbededContainer;)Lcom/umeng/newxp/controller/ExchangeDataService;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer;->d:Lcom/umeng/newxp/controller/ExchangeDataService;

    return-object v0
.end method

.method static synthetic e(Lcom/umeng/newxp/view/EmbededContainer;)Ljava/util/List;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/umeng/newxp/view/EmbededContainer;)Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/umeng/newxp/view/EmbededContainer;->j:Z

    return v0
.end method

.method static synthetic g(Lcom/umeng/newxp/view/EmbededContainer;)V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/umeng/newxp/view/EmbededContainer;->a()V

    return-void
.end method

.method static synthetic h(Lcom/umeng/newxp/view/EmbededContainer;)I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/umeng/newxp/view/EmbededContainer;->g:I

    return v0
.end method


# virtual methods
.method public setInteraction()V
    .locals 5

    .prologue
    .line 148
    const/4 v0, 0x0

    .line 149
    iget-object v1, p0, Lcom/umeng/newxp/view/EmbededContainer;->d:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-virtual {v1}, Lcom/umeng/newxp/controller/ExchangeDataService;->getTemplate()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 157
    iget-boolean v1, p0, Lcom/umeng/newxp/view/EmbededContainer;->k:Z

    if-eqz v1, :cond_2

    .line 158
    new-instance v1, Lcom/umeng/newxp/view/EmbededContainer$a;

    iget-object v2, p0, Lcom/umeng/newxp/view/EmbededContainer;->b:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/umeng/newxp/view/EmbededContainer;->f:Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;

    invoke-direct {v1, p0, v2, v3}, Lcom/umeng/newxp/view/EmbededContainer$a;-><init>(Lcom/umeng/newxp/view/EmbededContainer;Landroid/widget/ListView;Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;)V

    .line 164
    :goto_0
    if-eqz v0, :cond_0

    .line 165
    iget-object v1, p0, Lcom/umeng/newxp/view/EmbededContainer;->b:Landroid/widget/ListView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 166
    iget-object v1, p0, Lcom/umeng/newxp/view/EmbededContainer;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 169
    :cond_0
    return-void

    .line 151
    :pswitch_0
    iget-boolean v1, p0, Lcom/umeng/newxp/view/EmbededContainer;->l:Z

    if-eqz v1, :cond_1

    .line 152
    new-instance v0, Lcom/umeng/newxp/view/GridTemplate;

    iget-object v1, p0, Lcom/umeng/newxp/view/EmbededContainer;->e:Ljava/util/List;

    iget-object v2, p0, Lcom/umeng/newxp/view/EmbededContainer;->d:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v3, p0, Lcom/umeng/newxp/view/EmbededContainer;->c:Landroid/content/Context;

    iget-object v4, p0, Lcom/umeng/newxp/view/EmbededContainer;->h:Lcom/umeng/newxp/view/GridTemplateConfig;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/umeng/newxp/view/GridTemplate;-><init>(Ljava/util/List;Lcom/umeng/newxp/controller/ExchangeDataService;Landroid/content/Context;Lcom/umeng/newxp/view/GridTemplateConfig;)V

    iget-object v0, v0, Lcom/umeng/newxp/view/GridTemplate;->contentView:Landroid/view/View;

    goto :goto_0

    .line 154
    :cond_1
    new-instance v1, Lcom/umeng/newxp/view/EmbededContainer$a;

    iget-object v2, p0, Lcom/umeng/newxp/view/EmbededContainer;->b:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/umeng/newxp/view/EmbededContainer;->f:Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;

    invoke-direct {v1, p0, v2, v3}, Lcom/umeng/newxp/view/EmbededContainer$a;-><init>(Lcom/umeng/newxp/view/EmbededContainer;Landroid/widget/ListView;Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;)V

    goto :goto_0

    .line 160
    :cond_2
    new-instance v0, Lcom/umeng/newxp/view/GridTemplate;

    iget-object v1, p0, Lcom/umeng/newxp/view/EmbededContainer;->e:Ljava/util/List;

    iget-object v2, p0, Lcom/umeng/newxp/view/EmbededContainer;->d:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v3, p0, Lcom/umeng/newxp/view/EmbededContainer;->c:Landroid/content/Context;

    iget-object v4, p0, Lcom/umeng/newxp/view/EmbededContainer;->h:Lcom/umeng/newxp/view/GridTemplateConfig;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/umeng/newxp/view/GridTemplate;-><init>(Ljava/util/List;Lcom/umeng/newxp/controller/ExchangeDataService;Landroid/content/Context;Lcom/umeng/newxp/view/GridTemplateConfig;)V

    iget-object v0, v0, Lcom/umeng/newxp/view/GridTemplate;->contentView:Landroid/view/View;

    goto :goto_0

    .line 149
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
