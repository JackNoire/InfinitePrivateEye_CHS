.class Lorg/cocos2dx/lib/DialogMessage;
.super Ljava/lang/Object;
.source "Cocos2dxActivity.java"


# instance fields
.field public message:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput-object p2, p0, Lorg/cocos2dx/lib/DialogMessage;->message:Ljava/lang/String;

    .line 251
    iput-object p1, p0, Lorg/cocos2dx/lib/DialogMessage;->title:Ljava/lang/String;

    .line 252
    return-void
.end method
