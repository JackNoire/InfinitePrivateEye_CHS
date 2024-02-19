.class public Lcom/nflystudio/net/NewsDetaile;
.super Lcom/nflystudio/net/BaseResponeData;
.source "NewsDetaile.java"


# instance fields
.field public aid:Ljava/lang/String;

.field public body:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public flag:Ljava/lang/String;

.field public litpic:Ljava/lang/String;

.field public pubdate:Ljava/lang/String;

.field public shorttitle:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public writer:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/nflystudio/net/BaseResponeData;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/nflystudio/net/NewsDetaile;->aid:Ljava/lang/String;

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/nflystudio/net/NewsDetaile;->title:Ljava/lang/String;

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/nflystudio/net/NewsDetaile;->shorttitle:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/nflystudio/net/NewsDetaile;->writer:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/nflystudio/net/NewsDetaile;->pubdate:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/nflystudio/net/NewsDetaile;->litpic:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/nflystudio/net/NewsDetaile;->flag:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/nflystudio/net/NewsDetaile;->description:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/nflystudio/net/NewsDetaile;->body:Ljava/lang/String;

    .line 3
    return-void
.end method
