.class public Lcom/creativefactory/PurchaseDatabase;
.super Ljava/lang/Object;
.source "PurchaseDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/creativefactory/PurchaseDatabase$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "purchase.db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final HISTORY_COLUMNS:[Ljava/lang/String;

.field static final HISTORY_DEVELOPER_PAYLOAD_COL:Ljava/lang/String; = "developerPayload"

.field static final HISTORY_ORDER_ID_COL:Ljava/lang/String; = "_id"

.field static final HISTORY_PRODUCT_ID_COL:Ljava/lang/String; = "productId"

.field static final HISTORY_PURCHASE_TIME_COL:Ljava/lang/String; = "purchaseTime"

.field static final HISTORY_STATE_COL:Ljava/lang/String; = "state"

.field private static final PURCHASED_COLUMNS:[Ljava/lang/String;

.field private static final PURCHASED_ITEMS_TABLE_NAME:Ljava/lang/String; = "purchased"

.field static final PURCHASED_PRODUCT_ID_COL:Ljava/lang/String; = "_id"

.field static final PURCHASED_QUANTITY_COL:Ljava/lang/String; = "quantity"

.field private static final PURCHASE_HISTORY_TABLE_NAME:Ljava/lang/String; = "history"

.field private static final TAG:Ljava/lang/String; = "PurchaseDatabase"


# instance fields
.field private mDatabaseHelper:Lcom/creativefactory/PurchaseDatabase$DatabaseHelper;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 52
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 53
    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "productId"

    aput-object v1, v0, v4

    const-string v1, "state"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    .line 54
    const-string v2, "purchaseTime"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "developerPayload"

    aput-object v2, v0, v1

    .line 52
    sput-object v0, Lcom/creativefactory/PurchaseDatabase;->HISTORY_COLUMNS:[Ljava/lang/String;

    .line 61
    new-array v0, v5, [Ljava/lang/String;

    .line 62
    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "quantity"

    aput-object v1, v0, v4

    .line 61
    sput-object v0, Lcom/creativefactory/PurchaseDatabase;->PURCHASED_COLUMNS:[Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lcom/creativefactory/PurchaseDatabase$DatabaseHelper;

    invoke-direct {v0, p0, p1}, Lcom/creativefactory/PurchaseDatabase$DatabaseHelper;-><init>(Lcom/creativefactory/PurchaseDatabase;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/creativefactory/PurchaseDatabase;->mDatabaseHelper:Lcom/creativefactory/PurchaseDatabase$DatabaseHelper;

    .line 70
    iget-object v0, p0, Lcom/creativefactory/PurchaseDatabase;->mDatabaseHelper:Lcom/creativefactory/PurchaseDatabase$DatabaseHelper;

    invoke-virtual {v0}, Lcom/creativefactory/PurchaseDatabase$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/creativefactory/PurchaseDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 71
    return-void
.end method

.method private insertOrder(Ljava/lang/String;Ljava/lang/String;Lcom/creativefactory/Consts$PurchaseState;JLjava/lang/String;)V
    .locals 4
    .param p1, "orderId"    # Ljava/lang/String;
    .param p2, "productId"    # Ljava/lang/String;
    .param p3, "state"    # Lcom/creativefactory/Consts$PurchaseState;
    .param p4, "purchaseTime"    # J
    .param p6, "developerPayload"    # Ljava/lang/String;

    .prologue
    .line 90
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 91
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v1, "productId"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v1, "state"

    invoke-virtual {p3}, Lcom/creativefactory/Consts$PurchaseState;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 94
    const-string v1, "purchaseTime"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 95
    const-string v1, "developerPayload"

    invoke-virtual {v0, v1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/creativefactory/PurchaseDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "history"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 97
    return-void
.end method

.method private updatePurchasedItem(Ljava/lang/String;I)V
    .locals 6
    .param p1, "productId"    # Ljava/lang/String;
    .param p2, "quantity"    # I

    .prologue
    .line 106
    if-nez p2, :cond_0

    .line 107
    iget-object v1, p0, Lcom/creativefactory/PurchaseDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "purchased"

    const-string v3, "_id=?"

    .line 108
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 107
    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 115
    :goto_0
    return-void

    .line 111
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 112
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v1, "quantity"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 114
    iget-object v1, p0, Lcom/creativefactory/PurchaseDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "purchased"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/creativefactory/PurchaseDatabase;->mDatabaseHelper:Lcom/creativefactory/PurchaseDatabase$DatabaseHelper;

    invoke-virtual {v0}, Lcom/creativefactory/PurchaseDatabase$DatabaseHelper;->close()V

    .line 75
    return-void
.end method

.method public queryAllPurchasedItems()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 165
    iget-object v0, p0, Lcom/creativefactory/PurchaseDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "purchased"

    sget-object v2, Lcom/creativefactory/PurchaseDatabase;->PURCHASED_COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized updatePurchase(Ljava/lang/String;Ljava/lang/String;Lcom/creativefactory/Consts$PurchaseState;JLjava/lang/String;)I
    .locals 13
    .param p1, "orderId"    # Ljava/lang/String;
    .param p2, "productId"    # Ljava/lang/String;
    .param p3, "purchaseState"    # Lcom/creativefactory/Consts$PurchaseState;
    .param p4, "purchaseTime"    # J
    .param p6, "developerPayload"    # Ljava/lang/String;

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    invoke-direct/range {p0 .. p6}, Lcom/creativefactory/PurchaseDatabase;->insertOrder(Ljava/lang/String;Ljava/lang/String;Lcom/creativefactory/Consts$PurchaseState;JLjava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/creativefactory/PurchaseDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "history"

    sget-object v2, Lcom/creativefactory/PurchaseDatabase;->HISTORY_COLUMNS:[Ljava/lang/String;

    .line 133
    const-string v3, "productId=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 132
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 134
    .local v9, "cursor":Landroid/database/Cursor;
    if-nez v9, :cond_1

    .line 135
    const/4 v10, 0x0

    .line 157
    :cond_0
    :goto_0
    monitor-exit p0

    return v10

    .line 137
    :cond_1
    const/4 v10, 0x0

    .line 140
    .local v10, "quantity":I
    :cond_2
    :goto_1
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 151
    invoke-direct {p0, p2, v10}, Lcom/creativefactory/PurchaseDatabase;->updatePurchasedItem(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 153
    if-eqz v9, :cond_0

    .line 154
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 131
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "quantity":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 141
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "quantity":I
    :cond_3
    const/4 v0, 0x2

    :try_start_3
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 142
    .local v12, "stateIndex":I
    invoke-static {v12}, Lcom/creativefactory/Consts$PurchaseState;->valueOf(I)Lcom/creativefactory/Consts$PurchaseState;

    move-result-object v11

    .line 145
    .local v11, "state":Lcom/creativefactory/Consts$PurchaseState;
    sget-object v0, Lcom/creativefactory/Consts$PurchaseState;->PURCHASED:Lcom/creativefactory/Consts$PurchaseState;

    if-eq v11, v0, :cond_4

    sget-object v0, Lcom/creativefactory/Consts$PurchaseState;->REFUNDED:Lcom/creativefactory/Consts$PurchaseState;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne v11, v0, :cond_2

    .line 146
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 152
    .end local v11    # "state":Lcom/creativefactory/Consts$PurchaseState;
    .end local v12    # "stateIndex":I
    :catchall_1
    move-exception v0

    .line 153
    if-eqz v9, :cond_5

    .line 154
    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 156
    :cond_5
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
