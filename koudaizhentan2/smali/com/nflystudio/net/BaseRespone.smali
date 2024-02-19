.class public Lcom/nflystudio/net/BaseRespone;
.super Ljava/lang/Object;
.source "BaseRespone.java"


# instance fields
.field public baseresponedata:Lcom/nflystudio/net/BaseResponeData;

.field public javaBean:Lcom/nflystudio/net/JavaBeanPersonCenter;

.field public obj:Ljava/lang/Object;

.field public publishComment:Z

.field public responetype:I

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput v0, p0, Lcom/nflystudio/net/BaseRespone;->status:I

    .line 7
    iput v0, p0, Lcom/nflystudio/net/BaseRespone;->responetype:I

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nflystudio/net/BaseRespone;->baseresponedata:Lcom/nflystudio/net/BaseResponeData;

    .line 4
    return-void
.end method
