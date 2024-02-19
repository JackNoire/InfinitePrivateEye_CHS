.class Lcom/umeng/newxp/view/e;
.super Lcom/umeng/newxp/view/a;
.source "AdvertiserList.java"


# instance fields
.field final synthetic c:Lcom/umeng/newxp/view/d;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/d;Landroid/content/Context;ILjava/util/List;IZILcom/umeng/newxp/controller/ExchangeDataService;)V
    .locals 8

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/view/e;->c:Lcom/umeng/newxp/view/d;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    move-object/from16 v7, p8

    .line 26
    invoke-direct/range {v0 .. v7}, Lcom/umeng/newxp/view/a;-><init>(Landroid/content/Context;ILjava/util/List;IZILcom/umeng/newxp/controller/ExchangeDataService;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/umeng/newxp/view/a;->a(I)V

    .line 31
    iget-object v0, p0, Lcom/umeng/newxp/view/e;->c:Lcom/umeng/newxp/view/d;

    invoke-virtual {v0, p1}, Lcom/umeng/newxp/view/d;->a(I)V

    .line 32
    return-void
.end method
