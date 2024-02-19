.class public interface abstract Lcom/umeng/newxp/controller/XpListenersCenter$ReportListener;
.super Ljava/lang/Object;
.source "XpListenersCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/newxp/controller/XpListenersCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ReportListener"
.end annotation


# virtual methods
.method public abstract onReportEnd(Lcom/umeng/common/net/p$a;)V
.end method

.method public abstract onReportStart(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method
