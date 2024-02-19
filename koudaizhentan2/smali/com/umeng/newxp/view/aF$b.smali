.class public Lcom/umeng/newxp/view/aF$b;
.super Landroid/widget/BaseAdapter;
.source "PartnersBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/newxp/view/aF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/controller/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field final synthetic c:Lcom/umeng/newxp/view/aF;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/umeng/newxp/view/aF;Landroid/content/Context;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/controller/a$a;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 421
    iput-object p1, p0, Lcom/umeng/newxp/view/aF$b;->c:Lcom/umeng/newxp/view/aF;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 419
    const/4 v0, -0x1

    iput v0, p0, Lcom/umeng/newxp/view/aF$b;->b:I

    .line 422
    iput-object p2, p0, Lcom/umeng/newxp/view/aF$b;->d:Landroid/content/Context;

    .line 423
    iput-object p3, p0, Lcom/umeng/newxp/view/aF$b;->a:Ljava/util/List;

    .line 424
    iput p4, p0, Lcom/umeng/newxp/view/aF$b;->b:I

    .line 425
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/umeng/newxp/view/aF$b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/umeng/newxp/view/aF$b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 439
    iget-object v0, p0, Lcom/umeng/newxp/view/aF$b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/controller/a$a;

    iget v0, v0, Lcom/umeng/newxp/controller/a$a;->b:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 444
    iget-object v0, p0, Lcom/umeng/newxp/view/aF$b;->d:Landroid/content/Context;

    .line 445
    iget-object v1, p0, Lcom/umeng/newxp/view/aF$b;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/newxp/a/d;->A(Landroid/content/Context;)I

    move-result v1

    .line 444
    invoke-static {v0, v1, v4}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/view/ViewGroup;

    .line 448
    iget-object v0, p0, Lcom/umeng/newxp/view/aF$b;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/newxp/a/c;->b(Landroid/content/Context;)I

    move-result v0

    .line 447
    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 450
    iget-object v0, p0, Lcom/umeng/newxp/view/aF$b;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/newxp/a/c;->c(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    .line 451
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 453
    iget-object v0, p0, Lcom/umeng/newxp/view/aF$b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/umeng/newxp/controller/a$a;

    .line 454
    iget-object v0, p0, Lcom/umeng/newxp/view/aF$b;->d:Landroid/content/Context;

    iget-object v2, v8, Lcom/umeng/newxp/controller/a$a;->a:Lcom/umeng/newxp/Promoter;

    iget-object v2, v2, Lcom/umeng/newxp/Promoter;->icon:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/umeng/newxp/view/aF$b;->c:Lcom/umeng/newxp/view/aF;

    invoke-static {v5}, Lcom/umeng/newxp/view/aF;->c(Lcom/umeng/newxp/view/aF;)Landroid/view/animation/Animation;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/umeng/common/net/q;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ZLcom/umeng/common/net/q$a;Landroid/view/animation/Animation;)V

    .line 455
    iget-object v0, v8, Lcom/umeng/newxp/controller/a$a;->a:Lcom/umeng/newxp/Promoter;

    iget-object v0, v0, Lcom/umeng/newxp/Promoter;->title:Ljava/lang/String;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    return-object v6
.end method
