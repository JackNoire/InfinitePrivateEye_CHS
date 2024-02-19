.class public Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;
.super Ljava/lang/Object;
.source "DatabaseControl.java"


# instance fields
.field private commonDB:Landroid/database/sqlite/SQLiteDatabase;

.field private resourceDB:Landroid/database/sqlite/SQLiteDatabase;

.field private saveDB:Landroid/database/sqlite/SQLiteDatabase;

.field private shareDB:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeCommonDB()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;->commonDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;->commonDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 64
    :cond_0
    return-void
.end method

.method public closeCommonDBTransaction()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;->commonDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 54
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;->commonDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 55
    return-void
.end method

.method public closeResourceDB()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;->resourceDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;->resourceDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 88
    :cond_0
    return-void
.end method

.method public closeSaveDB()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;->saveDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;->saveDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 80
    :cond_0
    return-void
.end method

.method public closeShareDB()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;->shareDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;->shareDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 72
    :cond_0
    return-void
.end method

.method public nonReturnQueryFromSaveDB(Ljava/lang/String;)V
    .locals 3
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 106
    iget-object v1, p0, Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;->saveDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 110
    :try_start_0
    iget-object v1, p0, Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;->saveDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;->saveDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    iget-object v1, p0, Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;->saveDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 124
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v1, "SQLITE"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    iget-object v1, p0, Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;->saveDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 121
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v1

    .line 122
    iget-object v2, p0, Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;->saveDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 123
    throw v1
.end method

.method public nonReturnQuerysFromResourceDB([Ljava/lang/String;)V
    .locals 4
    .param p1, "querys"    # [Ljava/lang/String;

    .prologue
    .line 151
    iget-object v2, p0, Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;->resourceDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 155
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    array-length v2, p1

    if-lt v1, v2, :cond_0

    .line 160
    iget-object v2, p0, Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;->resourceDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    iget-object v2, p0, Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;->resourceDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 170
    :goto_1
    return-void

    .line 157
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;->resourceDB:Landroid/database/sqlite/SQLiteDatabase;

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    const-string v2, "SQLITE"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 168
    iget-object v2, p0, Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;->resourceDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .line 167
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v2

    .line 168
    iget-object v3, p0, Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;->resourceDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 169
    throw v2
.end method

.method public nonReturnQuerysFromSaveDB([Ljava/lang/String;)V
    .locals 4
    .param p1, "querys"    # [Ljava/lang/String;

    .prologue
    .line 128
    iget-object v2, p0, Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;->saveDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 132
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    array-length v2, p1

    if-lt v1, v2, :cond_0

    .line 137
    iget-object v2, p0, Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;->saveDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    iget-object v2, p0, Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;->saveDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 147
    :goto_1
    return-void

    .line 134
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;->saveDB:Landroid/database/sqlite/SQLiteDatabase;

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    const-string v2, "SQLITE"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    iget-object v2, p0, Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;->saveDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .line 144
    .end local v0    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v2

    .line 145
    iget-object v3, p0, Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;->saveDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 146
    throw v2
.end method

.method public openCommonDB()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/nflystudio/InfinitePrivateEye2/SqliteManager;->DB_PATH:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/nflystudio/InfinitePrivateEye2/SqliteManager;->getCommonDBFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "dbPath":Ljava/lang/String;
    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;->commonDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 23
    return-void
.end method

.method public openCommonDBTransaction()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;->commonDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 49
    return-void
.end method

.method public openResourceDB()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/nflystudio/InfinitePrivateEye2/SqliteManager;->DB_PATH:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/nflystudio/InfinitePrivateEye2/SqliteManager;->DB_RESOURCE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "dbPath":Ljava/lang/String;
    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;->resourceDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 37
    return-void
.end method

.method public openSaveDB()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/nflystudio/InfinitePrivateEye2/SqliteManager;->DB_PATH:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/nflystudio/InfinitePrivateEye2/SqliteManager;->DB_SAVE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "dbPath":Ljava/lang/String;
    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;->saveDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 44
    return-void
.end method

.method public openShareDB()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/nflystudio/InfinitePrivateEye2/SqliteManager;->DB_PATH:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/nflystudio/InfinitePrivateEye2/SqliteManager;->DB_SHARE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, "dbPath":Ljava/lang/String;
    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;->shareDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 30
    return-void
.end method

.method public returnDataFromCommonDB(Ljava/lang/String;)[[Ljava/lang/String;
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;->commonDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v0, p1}, Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;->returnDataFromDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public returnDataFromDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)[[Ljava/lang/String;
    .locals 10
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "query"    # Ljava/lang/String;

    .prologue
    .line 196
    const/4 v8, 0x0

    invoke-virtual {p1, p2, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 198
    .local v1, "c":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 200
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v3, "dList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const/4 v2, 0x0

    .line 204
    .local v2, "cIndex":I
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 220
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 222
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-interface {v1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v9

    filled-new-array {v8, v9}, [I

    move-result-object v8

    const-class v9, Ljava/lang/String;

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[Ljava/lang/String;

    .line 224
    .local v7, "retList":[[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v5, v8, :cond_2

    .line 240
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 242
    return-object v7

    .line 206
    .end local v5    # "i":I
    .end local v7    # "retList":[[Ljava/lang/String;
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v8

    if-lt v5, v8, :cond_1

    .line 215
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 217
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 210
    :cond_1
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 212
    .local v4, "data":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 226
    .end local v4    # "data":Ljava/lang/String;
    .restart local v7    # "retList":[[Ljava/lang/String;
    :cond_2
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 227
    .local v0, "aList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v6, v8, :cond_3

    .line 224
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 229
    :cond_3
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_4

    .line 231
    aget-object v8, v7, v5

    const-string v9, ""

    aput-object v9, v8, v6

    .line 227
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 235
    :cond_4
    aget-object v9, v7, v5

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v9, v6

    goto :goto_4
.end method

.method public returnDataFromResourceDB(Ljava/lang/String;)[[Ljava/lang/String;
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;->resourceDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v0, p1}, Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;->returnDataFromDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public returnDataFromSaveDB(Ljava/lang/String;)[[Ljava/lang/String;
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;->saveDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v0, p1}, Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;->returnDataFromDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public returnDataFromShareDB(Ljava/lang/String;)[[Ljava/lang/String;
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;->shareDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v0, p1}, Lcom/nflystudio/InfinitePrivateEye2/DatabaseControl;->returnDataFromDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
