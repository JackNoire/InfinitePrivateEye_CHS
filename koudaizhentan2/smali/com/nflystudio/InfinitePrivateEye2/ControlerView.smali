.class public Lcom/nflystudio/InfinitePrivateEye2/ControlerView;
.super Landroid/widget/ImageView;
.source "ControlerView.java"


# instance fields
.field private context:Landroid/content/Context;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mStartX:F

.field private mStartY:F

.field private mTouchX:F

.field private mTouchY:F

.field private parent:Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;

.field private windowManager:Landroid/view/WindowManager;

.field private windowManagerParams:Landroid/view/WindowManager$LayoutParams;

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-virtual {p0}, Lcom/nflystudio/InfinitePrivateEye2/ControlerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ControlerView;->windowManager:Landroid/view/WindowManager;

    .line 32
    invoke-virtual {p0}, Lcom/nflystudio/InfinitePrivateEye2/ControlerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/nflystudio/InfinitePrivateEye2/MyApplication;

    invoke-virtual {v0}, Lcom/nflystudio/InfinitePrivateEye2/MyApplication;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ControlerView;->windowManagerParams:Landroid/view/WindowManager$LayoutParams;

    .line 36
    iput-object p1, p0, Lcom/nflystudio/InfinitePrivateEye2/ControlerView;->context:Landroid/content/Context;

    .line 37
    return-void
.end method

.method private getDrawableByName(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 93
    iget-object v4, p0, Lcom/nflystudio/InfinitePrivateEye2/ControlerView;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 94
    .local v0, "am":Landroid/content/res/AssetManager;
    const/4 v3, 0x0

    .line 96
    .local v3, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 100
    :goto_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 101
    .local v1, "bd":Landroid/graphics/drawable/BitmapDrawable;
    return-object v1

    .line 97
    .end local v1    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    :catch_0
    move-exception v2

    .line 98
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private updateViewPosition()V
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ControlerView;->windowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/nflystudio/InfinitePrivateEye2/ControlerView;->x:F

    iget v2, p0, Lcom/nflystudio/InfinitePrivateEye2/ControlerView;->mTouchX:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 86
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ControlerView;->windowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/nflystudio/InfinitePrivateEye2/ControlerView;->y:F

    iget v2, p0, Lcom/nflystudio/InfinitePrivateEye2/ControlerView;->mTouchY:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 87
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ControlerView;->parent:Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/ControlerView;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/nflystudio/InfinitePrivateEye2/ControlerView;->parent:Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;

    iget-object v2, p0, Lcom/nflystudio/InfinitePrivateEye2/ControlerView;->windowManagerParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    :cond_0
    return-void
.end method


# virtual methods
.method public addParent(Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;)V
    .locals 0
    .param p1, "parent"    # Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/nflystudio/InfinitePrivateEye2/ControlerView;->parent:Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;

    .line 41
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v4, 0x40a00000    # 5.0f

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 47
    .local v0, "frame":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lcom/nflystudio/InfinitePrivateEye2/ControlerView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 48
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 50
    .local v1, "statusBarHeight":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iput v2, p0, Lcom/nflystudio/InfinitePrivateEye2/ControlerView;->x:F

    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    int-to-float v3, v1

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/nflystudio/InfinitePrivateEye2/ControlerView;->y:F

    .line 52
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 75
    :cond_0
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 54
    :pswitch_0
    const-string v2, "controler_press.png"

    invoke-direct {p0, v2}, Lcom/nflystudio/InfinitePrivateEye2/ControlerView;->getDrawableByName(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/nflystudio/InfinitePrivateEye2/ControlerView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/nflystudio/InfinitePrivateEye2/ControlerView;->mTouchX:F

    .line 57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/nflystudio/InfinitePrivateEye2/ControlerView;->mTouchY:F

    .line 58
    iget v2, p0, Lcom/nflystudio/InfinitePrivateEye2/ControlerView;->x:F

    iput v2, p0, Lcom/nflystudio/InfinitePrivateEye2/ControlerView;->mStartX:F

    .line 59
    iget v2, p0, Lcom/nflystudio/InfinitePrivateEye2/ControlerView;->y:F

    iput v2, p0, Lcom/nflystudio/InfinitePrivateEye2/ControlerView;->mStartY:F

    goto :goto_0

    .line 62
    :pswitch_1
    invoke-direct {p0}, Lcom/nflystudio/InfinitePrivateEye2/ControlerView;->updateViewPosition()V

    goto :goto_0

    .line 65
    :pswitch_2
    const-string v2, "controler.png"

    invoke-direct {p0, v2}, Lcom/nflystudio/InfinitePrivateEye2/ControlerView;->getDrawableByName(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/nflystudio/InfinitePrivateEye2/ControlerView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    invoke-direct {p0}, Lcom/nflystudio/InfinitePrivateEye2/ControlerView;->updateViewPosition()V

    .line 67
    const/4 v2, 0x0

    iput v2, p0, Lcom/nflystudio/InfinitePrivateEye2/ControlerView;->mTouchY:F

    iput v2, p0, Lcom/nflystudio/InfinitePrivateEye2/ControlerView;->mTouchX:F

    .line 68
    iget v2, p0, Lcom/nflystudio/InfinitePrivateEye2/ControlerView;->x:F

    iget v3, p0, Lcom/nflystudio/InfinitePrivateEye2/ControlerView;->mStartX:F

    sub-float/2addr v2, v3

    cmpg-float v2, v2, v4

    if-gez v2, :cond_0

    iget v2, p0, Lcom/nflystudio/InfinitePrivateEye2/ControlerView;->y:F

    iget v3, p0, Lcom/nflystudio/InfinitePrivateEye2/ControlerView;->mStartY:F

    sub-float/2addr v2, v3

    cmpg-float v2, v2, v4

    if-gez v2, :cond_0

    .line 69
    iget-object v2, p0, Lcom/nflystudio/InfinitePrivateEye2/ControlerView;->mClickListener:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_0

    .line 70
    iget-object v2, p0, Lcom/nflystudio/InfinitePrivateEye2/ControlerView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v2, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 52
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 80
    return-void
.end method
