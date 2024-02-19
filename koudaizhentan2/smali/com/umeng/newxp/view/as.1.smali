.class Lcom/umeng/newxp/view/as;
.super Landroid/widget/BaseAdapter;
.source "LargeGallery.java"


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/an;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/an;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/as;->a:Lcom/umeng/newxp/view/an;

    .line 196
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/umeng/newxp/view/as;)Lcom/umeng/newxp/view/an;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/umeng/newxp/view/as;->a:Lcom/umeng/newxp/view/an;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 257
    const v0, 0x7fffffff

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 247
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 199
    iget-object v0, p0, Lcom/umeng/newxp/view/as;->a:Lcom/umeng/newxp/view/an;

    invoke-static {v0, p1}, Lcom/umeng/newxp/view/an;->a(Lcom/umeng/newxp/view/an;I)I

    move-result v2

    .line 200
    iget-object v0, p0, Lcom/umeng/newxp/view/as;->a:Lcom/umeng/newxp/view/an;

    invoke-static {v0}, Lcom/umeng/newxp/view/an;->g(Lcom/umeng/newxp/view/an;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 202
    iget-object v1, p0, Lcom/umeng/newxp/view/as;->a:Lcom/umeng/newxp/view/an;

    invoke-static {v1}, Lcom/umeng/newxp/view/an;->e(Lcom/umeng/newxp/view/an;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v1

    .line 203
    const-string v3, "umeng_xp_large_gallery_item_imv"

    invoke-virtual {v1, v3}, Lcom/umeng/common/c;->c(Ljava/lang/String;)I

    move-result v1

    .line 202
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 205
    iget-object v3, p0, Lcom/umeng/newxp/view/as;->a:Lcom/umeng/newxp/view/an;

    invoke-static {v3}, Lcom/umeng/newxp/view/an;->c(Lcom/umeng/newxp/view/an;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/umeng/newxp/Promoter;

    .line 206
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_0

    .line 207
    iget-object v3, p0, Lcom/umeng/newxp/view/as;->a:Lcom/umeng/newxp/view/an;

    invoke-static {v3}, Lcom/umeng/newxp/view/an;->e(Lcom/umeng/newxp/view/an;)Landroid/content/Context;

    move-result-object v3

    iget-object v2, v2, Lcom/umeng/newxp/Promoter;->img:Ljava/lang/String;

    const/4 v4, 0x0

    .line 208
    new-instance v5, Lcom/umeng/newxp/view/at;

    invoke-direct {v5, p0, v0}, Lcom/umeng/newxp/view/at;-><init>(Lcom/umeng/newxp/view/as;Landroid/view/ViewGroup;)V

    .line 207
    invoke-static {v3, v1, v2, v4, v5}, Lcom/umeng/common/net/q;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ZLcom/umeng/common/net/q$a;)V

    .line 234
    :cond_0
    iget-object v2, p0, Lcom/umeng/newxp/view/as;->a:Lcom/umeng/newxp/view/an;

    invoke-static {v2}, Lcom/umeng/newxp/view/an;->i(Lcom/umeng/newxp/view/an;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 235
    iget-object v2, p0, Lcom/umeng/newxp/view/as;->a:Lcom/umeng/newxp/view/an;

    invoke-static {v2}, Lcom/umeng/newxp/view/an;->j(Lcom/umeng/newxp/view/an;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 238
    :cond_1
    new-instance v1, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    .line 241
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    return-object v0
.end method
