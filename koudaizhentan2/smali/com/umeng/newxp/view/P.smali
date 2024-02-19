.class public Lcom/umeng/newxp/view/P;
.super Landroid/widget/RelativeLayout;
.source "FImageView.java"

# interfaces
.implements Lcom/umeng/newxp/view/aE;
.implements Lcom/umeng/newxp/view/av;


# instance fields
.field a:Lcom/umeng/newxp/Promoter;

.field private b:Z

.field private c:Lcom/umeng/common/net/q$a;

.field private d:Landroid/view/LayoutInflater;

.field private e:Lcom/umeng/newxp/controller/ExchangeDataService;

.field private f:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/newxp/view/P;->b:Z

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/newxp/view/P;->b:Z

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/newxp/view/P;->b:Z

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/umeng/newxp/view/P;)Lcom/umeng/newxp/controller/ExchangeDataService;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/umeng/newxp/view/P;->e:Lcom/umeng/newxp/controller/ExchangeDataService;

    return-object v0
.end method

.method static synthetic a(Lcom/umeng/newxp/view/P;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/umeng/newxp/view/P;->f:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic a(Lcom/umeng/newxp/view/P;Z)V
    .locals 0

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/umeng/newxp/view/P;->b:Z

    return-void
.end method

.method static synthetic b(Lcom/umeng/newxp/view/P;)Lcom/umeng/common/net/q$a;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/umeng/newxp/view/P;->c:Lcom/umeng/common/net/q$a;

    return-object v0
.end method

.method static synthetic c(Lcom/umeng/newxp/view/P;)Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/umeng/newxp/view/P;->b:Z

    return v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/umeng/newxp/view/P;->a()Z

    .line 131
    return-void
.end method

.method public a()Z
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v5, 0x0

    .line 65
    iget-object v0, p0, Lcom/umeng/newxp/view/P;->a:Lcom/umeng/newxp/Promoter;

    if-nez v0, :cond_0

    .line 66
    sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    const-string v1, "FImageView has no promoter.."

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v5

    .line 124
    :goto_0
    return v0

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/umeng/newxp/view/P;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v3

    .line 70
    invoke-virtual {p0}, Lcom/umeng/newxp/view/P;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 71
    invoke-virtual {p0}, Lcom/umeng/newxp/view/P;->removeAllViews()V

    .line 74
    :cond_1
    invoke-virtual {p0}, Lcom/umeng/newxp/view/P;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 75
    iget-object v0, p0, Lcom/umeng/newxp/view/P;->d:Landroid/view/LayoutInflater;

    .line 76
    const-string v1, "umeng_xp_fimageview_landscape"

    invoke-virtual {v3, v1}, Lcom/umeng/common/c;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    .line 80
    :goto_1
    const-string v0, "umeng_xp_imagev"

    invoke-virtual {v3, v0}, Lcom/umeng/common/c;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 81
    const-string v1, "umeng_xp_title"

    invoke-virtual {v3, v1}, Lcom/umeng/common/c;->c(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 82
    const-string v2, "umeng_xp_descript"

    invoke-virtual {v3, v2}, Lcom/umeng/common/c;->c(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 84
    const-string v6, "umeng_xp_button"

    invoke-virtual {v3, v6}, Lcom/umeng/common/c;->c(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 86
    new-instance v6, Lcom/umeng/newxp/view/Q;

    invoke-direct {v6, p0}, Lcom/umeng/newxp/view/Q;-><init>(Lcom/umeng/newxp/view/P;)V

    .line 93
    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v3, p0, Lcom/umeng/newxp/view/P;->a:Lcom/umeng/newxp/Promoter;

    iget-object v3, v3, Lcom/umeng/newxp/Promoter;->title:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v1, p0, Lcom/umeng/newxp/view/P;->a:Lcom/umeng/newxp/Promoter;

    iget-object v1, v1, Lcom/umeng/newxp/Promoter;->ad_words:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v1, p0, Lcom/umeng/newxp/view/P;->f:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_3

    .line 100
    invoke-virtual {p0}, Lcom/umeng/newxp/view/P;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/newxp/view/P;->a:Lcom/umeng/newxp/Promoter;

    iget-object v2, v2, Lcom/umeng/newxp/Promoter;->img:Ljava/lang/String;

    .line 101
    new-instance v3, Lcom/umeng/newxp/view/R;

    invoke-direct {v3, p0, v0}, Lcom/umeng/newxp/view/R;-><init>(Lcom/umeng/newxp/view/P;Landroid/widget/ImageView;)V

    .line 100
    invoke-static {v1, v0, v2, v5, v3}, Lcom/umeng/common/net/q;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ZLcom/umeng/common/net/q$a;)V

    .line 123
    :goto_2
    invoke-virtual {p0, v4, v7, v7}, Lcom/umeng/newxp/view/P;->addView(Landroid/view/View;II)V

    .line 124
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 78
    :cond_2
    iget-object v0, p0, Lcom/umeng/newxp/view/P;->d:Landroid/view/LayoutInflater;

    const-string v1, "umeng_xp_fimageview_portrait"

    invoke-virtual {v3, v1}, Lcom/umeng/common/c;->e(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    goto :goto_1

    .line 120
    :cond_3
    iget-object v1, p0, Lcom/umeng/newxp/view/P;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method public a(Lcom/umeng/newxp/controller/ExchangeDataService;Lcom/umeng/newxp/Promoter;Lcom/umeng/common/net/q$a;)Z
    .locals 2

    .prologue
    .line 51
    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/umeng/newxp/Promoter;->img:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iput-object p2, p0, Lcom/umeng/newxp/view/P;->a:Lcom/umeng/newxp/Promoter;

    .line 53
    iput-object p3, p0, Lcom/umeng/newxp/view/P;->c:Lcom/umeng/common/net/q$a;

    .line 54
    iput-object p1, p0, Lcom/umeng/newxp/view/P;->e:Lcom/umeng/newxp/controller/ExchangeDataService;

    .line 55
    invoke-virtual {p0}, Lcom/umeng/newxp/view/P;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 56
    const-string v1, "layout_inflater"

    .line 55
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/umeng/newxp/view/P;->d:Landroid/view/LayoutInflater;

    .line 57
    const/4 v0, 0x1

    .line 60
    :goto_0
    return v0

    .line 59
    :cond_0
    sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    const-string v1, "promoter has no img url..."

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 135
    new-instance v0, Lcom/umeng/newxp/net/e$a;

    invoke-virtual {p0}, Lcom/umeng/newxp/view/P;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/newxp/net/e$a;-><init>(Landroid/content/Context;)V

    .line 136
    invoke-virtual {v0, v3}, Lcom/umeng/newxp/net/e$a;->a(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/umeng/newxp/net/e$a;->b(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 137
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->d(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/newxp/view/P;->e:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget v1, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->layoutType:I

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->c(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/umeng/newxp/Promoter;

    iget-object v2, p0, Lcom/umeng/newxp/view/P;->a:Lcom/umeng/newxp/Promoter;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a([Lcom/umeng/newxp/Promoter;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/umeng/newxp/view/P;->e:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v1, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/newxp/view/P;->e:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-virtual {v1}, Lcom/umeng/newxp/controller/ExchangeDataService;->getTimeConsuming()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->d(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/umeng/newxp/view/P;->e:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v1, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->c(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/newxp/net/e$a;->a()Lcom/umeng/newxp/net/e;

    move-result-object v0

    .line 140
    new-instance v1, Lcom/umeng/newxp/net/XpReportClient;

    invoke-virtual {p0}, Lcom/umeng/newxp/view/P;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/umeng/newxp/net/XpReportClient;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/umeng/newxp/net/XpReportClient;->sendAsync(Lcom/umeng/common/net/o;Lcom/umeng/common/net/n$a;)V

    .line 141
    return-void
.end method
