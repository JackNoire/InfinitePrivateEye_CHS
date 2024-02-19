.class public Lcom/nflystudio/net/GameDetaile;
.super Lcom/nflystudio/net/BaseResponeData;
.source "GameDetaile.java"


# instance fields
.field public android_apkname:Ljava/lang/String;

.field public android_down:Ljava/lang/String;

.field public android_icon:Ljava/lang/String;

.field public android_update:Ljava/lang/String;

.field public android_ver:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public downcount:I

.field public dtid:Ljava/lang/String;

.field public filesize:I

.field public flag:Ljava/lang/String;

.field public gametype:Ljava/lang/String;

.field public gfitlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nflystudio/net/IssueNumItem;",
            ">;"
        }
    .end annotation
.end field

.field public litpic:Ljava/lang/String;

.field public star:I

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0}, Lcom/nflystudio/net/BaseResponeData;-><init>()V

    .line 6
    iput-object v0, p0, Lcom/nflystudio/net/GameDetaile;->dtid:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/nflystudio/net/GameDetaile;->title:Ljava/lang/String;

    .line 8
    iput v1, p0, Lcom/nflystudio/net/GameDetaile;->downcount:I

    .line 9
    iput-object v0, p0, Lcom/nflystudio/net/GameDetaile;->type:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/nflystudio/net/GameDetaile;->gametype:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/nflystudio/net/GameDetaile;->litpic:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/nflystudio/net/GameDetaile;->flag:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/nflystudio/net/GameDetaile;->android_update:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/nflystudio/net/GameDetaile;->description:Ljava/lang/String;

    .line 15
    iput v1, p0, Lcom/nflystudio/net/GameDetaile;->star:I

    .line 16
    iput-object v0, p0, Lcom/nflystudio/net/GameDetaile;->android_icon:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/nflystudio/net/GameDetaile;->android_apkname:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/nflystudio/net/GameDetaile;->android_ver:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/nflystudio/net/GameDetaile;->android_down:Ljava/lang/String;

    .line 20
    iput v1, p0, Lcom/nflystudio/net/GameDetaile;->filesize:I

    .line 22
    iput-object v0, p0, Lcom/nflystudio/net/GameDetaile;->gfitlist:Ljava/util/ArrayList;

    .line 5
    return-void
.end method
