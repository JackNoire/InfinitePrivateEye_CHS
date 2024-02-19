.class public Lcom/nflystudio/net/PushData;
.super Lcom/nflystudio/net/BaseResponeData;
.source "PushData.java"


# instance fields
.field public currentservertime:J

.field public pushDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nflystudio/Service/PushDateItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/nflystudio/net/BaseResponeData;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nflystudio/net/PushData;->pushDataList:Ljava/util/ArrayList;

    .line 9
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nflystudio/net/PushData;->currentservertime:J

    .line 7
    return-void
.end method
