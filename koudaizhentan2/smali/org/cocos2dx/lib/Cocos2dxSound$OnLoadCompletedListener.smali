.class public Lorg/cocos2dx/lib/Cocos2dxSound$OnLoadCompletedListener;
.super Ljava/lang/Object;
.source "Cocos2dxSound.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/lib/Cocos2dxSound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnLoadCompletedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/lib/Cocos2dxSound;


# direct methods
.method public constructor <init>(Lorg/cocos2dx/lib/Cocos2dxSound;)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxSound$OnLoadCompletedListener;->this$0:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 6
    .param p1, "soundPool"    # Landroid/media/SoundPool;
    .param p2, "sampleId"    # I
    .param p3, "status"    # I

    .prologue
    .line 323
    if-nez p3, :cond_2

    .line 326
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxSound$OnLoadCompletedListener;->this$0:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxSound;->access$0(Lorg/cocos2dx/lib/Cocos2dxSound;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 342
    :goto_0
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxSound$OnLoadCompletedListener;->this$0:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxSound;->access$3(Lorg/cocos2dx/lib/Cocos2dxSound;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 343
    return-void

    .line 326
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;

    .line 327
    .local v0, "info":Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;
    iget v2, v0, Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;->soundID:I

    if-ne p2, v2, :cond_0

    .line 329
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxSound$OnLoadCompletedListener;->this$0:Lorg/cocos2dx/lib/Cocos2dxSound;

    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxSound$OnLoadCompletedListener;->this$0:Lorg/cocos2dx/lib/Cocos2dxSound;

    iget-object v3, v0, Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;->path:Ljava/lang/String;

    iget v4, v0, Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;->soundID:I

    iget-boolean v5, v0, Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;->isLoop:Z

    invoke-static {v2, v3, v4, v5}, Lorg/cocos2dx/lib/Cocos2dxSound;->access$1(Lorg/cocos2dx/lib/Cocos2dxSound;Ljava/lang/String;IZ)I

    move-result v2

    invoke-static {v1, v2}, Lorg/cocos2dx/lib/Cocos2dxSound;->access$2(Lorg/cocos2dx/lib/Cocos2dxSound;I)V

    .line 333
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxSound$OnLoadCompletedListener;->this$0:Lorg/cocos2dx/lib/Cocos2dxSound;

    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxSound;->access$0(Lorg/cocos2dx/lib/Cocos2dxSound;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 339
    .end local v0    # "info":Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;
    :cond_2
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxSound$OnLoadCompletedListener;->this$0:Lorg/cocos2dx/lib/Cocos2dxSound;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lorg/cocos2dx/lib/Cocos2dxSound;->access$2(Lorg/cocos2dx/lib/Cocos2dxSound;I)V

    goto :goto_0
.end method
