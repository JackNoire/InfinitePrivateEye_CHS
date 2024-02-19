.class public Lcom/umeng/analytics/a/m;
.super Lcom/umeng/analytics/a/l;
.source "Terminate.java"

# interfaces
.implements Lcom/umeng/analytics/a/g;


# static fields
.field private static final k:Ljava/lang/String; = "duration"

.field private static final l:Ljava/lang/String; = "activities"

.field private static final m:Ljava/lang/String; = "terminate_time"


# instance fields
.field public a:Lcom/umeng/analytics/a/o;

.field public b:Lcom/umeng/analytics/a/p;

.field public c:J

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/umeng/analytics/a/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/umeng/analytics/a/l;-><init>()V

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/umeng/analytics/a/m;->c:J

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/a/m;->d:Ljava/util/ArrayList;

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/umeng/analytics/a/l;-><init>()V

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/umeng/analytics/a/m;->c:J

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/a/m;->d:Ljava/util/ArrayList;

    .line 43
    iput-object p1, p0, Lcom/umeng/analytics/a/m;->e:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public static a(Landroid/content/SharedPreferences;Ljava/lang/String;JJ)Landroid/content/SharedPreferences$Editor;
    .locals 13

    .prologue
    .line 134
    sub-long v3, p4, p2

    .line 135
    const-string v2, "duration"

    const-wide/16 v5, 0x0

    invoke-interface {p0, v2, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 137
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 139
    sget-boolean v2, Lcom/umeng/analytics/g;->j:Z

    if-eqz v2, :cond_1

    .line 140
    const-string v2, "activities"

    const-string v8, ""

    invoke-interface {p0, v2, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 142
    const-string v8, ""

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 143
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ";"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 145
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "[\"%s\",%d]"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const/4 v10, 0x1

    const-wide/16 v11, 0x3e8

    div-long v11, v3, v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v2, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 146
    const-string v8, "activities"

    invoke-interface {v7, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 147
    const-string v8, "activities"

    invoke-interface {v7, v8, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 150
    :cond_1
    const-string v2, "duration"

    add-long/2addr v3, v5

    invoke-interface {v7, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 151
    const-string v2, "terminate_time"

    move-wide/from16 v0, p4

    invoke-interface {v7, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 152
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 154
    return-object v7
.end method

.method public static a(Landroid/content/SharedPreferences;Ljava/util/ArrayList;JJ)Landroid/content/SharedPreferences$Editor;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/umeng/analytics/f;",
            ">;JJ)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    .prologue
    .line 158
    sub-long v3, p4, p2

    .line 159
    const-string v2, "duration"

    const-wide/16 v5, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v2, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 161
    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 163
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 164
    const-string v2, "activities"

    const-string v8, ""

    move-object/from16 v0, p0

    invoke-interface {v0, v2, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 165
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 168
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    const-string v2, ";"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 177
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 179
    const-string v2, "activities"

    invoke-interface {v7, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 180
    const-string v2, "activities"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v2, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 183
    :cond_1
    const-string v2, "duration"

    add-long/2addr v3, v5

    invoke-interface {v7, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 184
    const-string v2, "terminate_time"

    move-wide/from16 v0, p4

    invoke-interface {v7, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 185
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 187
    return-object v7

    .line 172
    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/umeng/analytics/f;

    .line 173
    const-string v10, "[\"%s\",%d]"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, v2, Lcom/umeng/analytics/f;->a:Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget-wide v13, v2, Lcom/umeng/analytics/f;->b:J

    const-wide/16 v15, 0x3e8

    div-long/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    const-string v2, ";"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/umeng/analytics/a/m;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-static {p0}, Lcom/umeng/analytics/j;->e(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 49
    const-string v2, "session_id"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 51
    if-nez v2, :cond_0

    .line 77
    :goto_0
    return-object v0

    .line 53
    :cond_0
    new-instance v0, Lcom/umeng/analytics/a/m;

    invoke-direct {v0, v2}, Lcom/umeng/analytics/a/m;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-static {p0}, Lcom/umeng/analytics/a/o;->b(Landroid/content/Context;)Lcom/umeng/analytics/a/o;

    move-result-object v2

    .line 56
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/umeng/analytics/a/o;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 57
    iput-object v2, v0, Lcom/umeng/analytics/a/m;->a:Lcom/umeng/analytics/a/o;

    .line 60
    :cond_1
    invoke-static {p0}, Lcom/umeng/analytics/a/p;->a(Landroid/content/Context;)Lcom/umeng/analytics/a/p;

    move-result-object v2

    .line 61
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/umeng/analytics/a/p;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 62
    iput-object v2, v0, Lcom/umeng/analytics/a/m;->b:Lcom/umeng/analytics/a/p;

    .line 65
    :cond_2
    invoke-static {v1}, Lcom/umeng/analytics/a/m;->c(Landroid/content/SharedPreferences;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Lcom/umeng/analytics/a/m;->d:Ljava/util/ArrayList;

    .line 66
    invoke-static {v1}, Lcom/umeng/analytics/a/m;->d(Landroid/content/SharedPreferences;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/umeng/analytics/a/m;->c:J

    .line 68
    invoke-static {v1}, Lcom/umeng/analytics/a/m;->b(Landroid/content/SharedPreferences;)[Ljava/lang/String;

    move-result-object v2

    .line 70
    if-eqz v2, :cond_3

    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 71
    const/4 v3, 0x0

    aget-object v3, v2, v3

    iput-object v3, v0, Lcom/umeng/analytics/a/m;->g:Ljava/lang/String;

    .line 72
    const/4 v3, 0x1

    aget-object v2, v2, v3

    iput-object v2, v0, Lcom/umeng/analytics/a/m;->h:Ljava/lang/String;

    .line 75
    :cond_3
    invoke-static {v1}, Lcom/umeng/analytics/a/m;->a(Landroid/content/SharedPreferences;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/SharedPreferences;)V
    .locals 4

    .prologue
    .line 81
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 83
    const-string v1, "duration"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 84
    const-string v1, "activities"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 86
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 87
    return-void
.end method

.method private static b(Landroid/content/SharedPreferences;)[Ljava/lang/String;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 96
    const-string v0, "terminate_time"

    invoke-interface {p0, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 98
    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 100
    const/4 v0, 0x0

    .line 103
    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-static {v2}, Lcom/umeng/common/b;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static c(Landroid/content/SharedPreferences;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/umeng/analytics/a/k;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    const-string v0, "activities"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    const-string v0, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 113
    :try_start_0
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 114
    const/4 v1, 0x0

    :goto_0
    array-length v3, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v1, v3, :cond_0

    .line 123
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 125
    :goto_2
    return-object v0

    .line 115
    :cond_0
    :try_start_1
    aget-object v3, v2, v1

    .line 117
    new-instance v4, Lcom/umeng/analytics/a/k;

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/umeng/analytics/a/k;-><init>(Lorg/json/JSONArray;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    :catch_0
    move-exception v1

    .line 120
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 125
    :cond_1
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private c(Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lcom/umeng/analytics/a/m;->b:Lcom/umeng/analytics/a/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/analytics/a/m;->b:Lcom/umeng/analytics/a/p;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/a/p;->b(Lorg/json/JSONObject;)V

    .line 214
    :cond_0
    return-void
.end method

.method private static d(Landroid/content/SharedPreferences;)J
    .locals 4

    .prologue
    .line 129
    const-string v0, "duration"

    const-wide/16 v1, 0x0

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private d(Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 217
    iget-object v0, p0, Lcom/umeng/analytics/a/m;->a:Lcom/umeng/analytics/a/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/analytics/a/m;->a:Lcom/umeng/analytics/a/o;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/a/o;->b(Lorg/json/JSONObject;)V

    .line 218
    :cond_0
    return-void
.end method

.method private e(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 221
    new-instance v0, Lcom/umeng/analytics/a/o;

    invoke-direct {v0}, Lcom/umeng/analytics/a/o;-><init>()V

    .line 222
    invoke-virtual {v0, p1}, Lcom/umeng/analytics/a/o;->a(Lorg/json/JSONObject;)V

    .line 223
    invoke-virtual {v0}, Lcom/umeng/analytics/a/o;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    iput-object v0, p0, Lcom/umeng/analytics/a/m;->a:Lcom/umeng/analytics/a/o;

    .line 226
    :cond_0
    return-void
.end method

.method private f(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 229
    new-instance v0, Lcom/umeng/analytics/a/p;

    invoke-direct {v0}, Lcom/umeng/analytics/a/p;-><init>()V

    .line 230
    invoke-virtual {v0, p1}, Lcom/umeng/analytics/a/p;->a(Lorg/json/JSONObject;)V

    .line 231
    invoke-virtual {v0}, Lcom/umeng/analytics/a/p;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    iput-object v0, p0, Lcom/umeng/analytics/a/m;->b:Lcom/umeng/analytics/a/p;

    .line 234
    :cond_0
    return-void
.end method

.method private g(Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 237
    const-string v0, "activities"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    const-string v0, "activities"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 241
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 248
    :cond_0
    return-void

    .line 243
    :cond_1
    new-instance v2, Lcom/umeng/analytics/a/k;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/umeng/analytics/a/k;-><init>(Lorg/json/JSONArray;)V

    .line 245
    iget-object v3, p0, Lcom/umeng/analytics/a/m;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private h(Lorg/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 251
    iget-object v0, p0, Lcom/umeng/analytics/a/m;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 266
    :goto_0
    return-void

    .line 254
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 256
    iget-object v0, p0, Lcom/umeng/analytics/a/m;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 265
    const-string v0, "activities"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 256
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/a/k;

    .line 258
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 259
    iget-object v4, v0, Lcom/umeng/analytics/a/k;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 260
    iget v0, v0, Lcom/umeng/analytics/a/k;->b:I

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 262
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 273
    :try_start_0
    invoke-super {p0, p1}, Lcom/umeng/analytics/a/l;->a(Lorg/json/JSONObject;)V

    .line 275
    const-string v0, "duration"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/analytics/a/m;->c:J

    .line 277
    invoke-direct {p0, p1}, Lcom/umeng/analytics/a/m;->f(Lorg/json/JSONObject;)V

    .line 278
    invoke-direct {p0, p1}, Lcom/umeng/analytics/a/m;->e(Lorg/json/JSONObject;)V

    .line 279
    invoke-direct {p0, p1}, Lcom/umeng/analytics/a/m;->g(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :goto_0
    return-void

    .line 280
    :catch_0
    move-exception v0

    .line 281
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a()Z
    .locals 4

    .prologue
    .line 191
    iget-object v0, p0, Lcom/umeng/analytics/a/m;->a:Lcom/umeng/analytics/a/o;

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/umeng/analytics/g;->i:Z

    if-eqz v0, :cond_0

    .line 192
    const-string v0, "MobclickAgent"

    const-string v1, "missing location info in Terminate"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/a/m;->b:Lcom/umeng/analytics/a/p;

    if-nez v0, :cond_1

    .line 196
    const-string v0, "MobclickAgent"

    const-string v1, "missing receive and transport Traffic in Terminate "

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_1
    iget-wide v0, p0, Lcom/umeng/analytics/a/m;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 200
    const-string v0, "MobclickAgent"

    const-string v1, "missing Duration info in Terminate"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const/4 v0, 0x0

    .line 209
    :goto_0
    return v0

    .line 205
    :cond_2
    iget-object v0, p0, Lcom/umeng/analytics/a/m;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/umeng/analytics/a/m;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 206
    :cond_3
    const-string v0, "MobclickAgent"

    const-string v1, "missing Activities info in Terminate"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :cond_4
    invoke-super {p0}, Lcom/umeng/analytics/a/l;->a()Z

    move-result v0

    goto :goto_0
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 288
    invoke-super {p0, p1}, Lcom/umeng/analytics/a/l;->b(Lorg/json/JSONObject;)V

    .line 290
    iget-wide v0, p0, Lcom/umeng/analytics/a/m;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 291
    const-string v0, "duration"

    iget-wide v1, p0, Lcom/umeng/analytics/a/m;->c:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 294
    :cond_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/a/m;->c(Lorg/json/JSONObject;)V

    .line 295
    invoke-direct {p0, p1}, Lcom/umeng/analytics/a/m;->d(Lorg/json/JSONObject;)V

    .line 296
    invoke-direct {p0, p1}, Lcom/umeng/analytics/a/m;->h(Lorg/json/JSONObject;)V

    .line 298
    return-void
.end method
