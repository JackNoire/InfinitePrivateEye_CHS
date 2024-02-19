.class public Lcom/nflystudio/Service/PushDateItem;
.super Ljava/lang/Object;
.source "PushDateItem.java"


# static fields
.field public static wapurl:Ljava/lang/String;


# instance fields
.field public classType:Ljava/lang/String;

.field public date:Ljava/lang/String;

.field public download:Ljava/lang/String;

.field public dtid:Ljava/lang/String;

.field public gamebody:Ljava/lang/String;

.field public gamename:Ljava/lang/String;

.field public gamepath:Ljava/lang/String;

.field public gametype:Ljava/lang/String;

.field public host:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public litpic:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "1"

    sput-object v0, Lcom/nflystudio/Service/PushDateItem;->wapurl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, "1"

    iput-object v0, p0, Lcom/nflystudio/Service/PushDateItem;->id:Ljava/lang/String;

    .line 9
    const-string v0, "1"

    iput-object v0, p0, Lcom/nflystudio/Service/PushDateItem;->dtid:Ljava/lang/String;

    .line 10
    const-string v0, "1"

    iput-object v0, p0, Lcom/nflystudio/Service/PushDateItem;->classType:Ljava/lang/String;

    .line 11
    const-string v0, "1"

    iput-object v0, p0, Lcom/nflystudio/Service/PushDateItem;->gamename:Ljava/lang/String;

    .line 12
    const-string v0, "1"

    iput-object v0, p0, Lcom/nflystudio/Service/PushDateItem;->gamepath:Ljava/lang/String;

    .line 13
    const-string v0, "1"

    iput-object v0, p0, Lcom/nflystudio/Service/PushDateItem;->title:Ljava/lang/String;

    .line 14
    const-string v0, "1"

    iput-object v0, p0, Lcom/nflystudio/Service/PushDateItem;->gametype:Ljava/lang/String;

    .line 15
    const-string v0, "1"

    iput-object v0, p0, Lcom/nflystudio/Service/PushDateItem;->litpic:Ljava/lang/String;

    .line 16
    const-string v0, "1"

    iput-object v0, p0, Lcom/nflystudio/Service/PushDateItem;->download:Ljava/lang/String;

    .line 17
    const-string v0, "1"

    iput-object v0, p0, Lcom/nflystudio/Service/PushDateItem;->host:Ljava/lang/String;

    .line 18
    const-string v0, "1"

    iput-object v0, p0, Lcom/nflystudio/Service/PushDateItem;->url:Ljava/lang/String;

    .line 21
    const-string v0, "1"

    iput-object v0, p0, Lcom/nflystudio/Service/PushDateItem;->date:Ljava/lang/String;

    .line 7
    return-void
.end method

.method public static getWapurl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/nflystudio/Service/PushDateItem;->wapurl:Ljava/lang/String;

    return-object v0
.end method

.method public static setWapurl(Ljava/lang/String;)V
    .locals 0
    .param p0, "wapurl"    # Ljava/lang/String;

    .prologue
    .line 92
    sput-object p0, Lcom/nflystudio/Service/PushDateItem;->wapurl:Ljava/lang/String;

    .line 93
    return-void
.end method


# virtual methods
.method public getClassType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nflystudio/Service/PushDateItem;->classType:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/nflystudio/Service/PushDateItem;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getDownload()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nflystudio/Service/PushDateItem;->download:Ljava/lang/String;

    return-object v0
.end method

.method public getDtid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/nflystudio/Service/PushDateItem;->dtid:Ljava/lang/String;

    return-object v0
.end method

.method public getGamebody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/nflystudio/Service/PushDateItem;->gamebody:Ljava/lang/String;

    return-object v0
.end method

.method public getGamename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/nflystudio/Service/PushDateItem;->gamename:Ljava/lang/String;

    return-object v0
.end method

.method public getGamepath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nflystudio/Service/PushDateItem;->gamepath:Ljava/lang/String;

    return-object v0
.end method

.method public getGametype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/nflystudio/Service/PushDateItem;->gametype:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/nflystudio/Service/PushDateItem;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/nflystudio/Service/PushDateItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLitpic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nflystudio/Service/PushDateItem;->litpic:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/nflystudio/Service/PushDateItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/nflystudio/Service/PushDateItem;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setClassType(Ljava/lang/String;)V
    .locals 0
    .param p1, "classType"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/nflystudio/Service/PushDateItem;->classType:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/nflystudio/Service/PushDateItem;->date:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setDownload(Ljava/lang/String;)V
    .locals 0
    .param p1, "download"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/nflystudio/Service/PushDateItem;->download:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setDtid(Ljava/lang/String;)V
    .locals 0
    .param p1, "dtid"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/nflystudio/Service/PushDateItem;->dtid:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setGamebody(Ljava/lang/String;)V
    .locals 0
    .param p1, "gamebody"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/nflystudio/Service/PushDateItem;->gamebody:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setGamename(Ljava/lang/String;)V
    .locals 0
    .param p1, "gamename"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/nflystudio/Service/PushDateItem;->gamename:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setGamepath(Ljava/lang/String;)V
    .locals 0
    .param p1, "gamepath"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/nflystudio/Service/PushDateItem;->gamepath:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setGametype(Ljava/lang/String;)V
    .locals 0
    .param p1, "gametype"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/nflystudio/Service/PushDateItem;->gametype:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/nflystudio/Service/PushDateItem;->host:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/nflystudio/Service/PushDateItem;->id:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setLitpic(Ljava/lang/String;)V
    .locals 0
    .param p1, "litpic"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/nflystudio/Service/PushDateItem;->litpic:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/nflystudio/Service/PushDateItem;->title:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/nflystudio/Service/PushDateItem;->url:Ljava/lang/String;

    .line 87
    return-void
.end method
