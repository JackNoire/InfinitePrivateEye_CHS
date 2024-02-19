.class Lcom/umeng/newxp/common/i;
.super Ljava/lang/Object;
.source "XpUtils.java"

# interfaces
.implements Lcom/umeng/common/net/q$a;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/common/h;

.field private final synthetic b:Lcom/umeng/newxp/common/g$a;

.field private final synthetic c:Landroid/widget/ImageView;

.field private final synthetic d:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/common/h;Lcom/umeng/newxp/common/g$a;Landroid/widget/ImageView;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/common/i;->a:Lcom/umeng/newxp/common/h;

    iput-object p2, p0, Lcom/umeng/newxp/common/i;->b:Lcom/umeng/newxp/common/g$a;

    iput-object p3, p0, Lcom/umeng/newxp/common/i;->c:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/umeng/newxp/common/i;->d:Ljava/util/List;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/umeng/common/net/p$a;)V
    .locals 2

    .prologue
    .line 167
    sget-object v0, Lcom/umeng/common/net/p$a;->a:Lcom/umeng/common/net/p$a;

    if-ne p1, v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/umeng/newxp/common/i;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/umeng/newxp/common/i;->c:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 170
    iget-object v0, p0, Lcom/umeng/newxp/common/i;->b:Lcom/umeng/newxp/common/g$a;

    iget-object v1, p0, Lcom/umeng/newxp/common/i;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/umeng/newxp/common/g$a;->a(Ljava/util/List;)V

    .line 172
    :cond_0
    return-void
.end method

.method public a(Lcom/umeng/common/net/q$b;)V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/umeng/newxp/common/i;->b:Lcom/umeng/newxp/common/g$a;

    iget-object v1, p0, Lcom/umeng/newxp/common/i;->c:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Lcom/umeng/newxp/common/g$a;->a(Landroid/widget/ImageView;)V

    .line 163
    return-void
.end method
