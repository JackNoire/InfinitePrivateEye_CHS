.class Lcom/umeng/newxp/controller/h;
.super Landroid/os/Handler;
.source "SwithAdThread.java"


# instance fields
.field final synthetic a:Lcom/umeng/newxp/controller/g;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/controller/g;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/newxp/controller/h;->a:Lcom/umeng/newxp/controller/g;

    .line 21
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/umeng/newxp/controller/h;->a:Lcom/umeng/newxp/controller/g;

    iget-object v0, v0, Lcom/umeng/newxp/controller/g;->a:Lcom/umeng/newxp/controller/f$a;

    invoke-interface {v0}, Lcom/umeng/newxp/controller/f$a;->a()V

    .line 24
    return-void
.end method
