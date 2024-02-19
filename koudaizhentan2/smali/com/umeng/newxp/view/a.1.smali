.class public Lcom/umeng/newxp/view/a;
.super Landroid/widget/ArrayAdapter;
.source "AdvertiserAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/newxp/view/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/umeng/newxp/Promoter;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/umeng/newxp/controller/XpListenersCenter$ListClickListener;

.field b:Z

.field private c:Landroid/content/Context;

.field private d:I

.field private e:Z

.field private f:I

.field private g:Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;

.field private h:Landroid/view/View;

.field private i:Lcom/umeng/newxp/controller/ExchangeDataService;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;IZILcom/umeng/newxp/controller/ExchangeDataService;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;IZI",
            "Lcom/umeng/newxp/controller/ExchangeDataService;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 38
    iput-object v0, p0, Lcom/umeng/newxp/view/a;->a:Lcom/umeng/newxp/controller/XpListenersCenter$ListClickListener;

    .line 39
    iput-object v0, p0, Lcom/umeng/newxp/view/a;->g:Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/newxp/view/a;->b:Z

    .line 48
    iput-object p1, p0, Lcom/umeng/newxp/view/a;->c:Landroid/content/Context;

    .line 49
    iput p4, p0, Lcom/umeng/newxp/view/a;->d:I

    .line 50
    iput-boolean p5, p0, Lcom/umeng/newxp/view/a;->e:Z

    .line 51
    iput p6, p0, Lcom/umeng/newxp/view/a;->f:I

    .line 52
    iput-object p7, p0, Lcom/umeng/newxp/view/a;->i:Lcom/umeng/newxp/controller/ExchangeDataService;

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/umeng/newxp/view/a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/umeng/newxp/view/a;->c:Landroid/content/Context;

    return-object v0
.end method

.method private static b(I)I
    .locals 2

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x3

    .line 237
    .line 238
    packed-switch p0, :pswitch_data_0

    .line 265
    :goto_0
    :pswitch_0
    return v0

    .line 244
    :pswitch_1
    const/4 v0, 0x1

    .line 245
    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 248
    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 251
    goto :goto_0

    .line 238
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic b(Lcom/umeng/newxp/view/a;)Lcom/umeng/newxp/controller/ExchangeDataService;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/umeng/newxp/view/a;->i:Lcom/umeng/newxp/controller/ExchangeDataService;

    return-object v0
.end method

.method static synthetic c(Lcom/umeng/newxp/view/a;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/umeng/newxp/view/a;->f:I

    return v0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 65
    iget-boolean v0, p0, Lcom/umeng/newxp/view/a;->e:Z

    if-nez v0, :cond_0

    move-object v0, v1

    .line 72
    :goto_0
    return-object v0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/umeng/newxp/view/a;->h:Landroid/view/View;

    if-nez v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/umeng/newxp/view/a;->c:Landroid/content/Context;

    .line 69
    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 68
    check-cast v0, Landroid/view/LayoutInflater;

    .line 70
    iget-object v2, p0, Lcom/umeng/newxp/view/a;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/newxp/a/d;->n(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/newxp/view/a;->h:Landroid/view/View;

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/umeng/newxp/view/a;->h:Landroid/view/View;

    goto :goto_0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 233
    return-void
.end method

.method public a(Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/umeng/newxp/view/a;->g:Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;

    .line 57
    return-void
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 61
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 80
    iget-object v0, p0, Lcom/umeng/newxp/view/a;->c:Landroid/content/Context;

    .line 81
    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 80
    check-cast v0, Landroid/view/LayoutInflater;

    .line 83
    iget-boolean v1, p0, Lcom/umeng/newxp/view/a;->e:Z

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/umeng/newxp/view/a;->a()Landroid/view/View;

    move-result-object p2

    .line 230
    :cond_0
    :goto_0
    return-object p2

    .line 89
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_f

    .line 90
    :cond_2
    iget v1, p0, Lcom/umeng/newxp/view/a;->d:I

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 91
    new-instance v1, Lcom/umeng/newxp/view/a$a;

    invoke-direct {v1}, Lcom/umeng/newxp/view/a$a;-><init>()V

    .line 92
    iget-object v0, p0, Lcom/umeng/newxp/view/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/newxp/a/c;->D(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/umeng/newxp/view/a$a;->a:Landroid/widget/ImageView;

    .line 93
    iget-object v0, p0, Lcom/umeng/newxp/view/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/newxp/a/c;->g(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/umeng/newxp/view/a$a;->b:Landroid/widget/TextView;

    .line 94
    iget-object v0, p0, Lcom/umeng/newxp/view/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/newxp/a/c;->B(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/umeng/newxp/view/a$a;->c:Landroid/widget/TextView;

    .line 95
    iget-object v0, p0, Lcom/umeng/newxp/view/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/newxp/a/c;->C(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/umeng/newxp/view/a$a;->d:Landroid/widget/TextView;

    .line 96
    iget-object v0, p0, Lcom/umeng/newxp/view/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/newxp/a/c;->n(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/umeng/newxp/view/a$a;->e:Landroid/widget/TextView;

    .line 98
    iget-object v0, p0, Lcom/umeng/newxp/view/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/newxp/a/c;->H(Landroid/content/Context;)I

    move-result v0

    .line 97
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/umeng/newxp/view/a$a;->f:Landroid/widget/Button;

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/umeng/newxp/view/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/newxp/a/c;->o(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/umeng/newxp/view/a$a;->g:Landroid/widget/ImageView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_1
    sget-boolean v0, Lcom/umeng/common/Log;->LOG:Z

    if-eqz v0, :cond_3

    .line 105
    sget-object v2, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "New tip Imageview is "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/umeng/newxp/view/a$a;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    const-string v0, "null"

    :goto_2
    invoke-static {v2, v0}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_3
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v8, v1

    .line 112
    :goto_3
    invoke-virtual {p0, p1}, Lcom/umeng/newxp/view/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/umeng/newxp/Promoter;

    .line 114
    iget-object v0, v8, Lcom/umeng/newxp/view/a$a;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/umeng/newxp/view/a;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 115
    iget-object v2, p0, Lcom/umeng/newxp/view/a;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/newxp/a/b;->h(Landroid/content/Context;)I

    move-result v2

    .line 114
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    iget-object v0, v8, Lcom/umeng/newxp/view/a$a;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 118
    sget-boolean v0, Lcom/umeng/newxp/common/ExchangeConstants;->ROUND_ICON:Z

    if-eqz v0, :cond_10

    .line 119
    iget-object v0, p0, Lcom/umeng/newxp/view/a;->c:Landroid/content/Context;

    iget-object v1, v8, Lcom/umeng/newxp/view/a$a;->a:Landroid/widget/ImageView;

    iget-object v2, v7, Lcom/umeng/newxp/Promoter;->icon:Ljava/lang/String;

    move-object v5, v4

    invoke-static/range {v0 .. v6}, Lcom/umeng/common/net/q;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ZLcom/umeng/common/net/q$a;Landroid/view/animation/Animation;Z)V

    .line 124
    :cond_4
    :goto_4
    iget-object v0, v8, Lcom/umeng/newxp/view/a$a;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 125
    iget-object v0, v7, Lcom/umeng/newxp/Promoter;->app_package_name:Ljava/lang/String;

    iget-object v1, p0, Lcom/umeng/newxp/view/a;->c:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/umeng/common/b;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 126
    iget-object v0, v8, Lcom/umeng/newxp/view/a$a;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/umeng/newxp/view/a;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/newxp/a/e;->b(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 137
    :goto_5
    iget-object v0, v7, Lcom/umeng/newxp/Promoter;->app_package_name:Ljava/lang/String;

    iget-object v1, p0, Lcom/umeng/newxp/view/a;->c:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/umeng/common/b;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 138
    iget-object v0, v7, Lcom/umeng/newxp/Promoter;->price:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, v7, Lcom/umeng/newxp/Promoter;->price:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_5

    iget-object v0, v8, Lcom/umeng/newxp/view/a$a;->b:Landroid/widget/TextView;

    .line 139
    iget-object v1, v7, Lcom/umeng/newxp/Promoter;->price:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    :cond_5
    iget-object v0, v8, Lcom/umeng/newxp/view/a$a;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 144
    iget-object v0, v8, Lcom/umeng/newxp/view/a$a;->c:Landroid/widget/TextView;

    iget-object v1, v7, Lcom/umeng/newxp/Promoter;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    :cond_6
    iget-object v0, v8, Lcom/umeng/newxp/view/a$a;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 148
    iget-object v0, v8, Lcom/umeng/newxp/view/a$a;->d:Landroid/widget/TextView;

    iget-object v1, v7, Lcom/umeng/newxp/Promoter;->ad_words:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    :cond_7
    sget-boolean v0, Lcom/umeng/newxp/common/ExchangeConstants;->show_size:Z

    if-eqz v0, :cond_14

    .line 152
    iget-object v0, v8, Lcom/umeng/newxp/view/a$a;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    iget-object v0, v8, Lcom/umeng/newxp/view/a$a;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/umeng/newxp/view/a;->c:Landroid/content/Context;

    .line 153
    iget-wide v4, v7, Lcom/umeng/newxp/Promoter;->size:J

    .line 152
    invoke-static {v1, v4, v5}, Lcom/umeng/common/util/h;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    :cond_8
    :goto_6
    iget-object v0, v8, Lcom/umeng/newxp/view/a$a;->f:Landroid/widget/Button;

    if-eqz v0, :cond_9

    .line 159
    iget-object v0, v8, Lcom/umeng/newxp/view/a$a;->d:Landroid/widget/TextView;

    iget-object v1, v7, Lcom/umeng/newxp/Promoter;->ad_words:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    :cond_9
    new-instance v0, Lcom/umeng/newxp/view/b;

    invoke-direct {v0, p0, v7, p1}, Lcom/umeng/newxp/view/b;-><init>(Lcom/umeng/newxp/view/a;Lcom/umeng/newxp/Promoter;I)V

    .line 170
    iget-object v1, v8, Lcom/umeng/newxp/view/a$a;->f:Landroid/widget/Button;

    if-eqz v1, :cond_d

    .line 171
    iget-object v1, v7, Lcom/umeng/newxp/Promoter;->app_package_name:Ljava/lang/String;

    iget-object v2, p0, Lcom/umeng/newxp/view/a;->c:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/umeng/common/b;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 172
    iget-object v1, v8, Lcom/umeng/newxp/view/a$a;->f:Landroid/widget/Button;

    iget-object v2, p0, Lcom/umeng/newxp/view/a;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/newxp/a/e;->b(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 173
    iget-object v1, p0, Lcom/umeng/newxp/view/a;->g:Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/umeng/newxp/view/a;->g:Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;

    sget-object v2, Lcom/umeng/newxp/controller/XpListenersCenter$FitType;->OPEN:Lcom/umeng/newxp/controller/XpListenersCenter$FitType;

    invoke-interface {v1, p2, v2}, Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;->onFitType(Landroid/view/View;Lcom/umeng/newxp/controller/XpListenersCenter$FitType;)V

    .line 196
    :cond_a
    :goto_7
    iget v1, v7, Lcom/umeng/newxp/Promoter;->new_tip:I

    if-ne v1, v6, :cond_19

    .line 197
    iget-object v1, p0, Lcom/umeng/newxp/view/a;->g:Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;

    if-eqz v1, :cond_b

    .line 198
    iget-object v1, p0, Lcom/umeng/newxp/view/a;->g:Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;

    sget-object v2, Lcom/umeng/newxp/controller/XpListenersCenter$FitType;->NEW:Lcom/umeng/newxp/controller/XpListenersCenter$FitType;

    invoke-interface {v1, p2, v2}, Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;->onFitType(Landroid/view/View;Lcom/umeng/newxp/controller/XpListenersCenter$FitType;)V

    .line 199
    :cond_b
    iget-object v1, v8, Lcom/umeng/newxp/view/a$a;->g:Landroid/widget/ImageView;

    if-eqz v1, :cond_c

    .line 200
    iget-object v1, v8, Lcom/umeng/newxp/view/a$a;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 206
    :cond_c
    :goto_8
    iget-object v1, v8, Lcom/umeng/newxp/view/a$a;->f:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    :cond_d
    iget v0, p0, Lcom/umeng/newxp/view/a;->f:I

    invoke-static {v0}, Lcom/umeng/newxp/view/a;->b(I)I

    .line 212
    new-instance v0, Lcom/umeng/newxp/view/c;

    invoke-direct {v0, p0, v7, p1}, Lcom/umeng/newxp/view/c;-><init>(Lcom/umeng/newxp/view/a;Lcom/umeng/newxp/Promoter;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    invoke-virtual {p0}, Lcom/umeng/newxp/view/a;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 226
    sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get last position data "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0, p1}, Lcom/umeng/newxp/view/a;->a(I)V

    goto/16 :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    iput-object v4, v1, Lcom/umeng/newxp/view/a$a;->g:Landroid/widget/ImageView;

    goto/16 :goto_1

    .line 105
    :cond_e
    const-string v0, "not null"

    goto/16 :goto_2

    .line 109
    :cond_f
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/view/a$a;

    move-object v8, v0

    goto/16 :goto_3

    .line 121
    :cond_10
    iget-object v0, p0, Lcom/umeng/newxp/view/a;->c:Landroid/content/Context;

    iget-object v1, v8, Lcom/umeng/newxp/view/a$a;->a:Landroid/widget/ImageView;

    iget-object v2, v7, Lcom/umeng/newxp/Promoter;->icon:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/umeng/common/net/q;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Z)V

    goto/16 :goto_4

    .line 127
    :cond_11
    iget v0, v7, Lcom/umeng/newxp/Promoter;->landing_type:I

    if-eq v0, v10, :cond_12

    .line 128
    iget v0, v7, Lcom/umeng/newxp/Promoter;->landing_type:I

    if-eq v0, v9, :cond_12

    .line 129
    iget v0, v7, Lcom/umeng/newxp/Promoter;->landing_type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_13

    .line 130
    :cond_12
    iget-object v0, v8, Lcom/umeng/newxp/view/a$a;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/umeng/newxp/view/a;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/newxp/a/e;->c(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_5

    .line 132
    :cond_13
    iget-object v0, v8, Lcom/umeng/newxp/view/a$a;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/umeng/newxp/view/a;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/newxp/a/e;->d(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_5

    .line 155
    :cond_14
    iget-object v0, v8, Lcom/umeng/newxp/view/a$a;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    iget-object v0, v8, Lcom/umeng/newxp/view/a$a;->e:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 174
    :cond_15
    iget v1, v7, Lcom/umeng/newxp/Promoter;->landing_type:I

    if-eq v1, v10, :cond_16

    .line 175
    iget v1, v7, Lcom/umeng/newxp/Promoter;->landing_type:I

    if-eq v1, v9, :cond_16

    .line 176
    iget v1, v7, Lcom/umeng/newxp/Promoter;->landing_type:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_18

    .line 177
    :cond_16
    iget-object v1, p0, Lcom/umeng/newxp/view/a;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/newxp/a/e;->c(Landroid/content/Context;)I

    move-result v1

    .line 178
    iget-object v2, v7, Lcom/umeng/newxp/Promoter;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 179
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 180
    if-eqz v2, :cond_17

    sget-object v4, Lcom/umeng/newxp/Promoter$a;->b:Lcom/umeng/newxp/Promoter$a;

    invoke-virtual {v4}, Lcom/umeng/newxp/Promoter$a;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 181
    iget-object v1, v8, Lcom/umeng/newxp/view/a$a;->f:Landroid/widget/Button;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v1, p0, Lcom/umeng/newxp/view/a;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/newxp/a/e;->e(Landroid/content/Context;)I

    .line 183
    iget-object v1, p0, Lcom/umeng/newxp/view/a;->g:Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/umeng/newxp/view/a;->g:Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;

    .line 184
    sget-object v2, Lcom/umeng/newxp/controller/XpListenersCenter$FitType;->PHONE:Lcom/umeng/newxp/controller/XpListenersCenter$FitType;

    .line 183
    invoke-interface {v1, p2, v2}, Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;->onFitType(Landroid/view/View;Lcom/umeng/newxp/controller/XpListenersCenter$FitType;)V

    goto/16 :goto_7

    .line 186
    :cond_17
    iget-object v2, v8, Lcom/umeng/newxp/view/a$a;->f:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(I)V

    .line 187
    iget-object v1, p0, Lcom/umeng/newxp/view/a;->g:Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/umeng/newxp/view/a;->g:Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;

    .line 188
    sget-object v2, Lcom/umeng/newxp/controller/XpListenersCenter$FitType;->BROWSE:Lcom/umeng/newxp/controller/XpListenersCenter$FitType;

    .line 187
    invoke-interface {v1, p2, v2}, Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;->onFitType(Landroid/view/View;Lcom/umeng/newxp/controller/XpListenersCenter$FitType;)V

    goto/16 :goto_7

    .line 191
    :cond_18
    iget-object v1, v8, Lcom/umeng/newxp/view/a$a;->f:Landroid/widget/Button;

    iget-object v2, p0, Lcom/umeng/newxp/view/a;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/newxp/a/e;->d(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 192
    iget-object v1, p0, Lcom/umeng/newxp/view/a;->g:Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/umeng/newxp/view/a;->g:Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;

    .line 193
    sget-object v2, Lcom/umeng/newxp/controller/XpListenersCenter$FitType;->DOWNLOAD:Lcom/umeng/newxp/controller/XpListenersCenter$FitType;

    .line 192
    invoke-interface {v1, p2, v2}, Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;->onFitType(Landroid/view/View;Lcom/umeng/newxp/controller/XpListenersCenter$FitType;)V

    goto/16 :goto_7

    .line 202
    :cond_19
    iget-object v1, v8, Lcom/umeng/newxp/view/a$a;->g:Landroid/widget/ImageView;

    if-eqz v1, :cond_c

    .line 203
    iget-object v1, v8, Lcom/umeng/newxp/view/a$a;->g:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_8
.end method
