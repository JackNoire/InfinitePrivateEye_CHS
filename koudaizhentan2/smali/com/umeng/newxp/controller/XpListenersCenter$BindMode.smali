.class public final enum Lcom/umeng/newxp/controller/XpListenersCenter$BindMode;
.super Ljava/lang/Enum;
.source "XpListenersCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/newxp/controller/XpListenersCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BindMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/umeng/newxp/controller/XpListenersCenter$BindMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BIND_FORM_CACHE:Lcom/umeng/newxp/controller/XpListenersCenter$BindMode;

.field public static final enum BIND_FROM_NET:Lcom/umeng/newxp/controller/XpListenersCenter$BindMode;

.field private static final synthetic ENUM$VALUES:[Lcom/umeng/newxp/controller/XpListenersCenter$BindMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 242
    new-instance v0, Lcom/umeng/newxp/controller/XpListenersCenter$BindMode;

    const-string v1, "BIND_FORM_CACHE"

    invoke-direct {v0, v1, v2}, Lcom/umeng/newxp/controller/XpListenersCenter$BindMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/newxp/controller/XpListenersCenter$BindMode;->BIND_FORM_CACHE:Lcom/umeng/newxp/controller/XpListenersCenter$BindMode;

    new-instance v0, Lcom/umeng/newxp/controller/XpListenersCenter$BindMode;

    const-string v1, "BIND_FROM_NET"

    invoke-direct {v0, v1, v3}, Lcom/umeng/newxp/controller/XpListenersCenter$BindMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/newxp/controller/XpListenersCenter$BindMode;->BIND_FROM_NET:Lcom/umeng/newxp/controller/XpListenersCenter$BindMode;

    .line 241
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/umeng/newxp/controller/XpListenersCenter$BindMode;

    sget-object v1, Lcom/umeng/newxp/controller/XpListenersCenter$BindMode;->BIND_FORM_CACHE:Lcom/umeng/newxp/controller/XpListenersCenter$BindMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/umeng/newxp/controller/XpListenersCenter$BindMode;->BIND_FROM_NET:Lcom/umeng/newxp/controller/XpListenersCenter$BindMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/umeng/newxp/controller/XpListenersCenter$BindMode;->ENUM$VALUES:[Lcom/umeng/newxp/controller/XpListenersCenter$BindMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 241
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/newxp/controller/XpListenersCenter$BindMode;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/umeng/newxp/controller/XpListenersCenter$BindMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/controller/XpListenersCenter$BindMode;

    return-object v0
.end method

.method public static values()[Lcom/umeng/newxp/controller/XpListenersCenter$BindMode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/umeng/newxp/controller/XpListenersCenter$BindMode;->ENUM$VALUES:[Lcom/umeng/newxp/controller/XpListenersCenter$BindMode;

    array-length v1, v0

    new-array v2, v1, [Lcom/umeng/newxp/controller/XpListenersCenter$BindMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
