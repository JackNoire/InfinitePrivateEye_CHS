.class public Lcom/umeng/newxp/view/GridTemplateConfig;
.super Ljava/lang/Object;
.source "GridTemplateConfig.java"


# instance fields
.field a:Landroid/graphics/drawable/Drawable;

.field b:Landroid/graphics/drawable/Drawable;

.field c:Z

.field d:Z

.field public maxPsize:I

.field public numColumns:I

.field public verticalSpacing:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/16 v0, 0xf

    iput v0, p0, Lcom/umeng/newxp/view/GridTemplateConfig;->maxPsize:I

    .line 10
    const/4 v0, 0x3

    iput v0, p0, Lcom/umeng/newxp/view/GridTemplateConfig;->numColumns:I

    .line 11
    const/4 v0, 0x7

    iput v0, p0, Lcom/umeng/newxp/view/GridTemplateConfig;->verticalSpacing:I

    .line 16
    iput-boolean v1, p0, Lcom/umeng/newxp/view/GridTemplateConfig;->c:Z

    .line 18
    iput-boolean v1, p0, Lcom/umeng/newxp/view/GridTemplateConfig;->d:Z

    .line 8
    return-void
.end method


# virtual methods
.method public setActivePointer(Landroid/graphics/drawable/Drawable;)Lcom/umeng/newxp/view/GridTemplateConfig;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/umeng/newxp/view/GridTemplateConfig;->a:Landroid/graphics/drawable/Drawable;

    .line 39
    return-object p0
.end method

.method public setInactivePointer(Landroid/graphics/drawable/Drawable;)Lcom/umeng/newxp/view/GridTemplateConfig;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/umeng/newxp/view/GridTemplateConfig;->b:Landroid/graphics/drawable/Drawable;

    .line 44
    return-object p0
.end method

.method public setMaxPsize(I)Lcom/umeng/newxp/view/GridTemplateConfig;
    .locals 2

    .prologue
    const/16 v1, 0xf

    const/4 v0, 0x1

    .line 21
    if-ge p1, v0, :cond_0

    iput v0, p0, Lcom/umeng/newxp/view/GridTemplateConfig;->maxPsize:I

    .line 23
    :cond_0
    if-le p1, v1, :cond_1

    .line 24
    iput v1, p0, Lcom/umeng/newxp/view/GridTemplateConfig;->maxPsize:I

    .line 25
    sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    const-string v1, "IconList max page count is 15..."

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_1
    iput p1, p0, Lcom/umeng/newxp/view/GridTemplateConfig;->maxPsize:I

    .line 28
    return-object p0
.end method

.method public setNumColumns(I)Lcom/umeng/newxp/view/GridTemplateConfig;
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 32
    if-ge p1, v0, :cond_0

    iput v0, p0, Lcom/umeng/newxp/view/GridTemplateConfig;->numColumns:I

    .line 33
    :cond_0
    iput p1, p0, Lcom/umeng/newxp/view/GridTemplateConfig;->numColumns:I

    .line 34
    return-object p0
.end method

.method public setPaging(Z)Lcom/umeng/newxp/view/GridTemplateConfig;
    .locals 0

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/umeng/newxp/view/GridTemplateConfig;->c:Z

    .line 60
    return-object p0
.end method

.method public setPointer(Z)Lcom/umeng/newxp/view/GridTemplateConfig;
    .locals 0

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/umeng/newxp/view/GridTemplateConfig;->d:Z

    .line 65
    return-object p0
.end method

.method public setVerticalSpacing(I)Lcom/umeng/newxp/view/GridTemplateConfig;
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lcom/umeng/newxp/view/GridTemplateConfig;->verticalSpacing:I

    .line 55
    return-object p0
.end method
