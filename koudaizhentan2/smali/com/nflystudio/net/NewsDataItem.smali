.class public Lcom/nflystudio/net/NewsDataItem;
.super Ljava/lang/Object;
.source "NewsDataItem.java"


# instance fields
.field public aid:Ljava/lang/String;

.field public bbsCount:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public dtid:Ljava/lang/String;

.field public flag:Ljava/lang/String;

.field public hasSubject:Ljava/lang/String;

.field public litpic:Ljava/lang/String;

.field public pubdate:Ljava/lang/String;

.field public shorttitle:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public writer:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/nflystudio/net/NewsDataItem;->dtid:Ljava/lang/String;

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/nflystudio/net/NewsDataItem;->aid:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/nflystudio/net/NewsDataItem;->title:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/nflystudio/net/NewsDataItem;->shorttitle:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/nflystudio/net/NewsDataItem;->writer:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/nflystudio/net/NewsDataItem;->pubdate:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/nflystudio/net/NewsDataItem;->litpic:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/nflystudio/net/NewsDataItem;->flag:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/nflystudio/net/NewsDataItem;->description:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/nflystudio/net/NewsDataItem;->bbsCount:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/nflystudio/net/NewsDataItem;->hasSubject:Ljava/lang/String;

    .line 4
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NewsDataItem [dtid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nflystudio/net/NewsDataItem;->dtid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", aid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nflystudio/net/NewsDataItem;->aid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nflystudio/net/NewsDataItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", shorttitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nflystudio/net/NewsDataItem;->shorttitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", writer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nflystudio/net/NewsDataItem;->writer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pubdate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nflystudio/net/NewsDataItem;->pubdate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", litpic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nflystudio/net/NewsDataItem;->litpic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nflystudio/net/NewsDataItem;->flag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nflystudio/net/NewsDataItem;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bbsCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nflystudio/net/NewsDataItem;->bbsCount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hasSubject="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nflystudio/net/NewsDataItem;->hasSubject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
