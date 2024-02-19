.class public Lcom/nflystudio/net/GameSortItem;
.super Lcom/nflystudio/net/BaseResponeData;
.source "GameSortItem.java"


# instance fields
.field public count:Ljava/lang/String;

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

.field public sortdesc:Ljava/lang/String;

.field public sorticon:I

.field public sortname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/nflystudio/net/BaseResponeData;-><init>()V

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/nflystudio/net/GameSortItem;->sortname:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/nflystudio/net/GameSortItem;->sortdesc:Ljava/lang/String;

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/nflystudio/net/GameSortItem;->sorticon:I

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/nflystudio/net/GameSortItem;->count:Ljava/lang/String;

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nflystudio/net/GameSortItem;->gamelist:Ljava/util/ArrayList;

    .line 5
    return-void
.end method
