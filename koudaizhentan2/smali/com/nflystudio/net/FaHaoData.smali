.class public Lcom/nflystudio/net/FaHaoData;
.super Lcom/nflystudio/net/BaseResponeData;
.source "FaHaoData.java"


# instance fields
.field public State:I

.field public key:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/nflystudio/net/BaseResponeData;-><init>()V

    .line 4
    const/4 v0, 0x1

    iput v0, p0, Lcom/nflystudio/net/FaHaoData;->State:I

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/nflystudio/net/FaHaoData;->key:Ljava/lang/String;

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/nflystudio/net/FaHaoData;->value:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/nflystudio/net/FaHaoData;->message:Ljava/lang/String;

    .line 3
    return-void
.end method
