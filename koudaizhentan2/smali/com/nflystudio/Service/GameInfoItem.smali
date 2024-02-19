.class public Lcom/nflystudio/Service/GameInfoItem;
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
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string v0, "1"

    iput-object v0, p0, Lcom/nflystudio/Service/GameInfoItem;->gameid:Ljava/lang/String;

    .line 7
    const-string v0, "1"

    iput-object v0, p0, Lcom/nflystudio/Service/GameInfoItem;->gamename:Ljava/lang/String;

    .line 8
    const-string v0, "1"

    iput-object v0, p0, Lcom/nflystudio/Service/GameInfoItem;->downurl:Ljava/lang/String;

    .line 9
    const-string v0, "1"

    iput-object v0, p0, Lcom/nflystudio/Service/GameInfoItem;->version:Ljava/lang/String;

    .line 10
    const-string v0, "1"

    iput-object v0, p0, Lcom/nflystudio/Service/GameInfoItem;->iconurl:Ljava/lang/String;

    .line 11
    iput v1, p0, Lcom/nflystudio/Service/GameInfoItem;->filesize:I

    .line 12
    iput v1, p0, Lcom/nflystudio/Service/GameInfoItem;->downcount:I

    .line 13
    const-string v0, "1"

    iput-object v0, p0, Lcom/nflystudio/Service/GameInfoItem;->update:Ljava/lang/String;

    .line 14
    const-string v0, "1"

    iput-object v0, p0, Lcom/nflystudio/Service/GameInfoItem;->description:Ljava/lang/String;

    .line 15
    const-string v0, "1"

    iput-object v0, p0, Lcom/nflystudio/Service/GameInfoItem;->type:Ljava/lang/String;

    .line 16
    const-string v0, "1"

    iput-object v0, p0, Lcom/nflystudio/Service/GameInfoItem;->appname:Ljava/lang/String;

    .line 17
    const-string v0, "1"

    iput-object v0, p0, Lcom/nflystudio/Service/GameInfoItem;->star:Ljava/lang/String;

    .line 18
    iput v1, p0, Lcom/nflystudio/Service/GameInfoItem;->state:I

    .line 22
    const-string v0, "1"

    iput-object v0, p0, Lcom/nflystudio/Service/GameInfoItem;->pushData:Ljava/lang/String;

    .line 23
    const-string v0, "1"

    iput-object v0, p0, Lcom/nflystudio/Service/GameInfoItem;->classType:Ljava/lang/String;

    .line 24
    const-string v0, "1"

    iput-object v0, p0, Lcom/nflystudio/Service/GameInfoItem;->title:Ljava/lang/String;

    .line 5
    return-void
.end method


# virtual methods
.method public Cone()Lcom/nflystudio/Service/GameInfoItem;
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/nflystudio/Service/GameInfoItem;

    invoke-direct {v0}, Lcom/nflystudio/Service/GameInfoItem;-><init>()V

    .line 27
    .local v0, "gitem":Lcom/nflystudio/Service/GameInfoItem;
    iget-object v1, p0, Lcom/nflystudio/Service/GameInfoItem;->appname:Ljava/lang/String;

    iput-object v1, v0, Lcom/nflystudio/Service/GameInfoItem;->appname:Ljava/lang/String;

    .line 28
    iget-object v1, p0, Lcom/nflystudio/Service/GameInfoItem;->gameid:Ljava/lang/String;

    iput-object v1, v0, Lcom/nflystudio/Service/GameInfoItem;->gameid:Ljava/lang/String;

    .line 29
    iget-object v1, p0, Lcom/nflystudio/Service/GameInfoItem;->gamename:Ljava/lang/String;

    iput-object v1, v0, Lcom/nflystudio/Service/GameInfoItem;->gamename:Ljava/lang/String;

    .line 30
    iget-object v1, p0, Lcom/nflystudio/Service/GameInfoItem;->downurl:Ljava/lang/String;

    iput-object v1, v0, Lcom/nflystudio/Service/GameInfoItem;->downurl:Ljava/lang/String;

    .line 31
    iget-object v1, p0, Lcom/nflystudio/Service/GameInfoItem;->version:Ljava/lang/String;

    iput-object v1, v0, Lcom/nflystudio/Service/GameInfoItem;->version:Ljava/lang/String;

    .line 32
    iget-object v1, p0, Lcom/nflystudio/Service/GameInfoItem;->iconurl:Ljava/lang/String;

    iput-object v1, v0, Lcom/nflystudio/Service/GameInfoItem;->iconurl:Ljava/lang/String;

    .line 33
    iget v1, p0, Lcom/nflystudio/Service/GameInfoItem;->filesize:I

    iput v1, v0, Lcom/nflystudio/Service/GameInfoItem;->filesize:I

    .line 34
    iget v1, p0, Lcom/nflystudio/Service/GameInfoItem;->downcount:I

    iput v1, v0, Lcom/nflystudio/Service/GameInfoItem;->downcount:I

    .line 35
    iget-object v1, p0, Lcom/nflystudio/Service/GameInfoItem;->update:Ljava/lang/String;

    iput-object v1, v0, Lcom/nflystudio/Service/GameInfoItem;->update:Ljava/lang/String;

    .line 36
    iget-object v1, p0, Lcom/nflystudio/Service/GameInfoItem;->description:Ljava/lang/String;

    iput-object v1, v0, Lcom/nflystudio/Service/GameInfoItem;->description:Ljava/lang/String;

    .line 37
    iget-object v1, p0, Lcom/nflystudio/Service/GameInfoItem;->type:Ljava/lang/String;

    iput-object v1, v0, Lcom/nflystudio/Service/GameInfoItem;->type:Ljava/lang/String;

    .line 38
    iget-object v1, p0, Lcom/nflystudio/Service/GameInfoItem;->pushData:Ljava/lang/String;

    iput-object v1, v0, Lcom/nflystudio/Service/GameInfoItem;->pushData:Ljava/lang/String;

    .line 39
    iget-object v1, p0, Lcom/nflystudio/Service/GameInfoItem;->classType:Ljava/lang/String;

    iput-object v1, v0, Lcom/nflystudio/Service/GameInfoItem;->classType:Ljava/lang/String;

    .line 40
    iget-object v1, p0, Lcom/nflystudio/Service/GameInfoItem;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/nflystudio/Service/GameInfoItem;->title:Ljava/lang/String;

    .line 41
    return-object v0
.end method

.method public getAppname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/nflystudio/Service/GameInfoItem;->appname:Ljava/lang/String;

    return-object v0
.end method

.method public getClassType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/nflystudio/Service/GameInfoItem;->classType:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/nflystudio/Service/GameInfoItem;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDowncount()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/nflystudio/Service/GameInfoItem;->downcount:I

    return v0
.end method

.method public getDownurl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/nflystudio/Service/GameInfoItem;->downurl:Ljava/lang/String;

    return-object v0
.end method

.method public getFilesize()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/nflystudio/Service/GameInfoItem;->filesize:I

    return v0
.end method

.method public getGameid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/nflystudio/Service/GameInfoItem;->gameid:Ljava/lang/String;

    return-object v0
.end method

.method public getGamename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nflystudio/Service/GameInfoItem;->gamename:Ljava/lang/String;

    return-object v0
.end method

.method public getIconurl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/nflystudio/Service/GameInfoItem;->iconurl:Ljava/lang/String;

    return-object v0
.end method

.method public getPushData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/nflystudio/Service/GameInfoItem;->pushData:Ljava/lang/String;

    return-object v0
.end method

.method public getStar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/nflystudio/Service/GameInfoItem;->star:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/nflystudio/Service/GameInfoItem;->state:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/nflystudio/Service/GameInfoItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/nflystudio/Service/GameInfoItem;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/nflystudio/Service/GameInfoItem;->update:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/nflystudio/Service/GameInfoItem;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setAppname(Ljava/lang/String;)V
    .locals 0
    .param p1, "appname"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/nflystudio/Service/GameInfoItem;->appname:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setClassType(Ljava/lang/String;)V
    .locals 0
    .param p1, "classType"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/nflystudio/Service/GameInfoItem;->classType:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/nflystudio/Service/GameInfoItem;->description:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setDowncount(I)V
    .locals 0
    .param p1, "downcount"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/nflystudio/Service/GameInfoItem;->downcount:I

    .line 84
    return-void
.end method

.method public setDownurl(Ljava/lang/String;)V
    .locals 0
    .param p1, "downurl"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/nflystudio/Service/GameInfoItem;->downurl:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setFilesize(I)V
    .locals 0
    .param p1, "filesize"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/nflystudio/Service/GameInfoItem;->filesize:I

    .line 78
    return-void
.end method

.method public setGameid(Ljava/lang/String;)V
    .locals 0
    .param p1, "gameid"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/nflystudio/Service/GameInfoItem;->gameid:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setGamename(Ljava/lang/String;)V
    .locals 0
    .param p1, "gamename"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/nflystudio/Service/GameInfoItem;->gamename:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setIconurl(Ljava/lang/String;)V
    .locals 0
    .param p1, "iconurl"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/nflystudio/Service/GameInfoItem;->iconurl:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setPushData(Ljava/lang/String;)V
    .locals 0
    .param p1, "pushData"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/nflystudio/Service/GameInfoItem;->pushData:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setStar(Ljava/lang/String;)V
    .locals 0
    .param p1, "star"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/nflystudio/Service/GameInfoItem;->star:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 119
    iput p1, p0, Lcom/nflystudio/Service/GameInfoItem;->state:I

    .line 120
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/nflystudio/Service/GameInfoItem;->title:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/nflystudio/Service/GameInfoItem;->type:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setUpdate(Ljava/lang/String;)V
    .locals 0
    .param p1, "update"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/nflystudio/Service/GameInfoItem;->update:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/nflystudio/Service/GameInfoItem;->version:Ljava/lang/String;

    .line 66
    return-void
.end method
