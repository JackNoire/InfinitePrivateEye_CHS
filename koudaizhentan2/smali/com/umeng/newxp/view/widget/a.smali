.class public Lcom/umeng/newxp/view/widget/a;
.super Landroid/widget/RelativeLayout;
.source "GridPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/newxp/view/widget/a$a;,
        Lcom/umeng/newxp/view/widget/a$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "GridPage"


# instance fields
.field private b:Lcom/umeng/newxp/view/widget/a$a;

.field private c:Lcom/umeng/newxp/view/GridTemplateConfig;

.field private d:Landroid/content/Context;

.field private e:I

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/umeng/newxp/view/widget/a$a;Lcom/umeng/newxp/view/GridTemplateConfig;)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/newxp/view/widget/a;->e:I

    .line 29
    iput-object p1, p0, Lcom/umeng/newxp/view/widget/a;->d:Landroid/content/Context;

    .line 30
    new-instance v0, Lcom/umeng/common/util/j;

    iget-object v1, p0, Lcom/umeng/newxp/view/widget/a;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/umeng/common/util/j;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object p2, p0, Lcom/umeng/newxp/view/widget/a;->b:Lcom/umeng/newxp/view/widget/a$a;

    .line 32
    iput-object p3, p0, Lcom/umeng/newxp/view/widget/a;->c:Lcom/umeng/newxp/view/GridTemplateConfig;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/newxp/view/widget/a;->f:Ljava/util/List;

    .line 35
    invoke-direct {p0}, Lcom/umeng/newxp/view/widget/a;->a()V

    .line 36
    return-void
.end method

.method private a()V
    .locals 14

    .prologue
    const/4 v6, 0x0

    const/4 v13, -0x1

    .line 39
    iget-object v0, p0, Lcom/umeng/newxp/view/widget/a;->b:Lcom/umeng/newxp/view/widget/a$a;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/widget/a$a;->a()I

    move-result v7

    .line 41
    iget-object v0, p0, Lcom/umeng/newxp/view/widget/a;->c:Lcom/umeng/newxp/view/GridTemplateConfig;

    iget v8, v0, Lcom/umeng/newxp/view/GridTemplateConfig;->numColumns:I

    .line 42
    iget-object v0, p0, Lcom/umeng/newxp/view/widget/a;->c:Lcom/umeng/newxp/view/GridTemplateConfig;

    iget v0, v0, Lcom/umeng/newxp/view/GridTemplateConfig;->verticalSpacing:I

    int-to-float v0, v0

    invoke-static {v0}, Lcom/umeng/common/util/j;->a(F)I

    move-result v9

    .line 44
    const-string v0, "GridPage"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GridPage init params numColums="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   verticalSpacing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    rem-int v0, v7, v8

    if-nez v0, :cond_0

    div-int v0, v7, v8

    :goto_0
    move v5, v6

    move v2, v6

    .line 50
    :goto_1
    if-lt v5, v0, :cond_1

    .line 84
    return-void

    .line 46
    :cond_0
    div-int v0, v7, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_1
    new-instance v10, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/umeng/newxp/view/widget/a;->d:Landroid/content/Context;

    invoke-direct {v10, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 52
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 53
    const/4 v3, -0x2

    .line 52
    invoke-direct {v1, v13, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 54
    add-int/lit8 v3, v5, 0xa

    invoke-virtual {v10, v3}, Landroid/widget/LinearLayout;->setId(I)V

    .line 55
    if-lez v5, :cond_2

    const/4 v3, 0x3

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getId()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 57
    :cond_2
    if-lez v9, :cond_3

    if-lez v5, :cond_3

    iput v9, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 59
    :cond_3
    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    invoke-virtual {v10, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move v1, v2

    move v3, v2

    .line 63
    :goto_2
    add-int v4, v2, v8

    if-lt v1, v4, :cond_4

    .line 78
    iget-object v1, p0, Lcom/umeng/newxp/view/widget/a;->f:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-virtual {p0, v10}, Lcom/umeng/newxp/view/widget/a;->addView(Landroid/view/View;)V

    .line 82
    iput v7, p0, Lcom/umeng/newxp/view/widget/a;->e:I

    .line 50
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v2, v3

    goto :goto_1

    .line 65
    :cond_4
    new-instance v11, Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/umeng/newxp/view/widget/a;->d:Landroid/content/Context;

    invoke-direct {v11, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 66
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 68
    const/high16 v12, 0x3f800000    # 1.0f

    iput v12, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 69
    invoke-virtual {v11, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    add-int/lit8 v4, v3, 0x1

    if-ge v3, v7, :cond_5

    .line 72
    iget-object v3, p0, Lcom/umeng/newxp/view/widget/a;->b:Lcom/umeng/newxp/view/widget/a$a;

    invoke-virtual {v3, v1}, Lcom/umeng/newxp/view/widget/a$a;->a(I)Landroid/view/View;

    move-result-object v3

    .line 73
    invoke-virtual {v11, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 76
    :cond_5
    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 63
    add-int/lit8 v1, v1, 0x1

    move v3, v4

    goto :goto_2
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    .prologue
    .line 87
    if-nez p1, :cond_1

    .line 88
    iget v0, p0, Lcom/umeng/newxp/view/widget/a;->e:I

    iget-object v1, p0, Lcom/umeng/newxp/view/widget/a;->b:Lcom/umeng/newxp/view/widget/a$a;

    invoke-virtual {v1}, Lcom/umeng/newxp/view/widget/a$a;->a()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/umeng/newxp/view/widget/a;->removeAllViews()V

    .line 90
    invoke-direct {p0}, Lcom/umeng/newxp/view/widget/a;->a()V

    .line 91
    const-string v0, "GridPage"

    const-string v1, "data has changed.."

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :goto_0
    return-void

    .line 93
    :cond_0
    const-string v0, "GridPage"

    const-string v1, "data has no changed.."

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual {p0}, Lcom/umeng/newxp/view/widget/a;->removeAllViews()V

    .line 96
    const-string v0, "GridPage"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pre cast change page.."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/umeng/newxp/view/widget/a;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-direct {p0}, Lcom/umeng/newxp/view/widget/a;->a()V

    .line 98
    const-string v0, "GridPage"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cast change page.."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/umeng/newxp/view/widget/a;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
