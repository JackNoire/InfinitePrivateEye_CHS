.class public Lcom/nflystudio/net/TopPicData;
.super Lcom/nflystudio/net/BaseResponeData;
.source "TopPicData.java"


# instance fields
.field public toppicdatalist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nflystudio/net/TopPicDataItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/nflystudio/net/BaseResponeData;-><init>()V

    .line 6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nflystudio/net/TopPicData;->toppicdatalist:Ljava/util/ArrayList;

    .line 5
    return-void
.end method
