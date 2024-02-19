.class Lcom/umeng/newxp/view/ay;
.super Ljava/lang/Object;
.source "ListDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/aw;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/aw;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/ay;->a:Lcom/umeng/newxp/view/aw;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    .prologue
    .line 146
    iget-object v0, p0, Lcom/umeng/newxp/view/ay;->a:Lcom/umeng/newxp/view/aw;

    invoke-static {v0}, Lcom/umeng/newxp/view/aw;->b(Lcom/umeng/newxp/view/aw;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 147
    iget-object v0, p0, Lcom/umeng/newxp/view/ay;->a:Lcom/umeng/newxp/view/aw;

    invoke-static {v0}, Lcom/umeng/newxp/view/aw;->c(Lcom/umeng/newxp/view/aw;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v0

    iget-object v0, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->preloadData:Lcom/umeng/newxp/a;

    if-eqz v0, :cond_2

    .line 148
    iget-object v0, p0, Lcom/umeng/newxp/view/ay;->a:Lcom/umeng/newxp/view/aw;

    invoke-static {v0}, Lcom/umeng/newxp/view/aw;->c(Lcom/umeng/newxp/view/aw;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v0

    iget-object v0, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->preloadData:Lcom/umeng/newxp/a;

    iget-object v0, v0, Lcom/umeng/newxp/a;->a:Lcom/umeng/newxp/a$a;

    sget-object v1, Lcom/umeng/newxp/a$a;->a:Lcom/umeng/newxp/a$a;

    if-ne v0, v1, :cond_2

    .line 149
    iget-object v0, p0, Lcom/umeng/newxp/view/ay;->a:Lcom/umeng/newxp/view/aw;

    invoke-static {v0}, Lcom/umeng/newxp/view/aw;->c(Lcom/umeng/newxp/view/aw;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v0

    iget-object v0, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->preloadData:Lcom/umeng/newxp/a;

    invoke-virtual {v0}, Lcom/umeng/newxp/a;->b()Ljava/util/List;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/umeng/newxp/view/ay;->a:Lcom/umeng/newxp/view/aw;

    iget-object v1, v1, Lcom/umeng/newxp/view/aw;->a:Lcom/umeng/newxp/view/aI;

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/umeng/newxp/view/ay;->a:Lcom/umeng/newxp/view/aw;

    iget-object v1, v1, Lcom/umeng/newxp/view/aw;->a:Lcom/umeng/newxp/view/aI;

    invoke-virtual {v1}, Lcom/umeng/newxp/view/aI;->b()V

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/umeng/newxp/view/ay;->a:Lcom/umeng/newxp/view/aw;

    invoke-static {v1}, Lcom/umeng/newxp/view/aw;->a(Lcom/umeng/newxp/view/aw;)V

    .line 154
    iget-object v1, p0, Lcom/umeng/newxp/view/ay;->a:Lcom/umeng/newxp/view/aw;

    iget-object v2, p0, Lcom/umeng/newxp/view/ay;->a:Lcom/umeng/newxp/view/aw;

    invoke-static {v2}, Lcom/umeng/newxp/view/aw;->d(Lcom/umeng/newxp/view/aw;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/umeng/newxp/common/g;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/newxp/view/aw;->a(Lcom/umeng/newxp/view/aw;Ljava/util/List;)V

    .line 155
    sget-object v1, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "init view use preloadData.... "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-static {v1, v0}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_1
    :goto_0
    return-void

    .line 158
    :cond_2
    iget-object v0, p0, Lcom/umeng/newxp/view/ay;->a:Lcom/umeng/newxp/view/aw;

    invoke-static {v0}, Lcom/umeng/newxp/view/aw;->c(Lcom/umeng/newxp/view/aw;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v0

    const-string v1, ""

    iput-object v1, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;

    .line 159
    iget-object v0, p0, Lcom/umeng/newxp/view/ay;->a:Lcom/umeng/newxp/view/aw;

    invoke-static {v0}, Lcom/umeng/newxp/view/aw;->c(Lcom/umeng/newxp/view/aw;)Lcom/umeng/newxp/controller/ExchangeDataService;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/newxp/view/ay;->a:Lcom/umeng/newxp/view/aw;

    invoke-static {v1}, Lcom/umeng/newxp/view/aw;->e(Lcom/umeng/newxp/view/aw;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/newxp/view/ay;->a:Lcom/umeng/newxp/view/aw;

    invoke-static {v2}, Lcom/umeng/newxp/view/aw;->f(Lcom/umeng/newxp/view/aw;)Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/umeng/newxp/controller/ExchangeDataService;->requestDataAsyn(Landroid/content/Context;Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;)V

    .line 160
    sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    const-string v1, "init view use server data.... "

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 167
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/umeng/newxp/view/ay;->a:Lcom/umeng/newxp/view/aw;

    invoke-static {v0}, Lcom/umeng/newxp/view/aw;->b(Lcom/umeng/newxp/view/aw;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/umeng/newxp/view/ay;->a:Lcom/umeng/newxp/view/aw;

    iget-object v0, v0, Lcom/umeng/newxp/view/aw;->a:Lcom/umeng/newxp/view/aI;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/aI;->a()V

    .line 172
    :cond_0
    return-void
.end method
