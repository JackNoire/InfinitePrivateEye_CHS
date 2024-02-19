.class public Lcom/umeng/newxp/view/d;
.super Ljava/lang/Object;
.source "AdvertiserList.java"


# instance fields
.field private a:I

.field private b:Lcom/umeng/newxp/view/a;

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

.field private d:Lcom/umeng/newxp/controller/ExchangeDataService;


# direct methods
.method public constructor <init>(Landroid/widget/ListView;Landroid/content/Context;IZLjava/util/List;ILcom/umeng/newxp/controller/ExchangeDataService;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ListView;",
            "Landroid/content/Context;",
            "IZ",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;I",
            "Lcom/umeng/newxp/controller/ExchangeDataService;",
            ")V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    move/from16 v0, p6

    iput v0, p0, Lcom/umeng/newxp/view/d;->a:I

    .line 23
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/umeng/newxp/view/d;->d:Lcom/umeng/newxp/controller/ExchangeDataService;

    .line 24
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/umeng/newxp/view/d;->c:Ljava/util/List;

    .line 25
    iget-object v1, p0, Lcom/umeng/newxp/view/d;->c:Ljava/util/List;

    invoke-interface {v1, p5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 26
    new-instance v1, Lcom/umeng/newxp/view/e;

    const v4, 0x1090005

    iget-object v5, p0, Lcom/umeng/newxp/view/d;->c:Ljava/util/List;

    .line 27
    iget v8, p0, Lcom/umeng/newxp/view/d;->a:I

    iget-object v9, p0, Lcom/umeng/newxp/view/d;->d:Lcom/umeng/newxp/controller/ExchangeDataService;

    move-object v2, p0

    move-object v3, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v9}, Lcom/umeng/newxp/view/e;-><init>(Lcom/umeng/newxp/view/d;Landroid/content/Context;ILjava/util/List;IZILcom/umeng/newxp/controller/ExchangeDataService;)V

    .line 26
    iput-object v1, p0, Lcom/umeng/newxp/view/d;->b:Lcom/umeng/newxp/view/a;

    .line 34
    iget-object v1, p0, Lcom/umeng/newxp/view/d;->b:Lcom/umeng/newxp/view/a;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 35
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 36
    return-void
.end method


# virtual methods
.method public a()Lcom/umeng/newxp/view/a;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/umeng/newxp/view/d;->b:Lcom/umeng/newxp/view/a;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public a(Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/umeng/newxp/view/d;->b:Lcom/umeng/newxp/view/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/newxp/view/d;->b:Lcom/umeng/newxp/view/a;

    invoke-virtual {v0, p1}, Lcom/umeng/newxp/view/a;->a(Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;)V

    .line 47
    :cond_0
    return-void
.end method

.method public a(Lcom/umeng/newxp/controller/XpListenersCenter$ListClickListener;)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/umeng/newxp/view/d;->b:Lcom/umeng/newxp/view/a;

    iput-object p1, v0, Lcom/umeng/newxp/view/a;->a:Lcom/umeng/newxp/controller/XpListenersCenter$ListClickListener;

    .line 59
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 4
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
    .line 50
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    return-void

    .line 50
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/Promoter;

    .line 51
    iget v2, v0, Lcom/umeng/newxp/Promoter;->display_type:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 52
    iget-object v2, p0, Lcom/umeng/newxp/view/d;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v0, p0, Lcom/umeng/newxp/view/d;->b:Lcom/umeng/newxp/view/a;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/a;->notifyDataSetChanged()V

    goto :goto_0
.end method
