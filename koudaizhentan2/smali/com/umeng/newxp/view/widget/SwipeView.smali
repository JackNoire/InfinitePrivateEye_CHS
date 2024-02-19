.class public Lcom/umeng/newxp/view/widget/SwipeView;
.super Landroid/widget/HorizontalScrollView;
.source "SwipeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/newxp/view/widget/SwipeView$a;,
        Lcom/umeng/newxp/view/widget/SwipeView$b;
    }
.end annotation


# static fields
.field private static b:I


# instance fields
.field protected a:Z

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/content/Context;

.field private e:I

.field private f:I

.field private g:I

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:I

.field private l:I

.field private m:Lcom/umeng/newxp/view/widget/SwipeView$a;

.field private n:Lcom/umeng/newxp/view/widget/SwipeView$b;

.field private o:Landroid/view/View$OnTouchListener;

.field private p:Lcom/umeng/newxp/view/widget/SwipeViewPointer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/16 v0, 0x3c

    sput v0, Lcom/umeng/newxp/view/widget/SwipeView;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 25
    iput-boolean v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->h:Z

    .line 26
    iput-boolean v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->i:Z

    .line 27
    iput-boolean v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->j:Z

    .line 28
    iput-boolean v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->a:Z

    .line 29
    iput v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->k:I

    .line 30
    iput v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->l:I

    .line 31
    iput-object v1, p0, Lcom/umeng/newxp/view/widget/SwipeView;->m:Lcom/umeng/newxp/view/widget/SwipeView$a;

    .line 34
    iput-object v1, p0, Lcom/umeng/newxp/view/widget/SwipeView;->p:Lcom/umeng/newxp/view/widget/SwipeViewPointer;

    .line 41
    iput-object p1, p0, Lcom/umeng/newxp/view/widget/SwipeView;->d:Landroid/content/Context;

    .line 42
    invoke-direct {p0}, Lcom/umeng/newxp/view/widget/SwipeView;->b()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput-boolean v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->h:Z

    .line 26
    iput-boolean v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->i:Z

    .line 27
    iput-boolean v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->j:Z

    .line 28
    iput-boolean v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->a:Z

    .line 29
    iput v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->k:I

    .line 30
    iput v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->l:I

    .line 31
    iput-object v1, p0, Lcom/umeng/newxp/view/widget/SwipeView;->m:Lcom/umeng/newxp/view/widget/SwipeView$a;

    .line 34
    iput-object v1, p0, Lcom/umeng/newxp/view/widget/SwipeView;->p:Lcom/umeng/newxp/view/widget/SwipeViewPointer;

    .line 50
    iput-object p1, p0, Lcom/umeng/newxp/view/widget/SwipeView;->d:Landroid/content/Context;

    .line 51
    invoke-direct {p0}, Lcom/umeng/newxp/view/widget/SwipeView;->b()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    iput-boolean v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->h:Z

    .line 26
    iput-boolean v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->i:Z

    .line 27
    iput-boolean v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->j:Z

    .line 28
    iput-boolean v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->a:Z

    .line 29
    iput v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->k:I

    .line 30
    iput v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->l:I

    .line 31
    iput-object v1, p0, Lcom/umeng/newxp/view/widget/SwipeView;->m:Lcom/umeng/newxp/view/widget/SwipeView$a;

    .line 34
    iput-object v1, p0, Lcom/umeng/newxp/view/widget/SwipeView;->p:Lcom/umeng/newxp/view/widget/SwipeViewPointer;

    .line 59
    iput-object p1, p0, Lcom/umeng/newxp/view/widget/SwipeView;->d:Landroid/content/Context;

    .line 60
    invoke-direct {p0}, Lcom/umeng/newxp/view/widget/SwipeView;->b()V

    .line 61
    return-void
.end method

.method static synthetic a()I
    .locals 1

    .prologue
    .line 18
    sget v0, Lcom/umeng/newxp/view/widget/SwipeView;->b:I

    return v0
.end method

.method static synthetic a(Lcom/umeng/newxp/view/widget/SwipeView;)Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->o:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method private a(IZ)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 239
    iget v1, p0, Lcom/umeng/newxp/view/widget/SwipeView;->k:I

    .line 240
    invoke-virtual {p0}, Lcom/umeng/newxp/view/widget/SwipeView;->getPageCount()I

    move-result v2

    if-lt p1, v2, :cond_3

    invoke-virtual {p0}, Lcom/umeng/newxp/view/widget/SwipeView;->getPageCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 241
    add-int/lit8 p1, p1, -0x1

    .line 246
    :cond_0
    :goto_0
    if-eqz p2, :cond_4

    .line 247
    iget v2, p0, Lcom/umeng/newxp/view/widget/SwipeView;->l:I

    mul-int/2addr v2, p1

    invoke-virtual {p0, v2, v0}, Lcom/umeng/newxp/view/widget/SwipeView;->smoothScrollTo(II)V

    .line 251
    :goto_1
    iput p1, p0, Lcom/umeng/newxp/view/widget/SwipeView;->k:I

    .line 253
    iget-object v2, p0, Lcom/umeng/newxp/view/widget/SwipeView;->m:Lcom/umeng/newxp/view/widget/SwipeView$a;

    if-eqz v2, :cond_1

    if-eq v1, p1, :cond_1

    .line 254
    iget-object v2, p0, Lcom/umeng/newxp/view/widget/SwipeView;->m:Lcom/umeng/newxp/view/widget/SwipeView$a;

    invoke-interface {v2, v1, p1}, Lcom/umeng/newxp/view/widget/SwipeView$a;->a(II)V

    .line 256
    :cond_1
    iget-object v2, p0, Lcom/umeng/newxp/view/widget/SwipeView;->p:Lcom/umeng/newxp/view/widget/SwipeViewPointer;

    if-eqz v2, :cond_2

    if-eq v1, p1, :cond_2

    .line 257
    iget-object v1, p0, Lcom/umeng/newxp/view/widget/SwipeView;->p:Lcom/umeng/newxp/view/widget/SwipeViewPointer;

    invoke-virtual {v1, p1}, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->setCurrentPage(I)V

    .line 260
    :cond_2
    iget-boolean v1, p0, Lcom/umeng/newxp/view/widget/SwipeView;->a:Z

    if-eqz v1, :cond_5

    :goto_2
    iput-boolean v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->a:Z

    .line 261
    return-void

    .line 242
    :cond_3
    if-gez p1, :cond_0

    move p1, v0

    .line 243
    goto :goto_0

    .line 249
    :cond_4
    iget v2, p0, Lcom/umeng/newxp/view/widget/SwipeView;->l:I

    mul-int/2addr v2, p1

    invoke-virtual {p0, v2, v0}, Lcom/umeng/newxp/view/widget/SwipeView;->scrollTo(II)V

    goto :goto_1

    .line 260
    :cond_5
    const/4 v0, 0x1

    goto :goto_2
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x40a00000    # 5.0f

    .line 410
    iget-boolean v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->h:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->i:Z

    if-nez v0, :cond_0

    .line 412
    iget v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->f:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 413
    iget v1, p0, Lcom/umeng/newxp/view/widget/SwipeView;->g:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 415
    add-float v2, v0, v3

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    .line 416
    iput-boolean v4, p0, Lcom/umeng/newxp/view/widget/SwipeView;->i:Z

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    add-float/2addr v1, v3

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 418
    iput-boolean v4, p0, Lcom/umeng/newxp/view/widget/SwipeView;->h:Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/umeng/newxp/view/widget/SwipeView;I)V
    .locals 0

    .prologue
    .line 23
    iput p1, p0, Lcom/umeng/newxp/view/widget/SwipeView;->f:I

    return-void
.end method

.method static synthetic a(Lcom/umeng/newxp/view/widget/SwipeView;Z)V
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/umeng/newxp/view/widget/SwipeView;->j:Z

    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 64
    const-string v0, "uk.co.jasonfry.android.tools.ui.SwipeView"

    const-string v1, "Initialising SwipeView"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/umeng/newxp/view/widget/SwipeView;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->c:Landroid/widget/LinearLayout;

    .line 66
    iget-object v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 67
    iget-object v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->c:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 68
    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 67
    invoke-super {p0, v0, v3, v1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 70
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/widget/SwipeView;->setSmoothScrollingEnabled(Z)V

    .line 71
    invoke-virtual {p0, v2}, Lcom/umeng/newxp/view/widget/SwipeView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 72
    invoke-virtual {p0, v2}, Lcom/umeng/newxp/view/widget/SwipeView;->setHorizontalScrollBarEnabled(Z)V

    .line 74
    iget-object v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->d:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 75
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->e:I

    .line 77
    iget v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->e:I

    iput v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->l:I

    .line 78
    iput v2, p0, Lcom/umeng/newxp/view/widget/SwipeView;->k:I

    .line 80
    new-instance v0, Lcom/umeng/newxp/view/widget/SwipeView$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/umeng/newxp/view/widget/SwipeView$b;-><init>(Lcom/umeng/newxp/view/widget/SwipeView;Lcom/umeng/newxp/view/widget/SwipeView$b;)V

    iput-object v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->n:Lcom/umeng/newxp/view/widget/SwipeView$b;

    .line 81
    iget-object v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->n:Lcom/umeng/newxp/view/widget/SwipeView$b;

    invoke-super {p0, v0}, Landroid/widget/HorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 82
    return-void
.end method

.method static synthetic b(Lcom/umeng/newxp/view/widget/SwipeView;I)V
    .locals 0

    .prologue
    .line 24
    iput p1, p0, Lcom/umeng/newxp/view/widget/SwipeView;->g:I

    return-void
.end method

.method static synthetic b(Lcom/umeng/newxp/view/widget/SwipeView;Z)V
    .locals 0

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/umeng/newxp/view/widget/SwipeView;->h:Z

    return-void
.end method

.method static synthetic b(Lcom/umeng/newxp/view/widget/SwipeView;)Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->j:Z

    return v0
.end method

.method static synthetic c(Lcom/umeng/newxp/view/widget/SwipeView;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->f:I

    return v0
.end method

.method static synthetic c(Lcom/umeng/newxp/view/widget/SwipeView;Z)V
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/umeng/newxp/view/widget/SwipeView;->i:Z

    return-void
.end method

.method static synthetic d(Lcom/umeng/newxp/view/widget/SwipeView;)I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->g:I

    return v0
.end method

.method static synthetic e(Lcom/umeng/newxp/view/widget/SwipeView;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->c:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic f(Lcom/umeng/newxp/view/widget/SwipeView;)I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->l:I

    return v0
.end method

.method static synthetic g(Lcom/umeng/newxp/view/widget/SwipeView;)I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->k:I

    return v0
.end method


# virtual methods
.method public addPageControlPointer(I)V
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->p:Lcom/umeng/newxp/view/widget/SwipeViewPointer;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->p:Lcom/umeng/newxp/view/widget/SwipeViewPointer;

    invoke-virtual {v0, p1}, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->addPageCount(I)V

    .line 335
    :cond_0
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 109
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/umeng/newxp/view/widget/SwipeView;->addView(Landroid/view/View;I)V

    .line 110
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 3

    .prologue
    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/umeng/newxp/view/widget/SwipeView;->l:I

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 124
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/umeng/newxp/view/widget/SwipeView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 125
    return-void

    .line 121
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 122
    iget v1, p0, Lcom/umeng/newxp/view/widget/SwipeView;->l:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/umeng/newxp/view/widget/SwipeView;->requestLayout()V

    .line 142
    invoke-virtual {p0}, Lcom/umeng/newxp/view/widget/SwipeView;->invalidate()V

    .line 143
    iget-object v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 144
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->l:I

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 133
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/umeng/newxp/view/widget/SwipeView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 134
    return-void
.end method

.method public calculatePageSize(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .locals 2

    .prologue
    .line 291
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    add-int/2addr v0, v1

    .line 292
    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    .line 291
    invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/widget/SwipeView;->setPageWidth(I)I

    move-result v0

    return v0
.end method

.method public getChildContainer()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->c:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->k:I

    return v0
.end method

.method public getOnPageChangedListener()Lcom/umeng/newxp/view/widget/SwipeView$a;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->m:Lcom/umeng/newxp/view/widget/SwipeView$a;

    return-object v0
.end method

.method public getPageControl()Lcom/umeng/newxp/view/widget/SwipeViewPointer;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->p:Lcom/umeng/newxp/view/widget/SwipeViewPointer;

    return-object v0
.end method

.method public getPageCount()I
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getPageWidth()I
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->l:I

    return v0
.end method

.method public getSwipeThreshold()I
    .locals 1

    .prologue
    .line 186
    sget v0, Lcom/umeng/newxp/view/widget/SwipeView;->b:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 385
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 387
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    .line 388
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/umeng/newxp/view/widget/SwipeView;->f:I

    .line 389
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/umeng/newxp/view/widget/SwipeView;->g:I

    .line 390
    iget-boolean v3, p0, Lcom/umeng/newxp/view/widget/SwipeView;->j:Z

    if-nez v3, :cond_0

    .line 391
    iput-boolean v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->h:Z

    .line 392
    iput-boolean v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->i:Z

    .line 398
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/umeng/newxp/view/widget/SwipeView;->i:Z

    if-eqz v3, :cond_2

    .line 406
    :goto_1
    return v0

    .line 394
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 395
    invoke-direct {p0, p1}, Lcom/umeng/newxp/view/widget/SwipeView;->a(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 401
    :cond_2
    iget-boolean v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->h:Z

    if-eqz v0, :cond_3

    .line 402
    iput-boolean v1, p0, Lcom/umeng/newxp/view/widget/SwipeView;->j:Z

    move v0, v1

    .line 403
    goto :goto_1

    :cond_3
    move v0, v2

    .line 406
    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .prologue
    .line 151
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 152
    iget-boolean v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->a:Z

    if-eqz v0, :cond_0

    .line 153
    iget v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->k:I

    invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/widget/SwipeView;->scrollToPage(I)V

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->a:Z

    .line 156
    :cond_0
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/umeng/newxp/view/widget/SwipeView;->requestFocus()Z

    .line 102
    return-void
.end method

.method public scrollToPage(I)V
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/umeng/newxp/view/widget/SwipeView;->a(IZ)V

    .line 226
    return-void
.end method

.method public setOnPageChangedListener(Lcom/umeng/newxp/view/widget/SwipeView$a;)V
    .locals 0

    .prologue
    .line 371
    iput-object p1, p0, Lcom/umeng/newxp/view/widget/SwipeView;->m:Lcom/umeng/newxp/view/widget/SwipeView$a;

    .line 372
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/umeng/newxp/view/widget/SwipeView;->o:Landroid/view/View$OnTouchListener;

    .line 164
    return-void
.end method

.method public setPageControl(Lcom/umeng/newxp/view/widget/SwipeViewPointer;)V
    .locals 1

    .prologue
    .line 312
    iput-object p1, p0, Lcom/umeng/newxp/view/widget/SwipeView;->p:Lcom/umeng/newxp/view/widget/SwipeViewPointer;

    .line 314
    invoke-virtual {p0}, Lcom/umeng/newxp/view/widget/SwipeView;->getPageCount()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->setPageCount(I)V

    .line 315
    iget v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->k:I

    invoke-virtual {p1, v0}, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->setCurrentPage(I)V

    .line 316
    new-instance v0, Lcom/umeng/newxp/view/widget/b;

    invoke-direct {v0, p0}, Lcom/umeng/newxp/view/widget/b;-><init>(Lcom/umeng/newxp/view/widget/SwipeView;)V

    invoke-virtual {p1, v0}, Lcom/umeng/newxp/view/widget/SwipeViewPointer;->setOnPageControlClickListener(Lcom/umeng/newxp/view/widget/SwipeViewPointer$a;)V

    .line 325
    return-void
.end method

.method public setPageWidth(I)I
    .locals 2

    .prologue
    .line 274
    iput p1, p0, Lcom/umeng/newxp/view/widget/SwipeView;->l:I

    .line 275
    iget v0, p0, Lcom/umeng/newxp/view/widget/SwipeView;->e:I

    iget v1, p0, Lcom/umeng/newxp/view/widget/SwipeView;->l:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public setSwipeThreshold(I)V
    .locals 0

    .prologue
    .line 197
    sput p1, Lcom/umeng/newxp/view/widget/SwipeView;->b:I

    .line 198
    return-void
.end method

.method public smoothScrollToPage(I)V
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/umeng/newxp/view/widget/SwipeView;->a(IZ)V

    .line 236
    return-void
.end method
