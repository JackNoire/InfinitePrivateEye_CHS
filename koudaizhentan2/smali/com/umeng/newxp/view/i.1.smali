.class public Lcom/umeng/newxp/view/i;
.super Landroid/app/Dialog;
.source "CloudDialog.java"


# static fields
.field private static final a:Z = true

.field private static final b:Ljava/lang/String; = "umeng_xp_CloudDialog"


# instance fields
.field private c:Landroid/webkit/WebView;

.field private d:Landroid/view/ViewGroup;

.field private e:Landroid/view/ViewGroup;

.field private f:Landroid/widget/ProgressBar;

.field private g:Landroid/view/animation/Animation;

.field private h:Landroid/view/animation/Animation;

.field private i:Landroid/content/Context;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 59
    .line 61
    sget-boolean v0, Lcom/umeng/newxp/common/ExchangeConstants;->full_screen:Z

    if-eqz v0, :cond_0

    const v0, 0x1030011

    .line 62
    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 52
    iput-boolean v2, p0, Lcom/umeng/newxp/view/i;->j:Z

    .line 53
    iput-boolean v2, p0, Lcom/umeng/newxp/view/i;->k:Z

    .line 54
    iput-boolean v2, p0, Lcom/umeng/newxp/view/i;->l:Z

    .line 63
    iput-object p1, p0, Lcom/umeng/newxp/view/i;->i:Landroid/content/Context;

    .line 64
    invoke-virtual {p0}, Lcom/umeng/newxp/view/i;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 65
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 66
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 67
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 68
    iput-boolean v2, p0, Lcom/umeng/newxp/view/i;->j:Z

    .line 70
    invoke-virtual {p0}, Lcom/umeng/newxp/view/i;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 72
    invoke-direct {p0}, Lcom/umeng/newxp/view/i;->c()V

    .line 73
    invoke-direct {p0}, Lcom/umeng/newxp/view/i;->d()V

    .line 74
    invoke-direct {p0}, Lcom/umeng/newxp/view/i;->e()V

    .line 77
    invoke-direct {p0}, Lcom/umeng/newxp/view/i;->b()V

    .line 78
    iget-object v0, p0, Lcom/umeng/newxp/view/i;->d:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/umeng/newxp/view/i;->g:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 81
    iget-object v0, p0, Lcom/umeng/newxp/view/i;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 82
    const-string v0, "umeng_xp_CloudDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "load url "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void

    .line 62
    :cond_0
    const v0, 0x1030010

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 274
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 275
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 276
    invoke-virtual {v0, p2, p1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 277
    if-gtz v0, :cond_0

    .line 278
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u83b7\u53d6\u8d44\u6e90ID\u5931\u8d25:(packageName="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_0
    return v0
.end method

.method static synthetic a(Lcom/umeng/newxp/view/i;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/umeng/newxp/view/i;->f:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private a(Landroid/webkit/WebSettings;)V
    .locals 5

    .prologue
    .line 204
    :try_start_0
    const-class v0, Landroid/webkit/WebSettings;

    const-string v1, "setAppCacheEnabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 205
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-class v0, Landroid/webkit/WebSettings;

    const-string v1, "setAppCachePath"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 209
    invoke-static {}, Lcom/umeng/common/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/umeng/newxp/common/ExchangeConstants;->WEB_CACHE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 213
    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 215
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 216
    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-class v0, Landroid/webkit/WebSettings;

    const-string v1, "setAppCacheMaxSize"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 219
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/high16 v3, 0x100000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    :goto_1
    return-void

    .line 212
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/umeng/newxp/view/i;->i:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/umeng/newxp/common/ExchangeConstants;->WEB_CACHE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    const-string v1, "umeng_xp_CloudDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ClouldDialog DynamicSelectionSetting Error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 224
    :catch_1
    move-exception v0

    .line 225
    throw v0

    .line 226
    :catch_2
    move-exception v0

    .line 227
    const-string v1, "umeng_xp_CloudDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ClouldDialog DynamicSelectionSetting Error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 228
    :catch_3
    move-exception v0

    .line 229
    const-string v1, "umeng_xp_CloudDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ClouldDialog DynamicSelectionSetting Error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 223
    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/umeng/newxp/view/i;Z)V
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/umeng/newxp/view/i;->j:Z

    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x258

    .line 86
    .line 87
    iget-object v0, p0, Lcom/umeng/newxp/view/i;->i:Landroid/content/Context;

    iget-object v1, p0, Lcom/umeng/newxp/view/i;->i:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/newxp/a/a;->a(Landroid/content/Context;)I

    move-result v1

    .line 86
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/newxp/view/i;->g:Landroid/view/animation/Animation;

    .line 88
    iget-object v0, p0, Lcom/umeng/newxp/view/i;->g:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 89
    iget-object v0, p0, Lcom/umeng/newxp/view/i;->g:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 92
    iget-object v0, p0, Lcom/umeng/newxp/view/i;->i:Landroid/content/Context;

    iget-object v1, p0, Lcom/umeng/newxp/view/i;->i:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/newxp/a/a;->b(Landroid/content/Context;)I

    move-result v1

    .line 91
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/newxp/view/i;->h:Landroid/view/animation/Animation;

    .line 93
    iget-object v0, p0, Lcom/umeng/newxp/view/i;->h:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 94
    iget-object v0, p0, Lcom/umeng/newxp/view/i;->h:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 96
    iget-object v0, p0, Lcom/umeng/newxp/view/i;->h:Landroid/view/animation/Animation;

    new-instance v1, Lcom/umeng/newxp/view/j;

    invoke-direct {v1, p0}, Lcom/umeng/newxp/view/j;-><init>(Lcom/umeng/newxp/view/i;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 111
    return-void
.end method

.method static synthetic b(Lcom/umeng/newxp/view/i;Z)V
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/umeng/newxp/view/i;->k:Z

    return-void
.end method

.method static synthetic b(Lcom/umeng/newxp/view/i;)Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/umeng/newxp/view/i;->l:Z

    return v0
.end method

.method static synthetic c(Lcom/umeng/newxp/view/i;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/umeng/newxp/view/i;->e:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/umeng/newxp/view/i;->i:Landroid/content/Context;

    const-string v1, "layout"

    const-string v2, "umeng_xp_clould_dialog"

    invoke-static {v0, v1, v2}, Lcom/umeng/newxp/view/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/newxp/view/i;->m:I

    .line 115
    iget-object v0, p0, Lcom/umeng/newxp/view/i;->i:Landroid/content/Context;

    const-string v1, "id"

    const-string v2, "umeng_xp_loading_view"

    invoke-static {v0, v1, v2}, Lcom/umeng/newxp/view/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/newxp/view/i;->p:I

    .line 116
    iget-object v0, p0, Lcom/umeng/newxp/view/i;->i:Landroid/content/Context;

    const-string v1, "id"

    const-string v2, "webView"

    invoke-static {v0, v1, v2}, Lcom/umeng/newxp/view/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/newxp/view/i;->o:I

    .line 117
    iget-object v0, p0, Lcom/umeng/newxp/view/i;->i:Landroid/content/Context;

    const-string v1, "id"

    const-string v2, "umeng_xp_cancel"

    invoke-static {v0, v1, v2}, Lcom/umeng/newxp/view/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/newxp/view/i;->n:I

    .line 118
    iget-object v0, p0, Lcom/umeng/newxp/view/i;->i:Landroid/content/Context;

    const-string v1, "id"

    const-string v2, "umeng_xp_web_main"

    invoke-static {v0, v1, v2}, Lcom/umeng/newxp/view/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/newxp/view/i;->q:I

    .line 119
    iget-object v0, p0, Lcom/umeng/newxp/view/i;->i:Landroid/content/Context;

    const-string v1, "id"

    const-string v2, "umeng_xp_loading_progress"

    invoke-static {v0, v1, v2}, Lcom/umeng/newxp/view/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/newxp/view/i;->r:I

    .line 121
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 124
    iget v0, p0, Lcom/umeng/newxp/view/i;->m:I

    invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/i;->setContentView(I)V

    .line 125
    iget v0, p0, Lcom/umeng/newxp/view/i;->p:I

    invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/umeng/newxp/view/i;->e:Landroid/view/ViewGroup;

    .line 126
    iget v0, p0, Lcom/umeng/newxp/view/i;->o:I

    invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/umeng/newxp/view/i;->c:Landroid/webkit/WebView;

    .line 127
    iget v0, p0, Lcom/umeng/newxp/view/i;->q:I

    invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/umeng/newxp/view/i;->d:Landroid/view/ViewGroup;

    .line 128
    iget v0, p0, Lcom/umeng/newxp/view/i;->r:I

    invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/umeng/newxp/view/i;->f:Landroid/widget/ProgressBar;

    .line 130
    iget v0, p0, Lcom/umeng/newxp/view/i;->n:I

    invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 131
    new-instance v1, Lcom/umeng/newxp/view/k;

    invoke-direct {v1, p0}, Lcom/umeng/newxp/view/k;-><init>(Lcom/umeng/newxp/view/i;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    return-void
.end method

.method static synthetic d(Lcom/umeng/newxp/view/i;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/umeng/newxp/view/i;->k:Z

    return v0
.end method

.method static synthetic e(Lcom/umeng/newxp/view/i;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/umeng/newxp/view/i;->c:Landroid/webkit/WebView;

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 140
    iget-object v0, p0, Lcom/umeng/newxp/view/i;->c:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 141
    iget-object v0, p0, Lcom/umeng/newxp/view/i;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 142
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 143
    invoke-direct {p0, v0}, Lcom/umeng/newxp/view/i;->a(Landroid/webkit/WebSettings;)V

    .line 145
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 146
    iget-object v0, p0, Lcom/umeng/newxp/view/i;->c:Landroid/webkit/WebView;

    new-instance v1, Lcom/umeng/newxp/view/l;

    invoke-direct {v1, p0}, Lcom/umeng/newxp/view/l;-><init>(Lcom/umeng/newxp/view/i;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 154
    iget-object v0, p0, Lcom/umeng/newxp/view/i;->c:Landroid/webkit/WebView;

    new-instance v1, Lcom/umeng/newxp/view/m;

    invoke-direct {v1, p0}, Lcom/umeng/newxp/view/m;-><init>(Lcom/umeng/newxp/view/i;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 185
    iget-object v0, p0, Lcom/umeng/newxp/view/i;->c:Landroid/webkit/WebView;

    new-instance v1, Lcom/umeng/newxp/view/n;

    invoke-direct {v1, p0}, Lcom/umeng/newxp/view/n;-><init>(Lcom/umeng/newxp/view/i;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 195
    return-void
.end method

.method static synthetic f(Lcom/umeng/newxp/view/i;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/umeng/newxp/view/i;->i:Landroid/content/Context;

    return-object v0
.end method

.method private f()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 261
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 262
    iget-object v1, p0, Lcom/umeng/newxp/view/i;->i:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/common/b;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 263
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 264
    const-string v2, "device_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 266
    :cond_0
    iget-object v1, p0, Lcom/umeng/newxp/view/i;->i:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/common/b;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 267
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 268
    const-string v2, "mc"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 270
    :cond_1
    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/umeng/newxp/view/i;->d:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/umeng/newxp/view/i;->h:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 239
    return-void
.end method

.method protected a(Landroid/webkit/WebView;)V
    .locals 4

    .prologue
    .line 251
    const/4 v0, 0x0

    .line 253
    :try_start_0
    invoke-direct {p0}, Lcom/umeng/newxp/view/i;->f()Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 256
    :goto_0
    const-string v1, "umeng_xp_CloudDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "send device info "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:uGap.setDeviceInfo("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 258
    return-void

    .line 254
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 243
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/umeng/newxp/view/i;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/umeng/newxp/view/i;->j:Z

    if-nez v0, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/umeng/newxp/view/i;->a()V

    .line 245
    const/4 v0, 0x1

    .line 247
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
