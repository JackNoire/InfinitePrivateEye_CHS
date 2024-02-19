.class public Lcom/nflystudio/net/TopPicDataItem;
.super Ljava/lang/Object;
.source "TopPicDataItem.java"


# instance fields
.field public aid:Ljava/lang/String;

.field public dtid:Ljava/lang/String;

.field public litpic:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/nflystudio/net/TopPicDataItem;->aid:Ljava/lang/String;

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/nflystudio/net/TopPicDataItem;->title:Ljava/lang/String;

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/nflystudio/net/TopPicDataItem;->litpic:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/nflystudio/net/TopPicDataItem;->dtid:Ljava/lang/String;

    .line 3
    return-void
.end method
