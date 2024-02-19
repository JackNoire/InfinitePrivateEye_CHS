.class public Lcom/nflystudio/net/GameHotKeyWord;
.super Lcom/nflystudio/net/BaseResponeData;
.source "GameHotKeyWord.java"


# instance fields
.field public gameHotKeyWord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/nflystudio/net/BaseResponeData;-><init>()V

    .line 6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nflystudio/net/GameHotKeyWord;->gameHotKeyWord:Ljava/util/ArrayList;

    .line 5
    return-void
.end method
