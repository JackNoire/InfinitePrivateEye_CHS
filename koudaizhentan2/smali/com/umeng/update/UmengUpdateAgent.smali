.class public Lcom/umeng/update/UmengUpdateAgent;
.super Ljava/lang/Object;
.source "UmengUpdateAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/update/UmengUpdateAgent$a;
    }
.end annotation


# static fields
.field private static a:Lcom/umeng/update/UmengUpdateListener;

.field private static b:Lcom/umeng/update/UmengDialogButtonListener;

.field private static c:Lcom/umeng/update/UmengDownloadListener;

.field private static d:Landroid/content/Context;

.field private static e:Lcom/umeng/update/f;

.field private static f:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    sput-object v0, Lcom/umeng/update/UmengUpdateAgent;->a:Lcom/umeng/update/UmengUpdateListener;

    .line 24
    sput-object v0, Lcom/umeng/update/UmengUpdateAgent;->b:Lcom/umeng/update/UmengDialogButtonListener;

    .line 25
    sput-object v0, Lcom/umeng/update/UmengUpdateAgent;->c:Lcom/umeng/update/UmengDownloadListener;

    .line 28
    new-instance v0, Lcom/umeng/update/f;

    invoke-direct {v0}, Lcom/umeng/update/f;-><init>()V

    sput-object v0, Lcom/umeng/update/UmengUpdateAgent;->e:Lcom/umeng/update/f;

    .line 30
    new-instance v0, Lcom/umeng/update/a;

    invoke-direct {v0}, Lcom/umeng/update/a;-><init>()V

    sput-object v0, Lcom/umeng/update/UmengUpdateAgent;->f:Landroid/os/Handler;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/umeng/update/UmengUpdateAgent;->d:Landroid/content/Context;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;)Ljava/io/File;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/umeng/update/UpdateResponse;->new_md5:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".apk"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 300
    :try_start_0
    const-string v0, "/apk"

    const/4 v3, 0x1

    new-array v3, v3, [Z

    invoke-static {v0, p0, v3}, Lcom/umeng/common/net/q;->a(Ljava/lang/String;Landroid/content/Context;[Z)Ljava/io/File;

    move-result-object v3

    .line 301
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 302
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 303
    iget-object v2, p1, Lcom/umeng/update/UpdateResponse;->new_md5:Ljava/lang/String;

    .line 304
    invoke-static {v0}, Lcom/umeng/common/util/h;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 303
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 304
    if-eqz v2, :cond_0

    .line 311
    :goto_0
    return-object v0

    .line 307
    :catch_0
    move-exception v0

    .line 308
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 309
    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 311
    goto :goto_0
.end method

.method static synthetic a(ILcom/umeng/update/UpdateResponse;)V
    .locals 0

    .prologue
    .line 140
    invoke-static {p0, p1}, Lcom/umeng/update/UmengUpdateAgent;->b(ILcom/umeng/update/UpdateResponse;)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 27
    sput-object p0, Lcom/umeng/update/UmengUpdateAgent;->d:Landroid/content/Context;

    return-void
.end method

.method static synthetic b()Lcom/umeng/update/UmengUpdateListener;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/umeng/update/UmengUpdateAgent;->a:Lcom/umeng/update/UmengUpdateListener;

    return-object v0
.end method

.method private static b(ILcom/umeng/update/UpdateResponse;)V
    .locals 2

    .prologue
    .line 141
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 142
    iput p0, v0, Landroid/os/Message;->what:I

    .line 143
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 145
    sget-object v1, Lcom/umeng/update/UmengUpdateAgent;->f:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 146
    return-void
.end method

.method private static b(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 189
    :try_start_0
    invoke-static {}, Lcom/umeng/update/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/umeng/common/b;->l(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    invoke-static {}, Lcom/umeng/update/e;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/update/UmengUpdateAgent;->b(ILcom/umeng/update/UpdateResponse;)V

    .line 216
    :goto_0
    return-void

    .line 195
    :cond_0
    if-nez p0, :cond_1

    .line 196
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/update/UmengUpdateAgent;->b(ILcom/umeng/update/UpdateResponse;)V

    .line 197
    const-string v0, "update"

    const-string v1, "unexpected null context in update"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 212
    :catch_0
    move-exception v0

    .line 213
    const-string v1, "update"

    .line 214
    const-string v2, "Exception occurred in Mobclick.update(). "

    .line 213
    invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 201
    :cond_1
    :try_start_1
    sget-object v0, Lcom/umeng/update/UmengUpdateAgent;->e:Lcom/umeng/update/f;

    invoke-virtual {v0}, Lcom/umeng/update/f;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 202
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/update/UmengUpdateAgent;->b(ILcom/umeng/update/UpdateResponse;)V

    .line 203
    const-string v0, "update"

    const-string v1, "Is updating now."

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-static {p0}, Lcom/umeng/common/a/c;->b(Landroid/content/Context;)I

    move-result v0

    .line 206
    const/4 v1, 0x0

    .line 204
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 209
    :cond_2
    sput-object p0, Lcom/umeng/update/UmengUpdateAgent;->d:Landroid/content/Context;

    .line 211
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/umeng/update/UmengUpdateAgent$a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/umeng/update/UmengUpdateAgent$a;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic c()Lcom/umeng/update/UmengDialogButtonListener;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/umeng/update/UmengUpdateAgent;->b:Lcom/umeng/update/UmengDialogButtonListener;

    return-object v0
.end method

.method public static forceUpdate(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/umeng/update/e;->c(Z)V

    .line 173
    invoke-static {p0}, Lcom/umeng/update/UmengUpdateAgent;->b(Landroid/content/Context;)V

    .line 174
    return-void
.end method

.method public static forceUpdate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 159
    invoke-static {p1}, Lcom/umeng/update/e;->a(Ljava/lang/String;)V

    .line 160
    invoke-static {p2}, Lcom/umeng/update/e;->b(Ljava/lang/String;)V

    .line 162
    invoke-static {p0}, Lcom/umeng/update/UmengUpdateAgent;->forceUpdate(Landroid/content/Context;)V

    .line 163
    return-void
.end method

.method public static setDeltaUpdate(Z)V
    .locals 0

    .prologue
    .line 107
    invoke-static {p0}, Lcom/umeng/update/e;->d(Z)V

    .line 108
    return-void
.end method

.method public static setDialogListener(Lcom/umeng/update/UmengDialogButtonListener;)V
    .locals 0

    .prologue
    .line 127
    sput-object p0, Lcom/umeng/update/UmengUpdateAgent;->b:Lcom/umeng/update/UmengDialogButtonListener;

    .line 128
    return-void
.end method

.method public static setDownloadListener(Lcom/umeng/update/UmengDownloadListener;)V
    .locals 0

    .prologue
    .line 137
    sput-object p0, Lcom/umeng/update/UmengUpdateAgent;->c:Lcom/umeng/update/UmengDownloadListener;

    .line 138
    return-void
.end method

.method public static setUpdateAutoPopup(Z)V
    .locals 0

    .prologue
    .line 97
    invoke-static {p0}, Lcom/umeng/update/e;->b(Z)V

    .line 98
    return-void
.end method

.method public static setUpdateListener(Lcom/umeng/update/UmengUpdateListener;)V
    .locals 0

    .prologue
    .line 117
    sput-object p0, Lcom/umeng/update/UmengUpdateAgent;->a:Lcom/umeng/update/UmengUpdateListener;

    .line 118
    return-void
.end method

.method public static setUpdateOnlyWifi(Z)V
    .locals 0

    .prologue
    .line 87
    invoke-static {p0}, Lcom/umeng/update/e;->a(Z)V

    .line 88
    return-void
.end method

.method public static showUpdateDialog(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;)V
    .locals 4

    .prologue
    .line 229
    :try_start_0
    iget-object v0, p1, Lcom/umeng/update/UpdateResponse;->new_md5:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p1, Lcom/umeng/update/UpdateResponse;->new_md5:Ljava/lang/String;

    .line 231
    invoke-static {p0}, Lcom/umeng/update/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 231
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/umeng/update/e;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    :goto_0
    return-void

    .line 234
    :cond_0
    invoke-static {p0, p1}, Lcom/umeng/update/UmengUpdateAgent;->a(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;)Ljava/io/File;

    move-result-object v1

    .line 235
    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 236
    :goto_1
    invoke-virtual {p1, p0, v0}, Lcom/umeng/update/UpdateResponse;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    .line 238
    if-eqz v0, :cond_2

    .line 239
    new-instance v3, Lcom/umeng/update/b;

    invoke-direct {v3, v1, p0, p1}, Lcom/umeng/update/b;-><init>(Ljava/io/File;Landroid/content/Context;Lcom/umeng/update/UpdateResponse;)V

    .line 264
    sget-object v1, Lcom/umeng/update/UmengUpdateAgent;->e:Lcom/umeng/update/f;

    invoke-virtual {v1, p0, v2, v0, v3}, Lcom/umeng/update/f;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/umeng/update/UmengDialogButtonListener;)Landroid/app/Dialog;

    move-result-object v0

    .line 265
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 291
    :catch_0
    move-exception v0

    .line 292
    const-string v1, "update"

    const-string v2, "Fail to create update dialog box."

    invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 235
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 267
    :cond_2
    :try_start_1
    new-instance v1, Lcom/umeng/update/c;

    invoke-direct {v1, p0, p1}, Lcom/umeng/update/c;-><init>(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;)V

    .line 288
    sget-object v3, Lcom/umeng/update/UmengUpdateAgent;->e:Lcom/umeng/update/f;

    invoke-virtual {v3, p0, v2, v0, v1}, Lcom/umeng/update/f;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/umeng/update/UmengDialogButtonListener;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static startDownload(Landroid/content/Context;Lcom/umeng/update/UpdateResponse;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 316
    iget-boolean v0, p1, Lcom/umeng/update/UpdateResponse;->delta:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/umeng/update/e;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    sget-object v0, Lcom/umeng/update/UmengUpdateAgent;->e:Lcom/umeng/update/f;

    iget-object v2, p1, Lcom/umeng/update/UpdateResponse;->origin:Ljava/lang/String;

    iget-object v3, p1, Lcom/umeng/update/UpdateResponse;->new_md5:Ljava/lang/String;

    .line 318
    iget-object v4, p1, Lcom/umeng/update/UpdateResponse;->path:Ljava/lang/String;

    iget-object v5, p1, Lcom/umeng/update/UpdateResponse;->patch_md5:Ljava/lang/String;

    sget-object v6, Lcom/umeng/update/UmengUpdateAgent;->c:Lcom/umeng/update/UmengDownloadListener;

    move-object v1, p0

    .line 317
    invoke-virtual/range {v0 .. v6}, Lcom/umeng/update/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/update/UmengDownloadListener;)V

    .line 319
    sget-object v0, Lcom/umeng/update/UmengUpdateAgent;->e:Lcom/umeng/update/f;

    invoke-virtual {v0}, Lcom/umeng/update/f;->c()V

    .line 324
    :goto_0
    return-void

    .line 321
    :cond_0
    sget-object v0, Lcom/umeng/update/UmengUpdateAgent;->e:Lcom/umeng/update/f;

    iget-object v2, p1, Lcom/umeng/update/UpdateResponse;->path:Ljava/lang/String;

    iget-object v3, p1, Lcom/umeng/update/UpdateResponse;->new_md5:Ljava/lang/String;

    sget-object v6, Lcom/umeng/update/UmengUpdateAgent;->c:Lcom/umeng/update/UmengDownloadListener;

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/umeng/update/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/update/UmengDownloadListener;)V

    .line 322
    sget-object v0, Lcom/umeng/update/UmengUpdateAgent;->e:Lcom/umeng/update/f;

    invoke-virtual {v0}, Lcom/umeng/update/f;->d()V

    goto :goto_0
.end method

.method public static update(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/umeng/update/e;->c(Z)V

    .line 184
    invoke-static {p0}, Lcom/umeng/update/UmengUpdateAgent;->b(Landroid/content/Context;)V

    .line 185
    return-void
.end method

.method public static update(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    invoke-static {p1}, Lcom/umeng/update/e;->b(Ljava/lang/String;)V

    .line 60
    invoke-static {p0}, Lcom/umeng/update/UmengUpdateAgent;->update(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method public static update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    invoke-static {p1}, Lcom/umeng/update/e;->a(Ljava/lang/String;)V

    .line 75
    invoke-static {p2}, Lcom/umeng/update/e;->b(Ljava/lang/String;)V

    .line 77
    invoke-static {p0}, Lcom/umeng/update/UmengUpdateAgent;->update(Landroid/content/Context;)V

    .line 78
    return-void
.end method
