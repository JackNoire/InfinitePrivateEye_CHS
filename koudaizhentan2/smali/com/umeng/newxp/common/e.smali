.class public Lcom/umeng/newxp/common/e;
.super Ljava/lang/Object;
.source "Preferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/newxp/common/e$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "key"

.field public static final b:Ljava/lang/String; = "value"

.field public static final c:Ljava/lang/String; = "_id"

.field private static final d:Ljava/lang/String; = "Preferences"

.field private static final e:Ljava/lang/String; = "create table settings (_id integer primary key autoincrement, key text not null, value text not null);"

.field private static final f:Ljava/lang/String; = "data"

.field private static final g:Ljava/lang/String; = "settings"

.field private static final h:I = 0x1

.field private static l:Lcom/umeng/newxp/common/e;


# instance fields
.field private i:Landroid/content/Context;

.field private j:Lcom/umeng/newxp/common/e$a;

.field private k:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/newxp/common/e;->l:Lcom/umeng/newxp/common/e;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/umeng/newxp/common/e;->i:Landroid/content/Context;

    .line 55
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/umeng/newxp/common/e;
    .locals 2

    .prologue
    .line 138
    sget-object v0, Lcom/umeng/newxp/common/e;->l:Lcom/umeng/newxp/common/e;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Lcom/umeng/newxp/common/e;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/newxp/common/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/umeng/newxp/common/e;->l:Lcom/umeng/newxp/common/e;

    .line 141
    :cond_0
    sget-object v0, Lcom/umeng/newxp/common/e;->l:Lcom/umeng/newxp/common/e;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/umeng/newxp/common/e;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 58
    new-instance v0, Lcom/umeng/newxp/common/e$a;

    iget-object v1, p0, Lcom/umeng/newxp/common/e;->i:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/umeng/newxp/common/e$a;-><init>(Lcom/umeng/newxp/common/e;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/newxp/common/e;->j:Lcom/umeng/newxp/common/e$a;

    .line 59
    iget-object v0, p0, Lcom/umeng/newxp/common/e;->j:Lcom/umeng/newxp/common/e$a;

    invoke-virtual {v0}, Lcom/umeng/newxp/common/e$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/newxp/common/e;->k:Landroid/database/sqlite/SQLiteDatabase;

    .line 60
    return-object p0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 68
    invoke-virtual {p0}, Lcom/umeng/newxp/common/e;->a()Lcom/umeng/newxp/common/e;

    .line 70
    iget-object v0, p0, Lcom/umeng/newxp/common/e;->k:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "settings"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "key"

    aput-object v3, v2, v6

    const-string v3, "value"

    aput-object v3, v2, v8

    const-string v3, "key=?"

    new-array v4, v8, [Ljava/lang/String;

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 72
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 73
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 74
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/umeng/newxp/common/e;->b()V

    .line 77
    return-object v5
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/umeng/newxp/common/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 85
    :cond_1
    return-object v0
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 2

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Lcom/umeng/newxp/common/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    if-nez v0, :cond_0

    .line 120
    :goto_0
    return p2

    .line 117
    :cond_0
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    const/4 p2, 0x1

    goto :goto_0

    .line 120
    :cond_1
    const/4 p2, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/umeng/newxp/common/e;->j:Lcom/umeng/newxp/common/e$a;

    invoke-virtual {v0}, Lcom/umeng/newxp/common/e$a;->close()V

    .line 65
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 124
    invoke-virtual {p0, p1}, Lcom/umeng/newxp/common/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    if-nez v1, :cond_1

    .line 130
    :cond_0
    :goto_0
    return v0

    .line 127
    :cond_1
    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 90
    invoke-virtual {p0}, Lcom/umeng/newxp/common/e;->a()Lcom/umeng/newxp/common/e;

    .line 91
    iget-object v0, p0, Lcom/umeng/newxp/common/e;->k:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "settings"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "key"

    aput-object v3, v2, v9

    const-string v3, "value"

    aput-object v3, v2, v8

    const-string v3, "key=?"

    new-array v4, v8, [Ljava/lang/String;

    aput-object p1, v4, v9

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 94
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 95
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 96
    const-string v1, "key"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/umeng/newxp/common/e;->k:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "settings"

    const-string v3, "key= ?"

    new-array v4, v8, [Ljava/lang/String;

    aput-object p1, v4, v9

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    move v0, v8

    .line 109
    :goto_0
    invoke-virtual {p0}, Lcom/umeng/newxp/common/e;->b()V

    .line 110
    return v0

    :cond_0
    move v0, v9

    .line 98
    goto :goto_0

    .line 101
    :cond_1
    if-eqz v0, :cond_2

    .line 102
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 104
    :cond_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 105
    const-string v1, "key"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/umeng/newxp/common/e;->k:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "settings"

    invoke-virtual {v1, v2, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    :goto_1
    move v0, v8

    goto :goto_0

    :cond_3
    move v8, v9

    goto :goto_1
.end method

.method public b(Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 134
    if-eqz p2, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/umeng/newxp/common/e;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method
