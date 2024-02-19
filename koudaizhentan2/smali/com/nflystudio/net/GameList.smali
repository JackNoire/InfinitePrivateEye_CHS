.class public Lcom/nflystudio/net/GameList;
.super Lcom/nflystudio/net/BaseResponeData;
.source "GameList.java"


# instance fields
.field public gamelist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nflystudio/Service/GameInfoItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/nflystudio/net/BaseResponeData;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nflystudio/net/GameList;->gamelist:Ljava/util/ArrayList;

    .line 7
    return-void
.end method
