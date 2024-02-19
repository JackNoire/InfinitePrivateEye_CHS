.class public Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;
.super Lorg/cocos2dx/lib/Cocos2dxActivity;
.source "InfinitePrivateEye2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2$MyLicenseCheckerCallback;
    }
.end annotation


# static fields
.field public static AppID:Ljava/lang/String; = null

.field public static BASE64_PUBLIC_KEY:Ljava/lang/String; = null

.field static final RC_REQUEST:I = 0x2711

.field private static final SALT:[B


# instance fields
.field private mChecker:Lcom/android/vending/licensing/LicenseChecker;

.field mConsumeFinishedListener:Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper$OnConsumeFinishedListener;

.field mGotInventoryListener:Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper$QueryInventoryFinishedListener;

.field private mHelper:Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper;

.field private mLicenseCheckerCallback:Lcom/android/vending/licensing/LicenseCheckerCallback;

.field mPurchaseFinishedListener:Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper$OnIabPurchaseFinishedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;->SALT:[B

    .line 59
    const-string v0, ""

    sput-object v0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;->AppID:Ljava/lang/String;

    .line 118
    const-string v0, "game"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 51
    return-void

    .line 54
    nop

    :array_0
    .array-data 1
        -0x2et
        0x41t
        0x1et
        -0x80t
        -0x67t
        -0x39t
        0x4at
        0x40t
        0x33t
        0x58t
        0x5ft
        -0x2dt
        0x4dt
        -0x75t
        -0x24t
        -0x71t
        -0xbt
        0x20t
        -0x40t
        0x59t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;-><init>()V

    .line 269
    new-instance v0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2$1;

    invoke-direct {v0, p0}, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2$1;-><init>(Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;)V

    iput-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;->mGotInventoryListener:Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper$QueryInventoryFinishedListener;

    .line 312
    new-instance v0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2$2;

    invoke-direct {v0, p0}, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2$2;-><init>(Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;)V

    iput-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;->mPurchaseFinishedListener:Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper$OnIabPurchaseFinishedListener;

    .line 344
    new-instance v0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2$3;

    invoke-direct {v0, p0}, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2$3;-><init>(Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;)V

    iput-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;->mConsumeFinishedListener:Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper$OnConsumeFinishedListener;

    .line 51
    return-void
.end method

.method static synthetic access$0(Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;)Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;->mHelper:Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper;

    return-object v0
.end method

.method private makeDatabaseFolder()V
    .locals 3

    .prologue
    .line 223
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/nflystudio/InfinitePrivateEye2/SqliteManager;->DB_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 224
    .local v0, "folder":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    const-string v1, "SQLITE"

    const-string v2, "EXIST FOLDER"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :goto_0
    return-void

    .line 227
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 228
    const-string v1, "SQLITE"

    const-string v2, "NOT EXIST FOLDER"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public native getPublicKey()Ljava/lang/String;
.end method

.method public makeDatabaseFile(Ljava/lang/String;)V
    .locals 0
    .param p1, "DBName"    # Ljava/lang/String;

    .prologue
    .line 233
    invoke-virtual {p0, p1, p1}, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;->makeDatabaseFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method public makeDatabaseFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "DBName"    # Ljava/lang/String;
    .param p2, "newDBName"    # Ljava/lang/String;

    .prologue
    .line 237
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;->makeDatabaseFile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 238
    return-void
.end method

.method public makeDatabaseFile(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 11
    .param p1, "DBName"    # Ljava/lang/String;
    .param p2, "newDBName"    # Ljava/lang/String;
    .param p3, "isFileCheck"    # Z

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 244
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    new-instance v7, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    sget-object v10, Lcom/nflystudio/InfinitePrivateEye2/SqliteManager;->DB_PATH:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 246
    .local v7, "outfile":Ljava/io/File;
    const/4 v4, 0x0

    .line 247
    .local v4, "is":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 249
    .local v5, "os":Ljava/io/FileOutputStream;
    const-wide/16 v2, 0x0

    .line 252
    .local v2, "fileSize":J
    const/4 v9, 0x3

    :try_start_0
    invoke-virtual {v0, p2, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v4

    .line 253
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v9

    int-to-long v2, v9

    .line 255
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    if-eqz p3, :cond_1

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v9

    cmp-long v9, v2, v9

    if-eqz v9, :cond_1

    .line 256
    :cond_0
    long-to-int v9, v2

    new-array v8, v9, [B

    .line 257
    .local v8, "tempdata":[B
    invoke-virtual {v4, v8}, Ljava/io/InputStream;->read([B)I

    .line 258
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 259
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    .end local v5    # "os":Ljava/io/FileOutputStream;
    .local v6, "os":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v6, v8}, Ljava/io/FileOutputStream;->write([B)V

    .line 261
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v6

    .line 267
    .end local v6    # "os":Ljava/io/FileOutputStream;
    .end local v8    # "tempdata":[B
    .restart local v5    # "os":Ljava/io/FileOutputStream;
    :cond_1
    :goto_0
    return-void

    .line 264
    :catch_0
    move-exception v1

    .line 265
    .local v1, "e":Ljava/io/IOException;
    :goto_1
    const-string v9, "SQLITE"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 264
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "os":Ljava/io/FileOutputStream;
    .restart local v6    # "os":Ljava/io/FileOutputStream;
    .restart local v8    # "tempdata":[B
    :catch_1
    move-exception v1

    move-object v5, v6

    .end local v6    # "os":Ljava/io/FileOutputStream;
    .restart local v5    # "os":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 199
    const-string v0, "InfinitePrivateEye2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActivityResult("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;->mHelper:Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    invoke-super {p0, p1, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 211
    :goto_0
    return-void

    .line 209
    :cond_0
    const-string v0, "InfinitePrivateEye2"

    const-string v1, "onActivityResult handled by IABUtil."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 68
    invoke-virtual {p0}, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;->getPublicKey()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;->BASE64_PUBLIC_KEY:Ljava/lang/String;

    .line 71
    invoke-virtual {p0}, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "deviceId":Ljava/lang/String;
    new-instance v1, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2$MyLicenseCheckerCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2$MyLicenseCheckerCallback;-><init>(Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2$MyLicenseCheckerCallback;)V

    iput-object v1, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;->mLicenseCheckerCallback:Lcom/android/vending/licensing/LicenseCheckerCallback;

    .line 76
    new-instance v1, Lcom/android/vending/licensing/LicenseChecker;

    .line 78
    new-instance v2, Lcom/android/vending/licensing/ServerManagedPolicy;

    .line 79
    new-instance v3, Lcom/android/vending/licensing/AESObfuscator;

    sget-object v4, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;->SALT:[B

    invoke-virtual {p0}, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v0}, Lcom/android/vending/licensing/AESObfuscator;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-direct {v2, p0, v3}, Lcom/android/vending/licensing/ServerManagedPolicy;-><init>(Landroid/content/Context;Lcom/android/vending/licensing/Obfuscator;)V

    .line 80
    sget-object v3, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;->BASE64_PUBLIC_KEY:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/vending/licensing/LicenseChecker;-><init>(Landroid/content/Context;Lcom/android/vending/licensing/Policy;Ljava/lang/String;)V

    .line 76
    iput-object v1, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;->mChecker:Lcom/android/vending/licensing/LicenseChecker;

    .line 81
    iget-object v1, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;->mChecker:Lcom/android/vending/licensing/LicenseChecker;

    iget-object v2, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;->mLicenseCheckerCallback:Lcom/android/vending/licensing/LicenseCheckerCallback;

    invoke-virtual {v1, v2}, Lcom/android/vending/licensing/LicenseChecker;->checkAccess(Lcom/android/vending/licensing/LicenseCheckerCallback;)V

    .line 83
    new-instance v1, Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper;

    sget-object v2, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;->BASE64_PUBLIC_KEY:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;->mHelper:Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper;

    .line 84
    iget-object v1, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;->mHelper:Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper;

    new-instance v2, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2$4;

    invoke-direct {v2, p0}, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2$4;-><init>(Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;)V

    invoke-virtual {v1, v2}, Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper;->startSetup(Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper$OnIabSetupFinishedListener;)V

    .line 98
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;->setVolumeControlStream(I)V

    .line 105
    invoke-static {p0}, Lcom/nflystudio/InfinitePrivateEye2/SqliteManager;->setContext(Landroid/content/Context;)V

    .line 106
    invoke-static {p0}, Lcom/nflystudio/InfinitePrivateEye2/SqliteManager;->setInfinitePrivateEye2(Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;)V

    .line 108
    invoke-direct {p0}, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;->makeDatabaseFolder()V

    .line 111
    sget-object v1, Lcom/nflystudio/InfinitePrivateEye2/SqliteManager;->DB_SHARE:Ljava/lang/String;

    sget-object v2, Lcom/nflystudio/InfinitePrivateEye2/SqliteManager;->DB_SHARE:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v6}, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;->makeDatabaseFile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 112
    sget-object v1, Lcom/nflystudio/InfinitePrivateEye2/SqliteManager;->DB_SAVE:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;->makeDatabaseFile(Ljava/lang/String;)V

    .line 113
    sget-object v1, Lcom/nflystudio/InfinitePrivateEye2/SqliteManager;->DB_RESOURCE:Ljava/lang/String;

    sget-object v2, Lcom/nflystudio/InfinitePrivateEye2/SqliteManager;->DB_RESOURCE:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v6}, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;->makeDatabaseFile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 115
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 215
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onDestroy()V

    .line 218
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;->mHelper:Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;->mHelper:Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper;

    invoke-virtual {v0}, Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper;->dispose()V

    .line 219
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;->mHelper:Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper;

    .line 220
    return-void
.end method

.method public purchaseItem(Ljava/lang/String;)Z
    .locals 6
    .param p1, "pID"    # Ljava/lang/String;

    .prologue
    .line 176
    const-string v5, ""

    .line 178
    .local v5, "payload":Ljava/lang/String;
    const-string v0, "PURCHASE ITEM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PID = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;->mHelper:Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper;

    const/16 v3, 0x2711

    iget-object v4, p0, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;->mPurchaseFinishedListener:Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper$OnIabPurchaseFinishedListener;

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/nflystudio/InfinitePrivateEye2/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/nflystudio/InfinitePrivateEye2/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 188
    :catch_0
    move-exception v0

    goto :goto_0

    .line 184
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public native receiveResult(I)Ljava/lang/String;
.end method

.method verifyDeveloperPayload(Lcom/nflystudio/InfinitePrivateEye2/util/Purchase;)Z
    .locals 2
    .param p1, "p"    # Lcom/nflystudio/InfinitePrivateEye2/util/Purchase;

    .prologue
    .line 283
    invoke-virtual {p1}, Lcom/nflystudio/InfinitePrivateEye2/util/Purchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, "payload":Ljava/lang/String;
    const/4 v1, 0x1

    return v1
.end method
