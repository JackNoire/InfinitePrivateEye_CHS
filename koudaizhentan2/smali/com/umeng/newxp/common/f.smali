.class public Lcom/umeng/newxp/common/f;
.super Landroid/view/animation/Animation;
.source "Rotate3D.java"


# instance fields
.field private final a:F

.field private final b:F

.field private c:F

.field private d:F

.field private e:Landroid/graphics/Camera;

.field private f:Z

.field private g:Z

.field private final h:F


# direct methods
.method public constructor <init>(FFFFZZ)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 24
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/umeng/newxp/common/f;->h:F

    .line 28
    iput p1, p0, Lcom/umeng/newxp/common/f;->a:F

    .line 29
    iput p2, p0, Lcom/umeng/newxp/common/f;->b:F

    .line 30
    iput p3, p0, Lcom/umeng/newxp/common/f;->c:F

    .line 31
    iput p4, p0, Lcom/umeng/newxp/common/f;->d:F

    .line 32
    iput-boolean p5, p0, Lcom/umeng/newxp/common/f;->f:Z

    .line 33
    iput-boolean p6, p0, Lcom/umeng/newxp/common/f;->g:Z

    .line 34
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 8

    .prologue
    const/high16 v7, 0x42c80000    # 100.0f

    const/4 v6, 0x0

    .line 46
    iget v0, p0, Lcom/umeng/newxp/common/f;->a:F

    .line 47
    iget v1, p0, Lcom/umeng/newxp/common/f;->b:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 49
    iget v1, p0, Lcom/umeng/newxp/common/f;->c:F

    .line 50
    iget v2, p0, Lcom/umeng/newxp/common/f;->d:F

    .line 51
    iget-object v3, p0, Lcom/umeng/newxp/common/f;->e:Landroid/graphics/Camera;

    .line 53
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    .line 55
    invoke-virtual {v3}, Landroid/graphics/Camera;->save()V

    .line 57
    iget-boolean v5, p0, Lcom/umeng/newxp/common/f;->f:Z

    if-eqz v5, :cond_0

    .line 58
    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, p1

    mul-float/2addr v5, v7

    invoke-virtual {v3, v6, v6, v5}, Landroid/graphics/Camera;->translate(FFF)V

    .line 63
    :goto_0
    iget-boolean v5, p0, Lcom/umeng/newxp/common/f;->g:Z

    if-eqz v5, :cond_1

    .line 64
    invoke-virtual {v3, v0}, Landroid/graphics/Camera;->rotateX(F)V

    .line 68
    :goto_1
    invoke-virtual {v3, v4}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 69
    invoke-virtual {v3}, Landroid/graphics/Camera;->restore()V

    .line 71
    neg-float v0, v1

    neg-float v3, v2

    invoke-virtual {v4, v0, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 72
    invoke-virtual {v4, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 74
    return-void

    .line 60
    :cond_0
    mul-float v5, v7, p1

    invoke-virtual {v3, v6, v6, v5}, Landroid/graphics/Camera;->translate(FFF)V

    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {v3, v0}, Landroid/graphics/Camera;->rotateY(F)V

    goto :goto_1
.end method

.method public initialize(IIII)V
    .locals 4

    .prologue
    .line 38
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 39
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/umeng/newxp/common/f;->e:Landroid/graphics/Camera;

    .line 40
    iget-boolean v0, p0, Lcom/umeng/newxp/common/f;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/umeng/newxp/common/f;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/umeng/newxp/common/f;->getDuration()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/umeng/newxp/common/f;->setStartOffset(J)V

    .line 42
    :cond_0
    return-void
.end method
