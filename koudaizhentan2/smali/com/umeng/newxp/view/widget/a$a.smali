.class public abstract Lcom/umeng/newxp/view/widget/a$a;
.super Ljava/lang/Object;
.source "GridPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/newxp/view/widget/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/umeng/newxp/view/widget/a$b;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/umeng/newxp/view/widget/a$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;",
            "Lcom/umeng/newxp/view/widget/a$b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/umeng/newxp/view/widget/a$a;->b:Ljava/util/List;

    .line 110
    iput-object p2, p0, Lcom/umeng/newxp/view/widget/a$a;->c:Lcom/umeng/newxp/view/widget/a$b;

    .line 111
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/umeng/newxp/view/widget/a$a;->c:Lcom/umeng/newxp/view/widget/a$b;

    iget v0, v0, Lcom/umeng/newxp/view/widget/a$b;->b:I

    return v0
.end method

.method public a(I)Landroid/view/View;
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/umeng/newxp/view/widget/a$a;->c:Lcom/umeng/newxp/view/widget/a$b;

    iget v0, v0, Lcom/umeng/newxp/view/widget/a$b;->a:I

    add-int v1, p1, v0

    .line 125
    iget-object v0, p0, Lcom/umeng/newxp/view/widget/a$a;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/Promoter;

    invoke-virtual {p0, p1, v1, v0}, Lcom/umeng/newxp/view/widget/a$a;->a(IILcom/umeng/newxp/Promoter;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public abstract a(IILcom/umeng/newxp/Promoter;)Landroid/view/View;
.end method
