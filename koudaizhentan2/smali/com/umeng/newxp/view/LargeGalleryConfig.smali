.class public Lcom/umeng/newxp/view/LargeGalleryConfig;
.super Ljava/lang/Object;
.source "LargeGalleryConfig.java"


# instance fields
.field private a:Lcom/umeng/newxp/controller/XpListenersCenter$LargeGalleryBindListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBindListener()Lcom/umeng/newxp/controller/XpListenersCenter$LargeGalleryBindListener;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/umeng/newxp/view/LargeGalleryConfig;->a:Lcom/umeng/newxp/controller/XpListenersCenter$LargeGalleryBindListener;

    return-object v0
.end method

.method public setBindListener(Lcom/umeng/newxp/controller/XpListenersCenter$LargeGalleryBindListener;)Lcom/umeng/newxp/view/LargeGalleryConfig;
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/umeng/newxp/view/LargeGalleryConfig;->a:Lcom/umeng/newxp/controller/XpListenersCenter$LargeGalleryBindListener;

    .line 16
    return-object p0
.end method
