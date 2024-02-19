.class public Lcom/nflystudio/net/HaoItem;
.super Ljava/lang/Object;
.source "HaoItem.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public key:Ljava/lang/String;

.field public keyid:Ljava/lang/String;

.field public lbname:Ljava/lang/String;

.field public typeid:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/nflystudio/net/HaoItem;->key:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/nflystudio/net/HaoItem;->value:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/nflystudio/net/HaoItem;->lbname:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/nflystudio/net/HaoItem;->typeid:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/nflystudio/net/HaoItem;->keyid:Ljava/lang/String;

    .line 5
    return-void
.end method
