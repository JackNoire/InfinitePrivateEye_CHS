.class public Lorg/cocos2dx/lib/Cocos2dxTypefaces;
.super Ljava/lang/Object;
.source "Cocos2dxTypefaces.java"


# static fields
.field private static final sTypefaceCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/cocos2dx/lib/Cocos2dxTypefaces;->sTypefaceCache:Ljava/util/HashMap;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 3
    .param p0, "pContext"    # Landroid/content/Context;
    .param p1, "pAssetName"    # Ljava/lang/String;

    .prologue
    .line 59
    const-class v2, Lorg/cocos2dx/lib/Cocos2dxTypefaces;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxTypefaces;->sTypefaceCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 61
    .local v0, "typeface":Landroid/graphics/Typeface;
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxTypefaces;->sTypefaceCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .end local v0    # "typeface":Landroid/graphics/Typeface;
    :cond_0
    sget-object v1, Lorg/cocos2dx/lib/Cocos2dxTypefaces;->sTypefaceCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 59
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
