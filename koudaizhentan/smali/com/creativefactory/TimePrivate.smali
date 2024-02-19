.class public Lcom/creativefactory/TimePrivate;
.super Lorg/cocos2dx/lib/Cocos2dxActivity;
.source "TimePrivate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/creativefactory/TimePrivate$MyLicenseCheckerCallback;
    }
.end annotation


# static fields
.field public static BASE64_PUBLIC_KEY:Ljava/lang/String;

.field private static final SALT:[B


# instance fields
.field private mChecker:Lcom/android/vending/licensing/LicenseChecker;

.field private mGLView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

.field private mLicenseCheckerCallback:Lcom/android/vending/licensing/LicenseCheckerCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/creativefactory/TimePrivate;->SALT:[B

    .line 174
    const-string v0, "cocos2d"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 175
    const-string v0, "cocosdenshion"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 176
    const-string v0, "game_logic"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 177
    const-string v0, "game"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 49
    return-void

    .line 53
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
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;-><init>()V

    return-void
.end method

.method private copyDatabaseFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "DBName"    # Ljava/lang/String;
    .param p2, "newDBName"    # Ljava/lang/String;

    .prologue
    .line 213
    new-instance v5, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    sget-object v10, Lcom/creativefactory/SqliteManager;->DB_PATH:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    .local v5, "newFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    sget-object v10, Lcom/creativefactory/SqliteManager;->DB_PATH:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 217
    .local v1, "file":Ljava/io/File;
    const/4 v6, 0x0

    .line 219
    .local v6, "os":Ljava/io/FileOutputStream;
    const-wide/16 v2, 0x0

    .line 223
    .local v2, "fileSize":J
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 224
    .local v4, "is":Ljava/io/FileInputStream;
    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v9

    int-to-long v2, v9

    .line 226
    long-to-int v9, v2

    new-array v8, v9, [B

    .line 227
    .local v8, "tempdata":[B
    invoke-virtual {v4, v8}, Ljava/io/FileInputStream;->read([B)I

    .line 228
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 229
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 230
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    .end local v6    # "os":Ljava/io/FileOutputStream;
    .local v7, "os":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v7, v8}, Ljava/io/FileOutputStream;->write([B)V

    .line 232
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v7

    .line 238
    .end local v4    # "is":Ljava/io/FileInputStream;
    .end local v7    # "os":Ljava/io/FileOutputStream;
    .end local v8    # "tempdata":[B
    .restart local v6    # "os":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 234
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    const-string v9, "SQLITE"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 234
    .end local v0    # "e":Ljava/io/IOException;
    .end local v6    # "os":Ljava/io/FileOutputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    .restart local v7    # "os":Ljava/io/FileOutputStream;
    .restart local v8    # "tempdata":[B
    :catch_1
    move-exception v0

    move-object v6, v7

    .end local v7    # "os":Ljava/io/FileOutputStream;
    .restart local v6    # "os":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private existDatabaseFile(Ljava/lang/String;)Z
    .locals 3
    .param p1, "DBName"    # Ljava/lang/String;

    .prologue
    .line 196
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/creativefactory/SqliteManager;->DB_PATH:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 198
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method private makeDatabaseFile(Ljava/lang/String;)V
    .locals 0
    .param p1, "DBName"    # Ljava/lang/String;

    .prologue
    .line 203
    invoke-direct {p0, p1, p1}, Lcom/creativefactory/TimePrivate;->makeDatabaseFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method private makeDatabaseFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "DBName"    # Ljava/lang/String;
    .param p2, "newDBName"    # Ljava/lang/String;

    .prologue
    .line 208
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/creativefactory/TimePrivate;->makeDatabaseFile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 209
    return-void
.end method

.method private makeDatabaseFile(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 11
    .param p1, "DBName"    # Ljava/lang/String;
    .param p2, "newDBName"    # Ljava/lang/String;
    .param p3, "isWrite"    # Z

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/creativefactory/TimePrivate;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 244
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    new-instance v7, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    sget-object v10, Lcom/creativefactory/SqliteManager;->DB_PATH:Ljava/lang/String;

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

    .line 253
    .local v2, "fileSize":J
    const/4 v9, 0x3

    :try_start_0
    invoke-virtual {v0, p2, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v4

    .line 254
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v9

    int-to-long v2, v9

    .line 256
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v9

    cmp-long v9, v9, v2

    if-nez v9, :cond_0

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    if-eqz p3, :cond_1

    .line 258
    :cond_0
    long-to-int v9, v2

    new-array v8, v9, [B

    .line 259
    .local v8, "tempdata":[B
    invoke-virtual {v4, v8}, Ljava/io/InputStream;->read([B)I

    .line 260
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 261
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    .end local v5    # "os":Ljava/io/FileOutputStream;
    .local v6, "os":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v6, v8}, Ljava/io/FileOutputStream;->write([B)V

    .line 263
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v6

    .line 271
    .end local v6    # "os":Ljava/io/FileOutputStream;
    .end local v8    # "tempdata":[B
    .restart local v5    # "os":Ljava/io/FileOutputStream;
    :cond_1
    :goto_0
    return-void

    .line 267
    :catch_0
    move-exception v1

    .line 269
    .local v1, "e":Ljava/io/IOException;
    :goto_1
    const-string v9, "SQLITE"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 267
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

.method private makeDatabaseFolder()V
    .locals 3

    .prologue
    .line 182
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/creativefactory/SqliteManager;->DB_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    .local v0, "folder":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    const-string v1, "SQLITE"

    const-string v2, "EXIST FOLDER"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :goto_0
    return-void

    .line 189
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 190
    const-string v1, "SQLITE"

    const-string v2, "NOT EXIST FOLDER"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public native getPublicKey()Ljava/lang/String;
.end method

.method public native getSaveDBVersion()I
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/creativefactory/TimePrivate;->getPublicKey()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/creativefactory/TimePrivate;->BASE64_PUBLIC_KEY:Ljava/lang/String;

    .line 64
    new-instance v5, Lcom/creativefactory/TimePrivate$MyLicenseCheckerCallback;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/creativefactory/TimePrivate$MyLicenseCheckerCallback;-><init>(Lcom/creativefactory/TimePrivate;Lcom/creativefactory/TimePrivate$MyLicenseCheckerCallback;)V

    iput-object v5, p0, Lcom/creativefactory/TimePrivate;->mLicenseCheckerCallback:Lcom/android/vending/licensing/LicenseCheckerCallback;

    .line 66
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Lcom/creativefactory/TimePrivate;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 67
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "deviceID":Ljava/lang/String;
    new-instance v5, Lcom/android/vending/licensing/LicenseChecker;

    .line 71
    new-instance v6, Lcom/android/vending/licensing/ServerManagedPolicy;

    new-instance v7, Lcom/android/vending/licensing/AESObfuscator;

    sget-object v8, Lcom/creativefactory/TimePrivate;->SALT:[B

    invoke-virtual {p0}, Lcom/creativefactory/TimePrivate;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9, v0}, Lcom/android/vending/licensing/AESObfuscator;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, p0, v7}, Lcom/android/vending/licensing/ServerManagedPolicy;-><init>(Landroid/content/Context;Lcom/android/vending/licensing/Obfuscator;)V

    .line 72
    sget-object v7, Lcom/creativefactory/TimePrivate;->BASE64_PUBLIC_KEY:Ljava/lang/String;

    invoke-direct {v5, p0, v6, v7}, Lcom/android/vending/licensing/LicenseChecker;-><init>(Landroid/content/Context;Lcom/android/vending/licensing/Policy;Ljava/lang/String;)V

    .line 69
    iput-object v5, p0, Lcom/creativefactory/TimePrivate;->mChecker:Lcom/android/vending/licensing/LicenseChecker;

    .line 74
    iget-object v5, p0, Lcom/creativefactory/TimePrivate;->mChecker:Lcom/android/vending/licensing/LicenseChecker;

    iget-object v6, p0, Lcom/creativefactory/TimePrivate;->mLicenseCheckerCallback:Lcom/android/vending/licensing/LicenseCheckerCallback;

    invoke-virtual {v5, v6}, Lcom/android/vending/licensing/LicenseChecker;->checkAccess(Lcom/android/vending/licensing/LicenseCheckerCallback;)V

    .line 78
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/creativefactory/TimePrivate;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "packageName":Ljava/lang/String;
    invoke-super {p0, v2}, Lorg/cocos2dx/lib/Cocos2dxActivity;->setPackageName(Ljava/lang/String;)V

    .line 84
    const/high16 v5, 0x7f030000

    invoke-virtual {p0, v5}, Lcom/creativefactory/TimePrivate;->setContentView(I)V

    .line 85
    const v5, 0x7f050001

    invoke-virtual {p0, v5}, Lcom/creativefactory/TimePrivate;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    iput-object v5, p0, Lcom/creativefactory/TimePrivate;->mGLView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    .line 86
    iget-object v6, p0, Lcom/creativefactory/TimePrivate;->mGLView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    const/high16 v5, 0x7f050000

    invoke-virtual {p0, v5}, Lcom/creativefactory/TimePrivate;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v6, v5}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setTextField(Landroid/widget/TextView;)V

    .line 88
    invoke-static {p0}, Lcom/creativefactory/SqliteManager;->setContext(Landroid/content/Context;)V

    .line 89
    invoke-static {p0}, Lcom/creativefactory/SqliteManager;->setActivity(Landroid/app/Activity;)V

    .line 91
    invoke-static {}, Lcom/creativefactory/ExecuteBilling;->getInstance()Lcom/creativefactory/ExecuteBilling;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/creativefactory/ExecuteBilling;->initExecuteBilling(Landroid/app/Activity;)V

    .line 92
    invoke-static {}, Lcom/creativefactory/ExecuteBilling;->getInstance()Lcom/creativefactory/ExecuteBilling;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/creativefactory/ExecuteBilling;->setTimePrivate(Lcom/creativefactory/TimePrivate;)V

    .line 94
    invoke-direct {p0}, Lcom/creativefactory/TimePrivate;->makeDatabaseFolder()V

    .line 96
    sget-object v5, Lcom/creativefactory/SqliteManager;->DB_VERSION:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/creativefactory/TimePrivate;->makeDatabaseFile(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/creativefactory/TimePrivate;->getSaveDBVersion()I

    move-result v4

    .line 110
    .local v4, "version":I
    invoke-static {}, Lcom/creativefactory/SqliteManager;->getSaveDBVersion()I

    move-result v1

    .line 112
    .local v1, "nowVersion":I
    sget-object v5, Lcom/creativefactory/SqliteManager;->DB_SAVE:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/creativefactory/TimePrivate;->existDatabaseFile(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 114
    if-le v4, v1, :cond_0

    .line 116
    sget-object v5, Lcom/creativefactory/SqliteManager;->DB_SAVE_NEW:Ljava/lang/String;

    sget-object v6, Lcom/creativefactory/SqliteManager;->DB_SAVE_NEW:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-direct {p0, v5, v6, v7}, Lcom/creativefactory/TimePrivate;->makeDatabaseFile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 118
    invoke-virtual {p0}, Lcom/creativefactory/TimePrivate;->updateSaveDB()V

    .line 120
    sget-object v5, Lcom/creativefactory/SqliteManager;->DB_SAVE:Ljava/lang/String;

    sget-object v6, Lcom/creativefactory/SqliteManager;->DB_SAVE_NEW:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/creativefactory/TimePrivate;->copyDatabaseFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-static {v4}, Lcom/creativefactory/SqliteManager;->setSaveDBVersion(I)V

    .line 138
    :cond_0
    :goto_0
    sget-object v5, Lcom/creativefactory/SqliteManager;->DB_NAME:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/creativefactory/TimePrivate;->makeDatabaseFile(Ljava/lang/String;)V

    .line 139
    sget-object v5, Lcom/creativefactory/SqliteManager;->DB_RESOURCE:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/creativefactory/TimePrivate;->makeDatabaseFile(Ljava/lang/String;)V

    .line 141
    return-void

    .line 130
    :cond_1
    sget-object v5, Lcom/creativefactory/SqliteManager;->DB_SAVE:Ljava/lang/String;

    sget-object v6, Lcom/creativefactory/SqliteManager;->DB_SAVE_NEW:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/creativefactory/TimePrivate;->makeDatabaseFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    if-le v4, v1, :cond_0

    .line 134
    invoke-static {v4}, Lcom/creativefactory/SqliteManager;->setSaveDBVersion(I)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 155
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onPause()V

    .line 156
    iget-object v0, p0, Lcom/creativefactory/TimePrivate;->mGLView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->onPause()V

    .line 158
    invoke-static {}, Lcom/creativefactory/ExecuteBilling;->getInstance()Lcom/creativefactory/ExecuteBilling;

    move-result-object v0

    iget-object v0, v0, Lcom/creativefactory/ExecuteBilling;->mGooglePlayPurchaseObserver:Lcom/creativefactory/ExecuteBilling$GooglePlayPurchaseObserver;

    invoke-static {v0}, Lcom/creativefactory/ResponseHandler;->unregister(Lcom/creativefactory/PurchaseObserver;)V

    .line 160
    const-string v0, "ANDROID SYSTEM"

    const-string v1, "PAUSE !!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 165
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onResume()V

    .line 166
    iget-object v0, p0, Lcom/creativefactory/TimePrivate;->mGLView:Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->onResume()V

    .line 168
    invoke-static {}, Lcom/creativefactory/ExecuteBilling;->getInstance()Lcom/creativefactory/ExecuteBilling;

    move-result-object v0

    iget-object v0, v0, Lcom/creativefactory/ExecuteBilling;->mGooglePlayPurchaseObserver:Lcom/creativefactory/ExecuteBilling$GooglePlayPurchaseObserver;

    invoke-static {v0}, Lcom/creativefactory/ResponseHandler;->register(Lcom/creativefactory/PurchaseObserver;)V

    .line 170
    const-string v0, "ANDROID SYSTEM"

    const-string v1, "RESUME !!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return-void
.end method

.method public native receiveResult(I)Ljava/lang/String;
.end method

.method public native updateSaveDB()V
.end method
