.class public Lcom/creativefactory/SqliteManager;
.super Ljava/lang/Object;
.source "SqliteManager.java"


# static fields
.field public static BANNER_PACKAGE_NAME:Ljava/lang/String;

.field public static DB_NAME:Ljava/lang/String;

.field public static DB_PATH:Ljava/lang/String;

.field public static DB_RESOURCE:Ljava/lang/String;

.field public static DB_SAVE:Ljava/lang/String;

.field public static DB_SAVE_NEW:Ljava/lang/String;

.field public static DB_VERSION:Ljava/lang/String;

.field public static PACKAGE_NAME:Ljava/lang/String;

.field private static _timePrivate:Lcom/creativefactory/TimePrivate;

.field private static myActivity:Landroid/app/Activity;

.field private static myContext:Landroid/content/Context;

.field private static myDBControl:Lcom/creativefactory/DatabaseControl;

.field private static myExecuteBilling:Lcom/creativefactory/ExecuteBilling;

.field public static purchaseID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "com.creativefactory"

    sput-object v0, Lcom/creativefactory/SqliteManager;->PACKAGE_NAME:Ljava/lang/String;

    .line 20
    const-string v0, "com.gameday.RoomBreak1ADGB"

    sput-object v0, Lcom/creativefactory/SqliteManager;->BANNER_PACKAGE_NAME:Ljava/lang/String;

    .line 22
    const-string v0, "/data/data/com.creativefactory/databases/"

    sput-object v0, Lcom/creativefactory/SqliteManager;->DB_PATH:Ljava/lang/String;

    .line 24
    const-string v0, "ResourceDB.database"

    sput-object v0, Lcom/creativefactory/SqliteManager;->DB_RESOURCE:Ljava/lang/String;

    .line 25
    const-string v0, "CommonDB.database"

    sput-object v0, Lcom/creativefactory/SqliteManager;->DB_NAME:Ljava/lang/String;

    .line 26
    const-string v0, "SaveDB.database"

    sput-object v0, Lcom/creativefactory/SqliteManager;->DB_SAVE:Ljava/lang/String;

    .line 27
    const-string v0, "SaveDBNew.database"

    sput-object v0, Lcom/creativefactory/SqliteManager;->DB_SAVE_NEW:Ljava/lang/String;

    .line 28
    const-string v0, "save_version.txt"

    sput-object v0, Lcom/creativefactory/SqliteManager;->DB_VERSION:Ljava/lang/String;

    .line 30
    new-instance v0, Lcom/creativefactory/DatabaseControl;

    invoke-direct {v0}, Lcom/creativefactory/DatabaseControl;-><init>()V

    sput-object v0, Lcom/creativefactory/SqliteManager;->myDBControl:Lcom/creativefactory/DatabaseControl;

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/creativefactory/SqliteManager;->myExecuteBilling:Lcom/creativefactory/ExecuteBilling;

    .line 38
    const-string v0, ""

    sput-object v0, Lcom/creativefactory/SqliteManager;->purchaseID:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeCommonDB()V
    .locals 1

    .prologue
    .line 182
    sget-object v0, Lcom/creativefactory/SqliteManager;->myDBControl:Lcom/creativefactory/DatabaseControl;

    invoke-virtual {v0}, Lcom/creativefactory/DatabaseControl;->closeCommonDB()V

    .line 183
    return-void
.end method

.method public static closeNewSaveDB()V
    .locals 1

    .prologue
    .line 197
    sget-object v0, Lcom/creativefactory/SqliteManager;->myDBControl:Lcom/creativefactory/DatabaseControl;

    invoke-virtual {v0}, Lcom/creativefactory/DatabaseControl;->closeNewSaveDB()V

    .line 198
    return-void
.end method

.method public static closeResourceDB()V
    .locals 1

    .prologue
    .line 187
    sget-object v0, Lcom/creativefactory/SqliteManager;->myDBControl:Lcom/creativefactory/DatabaseControl;

    invoke-virtual {v0}, Lcom/creativefactory/DatabaseControl;->closeResourceDB()V

    .line 188
    return-void
.end method

.method public static closeSaveDB()V
    .locals 1

    .prologue
    .line 192
    sget-object v0, Lcom/creativefactory/SqliteManager;->myDBControl:Lcom/creativefactory/DatabaseControl;

    invoke-virtual {v0}, Lcom/creativefactory/DatabaseControl;->closeSaveDB()V

    .line 193
    return-void
.end method

.method public static getSaveDBVersion()I
    .locals 5

    .prologue
    .line 240
    const/4 v2, -0x1

    .line 244
    .local v2, "version":I
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/creativefactory/SqliteManager;->DB_PATH:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/creativefactory/SqliteManager;->DB_VERSION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 246
    .local v1, "reader":Ljava/io/FileReader;
    invoke-virtual {v1}, Ljava/io/FileReader;->read()I

    move-result v3

    add-int/lit8 v2, v3, -0x30

    .line 248
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    .end local v1    # "reader":Ljava/io/FileReader;
    :goto_0
    return v2

    .line 250
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "IOException"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static moveBannerPage()V
    .locals 3

    .prologue
    .line 210
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 211
    .local v0, "marketLaunch":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "market://details?id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/creativefactory/SqliteManager;->BANNER_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 212
    sget-object v1, Lcom/creativefactory/SqliteManager;->myContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 213
    return-void
.end method

.method public static moveReviewPage()V
    .locals 3

    .prologue
    .line 203
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 204
    .local v0, "marketLaunch":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "market://details?id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/creativefactory/SqliteManager;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 205
    sget-object v1, Lcom/creativefactory/SqliteManager;->myContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 206
    return-void
.end method

.method public static nonReturnQueryFromNewSaveDB(Ljava/lang/String;)V
    .locals 1
    .param p0, "query"    # Ljava/lang/String;

    .prologue
    .line 173
    sget-object v0, Lcom/creativefactory/SqliteManager;->myDBControl:Lcom/creativefactory/DatabaseControl;

    invoke-virtual {v0, p0}, Lcom/creativefactory/DatabaseControl;->nonReturnQueryFromNewSaveDB(Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public static nonReturnQueryFromSaveDB(Ljava/lang/String;)V
    .locals 1
    .param p0, "query"    # Ljava/lang/String;

    .prologue
    .line 168
    sget-object v0, Lcom/creativefactory/SqliteManager;->myDBControl:Lcom/creativefactory/DatabaseControl;

    invoke-virtual {v0, p0}, Lcom/creativefactory/DatabaseControl;->nonReturnQueryFromSaveDB(Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public static openCommonDB()Z
    .locals 3

    .prologue
    .line 81
    :try_start_0
    sget-object v1, Lcom/creativefactory/SqliteManager;->myDBControl:Lcom/creativefactory/DatabaseControl;

    invoke-virtual {v1}, Lcom/creativefactory/DatabaseControl;->openCommonDB()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    const/4 v1, 0x1

    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    :goto_0
    return v1

    .line 85
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_0
    move-exception v0

    .line 87
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "SQLITE"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static openNewSaveDB()Z
    .locals 3

    .prologue
    .line 59
    :try_start_0
    sget-object v1, Lcom/creativefactory/SqliteManager;->myDBControl:Lcom/creativefactory/DatabaseControl;

    invoke-virtual {v1}, Lcom/creativefactory/DatabaseControl;->openNewSaveDB()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    const/4 v1, 0x1

    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    :goto_0
    return v1

    .line 63
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_0
    move-exception v0

    .line 65
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "SQLITE"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static openResourceDB()Z
    .locals 3

    .prologue
    .line 99
    :try_start_0
    sget-object v1, Lcom/creativefactory/SqliteManager;->myDBControl:Lcom/creativefactory/DatabaseControl;

    invoke-virtual {v1}, Lcom/creativefactory/DatabaseControl;->openResourceDB()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    const/4 v1, 0x1

    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    :goto_0
    return v1

    .line 103
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_0
    move-exception v0

    .line 105
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "SQLITE"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static openSaveDB()Z
    .locals 3

    .prologue
    .line 117
    :try_start_0
    sget-object v1, Lcom/creativefactory/SqliteManager;->myDBControl:Lcom/creativefactory/DatabaseControl;

    invoke-virtual {v1}, Lcom/creativefactory/DatabaseControl;->openSaveDB()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    const/4 v1, 0x1

    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    :goto_0
    return v1

    .line 121
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_0
    move-exception v0

    .line 123
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "SQLITE"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static playVibrator()V
    .locals 3

    .prologue
    .line 217
    sget-object v1, Lcom/creativefactory/SqliteManager;->myContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 218
    .local v0, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 219
    return-void
.end method

.method public static purchaseItem(Ljava/lang/String;)V
    .locals 1
    .param p0, "pID"    # Ljava/lang/String;

    .prologue
    .line 227
    sget-object v0, Lcom/creativefactory/SqliteManager;->myExecuteBilling:Lcom/creativefactory/ExecuteBilling;

    if-nez v0, :cond_0

    .line 229
    invoke-static {}, Lcom/creativefactory/ExecuteBilling;->getInstance()Lcom/creativefactory/ExecuteBilling;

    move-result-object v0

    sput-object v0, Lcom/creativefactory/SqliteManager;->myExecuteBilling:Lcom/creativefactory/ExecuteBilling;

    .line 232
    :cond_0
    sput-object p0, Lcom/creativefactory/SqliteManager;->purchaseID:Ljava/lang/String;

    .line 234
    sget-object v0, Lcom/creativefactory/SqliteManager;->myExecuteBilling:Lcom/creativefactory/ExecuteBilling;

    invoke-virtual {v0, p0}, Lcom/creativefactory/ExecuteBilling;->purchaseItem(Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method public static returnDataFromCommonDB(Ljava/lang/String;)[[Ljava/lang/String;
    .locals 1
    .param p0, "query"    # Ljava/lang/String;

    .prologue
    .line 138
    sget-object v0, Lcom/creativefactory/SqliteManager;->myDBControl:Lcom/creativefactory/DatabaseControl;

    invoke-virtual {v0, p0}, Lcom/creativefactory/DatabaseControl;->returnDataFromCommonDB(Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static returnDataFromNewSaveDB(Ljava/lang/String;)[[Ljava/lang/String;
    .locals 1
    .param p0, "query"    # Ljava/lang/String;

    .prologue
    .line 153
    sget-object v0, Lcom/creativefactory/SqliteManager;->myDBControl:Lcom/creativefactory/DatabaseControl;

    invoke-virtual {v0, p0}, Lcom/creativefactory/DatabaseControl;->returnDataFromNewSaveDB(Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static returnDataFromResourceDB(Ljava/lang/String;)[[Ljava/lang/String;
    .locals 1
    .param p0, "query"    # Ljava/lang/String;

    .prologue
    .line 143
    sget-object v0, Lcom/creativefactory/SqliteManager;->myDBControl:Lcom/creativefactory/DatabaseControl;

    invoke-virtual {v0, p0}, Lcom/creativefactory/DatabaseControl;->returnDataFromResourceDB(Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static returnDataFromSaveDB(Ljava/lang/String;)[[Ljava/lang/String;
    .locals 1
    .param p0, "query"    # Ljava/lang/String;

    .prologue
    .line 148
    sget-object v0, Lcom/creativefactory/SqliteManager;->myDBControl:Lcom/creativefactory/DatabaseControl;

    invoke-virtual {v0, p0}, Lcom/creativefactory/DatabaseControl;->returnDataFromSaveDB(Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setActivity(Landroid/app/Activity;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 47
    sput-object p0, Lcom/creativefactory/SqliteManager;->myActivity:Landroid/app/Activity;

    .line 48
    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    sput-object p0, Lcom/creativefactory/SqliteManager;->myContext:Landroid/content/Context;

    .line 43
    return-void
.end method

.method public static setSaveDBVersion(I)V
    .locals 4
    .param p0, "version"    # I

    .prologue
    .line 262
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/creativefactory/SqliteManager;->DB_PATH:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/creativefactory/SqliteManager;->DB_VERSION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 264
    .local v1, "writer":Ljava/io/FileWriter;
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    .end local v1    # "writer":Ljava/io/FileWriter;
    :goto_0
    return-void

    .line 268
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "IOException"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setTimePrivate(Lcom/creativefactory/TimePrivate;)V
    .locals 0
    .param p0, "timePrivate"    # Lcom/creativefactory/TimePrivate;

    .prologue
    .line 52
    sput-object p0, Lcom/creativefactory/SqliteManager;->_timePrivate:Lcom/creativefactory/TimePrivate;

    .line 53
    return-void
.end method
