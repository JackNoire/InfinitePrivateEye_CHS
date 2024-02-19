.class Lcom/umeng/newxp/view/R;
.super Ljava/lang/Object;
.source "FImageView.java"

# interfaces
.implements Lcom/umeng/common/net/q$a;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/P;

.field private final synthetic b:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/P;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/R;->a:Lcom/umeng/newxp/view/P;

    iput-object p2, p0, Lcom/umeng/newxp/view/R;->b:Landroid/widget/ImageView;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/umeng/common/net/p$a;)V
    .locals 3

    .prologue
    .line 109
    sget-object v0, Lcom/umeng/common/net/p$a;->a:Lcom/umeng/common/net/p$a;

    if-ne p1, v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/umeng/newxp/view/R;->a:Lcom/umeng/newxp/view/P;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/umeng/newxp/view/P;->a(Lcom/umeng/newxp/view/P;Z)V

    .line 111
    iget-object v0, p0, Lcom/umeng/newxp/view/R;->a:Lcom/umeng/newxp/view/P;

    iget-object v1, p0, Lcom/umeng/newxp/view/R;->b:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/newxp/view/P;->a(Lcom/umeng/newxp/view/P;Landroid/graphics/drawable/Drawable;)V

    .line 113
    sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FImageView readyflag="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/umeng/newxp/view/R;->a:Lcom/umeng/newxp/view/P;

    invoke-static {v2}, Lcom/umeng/newxp/view/P;->c(Lcom/umeng/newxp/view/P;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/umeng/newxp/view/R;->a:Lcom/umeng/newxp/view/P;

    invoke-static {v0}, Lcom/umeng/newxp/view/P;->b(Lcom/umeng/newxp/view/P;)Lcom/umeng/common/net/q$a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/umeng/newxp/view/R;->a:Lcom/umeng/newxp/view/P;

    invoke-static {v0}, Lcom/umeng/newxp/view/P;->b(Lcom/umeng/newxp/view/P;)Lcom/umeng/common/net/q$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/umeng/common/net/q$a;->a(Lcom/umeng/common/net/p$a;)V

    .line 117
    :cond_1
    return-void
.end method

.method public a(Lcom/umeng/common/net/q$b;)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/umeng/newxp/view/R;->a:Lcom/umeng/newxp/view/P;

    invoke-static {v0}, Lcom/umeng/newxp/view/P;->b(Lcom/umeng/newxp/view/P;)Lcom/umeng/common/net/q$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/newxp/view/R;->a:Lcom/umeng/newxp/view/P;

    invoke-static {v0}, Lcom/umeng/newxp/view/P;->b(Lcom/umeng/newxp/view/P;)Lcom/umeng/common/net/q$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/umeng/common/net/q$a;->a(Lcom/umeng/common/net/q$b;)V

    .line 105
    :cond_0
    return-void
.end method
