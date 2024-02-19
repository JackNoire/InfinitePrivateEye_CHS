.class public Lcom/nflystudio/net/NewsData;
.super Lcom/nflystudio/net/BaseResponeData;
.source "NewsData.java"


# instance fields
.field public newsdatalist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nflystudio/net/NewsDataItem;",
            ">;"
        }
    .end annotation
.end field

.field public serverTime:Ljava/lang/String;

.field public status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/nflystudio/net/BaseResponeData;-><init>()V

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/nflystudio/net/NewsData;->serverTime:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/nflystudio/net/NewsData;->status:Ljava/lang/String;

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nflystudio/net/NewsData;->newsdatalist:Ljava/util/ArrayList;

    .line 5
    return-void
.end method
