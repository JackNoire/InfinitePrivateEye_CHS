.class Lcom/umeng/newxp/view/M;
.super Ljava/lang/Object;
.source "ExchangeViewManager.java"

# interfaces
.implements Lcom/umeng/newxp/common/g$a;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/ExchangeViewManager;

.field private final synthetic b:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/ExchangeViewManager;Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/M;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    iput-object p2, p0, Lcom/umeng/newxp/view/M;->b:Landroid/view/View$OnClickListener;

    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 429
    return-void
.end method

.method public a(Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 439
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
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
    .line 433
    iget-object v0, p0, Lcom/umeng/newxp/view/M;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    invoke-static {v0}, Lcom/umeng/newxp/view/ExchangeViewManager;->d(Lcom/umeng/newxp/view/ExchangeViewManager;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/newxp/view/M;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 434
    return-void
.end method
