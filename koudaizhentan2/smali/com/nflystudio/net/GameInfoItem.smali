.class public Lcom/nflystudio/net/GameInfoItem;
.super Ljava/lang/Object;
.source "GameInfoItem.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public appname:Ljava/lang/String;

.field public classType:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public downcount:I

.field public downurl:Ljava/lang/String;

.field public filesize:I

.field public gameid:Ljava/lang/String;

.field public gamename:Ljava/lang/String;

.field public iconurl:Ljava/lang/String;

.field public pushData:Ljava/lang/String;

.field public star:Ljava/lang/String;

.field public state:I

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public update:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object v1, p0, Lcom/nflystudio/net/GameInfoItem;->gameid:Ljava/lang/String;

    .line 7
    iput-object v1, p0, Lcom/nflystudio/net/GameInfoItem;->gamename:Ljava/lang/String;

    .line 8
    iput-object v1, p0, Lcom/nflystudio/net/GameInfoItem;->downurl:Ljava/lang/String;

    .line 9
    iput-object v1, p0, Lcom/nflystudio/net/GameInfoItem;->version:Ljava/lang/String;

    .line 10
    iput-object v1, p0, Lcom/nflystudio/net/GameInfoItem;->iconurl:Ljava/lang/String;

    .line 11
    iput v2, p0, Lcom/nflystudio/net/GameInfoItem;->filesize:I

    .line 12
    iput v2, p0, Lcom/nflystudio/net/GameInfoItem;->downcount:I

    .line 13
    iput-object v1, p0, Lcom/nflystudio/net/GameInfoItem;->update:Ljava/lang/String;

    .line 14
    iput-object v1, p0, Lcom/nflystudio/net/GameInfoItem;->description:Ljava/lang/String;

    .line 15
    iput-object v1, p0, Lcom/nflystudio/net/GameInfoItem;->type:Ljava/lang/String;

    .line 16
    iput-object v1, p0, Lcom/nflystudio/net/GameInfoItem;->appname:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/nflystudio/net/GameInfoItem;->star:Ljava/lang/String;

    .line 18
    iput v2, p0, Lcom/nflystudio/net/GameInfoItem;->state:I

    .line 22
    iput-object v1, p0, Lcom/nflystudio/net/GameInfoItem;->pushData:Ljava/lang/String;

    .line 23
    iput-object v1, p0, Lcom/nflystudio/net/GameInfoItem;->classType:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/nflystudio/net/GameInfoItem;->title:Ljava/lang/String;

    .line 5
    return-void
.end method


# virtual methods
.method public Cone()Lcom/nflystudio/net/GameInfoItem;
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/nflystudio/net/GameInfoItem;

    invoke-direct {v0}, Lcom/nflystudio/net/GameInfoItem;-><init>()V

    .line 27
    .local v0, "gitem":Lcom/nflystudio/net/GameInfoItem;
    iget-object v1, p0, Lcom/nflystudio/net/GameInfoItem;->appname:Ljava/lang/String;

    iput-object v1, v0, Lcom/nflystudio/net/GameInfoItem;->appname:Ljava/lang/String;

    .line 28
    iget-object v1, p0, Lcom/nflystudio/net/GameInfoItem;->gameid:Ljava/lang/String;

    iput-object v1, v0, Lcom/nflystudio/net/GameInfoItem;->gameid:Ljava/lang/String;

    .line 29
    iget-object v1, p0, Lcom/nflystudio/net/GameInfoItem;->gamename:Ljava/lang/String;

    iput-object v1, v0, Lcom/nflystudio/net/GameInfoItem;->gamename:Ljava/lang/String;

    .line 30
    iget-object v1, p0, Lcom/nflystudio/net/GameInfoItem;->downurl:Ljava/lang/String;

    iput-object v1, v0, Lcom/nflystudio/net/GameInfoItem;->downurl:Ljava/lang/String;

    .line 31
    iget-object v1, p0, Lcom/nflystudio/net/GameInfoItem;->version:Ljava/lang/String;

    iput-object v1, v0, Lcom/nflystudio/net/GameInfoItem;->version:Ljava/lang/String;

    .line 32
    iget-object v1, p0, Lcom/nflystudio/net/GameInfoItem;->iconurl:Ljava/lang/String;

    iput-object v1, v0, Lcom/nflystudio/net/GameInfoItem;->iconurl:Ljava/lang/String;

    .line 33
    iget v1, p0, Lcom/nflystudio/net/GameInfoItem;->filesize:I

    iput v1, v0, Lcom/nflystudio/net/GameInfoItem;->filesize:I

    .line 34
    iget v1, p0, Lcom/nflystudio/net/GameInfoItem;->downcount:I

    iput v1, v0, Lcom/nflystudio/net/GameInfoItem;->downcount:I

    .line 35
    iget-object v1, p0, Lcom/nflystudio/net/GameInfoItem;->update:Ljava/lang/String;

    iput-object v1, v0, Lcom/nflystudio/net/GameInfoItem;->update:Ljava/lang/String;

    .line 36
    iget-object v1, p0, Lcom/nflystudio/net/GameInfoItem;->description:Ljava/lang/String;

    iput-object v1, v0, Lcom/nflystudio/net/GameInfoItem;->description:Ljava/lang/String;

    .line 37
    iget-object v1, p0, Lcom/nflystudio/net/GameInfoItem;->type:Ljava/lang/String;

    iput-object v1, v0, Lcom/nflystudio/net/GameInfoItem;->type:Ljava/lang/String;

    .line 38
    iget-object v1, p0, Lcom/nflystudio/net/GameInfoItem;->pushData:Ljava/lang/String;

    iput-object v1, v0, Lcom/nflystudio/net/GameInfoItem;->pushData:Ljava/lang/String;

    .line 39
    iget-object v1, p0, Lcom/nflystudio/net/GameInfoItem;->classType:Ljava/lang/String;

    iput-object v1, v0, Lcom/nflystudio/net/GameInfoItem;->classType:Ljava/lang/String;

    .line 40
    iget-object v1, p0, Lcom/nflystudio/net/GameInfoItem;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/nflystudio/net/GameInfoItem;->title:Ljava/lang/String;

    .line 41
    return-object v0
.end method
