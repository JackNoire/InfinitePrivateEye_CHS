.class public Lcom/nflystudio/InfinitePrivateEye2/MyApplication;
.super Landroid/app/Application;
.source "MyApplication.java"


# instance fields
.field private windowParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 8
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/MyApplication;->windowParams:Landroid/view/WindowManager$LayoutParams;

    .line 6
    return-void
.end method


# virtual methods
.method public getWindowParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/nflystudio/InfinitePrivateEye2/MyApplication;->windowParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method
