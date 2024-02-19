.class public Lcom/creativefactory/DatabaseControl;
.super Ljava/lang/Object;
.source "DatabaseControl.java"


# instance fields
.field private commonDB:Landroid/database/sqlite/SQLiteDatabase;

.field private newSaveDB:Landroid/database/sqlite/SQLiteDatabase;

.field private resourceDB:Landroid/database/sqlite/SQLiteDatabase;

.field private saveDB:Landroid/database/sqlite/SQLiteDatabase;


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
    .line 48
    iget-object v0, p0, Lcom/creativefactory/DatabaseControl;->commonDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/creativefactory/DatabaseControl;->commonDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 52
    :cond_0
    return-void
.end method

.method public closeNewSaveDB()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/creativefactory/DatabaseControl;->newSaveDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/creativefactory/DatabaseControl;->newSaveDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 76
    :cond_0
    return-void
.end method

.method public closeResourceDB()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/creativefactory/DatabaseControl;->resourceDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/creativefactory/DatabaseControl;->resourceDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 60
    :cond_0
    return-void
.end method

.method public closeSaveDB()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/creativefactory/DatabaseControl;->saveDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/creativefactory/DatabaseControl;->saveDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 68
    :cond_0
    return-void
.end method

.method public nonReturnQueryFromNewSaveDB(Ljava/lang/String;)V
    .locals 3
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 110
    :try_start_0
    iget-object v1, p0, Lcom/creativefactory/DatabaseControl;->newSaveDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "SQLITE"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public nonReturnQueryFromSaveDB(Ljava/lang/String;)V
    .locals 3
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/creativefactory/DatabaseControl;->saveDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "SQLITE"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
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

    sget-object v2, Lcom/creativefactory/SqliteManager;->DB_PATH:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/creativefactory/SqliteManager;->DB_NAME:Ljava/lang/String;

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

    iput-object v1, p0, Lcom/creativefactory/DatabaseControl;->commonDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 23
    return-void
.end method

.method public openNewSaveDB()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/creativefactory/SqliteManager;->DB_PATH:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/creativefactory/SqliteManager;->DB_SAVE_NEW:Ljava/lang/String;

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

    iput-object v1, p0, Lcom/creativefactory/DatabaseControl;->newSaveDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 44
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
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/creativefactory/SqliteManager;->DB_PATH:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/creativefactory/SqliteManager;->DB_RESOURCE:Ljava/lang/String;

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

    iput-object v1, p0, Lcom/creativefactory/DatabaseControl;->resourceDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 30
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
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/creativefactory/SqliteManager;->DB_PATH:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/creativefactory/SqliteManager;->DB_SAVE:Ljava/lang/String;

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

    iput-object v1, p0, Lcom/creativefactory/DatabaseControl;->saveDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 37
    return-void
.end method

.method public returnDataFromCommonDB(Ljava/lang/String;)[[Ljava/lang/String;
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/creativefactory/DatabaseControl;->commonDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v0, p1}, Lcom/creativefactory/DatabaseControl;->returnDataFromDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public returnDataFromDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)[[Ljava/lang/String;
    .locals 10
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "query"    # Ljava/lang/String;

    .prologue
    .line 144
    const/4 v8, 0x0

    invoke-virtual {p1, p2, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 146
    .local v1, "c":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 148
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v3, "dList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const/4 v2, 0x0

    .line 152
    .local v2, "cIndex":I
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 168
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 170
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

    .line 172
    .local v7, "retList":[[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v5, v8, :cond_2

    .line 181
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 183
    return-object v7

    .line 154
    .end local v5    # "i":I
    .end local v7    # "retList":[[Ljava/lang/String;
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v8

    if-lt v5, v8, :cond_1

    .line 163
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 165
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 158
    :cond_1
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 160
    .local v4, "data":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 174
    .end local v4    # "data":Ljava/lang/String;
    .restart local v7    # "retList":[[Ljava/lang/String;
    :cond_2
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 175
    .local v0, "aList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v6, v8, :cond_3

    .line 172
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 177
    :cond_3
    aget-object v9, v7, v5

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v9, v6

    .line 175
    add-int/lit8 v6, v6, 0x1

    goto :goto_3
.end method

.method public returnDataFromNewSaveDB(Ljava/lang/String;)[[Ljava/lang/String;
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/creativefactory/DatabaseControl;->newSaveDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v0, p1}, Lcom/creativefactory/DatabaseControl;->returnDataFromDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public returnDataFromResourceDB(Ljava/lang/String;)[[Ljava/lang/String;
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/creativefactory/DatabaseControl;->resourceDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v0, p1}, Lcom/creativefactory/DatabaseControl;->returnDataFromDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public returnDataFromSaveDB(Ljava/lang/String;)[[Ljava/lang/String;
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/creativefactory/DatabaseControl;->saveDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v0, p1}, Lcom/creativefactory/DatabaseControl;->returnDataFromDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
