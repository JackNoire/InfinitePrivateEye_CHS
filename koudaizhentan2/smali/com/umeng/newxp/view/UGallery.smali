.class public Lcom/umeng/newxp/view/UGallery;
.super Landroid/widget/Gallery;
.source "UGallery.java"


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field private a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/umeng/newxp/view/UGallery;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/newxp/view/UGallery;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-direct {p0}, Lcom/umeng/newxp/view/UGallery;->a()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-direct {p0}, Lcom/umeng/newxp/view/UGallery;->a()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    invoke-direct {p0}, Lcom/umeng/newxp/view/UGallery;->a()V

    .line 18
    return-void
.end method

.method private a()V
    .locals 0

    .prologue
    .line 31
    return-void
.end method

.method private a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 56
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isTouch()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/umeng/newxp/view/UGallery;->a:Z

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .prologue
    .line 61
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/umeng/newxp/view/UGallery;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lcom/umeng/newxp/view/UGallery;->b:Ljava/lang/String;

    const-string v1, "fling Left"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const/16 v0, 0x15

    .line 69
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/umeng/newxp/view/UGallery;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 70
    const/4 v0, 0x1

    return v0

    .line 66
    :cond_0
    sget-object v0, Lcom/umeng/newxp/view/UGallery;->b:Ljava/lang/String;

    const-string v1, "fling Right"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const/16 v0, 0x16

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 48
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/Gallery;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 42
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/newxp/view/UGallery;->a:Z

    goto :goto_0

    .line 45
    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/newxp/view/UGallery;->a:Z

    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public postDelayedScrollNext()V
    .locals 2

    .prologue
    .line 34
    sget-object v0, Lcom/umeng/newxp/view/UGallery;->b:Ljava/lang/String;

    const-string v1, "postDelayedScrollNext Right"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const/16 v0, 0x16

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/umeng/newxp/view/UGallery;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 36
    return-void
.end method
