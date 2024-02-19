.class public Lcom/umeng/update/e;
.super Ljava/lang/Object;
.source "UpdateConfig.java"


# static fields
.field public static final a:Ljava/lang/String; = "update"

.field public static final b:Ljava/lang/String; = "2.3.0.20130903"

.field public static final c:Ljava/lang/String; = "1.4"

.field private static final d:Ljava/lang/String; = "umeng_update"

.field private static final e:Ljava/lang/String; = "ignore"

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Z

.field private static i:Z

.field private static j:Z

.field private static k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 24
    sput-boolean v1, Lcom/umeng/update/e;->h:Z

    .line 25
    sput-boolean v1, Lcom/umeng/update/e;->i:Z

    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lcom/umeng/update/e;->j:Z

    .line 27
    sput-boolean v1, Lcom/umeng/update/e;->k:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/umeng/update/e;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 39
    invoke-static {p0}, Lcom/umeng/common/b;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/update/e;->f:Ljava/lang/String;

    .line 42
    :cond_0
    sget-object v0, Lcom/umeng/update/e;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 55
    const-string v1, "umeng_update"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 56
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ignore"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 57
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    sput-object p0, Lcom/umeng/update/e;->f:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public static a(Z)V
    .locals 0

    .prologue
    .line 73
    sput-boolean p0, Lcom/umeng/update/e;->h:Z

    .line 74
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 69
    sget-boolean v0, Lcom/umeng/update/e;->h:Z

    return v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/umeng/update/e;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 47
    invoke-static {p0}, Lcom/umeng/common/b;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/update/e;->g:Ljava/lang/String;

    .line 50
    :cond_0
    sget-object v0, Lcom/umeng/update/e;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    sput-object p0, Lcom/umeng/update/e;->g:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public static b(Z)V
    .locals 0

    .prologue
    .line 81
    sput-boolean p0, Lcom/umeng/update/e;->i:Z

    .line 82
    return-void
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 77
    sget-boolean v0, Lcom/umeng/update/e;->i:Z

    return v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 61
    const-string v1, "umeng_update"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 62
    const-string v1, "ignore"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    const/4 v0, 0x0

    .line 65
    :cond_0
    return-object v0
.end method

.method public static c(Z)V
    .locals 0

    .prologue
    .line 89
    sput-boolean p0, Lcom/umeng/update/e;->j:Z

    .line 90
    return-void
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 85
    sget-boolean v0, Lcom/umeng/update/e;->j:Z

    return v0
.end method

.method public static d(Z)V
    .locals 0

    .prologue
    .line 97
    sput-boolean p0, Lcom/umeng/update/e;->k:Z

    .line 98
    return-void
.end method

.method public static d()Z
    .locals 1

    .prologue
    .line 93
    sget-boolean v0, Lcom/umeng/update/e;->k:Z

    return v0
.end method
