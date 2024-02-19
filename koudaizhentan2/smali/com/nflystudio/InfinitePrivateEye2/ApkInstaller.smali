.class public Lcom/nflystudio/InfinitePrivateEye2/ApkInstaller;
.super Ljava/lang/Object;
.source "ApkInstaller.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ApkInstaller"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/nflystudio/InfinitePrivateEye2/ApkInstaller;->context:Landroid/content/Context;

    .line 24
    return-void
.end method


# virtual methods
.method public installApk()V
    .locals 12

    .prologue
    .line 27
    iget-object v10, p0, Lcom/nflystudio/InfinitePrivateEye2/ApkInstaller;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 28
    .local v0, "am":Landroid/content/res/AssetManager;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 29
    .local v4, "filePath":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/ptbus.apk"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    .local v1, "apkFile":Ljava/io/File;
    :try_start_0
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 32
    .local v8, "os":Ljava/io/OutputStream;
    const-string v10, "ptbus.apk"

    invoke-virtual {v0, v10}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 33
    .local v6, "is":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 34
    .local v7, "length":I
    const/16 v10, 0x400

    new-array v2, v10, [B

    .line 35
    .local v2, "buffer":[B
    :goto_0
    invoke-virtual {v6, v2}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v10, -0x1

    if-ne v7, v10, :cond_1

    .line 38
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 39
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 40
    if-eqz v1, :cond_0

    .line 41
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 42
    .local v5, "intent":Landroid/content/Intent;
    const/high16 v10, 0x10000000

    invoke-virtual {v5, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 43
    const-string v10, "android.intent.action.VIEW"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    .line 45
    .local v9, "uri":Landroid/net/Uri;
    const-string v10, "application/vnd.android.package-archive"

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    iget-object v10, p0, Lcom/nflystudio/InfinitePrivateEye2/ApkInstaller;->context:Landroid/content/Context;

    invoke-virtual {v10, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 52
    .end local v2    # "buffer":[B
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "length":I
    .end local v8    # "os":Ljava/io/OutputStream;
    .end local v9    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_1
    return-void

    .line 36
    .restart local v2    # "buffer":[B
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v7    # "length":I
    .restart local v8    # "os":Ljava/io/OutputStream;
    :cond_1
    const/4 v10, 0x0

    invoke-virtual {v8, v2, v10, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 48
    .end local v2    # "buffer":[B
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "length":I
    .end local v8    # "os":Ljava/io/OutputStream;
    :catch_0
    move-exception v3

    .line 49
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 50
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "\u5b89\u88c5\u51fa\u73b0\u5f02\u5e38"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method
