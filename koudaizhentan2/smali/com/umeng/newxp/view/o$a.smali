.class public final enum Lcom/umeng/newxp/view/o$a;
.super Ljava/lang/Enum;
.source "DownloadDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/newxp/view/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/umeng/newxp/view/o$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/umeng/newxp/view/o$a;

.field public static final enum b:Lcom/umeng/newxp/view/o$a;

.field private static final synthetic c:[Lcom/umeng/newxp/view/o$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-instance v0, Lcom/umeng/newxp/view/o$a;

    const-string v1, "DOWNLOAD"

    invoke-direct {v0, v1, v2}, Lcom/umeng/newxp/view/o$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/newxp/view/o$a;->a:Lcom/umeng/newxp/view/o$a;

    new-instance v0, Lcom/umeng/newxp/view/o$a;

    const-string v1, "CALL"

    invoke-direct {v0, v1, v3}, Lcom/umeng/newxp/view/o$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/newxp/view/o$a;->b:Lcom/umeng/newxp/view/o$a;

    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/umeng/newxp/view/o$a;

    sget-object v1, Lcom/umeng/newxp/view/o$a;->a:Lcom/umeng/newxp/view/o$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/umeng/newxp/view/o$a;->b:Lcom/umeng/newxp/view/o$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/umeng/newxp/view/o$a;->c:[Lcom/umeng/newxp/view/o$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/newxp/view/o$a;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/umeng/newxp/view/o$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/view/o$a;

    return-object v0
.end method

.method public static values()[Lcom/umeng/newxp/view/o$a;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/umeng/newxp/view/o$a;->c:[Lcom/umeng/newxp/view/o$a;

    array-length v1, v0

    new-array v2, v1, [Lcom/umeng/newxp/view/o$a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
