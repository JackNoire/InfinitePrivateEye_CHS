.class enum Lcom/umeng/newxp/c;
.super Lcom/umeng/newxp/Promoter$a;
.source "Promoter.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/umeng/newxp/Promoter$a;-><init>(Ljava/lang/String;ILcom/umeng/newxp/Promoter$a;)V

    .line 1
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "sdk"

    return-object v0
.end method
