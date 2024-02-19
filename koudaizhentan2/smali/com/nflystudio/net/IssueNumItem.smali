.class public Lcom/nflystudio/net/IssueNumItem;
.super Lcom/nflystudio/net/GameInfoItem;
.source "IssueNumItem.java"


# instance fields
.field public fahaourl:Ljava/lang/String;

.field public haolist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nflystudio/net/HaoItem;",
            ">;"
        }
    .end annotation
.end field

.field public rbname:Ljava/lang/String;

.field public remain:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public times:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/nflystudio/net/GameInfoItem;-><init>()V

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/nflystudio/net/IssueNumItem;->status:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/nflystudio/net/IssueNumItem;->times:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/nflystudio/net/IssueNumItem;->fahaourl:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/nflystudio/net/IssueNumItem;->rbname:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/nflystudio/net/IssueNumItem;->remain:Ljava/lang/String;

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nflystudio/net/IssueNumItem;->haolist:Ljava/util/ArrayList;

    .line 5
    return-void
.end method
