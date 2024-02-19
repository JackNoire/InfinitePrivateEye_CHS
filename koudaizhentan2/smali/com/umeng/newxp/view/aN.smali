.class public Lcom/umeng/newxp/view/aN;
.super Landroid/app/Activity;
.source "WapActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/newxp/view/aN$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "url_key"

.field public static final b:Ljava/lang/String; = "configs"

.field private static final c:Ljava/lang/String;

.field private static d:Lcom/umeng/newxp/controller/ExchangeDataService;


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private e:Landroid/webkit/WebView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/view/ViewGroup;

.field private k:Landroid/view/ViewGroup;

.field private l:Landroid/widget/ProgressBar;

.field private m:Landroid/content/Context;

.field private n:Landroid/view/View;

.field private o:Ljava/lang/String;

.field private p:Lcom/umeng/newxp/view/aW;

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/umeng/newxp/view/aN;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/newxp/view/aN;->c:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 349
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 350
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 351
    invoke-virtual {v0, p2, p1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 352
    if-gtz v0, :cond_0

    .line 353
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u83b7\u53d6\u8d44\u6e90ID\u5931\u8d25:(packageName="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 354
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

    .line 353
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :cond_0
    return v0
.end method

.method static synthetic a(Lcom/umeng/newxp/view/aN;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/umeng/newxp/view/aN;->o:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;Lcom/umeng/newxp/view/aW;)V
    .locals 4

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/umeng/newxp/view/aN;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    if-nez p2, :cond_0

    new-instance p2, Lcom/umeng/newxp/view/aW;

    invoke-direct {p2}, Lcom/umeng/newxp/view/aW;-><init>()V

    .line 69
    :cond_0
    const-string v1, "configs"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 70
    sput-object p1, Lcom/umeng/newxp/view/aN;->d:Lcom/umeng/newxp/controller/ExchangeDataService;

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://ex.mobmore.com/api/wap?"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sdk_version="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-static {p0}, Lcom/umeng/common/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 73
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 75
    iget-object v2, p1, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "&slot_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-static {p0, p1}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "&app_key="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-static {p0, p1}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 84
    const-string v2, "url_key"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    :cond_2
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 86
    :cond_3
    return-void
.end method

.method private a(Landroid/webkit/WebSettings;)V
    .locals 5

    .prologue
    .line 296
    :try_start_0
    const-class v0, Landroid/webkit/WebSettings;

    .line 297
    const-string v1, "setAppCacheEnabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    .line 296
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 298
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const-class v0, Landroid/webkit/WebSettings;

    .line 301
    const-string v1, "setAppCachePath"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    .line 300
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 303
    invoke-static {}, Lcom/umeng/common/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 305
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/umeng/newxp/common/ExchangeConstants;->WEB_CACHE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 304
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 309
    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 311
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 312
    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    const-class v0, Landroid/webkit/WebSettings;

    .line 315
    const-string v1, "setAppCacheMaxSize"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    .line 314
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 316
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/high16 v3, 0x100000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    :goto_1
    return-void

    .line 307
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/umeng/newxp/view/aN;->m:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 308
    sget-object v2, Lcom/umeng/newxp/common/ExchangeConstants;->WEB_CACHE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 307
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    goto :goto_0

    .line 318
    :catch_0
    move-exception v0

    .line 319
    sget-object v1, Lcom/umeng/newxp/view/aN;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ClouldDialog DynamicSelectionSetting Error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 321
    :catch_1
    move-exception v0

    .line 322
    throw v0

    .line 323
    :catch_2
    move-exception v0

    .line 324
    sget-object v1, Lcom/umeng/newxp/view/aN;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ClouldDialog DynamicSelectionSetting Error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 325
    :catch_3
    move-exception v0

    .line 326
    sget-object v1, Lcom/umeng/newxp/view/aN;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ClouldDialog DynamicSelectionSetting Error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 320
    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/umeng/newxp/view/aN;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/umeng/newxp/view/aN;->o:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/umeng/newxp/view/aN;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/umeng/newxp/view/aN;->e:Landroid/webkit/WebView;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 129
    sget-object v0, Lcom/umeng/newxp/view/aN;->d:Lcom/umeng/newxp/controller/ExchangeDataService;

    if-nez v0, :cond_0

    .line 144
    :goto_0
    return-void

    .line 131
    :cond_0
    new-instance v0, Lcom/umeng/newxp/view/aO;

    invoke-direct {v0, p0}, Lcom/umeng/newxp/view/aO;-><init>(Lcom/umeng/newxp/view/aN;)V

    .line 143
    sget-object v1, Lcom/umeng/newxp/view/aN;->d:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v2, p0, Lcom/umeng/newxp/view/aN;->m:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/umeng/newxp/controller/ExchangeDataService;->requestDataAsyn(Landroid/content/Context;Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/umeng/newxp/view/aN;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/umeng/newxp/view/aN;->l:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/umeng/newxp/view/aN;->m:Landroid/content/Context;

    .line 148
    const-string v1, "layout"

    const-string v2, "umeng_xp_clould_dialog"

    .line 147
    invoke-static {v0, v1, v2}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/newxp/view/aN;->q:I

    .line 149
    iget-object v0, p0, Lcom/umeng/newxp/view/aN;->m:Landroid/content/Context;

    .line 150
    const-string v1, "id"

    const-string v2, "umeng_xp_loading_view"

    .line 149
    invoke-static {v0, v1, v2}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/newxp/view/aN;->w:I

    .line 151
    iget-object v0, p0, Lcom/umeng/newxp/view/aN;->m:Landroid/content/Context;

    .line 152
    const-string v1, "id"

    const-string v2, "webView"

    .line 151
    invoke-static {v0, v1, v2}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/newxp/view/aN;->v:I

    .line 153
    iget-object v0, p0, Lcom/umeng/newxp/view/aN;->m:Landroid/content/Context;

    .line 154
    const-string v1, "id"

    const-string v2, "umeng_xp_cancel"

    .line 153
    invoke-static {v0, v1, v2}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/newxp/view/aN;->r:I

    .line 155
    iget-object v0, p0, Lcom/umeng/newxp/view/aN;->m:Landroid/content/Context;

    .line 156
    const-string v1, "id"

    const-string v2, "umeng_xp_reflesh"

    .line 155
    invoke-static {v0, v1, v2}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/newxp/view/aN;->u:I

    .line 157
    iget-object v0, p0, Lcom/umeng/newxp/view/aN;->m:Landroid/content/Context;

    .line 158
    const-string v1, "id"

    const-string v2, "umeng_xp_pre"

    .line 157
    invoke-static {v0, v1, v2}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/newxp/view/aN;->s:I

    .line 159
    iget-object v0, p0, Lcom/umeng/newxp/view/aN;->m:Landroid/content/Context;

    .line 160
    const-string v1, "id"

    const-string v2, "umeng_xp_next"

    .line 159
    invoke-static {v0, v1, v2}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/newxp/view/aN;->t:I

    .line 161
    iget-object v0, p0, Lcom/umeng/newxp/view/aN;->m:Landroid/content/Context;

    .line 162
    const-string v1, "id"

    const-string v2, "umeng_xp_web_main"

    .line 161
    invoke-static {v0, v1, v2}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/newxp/view/aN;->B:I

    .line 163
    iget-object v0, p0, Lcom/umeng/newxp/view/aN;->m:Landroid/content/Context;

    .line 164
    const-string v1, "id"

    const-string v2, "umeng_xp_loading_progress"

    .line 163
    invoke-static {v0, v1, v2}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/newxp/view/aN;->C:I

    .line 165
    iget-object v0, p0, Lcom/umeng/newxp/view/aN;->m:Landroid/content/Context;

    .line 166
    const-string v1, "id"

    const-string v2, "umeng_xp_actionBar"

    .line 165
    invoke-static {v0, v1, v2}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/newxp/view/aN;->D:I

    .line 168
    iget-object v0, p0, Lcom/umeng/newxp/view/aN;->m:Landroid/content/Context;

    .line 169
    const-string v1, "drawable"

    const-string v2, "umeng_xp_pre"

    .line 168
    invoke-static {v0, v1, v2}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/newxp/view/aN;->x:I

    .line 170
    iget-object v0, p0, Lcom/umeng/newxp/view/aN;->m:Landroid/content/Context;

    .line 171
    const-string v1, "drawable"

    const-string v2, "umeng_xp_pre_no"

    .line 170
    invoke-static {v0, v1, v2}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/newxp/view/aN;->y:I

    .line 172
    iget-object v0, p0, Lcom/umeng/newxp/view/aN;->m:Landroid/content/Context;

    .line 173
    const-string v1, "drawable"

    const-string v2, "umeng_xp_next"

    .line 172
    invoke-static {v0, v1, v2}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/newxp/view/aN;->z:I

    .line 174
    iget-object v0, p0, Lcom/umeng/newxp/view/aN;->m:Landroid/content/Context;

    .line 175
    const-string v1, "drawable"

    const-string v2, "umeng_xp_next_no"

    .line 174
    invoke-static {v0, v1, v2}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/newxp/view/aN;->A:I

    .line 176
    return-void
.end method

.method static synthetic d(Lcom/umeng/newxp/view/aN;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/umeng/newxp/view/aN;->k:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 179
    iget v0, p0, Lcom/umeng/newxp/view/aN;->q:I

    invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/aN;->setContentView(I)V

    .line 180
    iget v0, p0, Lcom/umeng/newxp/view/aN;->w:I

    invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/aN;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/umeng/newxp/view/aN;->k:Landroid/view/ViewGroup;

    .line 181
    iget v0, p0, Lcom/umeng/newxp/view/aN;->v:I

    invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/aN;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/umeng/newxp/view/aN;->e:Landroid/webkit/WebView;

    .line 182
    iget v0, p0, Lcom/umeng/newxp/view/aN;->B:I

    invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/aN;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/umeng/newxp/view/aN;->j:Landroid/view/ViewGroup;

    .line 183
    iget v0, p0, Lcom/umeng/newxp/view/aN;->C:I

    invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/aN;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/umeng/newxp/view/aN;->l:Landroid/widget/ProgressBar;

    .line 185
    iget-object v0, p0, Lcom/umeng/newxp/view/aN;->j:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 186
    iget v0, p0, Lcom/umeng/newxp/view/aN;->D:I

    invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/aN;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/newxp/view/aN;->n:Landroid/view/View;

    .line 187
    iget-object v0, p0, Lcom/umeng/newxp/view/aN;->p:Lcom/umeng/newxp/view/aW;

    iget-boolean v0, v0, Lcom/umeng/newxp/view/aW;->a:Z

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/umeng/newxp/view/aN;->n:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/umeng/newxp/view/aN;->p:Lcom/umeng/newxp/view/aW;

    iget-boolean v0, v0, Lcom/umeng/newxp/view/aW;->a:Z

    if-eqz v0, :cond_1

    .line 191
    iget v0, p0, Lcom/umeng/newxp/view/aN;->r:I

    invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/aN;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/umeng/newxp/view/aN;->f:Landroid/widget/ImageView;

    .line 192
    iget-object v0, p0, Lcom/umeng/newxp/view/aN;->f:Landroid/widget/ImageView;

    new-instance v1, Lcom/umeng/newxp/view/aP;

    invoke-direct {v1, p0}, Lcom/umeng/newxp/view/aP;-><init>(Lcom/umeng/newxp/view/aN;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget v0, p0, Lcom/umeng/newxp/view/aN;->u:I

    invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/aN;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/umeng/newxp/view/aN;->i:Landroid/widget/ImageView;

    .line 199
    iget-object v0, p0, Lcom/umeng/newxp/view/aN;->i:Landroid/widget/ImageView;

    new-instance v1, Lcom/umeng/newxp/view/aQ;

    invoke-direct {v1, p0}, Lcom/umeng/newxp/view/aQ;-><init>(Lcom/umeng/newxp/view/aN;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget v0, p0, Lcom/umeng/newxp/view/aN;->s:I

    invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/aN;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/umeng/newxp/view/aN;->g:Landroid/widget/ImageView;

    .line 206
    iget-object v0, p0, Lcom/umeng/newxp/view/aN;->g:Landroid/widget/ImageView;

    new-instance v1, Lcom/umeng/newxp/view/aR;

    invoke-direct {v1, p0}, Lcom/umeng/newxp/view/aR;-><init>(Lcom/umeng/newxp/view/aN;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget v0, p0, Lcom/umeng/newxp/view/aN;->t:I

    invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/aN;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/umeng/newxp/view/aN;->h:Landroid/widget/ImageView;

    .line 215
    iget-object v0, p0, Lcom/umeng/newxp/view/aN;->h:Landroid/widget/ImageView;

    new-instance v1, Lcom/umeng/newxp/view/aS;

    invoke-direct {v1, p0}, Lcom/umeng/newxp/view/aS;-><init>(Lcom/umeng/newxp/view/aN;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    :cond_1
    return-void
.end method

.method static synthetic e(Lcom/umeng/newxp/view/aN;)Lcom/umeng/newxp/view/aW;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/umeng/newxp/view/aN;->p:Lcom/umeng/newxp/view/aW;

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 228
    iget-object v0, p0, Lcom/umeng/newxp/view/aN;->e:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 230
    iget-object v0, p0, Lcom/umeng/newxp/view/aN;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 231
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 232
    invoke-direct {p0, v0}, Lcom/umeng/newxp/view/aN;->a(Landroid/webkit/WebSettings;)V

    .line 234
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 236
    iget-object v0, p0, Lcom/umeng/newxp/view/aN;->e:Landroid/webkit/WebView;

    new-instance v1, Lcom/umeng/newxp/view/aT;

    invoke-direct {v1, p0}, Lcom/umeng/newxp/view/aT;-><init>(Lcom/umeng/newxp/view/aN;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 244
    iget-object v0, p0, Lcom/umeng/newxp/view/aN;->e:Landroid/webkit/WebView;

    new-instance v1, Lcom/umeng/newxp/view/aU;

    invoke-direct {v1, p0}, Lcom/umeng/newxp/view/aU;-><init>(Lcom/umeng/newxp/view/aN;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 273
    iget-object v0, p0, Lcom/umeng/newxp/view/aN;->e:Landroid/webkit/WebView;

    new-instance v1, Lcom/umeng/newxp/view/aV;

    invoke-direct {v1, p0}, Lcom/umeng/newxp/view/aV;-><init>(Lcom/umeng/newxp/view/aN;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 285
    return-void
.end method

.method static synthetic f(Lcom/umeng/newxp/view/aN;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/umeng/newxp/view/aN;->m:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 331
    iget-object v0, p0, Lcom/umeng/newxp/view/aN;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/umeng/newxp/view/aN;->g:Landroid/widget/ImageView;

    iget v1, p0, Lcom/umeng/newxp/view/aN;->x:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 333
    iget-object v0, p0, Lcom/umeng/newxp/view/aN;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 339
    :goto_0
    iget-object v0, p0, Lcom/umeng/newxp/view/aN;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/umeng/newxp/view/aN;->h:Landroid/widget/ImageView;

    iget v1, p0, Lcom/umeng/newxp/view/aN;->z:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 341
    iget-object v0, p0, Lcom/umeng/newxp/view/aN;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 346
    :goto_1
    return-void

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/umeng/newxp/view/aN;->g:Landroid/widget/ImageView;

    iget v1, p0, Lcom/umeng/newxp/view/aN;->y:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 336
    iget-object v0, p0, Lcom/umeng/newxp/view/aN;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_0

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/umeng/newxp/view/aN;->h:Landroid/widget/ImageView;

    iget v1, p0, Lcom/umeng/newxp/view/aN;->A:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 344
    iget-object v0, p0, Lcom/umeng/newxp/view/aN;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/16 v3, 0x400

    const/4 v2, 0x1

    .line 90
    invoke-virtual {p0}, Lcom/umeng/newxp/view/aN;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "configs"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/view/aW;

    iput-object v0, p0, Lcom/umeng/newxp/view/aN;->p:Lcom/umeng/newxp/view/aW;

    .line 91
    iget-object v0, p0, Lcom/umeng/newxp/view/aN;->p:Lcom/umeng/newxp/view/aW;

    iget-boolean v0, v0, Lcom/umeng/newxp/view/aW;->d:Z

    if-nez v0, :cond_0

    .line 92
    const v0, 0x1030005

    invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/aN;->setTheme(I)V

    .line 93
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    iput-object p0, p0, Lcom/umeng/newxp/view/aN;->m:Landroid/content/Context;

    .line 96
    iget-object v0, p0, Lcom/umeng/newxp/view/aN;->p:Lcom/umeng/newxp/view/aW;

    iget v0, v0, Lcom/umeng/newxp/view/aW;->e:I

    packed-switch v0, :pswitch_data_0

    .line 109
    :goto_0
    :pswitch_0
    sget-boolean v0, Lcom/umeng/newxp/common/ExchangeConstants;->full_screen:Z

    if-eqz v0, :cond_1

    .line 110
    invoke-virtual {p0, v2}, Lcom/umeng/newxp/view/aN;->requestWindowFeature(I)Z

    .line 111
    invoke-virtual {p0}, Lcom/umeng/newxp/view/aN;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 114
    :cond_1
    invoke-direct {p0}, Lcom/umeng/newxp/view/aN;->c()V

    .line 115
    iget v0, p0, Lcom/umeng/newxp/view/aN;->q:I

    invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/aN;->setContentView(I)V

    .line 116
    invoke-direct {p0}, Lcom/umeng/newxp/view/aN;->d()V

    .line 118
    invoke-direct {p0}, Lcom/umeng/newxp/view/aN;->e()V

    .line 120
    invoke-virtual {p0}, Lcom/umeng/newxp/view/aN;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/newxp/view/aN;->o:Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lcom/umeng/newxp/view/aN;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/umeng/newxp/view/aN;->e:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/umeng/newxp/view/aN;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 126
    :goto_1
    return-void

    .line 98
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/aN;->setRequestedOrientation(I)V

    goto :goto_0

    .line 101
    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/umeng/newxp/view/aN;->setRequestedOrientation(I)V

    goto :goto_0

    .line 125
    :cond_2
    invoke-direct {p0}, Lcom/umeng/newxp/view/aN;->b()V

    goto :goto_1

    .line 96
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
