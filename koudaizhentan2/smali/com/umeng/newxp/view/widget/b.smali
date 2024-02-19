.class Lcom/umeng/newxp/view/widget/b;
.super Ljava/lang/Object;
.source "SwipeView.java"

# interfaces
.implements Lcom/umeng/newxp/view/widget/SwipeViewPointer$a;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/widget/SwipeView;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/widget/SwipeView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/widget/b;->a:Lcom/umeng/newxp/view/widget/SwipeView;

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/umeng/newxp/view/widget/b;->a:Lcom/umeng/newxp/view/widget/SwipeView;

    iget-object v1, p0, Lcom/umeng/newxp/view/widget/b;->a:Lcom/umeng/newxp/view/widget/SwipeView;

    invoke-static {v1}, Lcom/umeng/newxp/view/widget/SwipeView;->g(Lcom/umeng/newxp/view/widget/SwipeView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/view/widget/SwipeView;->smoothScrollToPage(I)V

    .line 319
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/umeng/newxp/view/widget/b;->a:Lcom/umeng/newxp/view/widget/SwipeView;

    iget-object v1, p0, Lcom/umeng/newxp/view/widget/b;->a:Lcom/umeng/newxp/view/widget/SwipeView;

    invoke-static {v1}, Lcom/umeng/newxp/view/widget/SwipeView;->g(Lcom/umeng/newxp/view/widget/SwipeView;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/view/widget/SwipeView;->smoothScrollToPage(I)V

    .line 323
    return-void
.end method
