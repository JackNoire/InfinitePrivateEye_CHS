.class public Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2Sub;
.super Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;
.source "InfinitePrivateEye2Sub.java"


# instance fields
.field private container:Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;

.field private density:F

.field private intent:Landroid/content/Intent;

.field private windowManager:Landroid/view/WindowManager;

.field private windowManagerParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2Sub;->windowManager:Landroid/view/WindowManager;

    .line 17
    iput-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2Sub;->windowManagerParams:Landroid/view/WindowManager$LayoutParams;

    .line 14
    return-void
.end method

.method private addView()V
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2Sub;->container:Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;

    iget v1, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2Sub;->density:F

    invoke-direct {v0, p0, v1}, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;-><init>(Landroid/content/Context;F)V

    iput-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2Sub;->container:Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;

    .line 86
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2Sub;->container:Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;

    invoke-virtual {v0, p0}, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2Sub;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2Sub;->container:Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;

    iget-object v2, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2Sub;->windowManagerParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    return-void
.end method

.method private getDensity()V
    .locals 3

    .prologue
    .line 124
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 125
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2Sub;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 126
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2Sub;->density:F

    .line 127
    return-void
.end method

.method private setWindowParams()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 98
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2Sub;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2Sub;->windowManager:Landroid/view/WindowManager;

    .line 100
    invoke-virtual {p0}, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2Sub;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/nflystudio/InfinitePrivateEye2/MyApplication;

    .line 101
    invoke-virtual {v0}, Lcom/nflystudio/InfinitePrivateEye2/MyApplication;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 100
    iput-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2Sub;->windowManagerParams:Landroid/view/WindowManager$LayoutParams;

    .line 102
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2Sub;->windowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 104
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2Sub;->windowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 106
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2Sub;->windowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x28

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 114
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2Sub;->windowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 116
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2Sub;->windowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 117
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2Sub;->windowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 119
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2Sub;->windowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, 0x43960000    # 300.0f

    iget v2, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2Sub;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 120
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2Sub;->windowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, 0x428c0000    # 70.0f

    iget v2, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2Sub;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 121
    return-void
.end method

.method private startMyService()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nflystudio/Service/PollingService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2Sub;->intent:Landroid/content/Intent;

    .line 42
    const-string v0, "com.nflystudio.Service.PollingService"

    .line 41
    invoke-static {p0, v0}, Lcom/nflystudio/Service/ServiceStatusUtils;->isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 42
    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2Sub;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2Sub;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-direct {p0}, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2Sub;->getDensity()V

    .line 29
    invoke-direct {p0}, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2Sub;->setWindowParams()V

    .line 31
    invoke-direct {p0}, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2Sub;->startMyService()V

    .line 32
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 77
    invoke-super {p0}, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;->onDestroy()V

    .line 79
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 57
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 58
    invoke-super {p0}, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;->onPause()V

    .line 59
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 51
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 52
    invoke-super {p0}, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;->onResume()V

    .line 53
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2Sub;->addView()V

    .line 64
    invoke-super {p0}, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;->onStart()V

    .line 65
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2Sub;->container:Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2Sub;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2Sub;->container:Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 72
    :cond_0
    invoke-super {p0}, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;->onStop()V

    .line 73
    return-void
.end method
