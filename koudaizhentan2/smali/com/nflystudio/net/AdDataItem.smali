.class public Lcom/nflystudio/net/AdDataItem;
.super Ljava/lang/Object;
.source "AdDataItem.java"


# instance fields
.field public adid:Ljava/lang/String;

.field public litpic:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object v0, p0, Lcom/nflystudio/net/AdDataItem;->adid:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/nflystudio/net/AdDataItem;->litpic:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/nflystudio/net/AdDataItem;->url:Ljava/lang/String;

    .line 3
    return-void
.end method
