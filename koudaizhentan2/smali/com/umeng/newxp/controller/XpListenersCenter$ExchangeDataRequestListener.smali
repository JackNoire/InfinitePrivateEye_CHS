.class public interface abstract Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;
.super Ljava/lang/Object;
.source "XpListenersCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/newxp/controller/XpListenersCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ExchangeDataRequestListener"
.end annotation


# static fields
.field public static final STATUS_FAIL:I = 0x0

.field public static final STATUS_SUCCESS:I = 0x1


# virtual methods
.method public abstract dataReceived(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;)V"
        }
    .end annotation
.end method
