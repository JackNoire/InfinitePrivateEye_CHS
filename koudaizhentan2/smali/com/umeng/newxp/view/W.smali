.class public Lcom/umeng/newxp/view/W;
.super Landroid/app/Dialog;
.source "FloatDialog.java"


# static fields
.field private static final b:Ljava/lang/String;

.field private static c:Lcom/umeng/newxp/view/W;


# instance fields
.field public a:F

.field private d:Landroid/content/Context;

.field private e:Lcom/umeng/newxp/view/FloatDialogConfig;

.field private f:Landroid/view/ViewGroup;

.field private g:Lcom/umeng/common/c;

.field private h:Lcom/umeng/newxp/view/S;

.field private i:Landroid/view/View;

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/umeng/newxp/view/W;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/newxp/view/W;->b:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/newxp/view/W;->c:Lcom/umeng/newxp/view/W;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;ILcom/umeng/newxp/view/FloatDialogConfig;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/umeng/newxp/controller/ExchangeDataService;",
            "I",
            "Lcom/umeng/newxp/view/FloatDialogConfig;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 63
    invoke-direct {p0, p1, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/newxp/view/W;->j:Z

    .line 64
    iput-object p1, p0, Lcom/umeng/newxp/view/W;->d:Landroid/content/Context;

    .line 65
    if-eqz p4, :cond_0

    move-object v0, p4

    :goto_0
    iput-object v0, p0, Lcom/umeng/newxp/view/W;->e:Lcom/umeng/newxp/view/FloatDialogConfig;

    .line 66
    sget-object v0, Lcom/umeng/newxp/view/W;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FloatDialogConfig is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/umeng/newxp/view/FloatDialogConfig;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/umeng/newxp/view/W;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/newxp/view/W;->g:Lcom/umeng/common/c;

    .line 68
    invoke-virtual {p0}, Lcom/umeng/newxp/view/W;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 69
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 70
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 71
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 72
    iget-object v1, p0, Lcom/umeng/newxp/view/W;->g:Lcom/umeng/common/c;

    const-string v2, "umeng_xp_dialog_animations"

    invoke-virtual {v1, v2}, Lcom/umeng/common/c;->f(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 73
    invoke-virtual {p0}, Lcom/umeng/newxp/view/W;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 75
    invoke-direct {p0, p1}, Lcom/umeng/newxp/view/W;->a(Landroid/content/Context;)V

    .line 77
    new-instance v0, Lcom/umeng/newxp/view/S;

    iget-object v1, p0, Lcom/umeng/newxp/view/W;->e:Lcom/umeng/newxp/view/FloatDialogConfig;

    iget-object v2, p0, Lcom/umeng/newxp/view/W;->d:Landroid/content/Context;

    invoke-direct {v0, v1, v2, p0}, Lcom/umeng/newxp/view/S;-><init>(Lcom/umeng/newxp/view/FloatDialogConfig;Landroid/content/Context;Landroid/app/Dialog;)V

    iput-object v0, p0, Lcom/umeng/newxp/view/W;->h:Lcom/umeng/newxp/view/S;

    .line 78
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/umeng/newxp/view/W;->h:Lcom/umeng/newxp/view/S;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/S;->a()Landroid/webkit/WebView;

    move-result-object v0

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 82
    iput-object v0, p0, Lcom/umeng/newxp/view/W;->i:Landroid/view/View;

    .line 87
    :goto_1
    iget-object v0, p0, Lcom/umeng/newxp/view/W;->f:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/umeng/newxp/view/W;->i:Landroid/view/View;

    invoke-virtual {v0, v1, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 89
    return-void

    .line 65
    :cond_0
    new-instance v0, Lcom/umeng/newxp/view/FloatDialogConfig;

    invoke-direct {v0}, Lcom/umeng/newxp/view/FloatDialogConfig;-><init>()V

    goto/16 :goto_0

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/umeng/newxp/view/W;->h:Lcom/umeng/newxp/view/S;

    invoke-virtual {v0, p6, p2}, Lcom/umeng/newxp/view/S;->c(Ljava/util/List;Lcom/umeng/newxp/controller/ExchangeDataService;)Lcom/umeng/newxp/view/P;

    move-result-object v0

    .line 85
    iput-object v0, p0, Lcom/umeng/newxp/view/W;->i:Landroid/view/View;

    goto :goto_1
.end method

.method public static declared-synchronized a(I)V
    .locals 5

    .prologue
    .line 163
    const-class v1, Lcom/umeng/newxp/view/W;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/umeng/newxp/view/W;->c:Lcom/umeng/newxp/view/W;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/umeng/newxp/view/W;->c:Lcom/umeng/newxp/view/W;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/W;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    sget-object v0, Lcom/umeng/newxp/view/W;->c:Lcom/umeng/newxp/view/W;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/W;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/umeng/newxp/view/W;->c:Lcom/umeng/newxp/view/W;

    iget v2, v2, Lcom/umeng/newxp/view/W;->a:F

    invoke-static {v0, v2}, Lcom/umeng/newxp/view/W;->a(Landroid/content/Context;F)[I

    move-result-object v0

    .line 165
    sget-object v2, Lcom/umeng/newxp/view/W;->c:Lcom/umeng/newxp/view/W;

    const/4 v3, 0x0

    aget v3, v0, v3

    const/4 v4, 0x1

    aget v0, v0, v4

    invoke-direct {v2, v3, v0, p0}, Lcom/umeng/newxp/view/W;->a(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    :cond_0
    monitor-exit v1

    return-void

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized a(III)V
    .locals 1

    .prologue
    .line 278
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/umeng/newxp/view/W;->c:Lcom/umeng/newxp/view/W;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/W;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 281
    :cond_0
    invoke-virtual {p0}, Lcom/umeng/newxp/view/W;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setLayout(II)V

    .line 282
    invoke-virtual {p0, p3}, Lcom/umeng/newxp/view/W;->b(I)V

    .line 283
    invoke-super {p0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    monitor-exit p0

    return-void

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 205
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/umeng/newxp/view/W;->d:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 206
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 209
    iget-object v2, p0, Lcom/umeng/newxp/view/W;->g:Lcom/umeng/common/c;

    const-string v3, "umeng_xp_floatdialog_content"

    invoke-virtual {v2, v3}, Lcom/umeng/common/c;->e(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 211
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 213
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    iget-object v0, p0, Lcom/umeng/newxp/view/W;->g:Lcom/umeng/common/c;

    const-string v3, "umeng_xp_float_dialog_content"

    invoke-virtual {v0, v3}, Lcom/umeng/common/c;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/umeng/newxp/view/W;->f:Landroid/view/ViewGroup;

    .line 218
    iget-object v0, p0, Lcom/umeng/newxp/view/W;->g:Lcom/umeng/common/c;

    const-string v3, "umeng_xp_float_dialog_close"

    invoke-virtual {v0, v3}, Lcom/umeng/common/c;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 219
    new-instance v3, Lcom/umeng/newxp/view/X;

    invoke-direct {v3, p0}, Lcom/umeng/newxp/view/X;-><init>(Lcom/umeng/newxp/view/W;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 228
    invoke-virtual {p0, v1}, Lcom/umeng/newxp/view/W;->setContentView(Landroid/view/View;)V

    .line 229
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;Lcom/umeng/newxp/view/FloatDialogConfig;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/umeng/newxp/controller/ExchangeDataService;",
            "Lcom/umeng/newxp/view/FloatDialogConfig;",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    const-class v7, Lcom/umeng/newxp/view/W;

    monitor-enter v7

    const/4 v5, 0x0

    .line 111
    :try_start_0
    invoke-virtual {p2}, Lcom/umeng/newxp/view/FloatDialogConfig;->getNativeFlag()I

    move-result v0

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lcom/umeng/newxp/common/g;->b(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&_random="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 115
    :cond_0
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v0}, Lcom/umeng/common/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    invoke-static {p0}, Lcom/umeng/common/b;->n(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 119
    invoke-static {p0}, Lcom/umeng/newxp/a/e;->i(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 120
    const/4 v1, 0x1

    .line 117
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    :goto_0
    monitor-exit v7

    return-void

    .line 124
    :cond_1
    :try_start_1
    sget-object v0, Lcom/umeng/newxp/view/W;->c:Lcom/umeng/newxp/view/W;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/umeng/newxp/view/W;->c:Lcom/umeng/newxp/view/W;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/W;->isShowing()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    :try_start_2
    sget-object v0, Lcom/umeng/newxp/view/W;->c:Lcom/umeng/newxp/view/W;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/W;->dismiss()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 138
    :cond_2
    :goto_1
    :try_start_3
    iget-object v0, p1, Lcom/umeng/newxp/controller/ExchangeDataService;->opensize:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    .line 140
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v8, v0

    if-ltz v0, :cond_6

    .line 141
    sget-boolean v0, Lcom/umeng/newxp/common/ExchangeConstants;->full_screen:Z

    if-eqz v0, :cond_5

    const v0, 0x1030011

    :goto_2
    move v3, v0

    .line 147
    :goto_3
    new-instance v0, Lcom/umeng/newxp/view/W;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/umeng/newxp/view/W;-><init>(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;ILcom/umeng/newxp/view/FloatDialogConfig;Ljava/lang/String;Ljava/util/List;)V

    sput-object v0, Lcom/umeng/newxp/view/W;->c:Lcom/umeng/newxp/view/W;

    .line 148
    sget-object v0, Lcom/umeng/newxp/view/W;->c:Lcom/umeng/newxp/view/W;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/W;->a()V

    .line 149
    sget-object v0, Lcom/umeng/newxp/view/W;->c:Lcom/umeng/newxp/view/W;

    iput v8, v0, Lcom/umeng/newxp/view/W;->a:F

    .line 151
    invoke-static {p0, v8}, Lcom/umeng/newxp/view/W;->a(Landroid/content/Context;F)[I

    move-result-object v0

    .line 154
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/umeng/newxp/view/FloatDialogConfig;->isDelay()Z

    move-result v1

    if-nez v1, :cond_4

    .line 155
    :cond_3
    sget-object v1, Lcom/umeng/newxp/view/W;->c:Lcom/umeng/newxp/view/W;

    invoke-virtual {v1}, Lcom/umeng/newxp/view/W;->show()V

    .line 156
    sget-object v1, Lcom/umeng/newxp/view/W;->b:Ljava/lang/String;

    const-string v2, "show dialog on create..."

    invoke-static {v1, v2}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_4
    sget-object v1, Lcom/umeng/newxp/view/W;->c:Lcom/umeng/newxp/view/W;

    invoke-virtual {v1}, Lcom/umeng/newxp/view/W;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setLayout(II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    :try_start_4
    sget-object v1, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Reset list dialog..."

    invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 142
    :cond_5
    const v0, 0x1030010

    goto :goto_2

    .line 144
    :cond_6
    invoke-static {p0}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v0

    const-string v1, "umeng_xp_dialog_download_window"

    invoke-virtual {v0, v1}, Lcom/umeng/common/c;->f(Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v3

    goto :goto_3
.end method

.method private static a(Landroid/content/Context;F)[I
    .locals 11

    .prologue
    const/high16 v10, 0x41200000    # 10.0f

    const/high16 v9, 0x40e00000    # 7.0f

    const/4 v8, 0x1

    const v7, 0x3f19999a    # 0.6f

    const v6, 0x3f4ccccd    # 0.8f

    .line 170
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 171
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 172
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 173
    new-instance v0, Lcom/umeng/common/util/j;

    invoke-direct {v0, p0}, Lcom/umeng/common/util/j;-><init>(Landroid/content/Context;)V

    .line 175
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 176
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 177
    const/4 v1, -0x1

    .line 178
    const/4 v0, -0x1

    .line 180
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    .line 181
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v5, p1

    if-lez v5, :cond_2

    cmpg-float v5, v6, p1

    if-gtz v5, :cond_2

    .line 183
    if-ne v4, v8, :cond_1

    .line 184
    int-to-float v0, v2

    mul-float/2addr v0, v6

    float-to-int v1, v0

    .line 185
    invoke-static {v9}, Lcom/umeng/common/util/j;->a(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v3, v0

    .line 201
    :cond_0
    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    aput v1, v2, v8

    return-object v2

    .line 187
    :cond_1
    invoke-static {v10}, Lcom/umeng/common/util/j;->a(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sub-int v1, v2, v0

    .line 188
    int-to-float v0, v3

    mul-float/2addr v0, v6

    float-to-int v0, v0

    .line 190
    goto :goto_0

    :cond_2
    cmpl-float v5, v6, p1

    if-lez v5, :cond_0

    cmpg-float v5, v7, p1

    if-gtz v5, :cond_0

    .line 192
    if-ne v4, v8, :cond_3

    .line 193
    int-to-float v0, v2

    mul-float/2addr v0, v7

    float-to-int v1, v0

    .line 194
    invoke-static {v9}, Lcom/umeng/common/util/j;->a(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v3, v0

    .line 195
    goto :goto_0

    .line 196
    :cond_3
    invoke-static {v10}, Lcom/umeng/common/util/j;->a(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sub-int v1, v2, v0

    .line 197
    int-to-float v0, v3

    mul-float/2addr v0, v7

    float-to-int v0, v0

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/umeng/newxp/view/W;->i:Landroid/view/View;

    instance-of v0, v0, Lcom/umeng/newxp/view/P;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/umeng/newxp/view/W;->i:Landroid/view/View;

    check-cast v0, Lcom/umeng/newxp/view/P;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/P;->a()Z

    move-result v0

    .line 97
    if-nez v0, :cond_0

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/newxp/view/W;->j:Z

    .line 99
    sget-object v0, Lcom/umeng/newxp/view/W;->b:Ljava/lang/String;

    const-string v1, "build FImageView failed.please check  promoter is correct."

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_0
    return-void
.end method

.method protected b(I)V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/umeng/newxp/view/W;->i:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/newxp/view/W;->i:Landroid/view/View;

    instance-of v0, v0, Lcom/umeng/newxp/view/aE;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/umeng/newxp/view/W;->i:Landroid/view/View;

    check-cast v0, Lcom/umeng/newxp/view/aE;

    .line 294
    invoke-interface {v0, p1}, Lcom/umeng/newxp/view/aE;->a(I)V

    .line 296
    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 265
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 266
    iget-object v0, p0, Lcom/umeng/newxp/view/W;->e:Lcom/umeng/newxp/view/FloatDialogConfig;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/FloatDialogConfig;->getListener()Lcom/umeng/newxp/controller/XpListenersCenter$FloatDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/umeng/newxp/view/W;->e:Lcom/umeng/newxp/view/FloatDialogConfig;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/FloatDialogConfig;->getListener()Lcom/umeng/newxp/controller/XpListenersCenter$FloatDialogListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/newxp/controller/XpListenersCenter$FloatDialogListener;->onClose()V

    .line 268
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/newxp/view/W;->c:Lcom/umeng/newxp/view/W;

    .line 269
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 233
    iget-object v0, p0, Lcom/umeng/newxp/view/W;->e:Lcom/umeng/newxp/view/FloatDialogConfig;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/FloatDialogConfig;->isTimeout()Z

    move-result v0

    .line 234
    iget-object v1, p0, Lcom/umeng/newxp/view/W;->e:Lcom/umeng/newxp/view/FloatDialogConfig;

    invoke-virtual {v1}, Lcom/umeng/newxp/view/FloatDialogConfig;->getListener()Lcom/umeng/newxp/controller/XpListenersCenter$FloatDialogListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/umeng/newxp/view/W;->e:Lcom/umeng/newxp/view/FloatDialogConfig;

    invoke-virtual {v1}, Lcom/umeng/newxp/view/FloatDialogConfig;->getListener()Lcom/umeng/newxp/controller/XpListenersCenter$FloatDialogListener;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/umeng/newxp/controller/XpListenersCenter$FloatDialogListener;->onShow(Z)V

    .line 237
    :cond_0
    iget-boolean v1, p0, Lcom/umeng/newxp/view/W;->j:Z

    if-eqz v1, :cond_1

    .line 238
    sget-object v0, Lcom/umeng/newxp/view/W;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "can`t show float window.[FLAG interrupt = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/umeng/newxp/view/W;->j:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]  please check log. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :goto_0
    return-void

    .line 242
    :cond_1
    if-nez v0, :cond_3

    .line 243
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 245
    iget-object v0, p0, Lcom/umeng/newxp/view/W;->i:Landroid/view/View;

    instance-of v0, v0, Landroid/webkit/WebView;

    if-nez v0, :cond_2

    .line 247
    :try_start_0
    iget-object v0, p0, Lcom/umeng/newxp/view/W;->i:Landroid/view/View;

    check-cast v0, Lcom/umeng/newxp/view/av;

    .line 248
    invoke-interface {v0}, Lcom/umeng/newxp/view/av;->b()V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 250
    :catch_0
    move-exception v0

    .line 251
    sget-object v0, Lcom/umeng/newxp/view/W;->b:Ljava/lang/String;

    const-string v1, "FloatDialog template is not LazyImpressionView or WebView"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 252
    :catch_1
    move-exception v0

    .line 253
    sget-object v1, Lcom/umeng/newxp/view/W;->b:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 256
    :cond_2
    sget-object v0, Lcom/umeng/newxp/view/W;->b:Ljava/lang/String;

    const-string v1, "FloatDialog template is WebView"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 259
    :cond_3
    sget-object v0, Lcom/umeng/newxp/view/W;->b:Ljava/lang/String;

    const-string v1, "FloatDialog timeout unshow."

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
