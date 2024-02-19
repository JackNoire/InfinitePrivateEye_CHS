.class Lcom/umeng/newxp/view/ah;
.super Landroid/text/style/ClickableSpan;
.source "Hypertextlink.java"


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/ae;

.field private final synthetic b:Lcom/umeng/newxp/Promoter;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/ae;Lcom/umeng/newxp/Promoter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/ah;->a:Lcom/umeng/newxp/view/ae;

    iput-object p2, p0, Lcom/umeng/newxp/view/ah;->b:Lcom/umeng/newxp/Promoter;

    .line 289
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 293
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/umeng/newxp/view/ah;->a:Lcom/umeng/newxp/view/ae;

    invoke-static {v0}, Lcom/umeng/newxp/view/ae;->a(Lcom/umeng/newxp/view/ae;)Landroid/widget/TextView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/umeng/newxp/view/ah;->a:Lcom/umeng/newxp/view/ae;

    invoke-static {v0}, Lcom/umeng/newxp/view/ae;->b(Lcom/umeng/newxp/view/ae;)Lcom/umeng/newxp/controller/a$a;

    move-result-object v0

    .line 296
    :goto_0
    iget-object v1, p0, Lcom/umeng/newxp/view/ah;->a:Lcom/umeng/newxp/view/ae;

    iget-object v1, v1, Lcom/umeng/newxp/view/ae;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/newxp/view/ah;->a:Lcom/umeng/newxp/view/ae;

    iget-object v2, v2, Lcom/umeng/newxp/view/ae;->c:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v3, p0, Lcom/umeng/newxp/view/ah;->a:Lcom/umeng/newxp/view/ae;

    invoke-static {v3}, Lcom/umeng/newxp/view/ae;->d(Lcom/umeng/newxp/view/ae;)I

    move-result v3

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/umeng/newxp/controller/b;->a(Lcom/umeng/newxp/controller/a$a;Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;IZI)V

    .line 297
    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/umeng/newxp/view/ah;->a:Lcom/umeng/newxp/view/ae;

    invoke-static {v0}, Lcom/umeng/newxp/view/ae;->c(Lcom/umeng/newxp/view/ae;)Lcom/umeng/newxp/controller/a$a;

    move-result-object v0

    goto :goto_0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 4

    .prologue
    .line 301
    const/high16 v0, -0x1000000

    .line 303
    :try_start_0
    iget-object v1, p0, Lcom/umeng/newxp/view/ah;->b:Lcom/umeng/newxp/Promoter;

    iget-object v1, v1, Lcom/umeng/newxp/Promoter;->text_color:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 308
    :goto_0
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 309
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 310
    return-void

    .line 304
    :catch_0
    move-exception v1

    .line 305
    sget-object v1, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parse color error;[parse code:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 306
    iget-object v3, p0, Lcom/umeng/newxp/view/ah;->b:Lcom/umeng/newxp/Promoter;

    iget-object v3, v3, Lcom/umeng/newxp/Promoter;->text_color:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 305
    invoke-static {v1, v2}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
