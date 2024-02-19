.class Lcom/nflystudio/InfinitePrivateEye2/ViewContainer$11;
.super Ljava/lang/Object;
.source "ViewContainer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->showInstallAppDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;


# direct methods
.method constructor <init>(Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer$11;->this$0:Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 383
    iget-object v1, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer$11;->this$0:Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;

    invoke-static {v1}, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->access$0(Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "AppInstall"

    invoke-static {v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 384
    new-instance v0, Lcom/nflystudio/InfinitePrivateEye2/ApkInstaller;

    iget-object v1, p0, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer$11;->this$0:Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;

    invoke-static {v1}, Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;->access$0(Lcom/nflystudio/InfinitePrivateEye2/ViewContainer;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nflystudio/InfinitePrivateEye2/ApkInstaller;-><init>(Landroid/content/Context;)V

    .line 385
    .local v0, "installer":Lcom/nflystudio/InfinitePrivateEye2/ApkInstaller;
    invoke-virtual {v0}, Lcom/nflystudio/InfinitePrivateEye2/ApkInstaller;->installApk()V

    .line 386
    return-void
.end method
