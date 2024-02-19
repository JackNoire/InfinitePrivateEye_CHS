.class public Lcom/nflystudio/InfinitePrivateEye2/SqliteManager;
.super Ljava/lang/Object;
.source "SqliteManager.java"


# static fields
.field public static BANNER_PACKAGE_NAME:Ljava/lang/String;

.field public static DB_PATH:Ljava/lang/String;

.field public static DB_RESOURCE:Ljava/lang/String;

.field public static DB_SAVE:Ljava/lang/String;

.field public static DB_SHARE:Ljava/lang/String;

.field public static PACKAGE_NAME:Ljava/lang/String;

.field private static _episodeDBFileName:Ljava/lang/String;

.field private static _infinitePrivateEye2:Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;

.field private static myContext:Landroid/content/Context;

.field private static myDBControl:Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;

.field public static purchaseID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    const-string v0, "com.nflystudio.InfinitePrivateEye2"

    sput-object v0, Lcom/nflystudio/InfinitePrivateEye2/SqliteManager;->PACKAGE_NAME:Ljava/lang/String;

    .line 18
    const-string v0, ""

    sput-object v0, Lcom/nflystudio/InfinitePrivateEye2/SqliteManager;->BANNER_PACKAGE_NAME:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/data/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/nflystudio/InfinitePrivateEye2/SqliteManager;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/databases/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nflystudio/InfinitePrivateEye2/SqliteManager;->DB_PATH:Ljava/lang/String;

    .line 22
    const-string v0, "ShareDB.database"

    sput-object v0, Lcom/nflystudio/InfinitePrivateEye2/SqliteManager;->DB_SHARE:Ljava/lang/String;

    .line 23
    const-string v0, "SaveDB.database"

    sput-object v0, Lcom/nflystudio/InfinitePrivateEye2/SqliteManager;->DB_SAVE:Ljava/lang/String;

    .line 24
    const-string v0, "ResourceDB.database"

    sput-object v0, Lcom/nflystudio/InfinitePrivateEye2/SqliteManager;->DB_RESOURCE:Ljava/lang/String;

    .line 26
    new-instance v0, Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;

    invoke-direct {v0}, Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;-><init>()V

    sput-object v0, Lcom/nflystudio/InfinitePrivateEye2/SqliteManager;->myDBControl:Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;

    .line 29
    const-string v0, ""

    sput-object v0, Lcom/nflystudio/InfinitePrivateEye2/SqliteManager;->_episodeDBFileName:Ljava/lang/String;

    .line 33
    const-string v0, ""

    sput-object v0, Lcom/nflystudio/InfinitePrivateEye2/SqliteManager;->purchaseID:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeCommonDB()V
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/nflystudio/InfinitePrivateEye2/SqliteManager;->myDBControl:Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;

    invoke-virtual {v0}, Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;->closeCommonDB()V

    .line 171
    return-void
.end method

.method public static closeResourceDB()V
    .locals 1

    .prologue
    .line 185
    sget-object v0, Lcom/nflystudio/InfinitePrivateEye2/SqliteManager;->myDBControl:Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;

    invoke-virtual {v0}, Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;->closeResourceDB()V

    .line 186
    return-void
.end method

.method public static closeSaveDB()V
    .locals 1

    .prologue
    .line 180
    sget-object v0, Lcom/nflystudio/InfinitePrivateEye2/SqliteManager;->myDBControl:Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;

    invoke-virtual {v0}, Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;->closeSaveDB()V

    .line 181
    return-void
.end method

.method public static closeShareDB()V
    .locals 1

    .prologue
    .line 175
    sget-object v0, Lcom/nflystudio/InfinitePrivateEye2/SqliteManager;->myDBControl:Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;

    invoke-virtual {v0}, Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;->closeShareDB()V

    .line 176
    return-void
.end method

.method public static getCommonDBFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/nflystudio/InfinitePrivateEye2/SqliteManager;->_episodeDBFileName:Ljava/lang/String;

    return-object v0
.end method

.method public static getNowDate()Ljava/lang/String;
    .locals 4

    .prologue
    .line 279
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 281
    .local v0, "calendar":Ljava/util/Calendar;
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 283
    .local v1, "date":Ljava/lang/String;
    return-object v1
.end method

.method public static getSaveDBVersion()I
    .locals 1

    .prologue
    .line 288
    const/4 v0, -0x1

    .line 291
    .local v0, "version":I
    return v0
.end method

.method public static moveBannerPage()V
    .locals 3

    .prologue
    .line 212
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 213
    .local v0, "marketLaunch":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://api.ptbus.com/test/?type=html5&aid=194100"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/nflystudio/InfinitePrivateEye2/SqliteManager;->BANNER_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 214
    sget-object v1, Lcom/nflystudio/InfinitePrivateEye2/SqliteManager;->myContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 215
    return-void
.end method

.method public static moveReviewPage()V
    .locals 3

    .prologue
    .line 191
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    .local v0, "marketLaunch":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://api.ptbus.com/test/?type=html5&aid=194100"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/nflystudio/InfinitePrivateEye2/SqliteManager;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 193
    sget-object v1, Lcom/nflystudio/InfinitePrivateEye2/SqliteManager;->myContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 208
    return-void
.end method

.method public static nonReturnQueryFromSaveDB(Ljava/lang/String;)V
    .locals 1
    .param p0, "query"    # Ljava/lang/String;

    .prologue
    .line 151
    sget-object v0, Lcom/nflystudio/InfinitePrivateEye2/SqliteManager;->myDBControl:Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;

    invoke-virtual {v0, p0}, Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;->nonReturnQueryFromSaveDB(Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public static nonReturnQuerysFromResourceDB([Ljava/lang/String;)V
    .locals 1
    .param p0, "querys"    # [Ljava/lang/String;

    .prologue
    .line 161
    sget-object v0, Lcom/nflystudio/InfinitePrivateEye2/SqliteManager;->myDBControl:Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;

    invoke-virtual {v0, p0}, Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;->nonReturnQuerysFromResourceDB([Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public static nonReturnQuerysFromSaveDB([Ljava/lang/String;)V
    .locals 1
    .param p0, "querys"    # [Ljava/lang/String;

    .prologue
    .line 156
    sget-object v0, Lcom/nflystudio/InfinitePrivateEye2/SqliteManager;->myDBControl:Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;

    invoke-virtual {v0, p0}, Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;->nonReturnQuerysFromSaveDB([Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public static openCommonDB()Z
    .locals 3

    .prologue
    .line 58
    :try_start_0
    sget-object v1, Lcom/nflystudio/InfinitePrivateEye2/SqliteManager;->myDBControl:Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;

    invoke-virtual {v1}, Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;->openCommonDB()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    const/4 v1, 0x1

    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    :goto_0
    return v1

    .line 62
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_0
    move-exception v0

    .line 64
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "SQLITE"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static openResourceDB()Z
    .locals 2

    .prologue
    .line 109
    :try_start_0
    sget-object v1, Lcom/nflystudio/InfinitePrivateEye2/SqliteManager;->myDBControl:Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;

    invoke-virtual {v1}, Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;->openResourceDB()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    const/4 v1, 0x1

    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    :goto_0
    return v1

    .line 111
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_0
    move-exception v0

    .line 113
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static openSaveDB()Z
    .locals 3

    .prologue
    .line 91
    :try_start_0
    sget-object v1, Lcom/nflystudio/InfinitePrivateEye2/SqliteManager;->myDBControl:Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;

    invoke-virtual {v1}, Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;->openSaveDB()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    const/4 v1, 0x1

    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    :goto_0
    return v1

    .line 95
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_0
    move-exception v0

    .line 97
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "SQLITE"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static openShareDB()Z
    .locals 3

    .prologue
    .line 76
    :try_start_0
    sget-object v1, Lcom/nflystudio/InfinitePrivateEye2/SqliteManager;->myDBControl:Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;

    invoke-virtual {v1}, Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;->openShareDB()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    const/4 v1, 0x1

    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    :goto_0
    return v1

    .line 78
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_0
    move-exception v0

    .line 80
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "SQLITE"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static playEffectSound(Ljava/lang/String;)V
    .locals 12
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 261
    new-instance v0, Landroid/media/SoundPool;

    const/4 v3, 0x3

    invoke-direct {v0, v4, v3, v5}, Landroid/media/SoundPool;-><init>(III)V

    .line 263
    .local v0, "sp":Landroid/media/SoundPool;
    invoke-virtual {v0, p0, v4}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    .local v1, "soundCurrect":I
    move v3, v2

    move v6, v2

    .line 265
    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 266
    const/16 v9, 0x3e8

    .line 267
    .local v9, "waitLimit":I
    const/4 v8, 0x0

    .line 268
    .local v8, "waitCounter":I
    const/16 v7, 0xa

    .local v7, "throttle":I
    :goto_0
    move v3, v2

    move v6, v2

    .line 269
    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v3

    if-nez v3, :cond_0

    if-lt v8, v9, :cond_1

    .line 275
    :cond_0
    return-void

    .line 271
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 272
    int-to-long v10, v7

    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0
.end method

.method public static playVibrator()V
    .locals 3

    .prologue
    .line 225
    sget-object v1, Lcom/nflystudio/InfinitePrivateEye2/SqliteManager;->myContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 226
    .local v0, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 227
    return-void
.end method

.method public static purchaseItem(Ljava/lang/String;)V
    .locals 1
    .param p0, "pID"    # Ljava/lang/String;

    .prologue
    .line 233
    const-string v0, "0910002809"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    const-string p0, "com.nflystudio.infiniteprivateeye2.100p"

    .line 254
    :cond_0
    :goto_0
    sget-object v0, Lcom/nflystudio/InfinitePrivateEye2/SqliteManager;->_infinitePrivateEye2:Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;

    invoke-virtual {v0, p0}, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;->purchaseItem(Ljava/lang/String;)Z

    .line 256
    return-void

    .line 237
    :cond_1
    const-string v0, "0910002810"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 239
    const-string p0, "com.nflystudio.infiniteprivateeye2.300p"

    goto :goto_0

    .line 241
    :cond_2
    const-string v0, "0910002811"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 243
    const-string p0, "com.nflystudio.infiniteprivateeye2.500p"

    goto :goto_0

    .line 245
    :cond_3
    const-string v0, "0910002812"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 247
    const-string p0, "com.nflystudio.infiniteprivateeye2.1000p"

    goto :goto_0

    .line 249
    :cond_4
    const-string v0, "0910002813"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    const-string p0, "com.nflystudio.infiniteprivateeye2.2000p"

    goto :goto_0
.end method

.method public static returnDataFromCommonDB(Ljava/lang/String;)[[Ljava/lang/String;
    .locals 1
    .param p0, "query"    # Ljava/lang/String;

    .prologue
    .line 126
    sget-object v0, Lcom/nflystudio/InfinitePrivateEye2/SqliteManager;->myDBControl:Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;

    invoke-virtual {v0, p0}, Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;->returnDataFromCommonDB(Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static returnDataFromResourceDB(Ljava/lang/String;)[[Ljava/lang/String;
    .locals 1
    .param p0, "query"    # Ljava/lang/String;

    .prologue
    .line 141
    sget-object v0, Lcom/nflystudio/InfinitePrivateEye2/SqliteManager;->myDBControl:Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;

    invoke-virtual {v0, p0}, Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;->returnDataFromResourceDB(Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static returnDataFromSaveDB(Ljava/lang/String;)[[Ljava/lang/String;
    .locals 1
    .param p0, "query"    # Ljava/lang/String;

    .prologue
    .line 136
    sget-object v0, Lcom/nflystudio/InfinitePrivateEye2/SqliteManager;->myDBControl:Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;

    invoke-virtual {v0, p0}, Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;->returnDataFromSaveDB(Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static returnDataFromShareDB(Ljava/lang/String;)[[Ljava/lang/String;
    .locals 1
    .param p0, "query"    # Ljava/lang/String;

    .prologue
    .line 131
    sget-object v0, Lcom/nflystudio/InfinitePrivateEye2/SqliteManager;->myDBControl:Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;

    invoke-virtual {v0, p0}, Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;->returnDataFromShareDB(Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setCommonDBFileName(Ljava/lang/String;)V
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 219
    sput-object p0, Lcom/nflystudio/InfinitePrivateEye2/SqliteManager;->_episodeDBFileName:Ljava/lang/String;

    .line 220
    sget-object v0, Lcom/nflystudio/InfinitePrivateEye2/SqliteManager;->_infinitePrivateEye2:Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;

    sget-object v1, Lcom/nflystudio/InfinitePrivateEye2/SqliteManager;->_episodeDBFileName:Ljava/lang/String;

    sget-object v2, Lcom/nflystudio/InfinitePrivateEye2/SqliteManager;->_episodeDBFileName:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;->makeDatabaseFile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 221
    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    sput-object p0, Lcom/nflystudio/InfinitePrivateEye2/SqliteManager;->myContext:Landroid/content/Context;

    .line 38
    return-void
.end method

.method public static setInfinitePrivateEye2(Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;)V
    .locals 0
    .param p0, "infinitePrivateEye2"    # Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;

    .prologue
    .line 42
    sput-object p0, Lcom/nflystudio/InfinitePrivateEye2/SqliteManager;->_infinitePrivateEye2:Lcom/nflystudio/InfinitePrivateEye2/InfinitePrivateEye2;

    .line 43
    return-void
.end method

.method public static setSaveDBVersion(I)V
    .locals 0
    .param p0, "version"    # I

    .prologue
    .line 296
    return-void
.end method
